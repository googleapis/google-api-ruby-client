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
    module DatamigrationV1
      # Database Migration API
      #
      # Manage Cloud Database Migration Service resources on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/datamigration_v1'
      #
      #    Datamigration = Google::Apis::DatamigrationV1 # Alias the module
      #    service = Datamigration::DatabaseMigrationServiceService.new
      #
      # @see https://cloud.google.com/database-migration/
      class DatabaseMigrationServiceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://datamigration.googleapis.com/', '',
                client_name: 'google-apis-datamigration_v1',
                client_version: Google::Apis::DatamigrationV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Location::Representation
          command.response_class = Google::Apis::DatamigrationV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::DatamigrationV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new connection profile in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of connection profiles.
        # @param [Google::Apis::DatamigrationV1::ConnectionProfile] connection_profile_object
        # @param [String] connection_profile_id
        #   Required. The connection profile identifier.
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [Boolean] skip_validation
        #   Optional. Create the connection profile without validating it. The default is
        #   false. Only supported for Oracle connection profiles.
        # @param [Boolean] validate_only
        #   Optional. Only validate the connection profile, but don't create any resources.
        #   The default is false. Only supported for Oracle connection profiles.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection_profile(parent, connection_profile_object = nil, connection_profile_id: nil, request_id: nil, skip_validation: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectionProfiles', options)
          command.request_representation = Google::Apis::DatamigrationV1::ConnectionProfile::Representation
          command.request_object = connection_profile_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectionProfileId'] = connection_profile_id unless connection_profile_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['skipValidation'] = skip_validation unless skip_validation.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Database Migration Service connection profile. A connection
        # profile can only be deleted if it is not in use by any active migration jobs.
        # @param [String] name
        #   Required. Name of the connection profile resource to delete.
        # @param [Boolean] force
        #   In case of force delete, the CloudSQL replica database is also deleted (only
        #   for CloudSQL connection profile).
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection_profile(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single connection profile.
        # @param [String] name
        #   Required. Name of the connection profile resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ConnectionProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ConnectionProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::ConnectionProfile::Representation
          command.response_class = Google::Apis::DatamigrationV1::ConnectionProfile
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_profile_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DatamigrationV1::Policy::Representation
          command.response_class = Google::Apis::DatamigrationV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of all connection profiles in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of connection profiles.
        # @param [String] filter
        #   A filter expression that filters connection profiles listed in the response.
        #   The expression must specify the field name, a comparison operator, and the
        #   value that you want to use for filtering. The value must be a string, a number,
        #   or a boolean. The comparison operator must be either =, !=, >, or <. For
        #   example, list connection profiles created this year by specifying **createTime
        #   %gt; 2020-01-01T00:00:00.000000000Z**. You can also filter nested fields. For
        #   example, you could specify **mySql.username = %lt;my_username%gt;** to list
        #   all connection profiles configured to connect with a specific username.
        # @param [String] order_by
        #   A comma-separated list of fields to order results according to.
        # @param [Fixnum] page_size
        #   The maximum number of connection profiles to return. The service may return
        #   fewer than this value. If unspecified, at most 50 connection profiles will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConnectionProfiles` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListConnectionProfiles` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ListConnectionProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ListConnectionProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/connectionProfiles', options)
          command.response_representation = Google::Apis::DatamigrationV1::ListConnectionProfilesResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::ListConnectionProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the configuration of a single connection profile.
        # @param [String] name
        #   The name of this connection profile resource in the form of projects/`project`/
        #   locations/`location`/connectionProfiles/`connectionProfile`.
        # @param [Google::Apis::DatamigrationV1::ConnectionProfile] connection_profile_object
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [Boolean] skip_validation
        #   Optional. Update the connection profile without validating it. The default is
        #   false. Only supported for Oracle connection profiles.
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   connection profile resource by the update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the connection profile, but don't update any resources.
        #   The default is false. Only supported for Oracle connection profiles.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection_profile(name, connection_profile_object = nil, request_id: nil, skip_validation: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatamigrationV1::ConnectionProfile::Representation
          command.request_object = connection_profile_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['skipValidation'] = skip_validation unless skip_validation.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DatamigrationV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_connection_profile_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatamigrationV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Policy::Representation
          command.response_class = Google::Apis::DatamigrationV1::Policy
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
        # @param [Google::Apis::DatamigrationV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_connection_profile_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatamigrationV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatamigrationV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Apply draft tree onto a specific destination database
        # @param [String] name
        #   Required. Name of the conversion workspace resource to apply draft to
        #   destination for. in the form of: projects/`project`/locations/`location`/
        #   conversionWorkspaces/`conversion_workspace`.
        # @param [Google::Apis::DatamigrationV1::ApplyConversionWorkspaceRequest] apply_conversion_workspace_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def apply_conversion_workspace(name, apply_conversion_workspace_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:apply', options)
          command.request_representation = Google::Apis::DatamigrationV1::ApplyConversionWorkspaceRequest::Representation
          command.request_object = apply_conversion_workspace_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks all the data in the conversion workspace as committed.
        # @param [String] name
        #   Required. Name of the conversion workspace resource to commit.
        # @param [Google::Apis::DatamigrationV1::CommitConversionWorkspaceRequest] commit_conversion_workspace_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_conversion_workspace(name, commit_conversion_workspace_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:commit', options)
          command.request_representation = Google::Apis::DatamigrationV1::CommitConversionWorkspaceRequest::Representation
          command.request_object = commit_conversion_workspace_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a draft tree schema for the destination database.
        # @param [String] name
        #   Name of the conversion workspace resource to convert in the form of: projects/`
        #   project`/locations/`location`/conversionWorkspaces/`conversion_workspace`.
        # @param [Google::Apis::DatamigrationV1::ConvertConversionWorkspaceRequest] convert_conversion_workspace_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def convert_conversion_workspace(name, convert_conversion_workspace_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:convert', options)
          command.request_representation = Google::Apis::DatamigrationV1::ConvertConversionWorkspaceRequest::Representation
          command.request_object = convert_conversion_workspace_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new conversion workspace in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of conversion workspaces.
        # @param [Google::Apis::DatamigrationV1::ConversionWorkspace] conversion_workspace_object
        # @param [String] conversion_workspace_id
        #   Required. The ID of the conversion workspace to create.
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversion_workspace(parent, conversion_workspace_object = nil, conversion_workspace_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversionWorkspaces', options)
          command.request_representation = Google::Apis::DatamigrationV1::ConversionWorkspace::Representation
          command.request_object = conversion_workspace_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversionWorkspaceId'] = conversion_workspace_id unless conversion_workspace_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single conversion workspace.
        # @param [String] name
        #   Required. Name of the conversion workspace resource to delete.
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversion_workspace(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of committed revisions of a specific conversion workspace.
        # @param [String] conversion_workspace
        #   Required. Name of the conversion workspace resource whose revisions are listed.
        #   in the form of: projects/`project`/locations/`location`/conversionWorkspaces/`
        #   conversion_workspace`.
        # @param [String] commit_id
        #   Optional. Optional filter to request a specific commit id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::DescribeConversionWorkspaceRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::DescribeConversionWorkspaceRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def describe_project_location_conversion_workspace_conversion_workspace_revisions(conversion_workspace, commit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+conversionWorkspace}:describeConversionWorkspaceRevisions', options)
          command.response_representation = Google::Apis::DatamigrationV1::DescribeConversionWorkspaceRevisionsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::DescribeConversionWorkspaceRevisionsResponse
          command.params['conversionWorkspace'] = conversion_workspace unless conversion_workspace.nil?
          command.query['commitId'] = commit_id unless commit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to describe the database entities tree for a specific
        # conversion workspace and a specific tree type. The DB Entities are not a
        # resource like conversion workspace or mapping rule, and they can not be
        # created, updated or deleted like one. Instead they are simple data objects
        # describing the structure of the client database.
        # @param [String] conversion_workspace
        #   Required. Name of the conversion workspace resource whose DB entities are
        #   described in the form of: projects/`project`/locations/`location`/
        #   conversionWorkspaces/`conversion_workspace`.
        # @param [String] commit_id
        #   Request a specific commit id. If not specified, the entities from the latest
        #   commit are returned.
        # @param [String] filter
        #   Filter the returned entities based on AIP-160 standard
        # @param [Fixnum] page_size
        #   The maximum number of entities to return. The service may return fewer than
        #   this value.
        # @param [String] page_token
        #   The nextPageToken value received in the previous call to conversionWorkspace.
        #   describeDatabaseEntities, used in the subsequent request to retrieve the next
        #   page of results. On first call this should be left blank. When paginating, all
        #   other parameters provided to conversionWorkspace.describeDatabaseEntities must
        #   match the call that provided the page token.
        # @param [String] tree
        #   The tree to fetch
        # @param [Boolean] uncommitted
        #   Whether to retrieve the latest committed version of the entities or the latest
        #   version. This field is ignored if a specific commit_id is specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::DescribeDatabaseEntitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::DescribeDatabaseEntitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def describe_project_location_conversion_workspace_database_entities(conversion_workspace, commit_id: nil, filter: nil, page_size: nil, page_token: nil, tree: nil, uncommitted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+conversionWorkspace}:describeDatabaseEntities', options)
          command.response_representation = Google::Apis::DatamigrationV1::DescribeDatabaseEntitiesResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::DescribeDatabaseEntitiesResponse
          command.params['conversionWorkspace'] = conversion_workspace unless conversion_workspace.nil?
          command.query['commitId'] = commit_id unless commit_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['tree'] = tree unless tree.nil?
          command.query['uncommitted'] = uncommitted unless uncommitted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single conversion workspace.
        # @param [String] name
        #   Required. Name of the conversion workspace resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ConversionWorkspace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ConversionWorkspace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversion_workspace(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::ConversionWorkspace::Representation
          command.response_class = Google::Apis::DatamigrationV1::ConversionWorkspace
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversion workspaces in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of conversion workspaces.
        # @param [String] filter
        #   A filter expression that filters conversion workspaces listed in the response.
        #   The expression must specify the field name, a comparison operator, and the
        #   value that you want to use for filtering. The value must be a string, a number,
        #   or a boolean. The comparison operator must be either =, !=, >, or <. For
        #   example, list conversion workspaces created this year by specifying **
        #   createTime %gt; 2020-01-01T00:00:00.000000000Z.** You can also filter nested
        #   fields. For example, you could specify **source.version = "12.c.1"** to select
        #   all conversion workspaces with source database version equal to 12.c.1
        # @param [Fixnum] page_size
        #   The maximum number of conversion workspaces to return. The service may return
        #   fewer than this value. If unspecified, at most 50 sets will be returned.
        # @param [String] page_token
        #   The nextPageToken value received in the previous call to conversionWorkspaces.
        #   list, used in the subsequent request to retrieve the next page of results. On
        #   first call this should be left blank. When paginating, all other parameters
        #   provided to conversionWorkspaces.list must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ListConversionWorkspacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ListConversionWorkspacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversion_workspaces(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/conversionWorkspaces', options)
          command.response_representation = Google::Apis::DatamigrationV1::ListConversionWorkspacesResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::ListConversionWorkspacesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single conversion workspace.
        # @param [String] name
        #   Full name of the workspace resource, in the form of: projects/`project`/
        #   locations/`location`/conversionWorkspaces/`conversion_workspace`.
        # @param [Google::Apis::DatamigrationV1::ConversionWorkspace] conversion_workspace_object
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   conversion workspace resource by the update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversion_workspace(name, conversion_workspace_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatamigrationV1::ConversionWorkspace::Representation
          command.request_object = conversion_workspace_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rollbacks a conversion workspace to the last committed spanshot.
        # @param [String] name
        #   Required. Name of the conversion workspace resource to rollback to.
        # @param [Google::Apis::DatamigrationV1::RollbackConversionWorkspaceRequest] rollback_conversion_workspace_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_conversion_workspace(name, rollback_conversion_workspace_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rollback', options)
          command.request_representation = Google::Apis::DatamigrationV1::RollbackConversionWorkspaceRequest::Representation
          command.request_object = rollback_conversion_workspace_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to search/list the background jobs for a specific conversion
        # workspace. The background jobs are not a resource like conversion workspace or
        # mapping rule, and they can not be created, updated or deleted like one.
        # Instead they are a way to expose the data plane jobs log.
        # @param [String] conversion_workspace
        #   Required. Name of the conversion workspace resource whos jobs are listed. in
        #   the form of: projects/`project`/locations/`location`/conversionWorkspaces/`
        #   conversion_workspace`.
        # @param [String] completed_until_time
        #   Optional. If supplied, will only return jobs that completed until (not
        #   including) the given timestamp.
        # @param [Fixnum] max_size
        #   Optional. The maximum number of jobs to return. The service may return fewer
        #   than this value. If unspecified, at most 100 jobs will be returned. The
        #   maximum value is 100; values above 100 will be coerced to 100.
        # @param [Boolean] return_most_recent_per_job_type
        #   Optional. Whether or not to return just the most recent job per job type
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::SearchBackgroundJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::SearchBackgroundJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_conversion_workspace_background_jobs(conversion_workspace, completed_until_time: nil, max_size: nil, return_most_recent_per_job_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+conversionWorkspace}:searchBackgroundJobs', options)
          command.response_representation = Google::Apis::DatamigrationV1::SearchBackgroundJobsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::SearchBackgroundJobsResponse
          command.params['conversionWorkspace'] = conversion_workspace unless conversion_workspace.nil?
          command.query['completedUntilTime'] = completed_until_time unless completed_until_time.nil?
          command.query['maxSize'] = max_size unless max_size.nil?
          command.query['returnMostRecentPerJobType'] = return_most_recent_per_job_type unless return_most_recent_per_job_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a snapshot of the source database into the conversion workspace.
        # @param [String] name
        #   Name of the conversion workspace resource to seed with new database structure.
        #   in the form of: projects/`project`/locations/`location`/conversionWorkspaces/`
        #   conversion_workspace`.
        # @param [Google::Apis::DatamigrationV1::SeedConversionWorkspaceRequest] seed_conversion_workspace_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def seed_conversion_workspace(name, seed_conversion_workspace_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:seed', options)
          command.request_representation = Google::Apis::DatamigrationV1::SeedConversionWorkspaceRequest::Representation
          command.request_object = seed_conversion_workspace_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the mapping rules for a given conversion workspace. Supports various
        # formats of external rules files.
        # @param [String] parent
        #   Required. Name of the conversion workspace resource to import the rules to in
        #   the form of: projects/`project`/locations/`location`/conversionWorkspaces/`
        #   conversion_workspace`.
        # @param [Google::Apis::DatamigrationV1::ImportMappingRulesRequest] import_mapping_rules_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_mapping_rules(parent, import_mapping_rules_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/mappingRules:import', options)
          command.request_representation = Google::Apis::DatamigrationV1::ImportMappingRulesRequest::Representation
          command.request_object = import_mapping_rules_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new migration job in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of migration jobs.
        # @param [Google::Apis::DatamigrationV1::MigrationJob] migration_job_object
        # @param [String] migration_job_id
        #   Required. The ID of the instance to create.
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_migration_job(parent, migration_job_object = nil, migration_job_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/migrationJobs', options)
          command.request_representation = Google::Apis::DatamigrationV1::MigrationJob::Representation
          command.request_object = migration_job_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['migrationJobId'] = migration_job_id unless migration_job_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single migration job.
        # @param [String] name
        #   Required. Name of the migration job resource to delete.
        # @param [Boolean] force
        #   The destination CloudSQL connection profile is always deleted with the
        #   migration job. In case of force delete, the destination CloudSQL replica
        #   database is also deleted.
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_migration_job(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate a SSH configuration script to configure the reverse SSH connectivity.
        # @param [String] migration_job
        #   Name of the migration job resource to generate the SSH script.
        # @param [Google::Apis::DatamigrationV1::GenerateSshScriptRequest] generate_ssh_script_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::SshScript] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::SshScript]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_migration_job_ssh_script(migration_job, generate_ssh_script_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+migrationJob}:generateSshScript', options)
          command.request_representation = Google::Apis::DatamigrationV1::GenerateSshScriptRequest::Representation
          command.request_object = generate_ssh_script_request_object
          command.response_representation = Google::Apis::DatamigrationV1::SshScript::Representation
          command.response_class = Google::Apis::DatamigrationV1::SshScript
          command.params['migrationJob'] = migration_job unless migration_job.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single migration job.
        # @param [String] name
        #   Required. Name of the migration job resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::MigrationJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::MigrationJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_migration_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::MigrationJob::Representation
          command.response_class = Google::Apis::DatamigrationV1::MigrationJob
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_migration_job_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DatamigrationV1::Policy::Representation
          command.response_class = Google::Apis::DatamigrationV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists migration jobs in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of migrationJobs.
        # @param [String] filter
        #   A filter expression that filters migration jobs listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either =, !=, >, or <. For example,
        #   list migration jobs created this year by specifying **createTime %gt; 2020-01-
        #   01T00:00:00.000000000Z.** You can also filter nested fields. For example, you
        #   could specify **reverseSshConnectivity.vmIp = "1.2.3.4"** to select all
        #   migration jobs connecting through the specific SSH tunnel bastion.
        # @param [String] order_by
        #   Sort the results based on the migration job name. Valid values are: "name", "
        #   name asc", and "name desc".
        # @param [Fixnum] page_size
        #   The maximum number of migration jobs to return. The service may return fewer
        #   than this value. If unspecified, at most 50 migration jobs will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   The nextPageToken value received in the previous call to migrationJobs.list,
        #   used in the subsequent request to retrieve the next page of results. On first
        #   call this should be left blank. When paginating, all other parameters provided
        #   to migrationJobs.list must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ListMigrationJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ListMigrationJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_migration_jobs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/migrationJobs', options)
          command.response_representation = Google::Apis::DatamigrationV1::ListMigrationJobsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::ListMigrationJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single migration job.
        # @param [String] name
        #   The name (URI) of this migration job resource, in the form of: projects/`
        #   project`/locations/`location`/migrationJobs/`migrationJob`.
        # @param [Google::Apis::DatamigrationV1::MigrationJob] migration_job_object
        # @param [String] request_id
        #   A unique id used to identify the request. If the server receives two requests
        #   with the same id, then the second request will be ignored. It is recommended
        #   to always set this value to a UUID. The id must contain only letters (a-z, A-Z)
        #   , numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40
        #   characters.
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   migration job resource by the update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_migration_job(name, migration_job_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatamigrationV1::MigrationJob::Representation
          command.request_object = migration_job_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Promote a migration job, stopping replication to the destination and promoting
        # the destination to be a standalone database.
        # @param [String] name
        #   Name of the migration job resource to promote.
        # @param [Google::Apis::DatamigrationV1::PromoteMigrationJobRequest] promote_migration_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def promote_migration_job(name, promote_migration_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:promote', options)
          command.request_representation = Google::Apis::DatamigrationV1::PromoteMigrationJobRequest::Representation
          command.request_object = promote_migration_job_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restart a stopped or failed migration job, resetting the destination instance
        # to its original state and starting the migration process from scratch.
        # @param [String] name
        #   Name of the migration job resource to restart.
        # @param [Google::Apis::DatamigrationV1::RestartMigrationJobRequest] restart_migration_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_migration_job(name, restart_migration_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:restart', options)
          command.request_representation = Google::Apis::DatamigrationV1::RestartMigrationJobRequest::Representation
          command.request_object = restart_migration_job_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resume a migration job that is currently stopped and is resumable (was stopped
        # during CDC phase).
        # @param [String] name
        #   Name of the migration job resource to resume.
        # @param [Google::Apis::DatamigrationV1::ResumeMigrationJobRequest] resume_migration_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_migration_job(name, resume_migration_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resume', options)
          command.request_representation = Google::Apis::DatamigrationV1::ResumeMigrationJobRequest::Representation
          command.request_object = resume_migration_job_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DatamigrationV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_migration_job_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatamigrationV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Policy::Representation
          command.response_class = Google::Apis::DatamigrationV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Start an already created migration job.
        # @param [String] name
        #   Name of the migration job resource to start.
        # @param [Google::Apis::DatamigrationV1::StartMigrationJobRequest] start_migration_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_migration_job(name, start_migration_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:start', options)
          command.request_representation = Google::Apis::DatamigrationV1::StartMigrationJobRequest::Representation
          command.request_object = start_migration_job_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops a running migration job.
        # @param [String] name
        #   Name of the migration job resource to stop.
        # @param [Google::Apis::DatamigrationV1::StopMigrationJobRequest] stop_migration_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_migration_job(name, stop_migration_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:stop', options)
          command.request_representation = Google::Apis::DatamigrationV1::StopMigrationJobRequest::Representation
          command.request_object = stop_migration_job_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DatamigrationV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_migration_job_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatamigrationV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatamigrationV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verify a migration job, making sure the destination can reach the source and
        # that all configuration and prerequisites are met.
        # @param [String] name
        #   Name of the migration job resource to verify.
        # @param [Google::Apis::DatamigrationV1::VerifyMigrationJobRequest] verify_migration_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_migration_job(name, verify_migration_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:verify', options)
          command.request_representation = Google::Apis::DatamigrationV1::VerifyMigrationJobRequest::Representation
          command.request_object = verify_migration_job_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DatamigrationV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DatamigrationV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::DatamigrationV1::Empty::Representation
          command.response_class = Google::Apis::DatamigrationV1::Empty
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Empty::Representation
          command.response_class = Google::Apis::DatamigrationV1::Empty
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
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
        # @yieldparam result [Google::Apis::DatamigrationV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DatamigrationV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new private connection in a given project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of PrivateConnections.
        # @param [Google::Apis::DatamigrationV1::PrivateConnection] private_connection_object
        # @param [String] private_connection_id
        #   Required. The private connection identifier.
        # @param [String] request_id
        #   Optional. A unique id used to identify the request. If the server receives two
        #   requests with the same id, then the second request will be ignored. It is
        #   recommended to always set this value to a UUID. The id must contain only
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_connection(parent, private_connection_object = nil, private_connection_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/privateConnections', options)
          command.request_representation = Google::Apis::DatamigrationV1::PrivateConnection::Representation
          command.request_object = private_connection_object
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['privateConnectionId'] = private_connection_id unless private_connection_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Database Migration Service private connection.
        # @param [String] name
        #   Required. The name of the private connection to delete.
        # @param [String] request_id
        #   Optional. A unique id used to identify the request. If the server receives two
        #   requests with the same id, then the second request will be ignored. It is
        #   recommended to always set this value to a UUID. The id must contain only
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
        # @yieldparam result [Google::Apis::DatamigrationV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_private_connection(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::Operation::Representation
          command.response_class = Google::Apis::DatamigrationV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single private connection.
        # @param [String] name
        #   Required. The name of the private connection to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::PrivateConnection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::PrivateConnection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamigrationV1::PrivateConnection::Representation
          command.response_class = Google::Apis::DatamigrationV1::PrivateConnection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of private connections in a given project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of private connections.
        # @param [String] filter
        #   A filter expression that filters private connections listed in the response.
        #   The expression must specify the field name, a comparison operator, and the
        #   value that you want to use for filtering. The value must be a string, a number,
        #   or a boolean. The comparison operator must be either =, !=, >, or <. For
        #   example, list private connections created this year by specifying **createTime
        #   %gt; 2021-01-01T00:00:00.000000000Z**.
        # @param [String] order_by
        #   Order by fields for the result.
        # @param [Fixnum] page_size
        #   Maximum number of private connections to return. If unspecified, at most 50
        #   private connections that will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Page token received from a previous `ListPrivateConnections` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListPrivateConnections` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamigrationV1::ListPrivateConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamigrationV1::ListPrivateConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/privateConnections', options)
          command.response_representation = Google::Apis::DatamigrationV1::ListPrivateConnectionsResponse::Representation
          command.response_class = Google::Apis::DatamigrationV1::ListPrivateConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
