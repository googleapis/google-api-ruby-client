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
    module MetastoreV1beta
      # Dataproc Metastore API
      #
      # The Dataproc Metastore API is used to manage the lifecycle and configuration
      #  of metastore services.
      #
      # @example
      #    require 'google/apis/metastore_v1beta'
      #
      #    Metastore = Google::Apis::MetastoreV1beta # Alias the module
      #    service = Metastore::DataprocMetastoreService.new
      #
      # @see https://cloud.google.com/dataproc-metastore/docs
      class DataprocMetastoreService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://metastore.googleapis.com/', '',
                client_name: 'google-apis-metastore_v1beta',
                client_version: Google::Apis::MetastoreV1beta::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Location::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Location
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
        #   accepts strings like "displayName=tokyo", and is documented in more detail in
        #   AIP-160 (https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the next_page_token field in the response. Send
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/locations', options)
          command.response_representation = Google::Apis::MetastoreV1beta::ListLocationsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a metastore federation in a project and location.
        # @param [String] parent
        #   Required. The relative resource name of the location in which to create a
        #   federation service, in the following form:projects/`project_number`/locations/`
        #   location_id`.
        # @param [Google::Apis::MetastoreV1beta::Federation] federation_object
        # @param [String] federation_id
        #   Required. The ID of the metastore federation, which is used as the final
        #   component of the metastore federation's name.This value must be between 2 and
        #   63 characters long inclusive, begin with a letter, end with a letter or number,
        #   and consist of alpha-numeric ASCII characters or hyphens.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_federation(parent, federation_object = nil, federation_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/federations', options)
          command.request_representation = Google::Apis::MetastoreV1beta::Federation::Representation
          command.request_object = federation_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['federationId'] = federation_id unless federation_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single federation.
        # @param [String] name
        #   Required. The relative resource name of the metastore federation to delete, in
        #   the following form:projects/`project_number`/locations/`location_id`/
        #   federations/`federation_id`.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_federation(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a single federation.
        # @param [String] name
        #   Required. The relative resource name of the metastore federation to retrieve,
        #   in the following form:projects/`project_number`/locations/`location_id`/
        #   federations/`federation_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Federation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Federation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_federation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Federation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Federation
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
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected.Requests for policies with any conditional role bindings must specify
        #   version 3. Policies with no conditional role bindings may specify any valid
        #   value or leave the field unset.The policy in the response might use the policy
        #   version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1.To learn which resources support
        #   conditions in their IAM policies, see the IAM documentation (https://cloud.
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_federation_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists federations in a project and location.
        # @param [String] parent
        #   Required. The relative resource name of the location of metastore federations
        #   to list, in the following form: projects/`project_number`/locations/`
        #   location_id`.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specify the ordering of results as described in Sorting Order (https:
        #   //cloud.google.com/apis/design/design_patterns#sorting_order). If not
        #   specified, the results will be sorted in the default order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of federations to return. The response may
        #   contain less than the maximum number. If unspecified, no more than 500
        #   services are returned. The maximum value is 1000; values above 1000 are
        #   changed to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListFederationServices call.
        #   Provide this token to retrieve the subsequent page.To retrieve the first page,
        #   supply an empty page token.When paginating, other parameters provided to
        #   ListFederationServices must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::ListFederationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::ListFederationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_federations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/federations', options)
          command.response_representation = Google::Apis::MetastoreV1beta::ListFederationsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::ListFederationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the fields of a federation.
        # @param [String] name
        #   Immutable. The relative resource name of the federation, of the form: projects/
        #   `project_number`/locations/`location_id`/federations/`federation_id``.
        # @param [Google::Apis::MetastoreV1beta::Federation] federation_object
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] update_mask
        #   Required. A field mask used to specify the fields to be overwritten in the
        #   metastore federation resource by the update. Fields specified in the
        #   update_mask are relative to the resource (not to the full request). A field is
        #   overwritten if it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_federation(name, federation_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::MetastoreV1beta::Federation::Representation
          command.request_object = federation_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
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
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::MetastoreV1beta::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_federation_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MetastoreV1beta::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
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
        # @param [Google::Apis::MetastoreV1beta::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_federation_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Empty::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Empty
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::MetastoreV1beta::ListOperationsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Alter metadata resource location. The metadata resource can be a database,
        # table, or partition. This functionality only updates the parent directory for
        # the respective metadata resource and does not transfer any existing data to
        # the new location.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to mutate
        #   metadata, in the following format:projects/`project_id`/locations/`location_id`
        #   /services/`service_id`.
        # @param [Google::Apis::MetastoreV1beta::AlterMetadataResourceLocationRequest] alter_metadata_resource_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def alter_project_location_service_location(service, alter_metadata_resource_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+service}:alterLocation', options)
          command.request_representation = Google::Apis::MetastoreV1beta::AlterMetadataResourceLocationRequest::Representation
          command.request_object = alter_metadata_resource_location_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a metastore service in a project and location.
        # @param [String] parent
        #   Required. The relative resource name of the location in which to create a
        #   metastore service, in the following form:projects/`project_number`/locations/`
        #   location_id`.
        # @param [Google::Apis::MetastoreV1beta::Service] service_object
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] service_id
        #   Required. The ID of the metastore service, which is used as the final
        #   component of the metastore service's name.This value must be between 2 and 63
        #   characters long inclusive, begin with a letter, end with a letter or number,
        #   and consist of alpha-numeric ASCII characters or hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service(parent, service_object = nil, request_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/services', options)
          command.request_representation = Google::Apis::MetastoreV1beta::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single service.
        # @param [String] name
        #   Required. The relative resource name of the metastore service to delete, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports metadata from a service.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to run export,
        #   in the following form:projects/`project_id`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV1beta::ExportMetadataRequest] export_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_service_metadata(service, export_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+service}:exportMetadata', options)
          command.request_representation = Google::Apis::MetastoreV1beta::ExportMetadataRequest::Representation
          command.request_object = export_metadata_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a single service.
        # @param [String] name
        #   Required. The relative resource name of the metastore service to retrieve, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Service::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Service
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
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected.Requests for policies with any conditional role bindings must specify
        #   version 3. Policies with no conditional role bindings may specify any valid
        #   value or leave the field unset.The policy in the response might use the policy
        #   version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1.To learn which resources support
        #   conditions in their IAM policies, see the IAM documentation (https://cloud.
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists services in a project and location.
        # @param [String] parent
        #   Required. The relative resource name of the location of metastore services to
        #   list, in the following form:projects/`project_number`/locations/`location_id`.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specify the ordering of results as described in Sorting Order (https:
        #   //cloud.google.com/apis/design/design_patterns#sorting_order). If not
        #   specified, the results will be sorted in the default order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of services to return. The response may contain
        #   less than the maximum number. If unspecified, no more than 500 services are
        #   returned. The maximum value is 1000; values above 1000 are changed to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous DataprocMetastore.
        #   ListServices call. Provide this token to retrieve the subsequent page.To
        #   retrieve the first page, supply an empty page token.When paginating, other
        #   parameters provided to DataprocMetastore.ListServices must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_services(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/services', options)
          command.response_representation = Google::Apis::MetastoreV1beta::ListServicesResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Move a table to another database.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to mutate
        #   metadata, in the following format:projects/`project_id`/locations/`location_id`
        #   /services/`service_id`.
        # @param [Google::Apis::MetastoreV1beta::MoveTableToDatabaseRequest] move_table_to_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_service_table_to_database(service, move_table_to_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+service}:moveTableToDatabase', options)
          command.request_representation = Google::Apis::MetastoreV1beta::MoveTableToDatabaseRequest::Representation
          command.request_object = move_table_to_database_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single service.
        # @param [String] name
        #   Immutable. The relative resource name of the metastore service, in the
        #   following format:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV1beta::Service] service_object
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] update_mask
        #   Required. A field mask used to specify the fields to be overwritten in the
        #   metastore service resource by the update. Fields specified in the update_mask
        #   are relative to the resource (not to the full request). A field is overwritten
        #   if it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_service(name, service_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::MetastoreV1beta::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Query DPMS metadata.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to query
        #   metadata, in the following format:projects/`project_id`/locations/`location_id`
        #   /services/`service_id`.
        # @param [Google::Apis::MetastoreV1beta::QueryMetadataRequest] query_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_service_metadata(service, query_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+service}:queryMetadata', options)
          command.request_representation = Google::Apis::MetastoreV1beta::QueryMetadataRequest::Representation
          command.request_object = query_metadata_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the attached IAM policies for a resource
        # @param [String] resource
        #   Required. The relative resource name of the dataplane resource to remove IAM
        #   policy, in the following form:projects/`project_id`/locations/`location_id`/
        #   services/`service_id`/databases/`database_id` or projects/`project_id`/
        #   locations/`location_id`/services/`service_id`/databases/`database_id`/tables/`
        #   table_id`.
        # @param [Google::Apis::MetastoreV1beta::RemoveIamPolicyRequest] remove_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::RemoveIamPolicyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::RemoveIamPolicyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_service_iam_policy(resource, remove_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:removeIamPolicy', options)
          command.request_representation = Google::Apis::MetastoreV1beta::RemoveIamPolicyRequest::Representation
          command.request_object = remove_iam_policy_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::RemoveIamPolicyResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::RemoveIamPolicyResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a service from a backup.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to run restore,
        #   in the following form:projects/`project_id`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV1beta::RestoreServiceRequest] restore_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_service(service, restore_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+service}:restore', options)
          command.request_representation = Google::Apis::MetastoreV1beta::RestoreServiceRequest::Representation
          command.request_object = restore_service_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['service'] = service unless service.nil?
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
        # @param [Google::Apis::MetastoreV1beta::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_service_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MetastoreV1beta::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
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
        # @param [Google::Apis::MetastoreV1beta::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_service_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new backup in a given project and location.
        # @param [String] parent
        #   Required. The relative resource name of the service in which to create a
        #   backup of the following form:projects/`project_number`/locations/`location_id`/
        #   services/`service_id`.
        # @param [Google::Apis::MetastoreV1beta::Backup] backup_object
        # @param [String] backup_id
        #   Required. The ID of the backup, which is used as the final component of the
        #   backup's name.This value must be between 1 and 64 characters long, begin with
        #   a letter, end with a letter or number, and consist of alpha-numeric ASCII
        #   characters or hyphens.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service_backup(parent, backup_object = nil, backup_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/backups', options)
          command.request_representation = Google::Apis::MetastoreV1beta::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupId'] = backup_id unless backup_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single backup.
        # @param [String] name
        #   Required. The relative resource name of the backup to delete, in the following
        #   form:projects/`project_number`/locations/`location_id`/services/`service_id`/
        #   backups/`backup_id`.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service_backup(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single backup.
        # @param [String] name
        #   Required. The relative resource name of the backup to retrieve, in the
        #   following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`/backups/`backup_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Backup::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Backup
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
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected.Requests for policies with any conditional role bindings must specify
        #   version 3. Policies with no conditional role bindings may specify any valid
        #   value or leave the field unset.The policy in the response might use the policy
        #   version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1.To learn which resources support
        #   conditions in their IAM policies, see the IAM documentation (https://cloud.
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_backup_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists backups in a service.
        # @param [String] parent
        #   Required. The relative resource name of the service whose backups to list, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`/backups.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specify the ordering of results as described in Sorting Order (https:
        #   //cloud.google.com/apis/design/design_patterns#sorting_order). If not
        #   specified, the results will be sorted in the default order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of backups to return. The response may contain
        #   less than the maximum number. If unspecified, no more than 500 backups are
        #   returned. The maximum value is 1000; values above 1000 are changed to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous DataprocMetastore.ListBackups
        #   call. Provide this token to retrieve the subsequent page.To retrieve the first
        #   page, supply an empty page token.When paginating, other parameters provided to
        #   DataprocMetastore.ListBackups must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_service_backups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/backups', options)
          command.response_representation = Google::Apis::MetastoreV1beta::ListBackupsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
        # @param [Google::Apis::MetastoreV1beta::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_backup_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MetastoreV1beta::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
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
        # @param [Google::Apis::MetastoreV1beta::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_backup_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected.Requests for policies with any conditional role bindings must specify
        #   version 3. Policies with no conditional role bindings may specify any valid
        #   value or leave the field unset.The policy in the response might use the policy
        #   version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1.To learn which resources support
        #   conditions in their IAM policies, see the IAM documentation (https://cloud.
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_database_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
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
        # @param [Google::Apis::MetastoreV1beta::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_database_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MetastoreV1beta::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
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
        # @param [Google::Apis::MetastoreV1beta::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_database_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected.Requests for policies with any conditional role bindings must specify
        #   version 3. Policies with no conditional role bindings may specify any valid
        #   value or leave the field unset.The policy in the response might use the policy
        #   version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1.To learn which resources support
        #   conditions in their IAM policies, see the IAM documentation (https://cloud.
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
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_database_table_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
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
        # @param [Google::Apis::MetastoreV1beta::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_table_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MetastoreV1beta::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::Policy::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Policy
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
        # @param [Google::Apis::MetastoreV1beta::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_table_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new MetadataImport in a given project and location.
        # @param [String] parent
        #   Required. The relative resource name of the service in which to create a
        #   metastore import, in the following form:projects/`project_number`/locations/`
        #   location_id`/services/`service_id`.
        # @param [Google::Apis::MetastoreV1beta::MetadataImport] metadata_import_object
        # @param [String] metadata_import_id
        #   Required. The ID of the metadata import, which is used as the final component
        #   of the metadata import's name.This value must be between 1 and 64 characters
        #   long, begin with a letter, end with a letter or number, and consist of alpha-
        #   numeric ASCII characters or hyphens.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service_metadata_import(parent, metadata_import_object = nil, metadata_import_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/metadataImports', options)
          command.request_representation = Google::Apis::MetastoreV1beta::MetadataImport::Representation
          command.request_object = metadata_import_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['metadataImportId'] = metadata_import_id unless metadata_import_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single import.
        # @param [String] name
        #   Required. The relative resource name of the metadata import to retrieve, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`/metadataImports/`import_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::MetadataImport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::MetadataImport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_metadata_import(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV1beta::MetadataImport::Representation
          command.response_class = Google::Apis::MetastoreV1beta::MetadataImport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists imports in a service.
        # @param [String] parent
        #   Required. The relative resource name of the service whose metadata imports to
        #   list, in the following form:projects/`project_number`/locations/`location_id`/
        #   services/`service_id`/metadataImports.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specify the ordering of results as described in Sorting Order (https:
        #   //cloud.google.com/apis/design/design_patterns#sorting_order). If not
        #   specified, the results will be sorted in the default order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of imports to return. The response may contain
        #   less than the maximum number. If unspecified, no more than 500 imports are
        #   returned. The maximum value is 1000; values above 1000 are changed to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous DataprocMetastore.
        #   ListServices call. Provide this token to retrieve the subsequent page.To
        #   retrieve the first page, supply an empty page token.When paginating, other
        #   parameters provided to DataprocMetastore.ListServices must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::ListMetadataImportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::ListMetadataImportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_service_metadata_imports(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/metadataImports', options)
          command.response_representation = Google::Apis::MetastoreV1beta::ListMetadataImportsResponse::Representation
          command.response_class = Google::Apis::MetastoreV1beta::ListMetadataImportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single import. Only the description field of MetadataImport is
        # supported to be updated.
        # @param [String] name
        #   Immutable. The relative resource name of the metadata import, of the form:
        #   projects/`project_number`/locations/`location_id`/services/`service_id`/
        #   metadataImports/`metadata_import_id`.
        # @param [Google::Apis::MetastoreV1beta::MetadataImport] metadata_import_object
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] update_mask
        #   Required. A field mask used to specify the fields to be overwritten in the
        #   metadata import resource by the update. Fields specified in the update_mask
        #   are relative to the resource (not to the full request). A field is overwritten
        #   if it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_service_metadata_import(name, metadata_import_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::MetastoreV1beta::MetadataImport::Representation
          command.request_object = metadata_import_object
          command.response_representation = Google::Apis::MetastoreV1beta::Operation::Representation
          command.response_class = Google::Apis::MetastoreV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
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
