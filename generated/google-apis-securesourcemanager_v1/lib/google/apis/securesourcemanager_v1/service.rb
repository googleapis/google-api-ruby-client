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
    module SecuresourcemanagerV1
      # Secure Source Manager API
      #
      # Regionally deployed, single-tenant managed source code repository hosted on
      #  Google Cloud.
      #
      # @example
      #    require 'google/apis/securesourcemanager_v1'
      #
      #    Securesourcemanager = Google::Apis::SecuresourcemanagerV1 # Alias the module
      #    service = Securesourcemanager::SecureSourceManagerService.new
      #
      # @see https://cloud.google.com/secure-source-manager
      class SecureSourceManagerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://securesourcemanager.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-securesourcemanager_v1',
                client_version: Google::Apis::SecuresourcemanagerV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Location::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new instance in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::SecuresourcemanagerV1::Instance] instance_object
        # @param [String] instance_id
        #   Required. ID of the instance to be created.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_instance(parent, instance_object = nil, instance_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['instanceId'] = instance_id unless instance_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single instance.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_instance(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single instance.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Instance::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Instance
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Instances in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInstancesRequest.
        # @param [String] filter
        #   Filter for filtering results.
        # @param [String] order_by
        #   Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instances(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instances', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListInstancesResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListInstancesResponse
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
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::SecuresourcemanagerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Policy
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
        # @param [Google::Apis::SecuresourcemanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_instance_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse
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
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::SecuresourcemanagerV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Empty
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Empty::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Empty
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new repository in a given project and location. The Repository.
        # Instance field is required in the request body for requests using the
        # securesourcemanager.googleapis.com endpoint.
        # @param [String] parent
        #   Required. The project in which to create the repository. Values are of the
        #   form `projects/`project_number`/locations/`location_id``
        # @param [Google::Apis::SecuresourcemanagerV1::Repository] repository_object
        # @param [String] repository_id
        #   Required. The ID to use for the repository, which will become the final
        #   component of the repository's resource name. This value should be 4-63
        #   characters, and valid characters are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository(parent, repository_object = nil, repository_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/repositories', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Repository::Representation
          command.request_object = repository_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['repositoryId'] = repository_id unless repository_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Repository.
        # @param [String] name
        #   Required. Name of the repository to delete. The format is `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id``.
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the repository is not found, the request will
        #   succeed but no action will be taken on the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository(name, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a blob from a repository.
        # @param [String] repository
        #   Required. The format is `projects/`project_number`/locations/`location_id`/
        #   repositories/`repository_id``. Specifies the repository containing the blob.
        # @param [String] sha
        #   Required. The SHA-1 hash of the blob to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::FetchBlobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::FetchBlobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_repository_blob(repository, sha: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+repository}:fetchBlob', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::FetchBlobResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::FetchBlobResponse
          command.params['repository'] = repository unless repository.nil?
          command.query['sha'] = sha unless sha.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a tree from a repository.
        # @param [String] repository
        #   Required. The format is `projects/`project_number`/locations/`location_id`/
        #   repositories/`repository_id``. Specifies the repository to fetch the tree from.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, at most 10,000 items will be returned.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [Boolean] recursive
        #   Optional. If true, include all subfolders and their files in the response. If
        #   false, only the immediate children are returned.
        # @param [String] ref
        #   Optional. `ref` can be a SHA-1 hash, a branch name, or a tag. Specifies which
        #   tree to fetch. If not specified, the default branch will be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::FetchTreeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::FetchTreeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_repository_tree(repository, page_size: nil, page_token: nil, recursive: nil, ref: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+repository}:fetchTree', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::FetchTreeResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::FetchTreeResponse
          command.params['repository'] = repository unless repository.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['recursive'] = recursive unless recursive.nil?
          command.query['ref'] = ref unless ref.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata of a repository.
        # @param [String] name
        #   Required. Name of the repository to retrieve. The format is `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Repository] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Repository]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Repository::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Repository
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get IAM policy for a repository.
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
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Repositories in a given project and location. The instance field is
        # required in the query parameter for requests using the securesourcemanager.
        # googleapis.com endpoint.
        # @param [String] parent
        #   Required. Parent value for ListRepositoriesRequest.
        # @param [String] filter
        #   Optional. Filter results.
        # @param [String] instance
        #   Optional. The name of the instance in which the repository is hosted,
        #   formatted as `projects/`project_number`/locations/`location_id`/instances/`
        #   instance_id``. When listing repositories via securesourcemanager.googleapis.
        #   com, this field is required. When listing repositories via *.sourcemanager.dev,
        #   this field is ignored.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repositories(parent, filter: nil, instance: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/repositories', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListRepositoriesResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListRepositoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['instance'] = instance unless instance.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadata of a repository.
        # @param [String] name
        #   Optional. A unique identifier for a repository. The name should be of the
        #   format: `projects/`project`/locations/`location_id`/repositories/`
        #   repository_id``
        # @param [Google::Apis::SecuresourcemanagerV1::Repository] repository_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   repository resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [Boolean] validate_only
        #   Optional. False by default. If set to true, the request is validated and the
        #   user is provided with an expected result, but no actual change is made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository(name, repository_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Repository::Representation
          command.request_object = repository_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set IAM policy on a repository.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::SecuresourcemanagerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_repository_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Policy::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Test IAM permissions on a repository. IAM permission checks are not required
        # on this method.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::SecuresourcemanagerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_repository_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # CreateBranchRule creates a branch rule in a given repository.
        # @param [String] parent
        # @param [Google::Apis::SecuresourcemanagerV1::BranchRule] branch_rule_object
        # @param [String] branch_rule_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_branch_rule(parent, branch_rule_object = nil, branch_rule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/branchRules', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::BranchRule::Representation
          command.request_object = branch_rule_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['branchRuleId'] = branch_rule_id unless branch_rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteBranchRule deletes a branch rule.
        # @param [String] name
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the branch rule is not found, the request will
        #   succeed but no action will be taken on the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_branch_rule(name, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetBranchRule gets a branch rule.
        # @param [String] name
        #   Required. Name of the repository to retrieve. The format is `projects/`project`
        #   /locations/`location`/repositories/`repository`/branchRules/`branch_rule``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::BranchRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::BranchRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_branch_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::BranchRule::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::BranchRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ListBranchRules lists branch rules in a given repository.
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListBranchRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListBranchRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_branch_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/branchRules', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListBranchRulesResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListBranchRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # UpdateBranchRule updates a branch rule.
        # @param [String] name
        #   Optional. A unique identifier for a BranchRule. The name should be of the
        #   format: `projects/`project`/locations/`location`/repositories/`repository`/
        #   branchRules/`branch_rule``
        # @param [Google::Apis::SecuresourcemanagerV1::BranchRule] branch_rule_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   branchRule resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The special value "*" means full replacement.
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request and preview the review, but do not
        #   actually post it. (https://google.aip.dev/163, for declarative friendly)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_branch_rule(name, branch_rule_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::BranchRule::Representation
          command.request_object = branch_rule_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new hook in a given repository.
        # @param [String] parent
        #   Required. The repository in which to create the hook. Values are of the form `
        #   projects/`project_number`/locations/`location_id`/repositories/`repository_id``
        # @param [Google::Apis::SecuresourcemanagerV1::Hook] hook_object
        # @param [String] hook_id
        #   Required. The ID to use for the hook, which will become the final component of
        #   the hook's resource name. This value restricts to lower-case letters, numbers,
        #   and hyphen, with the first character a letter, the last a letter or a number,
        #   and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_hook(parent, hook_object = nil, hook_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/hooks', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Hook::Representation
          command.request_object = hook_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['hookId'] = hook_id unless hook_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Hook.
        # @param [String] name
        #   Required. Name of the hook to delete. The format is `projects/`project_number`/
        #   locations/`location_id`/repositories/`repository_id`/hooks/`hook_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_hook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata of a hook.
        # @param [String] name
        #   Required. Name of the hook to retrieve. The format is `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id`/hooks/`
        #   hook_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Hook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Hook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_hook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Hook::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Hook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists hooks in a given repository.
        # @param [String] parent
        #   Required. Parent value for ListHooksRequest.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListHooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListHooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_hooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/hooks', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListHooksResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListHooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadata of a hook.
        # @param [String] name
        #   Identifier. A unique identifier for a Hook. The name should be of the format: `
        #   projects/`project`/locations/`location_id`/repositories/`repository_id`/hooks/`
        #   hook_id``
        # @param [Google::Apis::SecuresourcemanagerV1::Hook] hook_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   hook resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The special value "*" means full replacement.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_hook(name, hook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Hook::Representation
          command.request_object = hook_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Closes an issue.
        # @param [String] name
        #   Required. Name of the issue to close. The format is `projects/`project_number`/
        #   locations/`location_id`/repositories/`repository_id`/issues/`issue_id``.
        # @param [Google::Apis::SecuresourcemanagerV1::CloseIssueRequest] close_issue_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_issue(name, close_issue_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:close', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::CloseIssueRequest::Representation
          command.request_object = close_issue_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an issue.
        # @param [String] parent
        #   Required. The repository in which to create the issue. Format: `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id``
        # @param [Google::Apis::SecuresourcemanagerV1::Issue] issue_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_issue(parent, issue_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/issues', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Issue::Representation
          command.request_object = issue_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an issue.
        # @param [String] name
        #   Required. Name of the issue to delete. The format is `projects/`project_number`
        #   /locations/`location_id`/repositories/`repository_id`/issues/`issue_id``.
        # @param [String] etag
        #   Optional. The current etag of the issue. If the etag is provided and does not
        #   match the current etag of the issue, deletion will be blocked and an ABORTED
        #   error will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_issue(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue.
        # @param [String] name
        #   Required. Name of the issue to retrieve. The format is `projects/`project`/
        #   locations/`location`/repositories/`repository`/issues/`issue_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_issue(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Issue::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Issue
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists issues in a repository.
        # @param [String] parent
        #   Required. The repository in which to list issues. Format: `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id``
        # @param [String] filter
        #   Optional. Used to filter the resulting issues list.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_issues(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/issues', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListIssuesResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Opens an issue.
        # @param [String] name
        #   Required. Name of the issue to open. The format is `projects/`project_number`/
        #   locations/`location_id`/repositories/`repository_id`/issues/`issue_id``.
        # @param [Google::Apis::SecuresourcemanagerV1::OpenIssueRequest] open_issue_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def open_issue(name, open_issue_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:open', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::OpenIssueRequest::Representation
          command.request_object = open_issue_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a issue.
        # @param [String] name
        #   Identifier. Unique identifier for an issue. The issue id is generated by the
        #   server. Format: `projects/`project`/locations/`location`/repositories/`
        #   repository`/issues/`issue_id``
        # @param [Google::Apis::SecuresourcemanagerV1::Issue] issue_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   issue resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The special value "*" means full replacement.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_issue(name, issue_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::Issue::Representation
          command.request_object = issue_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an issue comment.
        # @param [String] parent
        #   Required. The issue in which to create the issue comment. Format: `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id`/issues/`
        #   issue_id``
        # @param [Google::Apis::SecuresourcemanagerV1::IssueComment] issue_comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_issue_issue_comment(parent, issue_comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/issueComments', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::IssueComment::Representation
          command.request_object = issue_comment_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an issue comment.
        # @param [String] name
        #   Required. Name of the issue comment to delete. The format is `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id`/issues/`
        #   issue_id`/issueComments/`comment_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_issue_issue_comment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue comment.
        # @param [String] name
        #   Required. Name of the issue comment to retrieve. The format is `projects/`
        #   project`/locations/`location`/repositories/`repository`/issues/`issue_id`/
        #   issueComments/`comment_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::IssueComment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::IssueComment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_issue_issue_comment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::IssueComment::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::IssueComment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists comments in an issue.
        # @param [String] parent
        #   Required. The issue in which to list the comments. Format: `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id`/issues/`
        #   issue_id``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListIssueCommentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListIssueCommentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_issue_issue_comments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/issueComments', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListIssueCommentsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListIssueCommentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an issue comment.
        # @param [String] name
        #   Identifier. Unique identifier for an issue comment. The comment id is
        #   generated by the server. Format: `projects/`project`/locations/`location`/
        #   repositories/`repository`/issues/`issue`/issueComments/`comment_id``
        # @param [Google::Apis::SecuresourcemanagerV1::IssueComment] issue_comment_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   issue comment resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. The special value "*" means full replacement.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_issue_issue_comment(name, issue_comment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::IssueComment::Representation
          command.request_object = issue_comment_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Closes a pull request without merging.
        # @param [String] name
        #   Required. The pull request to close. Format: `projects/`project_number`/
        #   locations/`location_id`/repositories/`repository_id`/pullRequests/`
        #   pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::ClosePullRequestRequest] close_pull_request_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_pull_request(name, close_pull_request_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:close', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::ClosePullRequestRequest::Representation
          command.request_object = close_pull_request_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pull request.
        # @param [String] parent
        #   Required. The repository that the pull request is created from. Format: `
        #   projects/`project_number`/locations/`location_id`/repositories/`repository_id``
        # @param [Google::Apis::SecuresourcemanagerV1::PullRequest] pull_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_pull_request(parent, pull_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/pullRequests', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::PullRequest::Representation
          command.request_object = pull_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a pull request.
        # @param [String] name
        #   Required. Name of the pull request to retrieve. The format is `projects/`
        #   project`/locations/`location`/repositories/`repository`/pullRequests/`
        #   pull_request``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::PullRequest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::PullRequest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_pull_request(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::PullRequest::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::PullRequest
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pull requests in a repository.
        # @param [String] parent
        #   Required. The repository in which to list pull requests. Format: `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListPullRequestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListPullRequestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_pull_requests(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/pullRequests', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListPullRequestsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListPullRequestsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a pull request's file diffs.
        # @param [String] name
        #   Required. The pull request to list file diffs for. Format: `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id`/
        #   pullRequests/`pull_request_id``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListPullRequestFileDiffsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListPullRequestFileDiffsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_pull_request_file_diffs(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:listFileDiffs', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListPullRequestFileDiffsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListPullRequestFileDiffsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Merges a pull request.
        # @param [String] name
        #   Required. The pull request to merge. Format: `projects/`project_number`/
        #   locations/`location_id`/repositories/`repository_id`/pullRequests/`
        #   pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::MergePullRequestRequest] merge_pull_request_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def merge_pull_request(name, merge_pull_request_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:merge', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::MergePullRequestRequest::Representation
          command.request_object = merge_pull_request_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Opens a pull request.
        # @param [String] name
        #   Required. The pull request to open. Format: `projects/`project_number`/
        #   locations/`location_id`/repositories/`repository_id`/pullRequests/`
        #   pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::OpenPullRequestRequest] open_pull_request_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def open_pull_request(name, open_pull_request_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:open', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::OpenPullRequestRequest::Representation
          command.request_object = open_pull_request_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a pull request.
        # @param [String] name
        #   Output only. A unique identifier for a PullRequest. The number appended at the
        #   end is generated by the server. Format: `projects/`project`/locations/`
        #   location`/repositories/`repository`/pullRequests/`pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::PullRequest] pull_request_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   pull request resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. The special value "*" means full replacement.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_pull_request(name, pull_request_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::PullRequest::Representation
          command.request_object = pull_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch creates pull request comments.
        # @param [String] parent
        #   Required. The pull request in which to create the pull request comments.
        #   Format: `projects/`project_number`/locations/`location_id`/repositories/`
        #   repository_id`/pullRequests/`pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::BatchCreatePullRequestCommentsRequest] batch_create_pull_request_comments_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_pull_request_comments(parent, batch_create_pull_request_comments_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/pullRequestComments:batchCreate', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::BatchCreatePullRequestCommentsRequest::Representation
          command.request_object = batch_create_pull_request_comments_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pull request comment.
        # @param [String] parent
        #   Required. The pull request in which to create the pull request comment. Format:
        #   `projects/`project_number`/locations/`location_id`/repositories/`
        #   repository_id`/pullRequests/`pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::PullRequestComment] pull_request_comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_repository_pull_request_pull_request_comment(parent, pull_request_comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/pullRequestComments', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::PullRequestComment::Representation
          command.request_object = pull_request_comment_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a pull request comment.
        # @param [String] name
        #   Required. Name of the pull request comment to delete. The format is `projects/`
        #   project_number`/locations/`location_id`/repositories/`repository_id`/
        #   pullRequests/`pull_request_id`/pullRequestComments/`comment_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_repository_pull_request_pull_request_comment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a pull request comment.
        # @param [String] name
        #   Required. Name of the pull request comment to retrieve. The format is `
        #   projects/`project_number`/locations/`location_id`/repositories/`repository_id`/
        #   pullRequests/`pull_request_id`/pullRequestComments/`comment_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::PullRequestComment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::PullRequestComment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_repository_pull_request_pull_request_comment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::PullRequestComment::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::PullRequestComment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pull request comments.
        # @param [String] parent
        #   Required. The pull request in which to list pull request comments. Format: `
        #   projects/`project_number`/locations/`location_id`/repositories/`repository_id`/
        #   pullRequests/`pull_request_id``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. If unspecified, at most 100 pull request
        #   comments will be returned. The maximum value is 100; values above 100 will be
        #   coerced to 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::ListPullRequestCommentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::ListPullRequestCommentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_repository_pull_request_pull_request_comments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/pullRequestComments', options)
          command.response_representation = Google::Apis::SecuresourcemanagerV1::ListPullRequestCommentsResponse::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::ListPullRequestCommentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a pull request comment.
        # @param [String] name
        #   Identifier. Unique identifier for the pull request comment. The comment id is
        #   generated by the server. Format: `projects/`project`/locations/`location`/
        #   repositories/`repository`/pullRequests/`pull_request`/pullRequestComments/`
        #   comment_id``
        # @param [Google::Apis::SecuresourcemanagerV1::PullRequestComment] pull_request_comment_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   pull request comment resource by the update. Updatable fields are `body`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_repository_pull_request_pull_request_comment(name, pull_request_comment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::PullRequestComment::Representation
          command.request_object = pull_request_comment_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resolves pull request comments.
        # @param [String] parent
        #   Required. The pull request in which to resolve the pull request comments.
        #   Format: `projects/`project_number`/locations/`location_id`/repositories/`
        #   repository_id`/pullRequests/`pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::ResolvePullRequestCommentsRequest] resolve_pull_request_comments_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_pull_request_comments(parent, resolve_pull_request_comments_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/pullRequestComments:resolve', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::ResolvePullRequestCommentsRequest::Representation
          command.request_object = resolve_pull_request_comments_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unresolves pull request comment.
        # @param [String] parent
        #   Required. The pull request in which to resolve the pull request comments.
        #   Format: `projects/`project_number`/locations/`location_id`/repositories/`
        #   repository_id`/pullRequests/`pull_request_id``
        # @param [Google::Apis::SecuresourcemanagerV1::UnresolvePullRequestCommentsRequest] unresolve_pull_request_comments_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuresourcemanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuresourcemanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unresolve_pull_request_comments(parent, unresolve_pull_request_comments_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/pullRequestComments:unresolve', options)
          command.request_representation = Google::Apis::SecuresourcemanagerV1::UnresolvePullRequestCommentsRequest::Representation
          command.request_object = unresolve_pull_request_comments_request_object
          command.response_representation = Google::Apis::SecuresourcemanagerV1::Operation::Representation
          command.response_class = Google::Apis::SecuresourcemanagerV1::Operation
          command.params['parent'] = parent unless parent.nil?
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
