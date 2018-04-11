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
    module IamV1
      # Identity and Access Management (IAM) API
      #
      # Manages identity and access control for Google Cloud Platform resources,
      #  including the creation of service accounts, which you can use to authenticate
      #  to Google and make API calls.
      #
      # @example
      #    require 'google/apis/iam_v1'
      #
      #    Iam = Google::Apis::IamV1 # Alias the module
      #    service = Iam::IamService.new
      #
      # @see https://cloud.google.com/iam/
      class IamService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://iam.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns a list of services that support service level audit logging
        # configuration for the given resource.
        # @param [Google::Apis::IamV1::QueryAuditableServicesRequest] query_auditable_services_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::QueryAuditableServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::QueryAuditableServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_iam_policy_auditable_services(query_auditable_services_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/iamPolicies:queryAuditableServices', options)
          command.request_representation = Google::Apis::IamV1::QueryAuditableServicesRequest::Representation
          command.request_object = query_auditable_services_request_object
          command.response_representation = Google::Apis::IamV1::QueryAuditableServicesResponse::Representation
          command.response_class = Google::Apis::IamV1::QueryAuditableServicesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Role.
        # @param [String] parent
        #   The resource name of the parent resource in one of the following formats:
        #   `organizations/`ORGANIZATION_ID``
        #   `projects/`PROJECT_ID``
        # @param [Google::Apis::IamV1::CreateRoleRequest] create_role_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_role(parent, create_role_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+parent}/roles', options)
          command.request_representation = Google::Apis::IamV1::CreateRoleRequest::Representation
          command.request_object = create_role_request_object
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Soft deletes a role. The role is suspended and cannot be used to create new
        # IAM Policy Bindings.
        # The Role will not be included in `ListRoles()` unless `show_deleted` is set
        # in the `ListRolesRequest`. The Role contains the deleted boolean set.
        # Existing Bindings remains, but are inactive. The Role can be undeleted
        # within 7 days. After 7 days the Role is deleted and all Bindings associated
        # with the role are removed.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [String] etag
        #   Used to perform a consistent read-modify-write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_role(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Role definition.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `roles/`ROLE_NAME``
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_role(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Roles defined on a resource.
        # @param [String] parent
        #   The resource name of the parent resource in one of the following formats:
        #   `` (empty string) -- this refers to curated roles.
        #   `organizations/`ORGANIZATION_ID``
        #   `projects/`PROJECT_ID``
        # @param [Fixnum] page_size
        #   Optional limit on the number of roles to include in the response.
        # @param [String] page_token
        #   Optional pagination token returned in an earlier ListRolesResponse.
        # @param [Boolean] show_deleted
        #   Include Roles that have been deleted.
        # @param [String] view
        #   Optional view for the returned Role objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ListRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ListRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_roles(parent, page_size: nil, page_token: nil, show_deleted: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+parent}/roles', options)
          command.response_representation = Google::Apis::IamV1::ListRolesResponse::Representation
          command.response_class = Google::Apis::IamV1::ListRolesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Role definition.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `roles/`ROLE_NAME``
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [Google::Apis::IamV1::Role] role_object
        # @param [String] update_mask
        #   A mask describing which fields in the Role have changed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_role(name, role_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::IamV1::Role::Representation
          command.request_object = role_object
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undelete a Role, bringing it back in its previous state.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [Google::Apis::IamV1::UndeleteRoleRequest] undelete_role_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_organization_role(name, undelete_role_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:undelete', options)
          command.request_representation = Google::Apis::IamV1::UndeleteRoleRequest::Representation
          command.request_object = undelete_role_request_object
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the permissions testable on a resource.
        # A permission is testable if it can be tested for an identity on a resource.
        # @param [Google::Apis::IamV1::QueryTestablePermissionsRequest] query_testable_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::QueryTestablePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::QueryTestablePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_testable_permissions(query_testable_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/permissions:queryTestablePermissions', options)
          command.request_representation = Google::Apis::IamV1::QueryTestablePermissionsRequest::Representation
          command.request_object = query_testable_permissions_request_object
          command.response_representation = Google::Apis::IamV1::QueryTestablePermissionsResponse::Representation
          command.response_class = Google::Apis::IamV1::QueryTestablePermissionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Role.
        # @param [String] parent
        #   The resource name of the parent resource in one of the following formats:
        #   `organizations/`ORGANIZATION_ID``
        #   `projects/`PROJECT_ID``
        # @param [Google::Apis::IamV1::CreateRoleRequest] create_role_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_role(parent, create_role_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+parent}/roles', options)
          command.request_representation = Google::Apis::IamV1::CreateRoleRequest::Representation
          command.request_object = create_role_request_object
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Soft deletes a role. The role is suspended and cannot be used to create new
        # IAM Policy Bindings.
        # The Role will not be included in `ListRoles()` unless `show_deleted` is set
        # in the `ListRolesRequest`. The Role contains the deleted boolean set.
        # Existing Bindings remains, but are inactive. The Role can be undeleted
        # within 7 days. After 7 days the Role is deleted and all Bindings associated
        # with the role are removed.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [String] etag
        #   Used to perform a consistent read-modify-write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_role(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Role definition.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `roles/`ROLE_NAME``
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_role(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Roles defined on a resource.
        # @param [String] parent
        #   The resource name of the parent resource in one of the following formats:
        #   `` (empty string) -- this refers to curated roles.
        #   `organizations/`ORGANIZATION_ID``
        #   `projects/`PROJECT_ID``
        # @param [Fixnum] page_size
        #   Optional limit on the number of roles to include in the response.
        # @param [String] page_token
        #   Optional pagination token returned in an earlier ListRolesResponse.
        # @param [Boolean] show_deleted
        #   Include Roles that have been deleted.
        # @param [String] view
        #   Optional view for the returned Role objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ListRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ListRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_roles(parent, page_size: nil, page_token: nil, show_deleted: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+parent}/roles', options)
          command.response_representation = Google::Apis::IamV1::ListRolesResponse::Representation
          command.response_class = Google::Apis::IamV1::ListRolesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Role definition.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `roles/`ROLE_NAME``
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [Google::Apis::IamV1::Role] role_object
        # @param [String] update_mask
        #   A mask describing which fields in the Role have changed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_role(name, role_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::IamV1::Role::Representation
          command.request_object = role_object
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undelete a Role, bringing it back in its previous state.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [Google::Apis::IamV1::UndeleteRoleRequest] undelete_role_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project_role(name, undelete_role_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:undelete', options)
          command.request_representation = Google::Apis::IamV1::UndeleteRoleRequest::Representation
          command.request_object = undelete_role_request_object
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ServiceAccount
        # and returns it.
        # @param [String] name
        #   Required. The resource name of the project associated with the service
        #   accounts, such as `projects/my-project-123`.
        # @param [Google::Apis::IamV1::CreateServiceAccountRequest] create_service_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ServiceAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ServiceAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_account(name, create_service_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}/serviceAccounts', options)
          command.request_representation = Google::Apis::IamV1::CreateServiceAccountRequest::Representation
          command.request_object = create_service_account_request_object
          command.response_representation = Google::Apis::IamV1::ServiceAccount::Representation
          command.response_class = Google::Apis::IamV1::ServiceAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ServiceAccount.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_service_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Empty::Representation
          command.response_class = Google::Apis::IamV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServiceAccount.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ServiceAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ServiceAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_service_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::ServiceAccount::Representation
          command.response_class = Google::Apis::IamV1::ServiceAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM access control policy for a
        # ServiceAccount.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_service_account_iam_policy(resource, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::IamV1::Policy::Representation
          command.response_class = Google::Apis::IamV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ServiceAccounts for a project.
        # @param [String] name
        #   Required. The resource name of the project associated with the service
        #   accounts, such as `projects/my-project-123`.
        # @param [Fixnum] page_size
        #   Optional limit on the number of service accounts to include in the
        #   response. Further accounts can subsequently be obtained by including the
        #   ListServiceAccountsResponse.next_page_token
        #   in a subsequent request.
        # @param [String] page_token
        #   Optional pagination token returned in an earlier
        #   ListServiceAccountsResponse.next_page_token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ListServiceAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ListServiceAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_service_accounts(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}/serviceAccounts', options)
          command.response_representation = Google::Apis::IamV1::ListServiceAccountsResponse::Representation
          command.response_class = Google::Apis::IamV1::ListServiceAccountsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM access control policy for a
        # ServiceAccount.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::IamV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_service_account_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::IamV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::IamV1::Policy::Representation
          command.response_class = Google::Apis::IamV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs a blob using a service account's system-managed private key.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [Google::Apis::IamV1::SignBlobRequest] sign_blob_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::SignBlobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::SignBlobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_service_account_blob(name, sign_blob_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:signBlob', options)
          command.request_representation = Google::Apis::IamV1::SignBlobRequest::Representation
          command.request_object = sign_blob_request_object
          command.response_representation = Google::Apis::IamV1::SignBlobResponse::Representation
          command.response_class = Google::Apis::IamV1::SignBlobResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs a JWT using a service account's system-managed private key.
        # If no expiry time (`exp`) is provided in the `SignJwtRequest`, IAM sets an
        # an expiry time of one hour by default. If you request an expiry time of
        # more than one hour, the request will fail.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [Google::Apis::IamV1::SignJwtRequest] sign_jwt_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::SignJwtResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::SignJwtResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_service_account_jwt(name, sign_jwt_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:signJwt', options)
          command.request_representation = Google::Apis::IamV1::SignJwtRequest::Representation
          command.request_object = sign_jwt_request_object
          command.response_representation = Google::Apis::IamV1::SignJwtResponse::Representation
          command.response_class = Google::Apis::IamV1::SignJwtResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests the specified permissions against the IAM access control policy
        # for a ServiceAccount.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::IamV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_service_account_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::IamV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::IamV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::IamV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServiceAccount.
        # Currently, only the following fields are updatable:
        # `display_name` .
        # The `etag` is mandatory.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Requests using `-` as a wildcard for the `PROJECT_ID` will infer the
        #   project from the `account` and the `ACCOUNT` value can be the `email`
        #   address or the `unique_id` of the service account.
        #   In responses the resource name will always be in the format
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        # @param [Google::Apis::IamV1::ServiceAccount] service_account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ServiceAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ServiceAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_service_account(name, service_account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::IamV1::ServiceAccount::Representation
          command.request_object = service_account_object
          command.response_representation = Google::Apis::IamV1::ServiceAccount::Representation
          command.response_class = Google::Apis::IamV1::ServiceAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ServiceAccountKey
        # and returns it.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [Google::Apis::IamV1::CreateServiceAccountKeyRequest] create_service_account_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ServiceAccountKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ServiceAccountKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_account_key(name, create_service_account_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}/keys', options)
          command.request_representation = Google::Apis::IamV1::CreateServiceAccountKeyRequest::Representation
          command.request_object = create_service_account_key_request_object
          command.response_representation = Google::Apis::IamV1::ServiceAccountKey::Representation
          command.response_class = Google::Apis::IamV1::ServiceAccountKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ServiceAccountKey.
        # @param [String] name
        #   The resource name of the service account key in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_service_account_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Empty::Representation
          command.response_class = Google::Apis::IamV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the ServiceAccountKey
        # by key id.
        # @param [String] name
        #   The resource name of the service account key in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key``.
        #   Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [String] public_key_type
        #   The output format of the public key requested.
        #   X509_PEM is the default output format.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ServiceAccountKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ServiceAccountKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_service_account_key(name, public_key_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::ServiceAccountKey::Representation
          command.response_class = Google::Apis::IamV1::ServiceAccountKey
          command.params['name'] = name unless name.nil?
          command.query['publicKeyType'] = public_key_type unless public_key_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ServiceAccountKeys.
        # @param [String] name
        #   The resource name of the service account in the following format:
        #   `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``.
        #   Using `-` as a wildcard for the `PROJECT_ID`, will infer the project from
        #   the account. The `ACCOUNT` value can be the `email` address or the
        #   `unique_id` of the service account.
        # @param [Array<String>, String] key_types
        #   Filters the types of keys the user wants to include in the list
        #   response. Duplicate key types are not allowed. If no key type
        #   is provided, all keys are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ListServiceAccountKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ListServiceAccountKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_service_account_keys(name, key_types: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}/keys', options)
          command.response_representation = Google::Apis::IamV1::ListServiceAccountKeysResponse::Representation
          command.response_class = Google::Apis::IamV1::ListServiceAccountKeysResponse
          command.params['name'] = name unless name.nil?
          command.query['keyTypes'] = key_types unless key_types.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Role definition.
        # @param [String] name
        #   The resource name of the role in one of the following formats:
        #   `roles/`ROLE_NAME``
        #   `organizations/`ORGANIZATION_ID`/roles/`ROLE_NAME``
        #   `projects/`PROJECT_ID`/roles/`ROLE_NAME``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_role(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IamV1::Role::Representation
          command.response_class = Google::Apis::IamV1::Role
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Roles defined on a resource.
        # @param [Fixnum] page_size
        #   Optional limit on the number of roles to include in the response.
        # @param [String] page_token
        #   Optional pagination token returned in an earlier ListRolesResponse.
        # @param [String] parent
        #   The resource name of the parent resource in one of the following formats:
        #   `` (empty string) -- this refers to curated roles.
        #   `organizations/`ORGANIZATION_ID``
        #   `projects/`PROJECT_ID``
        # @param [Boolean] show_deleted
        #   Include Roles that have been deleted.
        # @param [String] view
        #   Optional view for the returned Role objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::ListRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::ListRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_roles(page_size: nil, page_token: nil, parent: nil, show_deleted: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/roles', options)
          command.response_representation = Google::Apis::IamV1::ListRolesResponse::Representation
          command.response_class = Google::Apis::IamV1::ListRolesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries roles that can be granted on a particular resource.
        # A role is grantable if it can be used as the role in a binding for a policy
        # for that resource.
        # @param [Google::Apis::IamV1::QueryGrantableRolesRequest] query_grantable_roles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV1::QueryGrantableRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV1::QueryGrantableRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_grantable_roles(query_grantable_roles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/roles:queryGrantableRoles', options)
          command.request_representation = Google::Apis::IamV1::QueryGrantableRolesRequest::Representation
          command.request_object = query_grantable_roles_request_object
          command.response_representation = Google::Apis::IamV1::QueryGrantableRolesResponse::Representation
          command.response_class = Google::Apis::IamV1::QueryGrantableRolesResponse
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
