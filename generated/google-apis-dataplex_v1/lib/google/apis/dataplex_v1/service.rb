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
    module DataplexV1
      # Cloud Dataplex API
      #
      # Dataplex API is used to manage the lifecycle of data lakes.
      #
      # @example
      #    require 'google/apis/dataplex_v1'
      #
      #    Dataplex = Google::Apis::DataplexV1 # Alias the module
      #    service = Dataplex::CloudDataplexService.new
      #
      # @see https://cloud.google.com/dataplex/docs
      class CloudDataplexService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://dataplex.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-dataplex_v1',
                client_version: Google::Apis::DataplexV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Create an EncryptionConfig.
        # @param [String] parent
        #   Required. The location at which the EncryptionConfig is to be created.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig] google_cloud_dataplex_v1_encryption_config_object
        # @param [String] encryption_config_id
        #   Required. The ID of the EncryptionConfig to create. Currently, only a value of
        #   "default" is supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_encryption_config(parent, google_cloud_dataplex_v1_encryption_config_object = nil, encryption_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/encryptionConfigs', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig::Representation
          command.request_object = google_cloud_dataplex_v1_encryption_config_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['encryptionConfigId'] = encryption_config_id unless encryption_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an EncryptionConfig.
        # @param [String] name
        #   Required. The name of the EncryptionConfig to delete.
        # @param [String] etag
        #   Optional. Etag of the EncryptionConfig. This is a strong etag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_encryption_config(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an EncryptionConfig.
        # @param [String] name
        #   Required. The name of the EncryptionConfig to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_encryption_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_encryption_config_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List EncryptionConfigs.
        # @param [String] parent
        #   Required. The location for which the EncryptionConfig is to be listed.
        # @param [String] filter
        #   Optional. Filter the EncryptionConfigs to be returned. Using bare literals: (
        #   These values will be matched anywhere it may appear in the object's field
        #   values) * filter=some_value Using fields: (These values will be matched only
        #   in the specified field) * filter=some_field=some_value Supported fields: *
        #   name, key, create_time, update_time, encryption_state Example: * filter=name=
        #   organizations/123/locations/us-central1/encryptionConfigs/test-config
        #   conjunctions: (AND, OR, NOT) * filter=name=organizations/123/locations/us-
        #   central1/encryptionConfigs/test-config AND mode=CMEK logical operators: (>, <,
        #   >=, <=, !=, =, :), * filter=create_time>2024-05-01T00:00:00.000Z
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of EncryptionConfigs to return. The service may
        #   return fewer than this value. If unspecified, at most 10 EncryptionConfigs
        #   will be returned. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListEncryptionConfigs call.
        #   Provide this to retrieve the subsequent page. When paginating, the parameters -
        #   filter and order_by provided to ListEncryptionConfigs must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEncryptionConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEncryptionConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_encryption_configs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/encryptionConfigs', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEncryptionConfigsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEncryptionConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an EncryptionConfig.
        # @param [String] name
        #   Identifier. The resource name of the EncryptionConfig. Format: organizations/`
        #   organization`/locations/`location`/encryptionConfigs/`encryption_config`
        #   Global location is not supported.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig] google_cloud_dataplex_v1_encryption_config_object
        # @param [String] update_mask
        #   Optional. Mask of fields to update. The service treats an omitted field mask
        #   as an implied field mask equivalent to all fields that are populated (have a
        #   non-empty value).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_encryption_config(name, google_cloud_dataplex_v1_encryption_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig::Representation
          command.request_object = google_cloud_dataplex_v1_encryption_config_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_location_encryption_config_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_organization_location_encryption_config_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DataplexV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_organization_location_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudLocationLocation
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up an entry by name using the permission on the source system.
        # @param [String] name
        #   Required. The project to which the request should be attributed in the
        #   following form: projects/`project`/locations/`location`.
        # @param [Array<String>, String] aspect_types
        #   Optional. Limits the aspects returned to the provided aspect types. It only
        #   works for CUSTOM view.
        # @param [String] entry
        #   Required. The resource name of the Entry: projects/`project`/locations/`
        #   location`/entryGroups/`entry_group`/entries/`entry`.
        # @param [Array<String>, String] paths
        #   Optional. Limits the aspects returned to those associated with the provided
        #   paths within the Entry. It only works for CUSTOM view.
        # @param [String] view
        #   Optional. View to control which parts of an entry the service should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_entry(name, aspect_types: nil, entry: nil, paths: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:lookupEntry', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry
          command.params['name'] = name unless name.nil?
          command.query['aspectTypes'] = aspect_types unless aspect_types.nil?
          command.query['entry'] = entry unless entry.nil?
          command.query['paths'] = paths unless paths.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for Entries matching the given query and scope.
        # @param [String] name
        #   Required. The project to which the request should be attributed in the
        #   following form: projects/`project`/locations/global.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results. Supported values are: relevance (
        #   default) last_modified_timestamp last_modified_timestamp asc
        # @param [Fixnum] page_size
        #   Optional. Number of results in the search page. If <=0, then defaults to 10.
        #   Max limit for page_size is 1000. Throws an invalid argument for page_size >
        #   1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous SearchEntries call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] query
        #   Required. The query against which entries in scope should be matched. The
        #   query syntax is defined in Search syntax for Dataplex Catalog (https://cloud.
        #   google.com/dataplex/docs/search-syntax).
        # @param [String] scope
        #   Optional. The scope under which the search should be operating. It must either
        #   be organizations/ or projects/. If it is unspecified, it defaults to the
        #   organization where the project provided in name is located.
        # @param [Boolean] semantic_search
        #   Optional. Specifies whether the search should understand the meaning and
        #   intent behind the query, rather than just matching keywords.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_entries(name, order_by: nil, page_size: nil, page_token: nil, query: nil, scope: nil, semantic_search: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:searchEntries', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResponse
          command.params['name'] = name unless name.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['scope'] = scope unless scope.nil?
          command.query['semanticSearch'] = semantic_search unless semantic_search.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an AspectType.
        # @param [String] parent
        #   Required. The resource name of the AspectType, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType] google_cloud_dataplex_v1_aspect_type_object
        # @param [String] aspect_type_id
        #   Required. AspectType identifier.
        # @param [Boolean] validate_only
        #   Optional. The service validates the request without performing any mutations.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_aspect_type(parent, google_cloud_dataplex_v1_aspect_type_object = nil, aspect_type_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/aspectTypes', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType::Representation
          command.request_object = google_cloud_dataplex_v1_aspect_type_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['aspectTypeId'] = aspect_type_id unless aspect_type_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AspectType.
        # @param [String] name
        #   Required. The resource name of the AspectType: projects/`project_number`/
        #   locations/`location_id`/aspectTypes/`aspect_type_id`.
        # @param [String] etag
        #   Optional. If the client provided etag value does not match the current etag
        #   value, the DeleteAspectTypeRequest method returns an ABORTED error response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_aspect_type(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an AspectType.
        # @param [String] name
        #   Required. The resource name of the AspectType: projects/`project_number`/
        #   locations/`location_id`/aspectTypes/`aspect_type_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_aspect_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_aspect_type_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AspectType resources in a project and location.
        # @param [String] parent
        #   Required. The resource name of the AspectType location, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [String] filter
        #   Optional. Filter request. Filters are case-sensitive. The service supports the
        #   following formats: labels.key1 = "value1" labels:key1 name = "value"These
        #   restrictions can be conjoined with AND, OR, and NOT conjunctions.
        # @param [String] order_by
        #   Optional. Orders the result by name or create_time fields. If not specified,
        #   the ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of AspectTypes to return. The service may return
        #   fewer than this value. If unspecified, the service returns at most 10
        #   AspectTypes. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListAspectTypes call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   you provide to ListAspectTypes must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAspectTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAspectTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_aspect_types(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/aspectTypes', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAspectTypesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAspectTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an AspectType.
        # @param [String] name
        #   Output only. The relative resource name of the AspectType, of the form:
        #   projects/`project_number`/locations/`location_id`/aspectTypes/`aspect_type_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType] google_cloud_dataplex_v1_aspect_type_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_aspect_type(name, google_cloud_dataplex_v1_aspect_type_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType::Representation
          command.request_object = google_cloud_dataplex_v1_aspect_type_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_aspect_type_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_aspect_type_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a DataAttributeBinding resource.
        # @param [String] parent
        #   Required. The resource name of the parent data taxonomy projects/`
        #   project_number`/locations/`location_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding] google_cloud_dataplex_v1_data_attribute_binding_object
        # @param [String] data_attribute_binding_id
        #   Required. DataAttributeBinding identifier. * Must contain only lowercase
        #   letters, numbers and hyphens. * Must start with a letter. * Must be between 1-
        #   63 characters. * Must end with a number or a letter. * Must be unique within
        #   the Location.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_attribute_binding(parent, google_cloud_dataplex_v1_data_attribute_binding_object = nil, data_attribute_binding_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dataAttributeBindings', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding::Representation
          command.request_object = google_cloud_dataplex_v1_data_attribute_binding_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['dataAttributeBindingId'] = data_attribute_binding_id unless data_attribute_binding_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataAttributeBinding resource. All attributes within the
        # DataAttributeBinding must be deleted before the DataAttributeBinding can be
        # deleted.
        # @param [String] name
        #   Required. The resource name of the DataAttributeBinding: projects/`
        #   project_number`/locations/`location_id`/dataAttributeBindings/`
        #   data_attribute_binding_id`
        # @param [String] etag
        #   Required. If the client provided etag value does not match the current etag
        #   value, the DeleteDataAttributeBindingRequest method returns an ABORTED error
        #   response. Etags must be used when calling the DeleteDataAttributeBinding.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_attribute_binding(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a DataAttributeBinding resource.
        # @param [String] name
        #   Required. The resource name of the DataAttributeBinding: projects/`
        #   project_number`/locations/`location_id`/dataAttributeBindings/`
        #   data_attribute_binding_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_attribute_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_attribute_binding_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DataAttributeBinding resources in a project and location.
        # @param [String] parent
        #   Required. The resource name of the Location: projects/`project_number`/
        #   locations/`location_id`
        # @param [String] filter
        #   Optional. Filter request. Filter using resource: filter=resource:"resource-
        #   name" Filter using attribute: filter=attributes:"attribute-name" Filter using
        #   attribute in paths list: filter=paths.attributes:"attribute-name"
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of DataAttributeBindings to return. The service may
        #   return fewer than this value. If unspecified, at most 10 DataAttributeBindings
        #   will be returned. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListDataAttributeBindings call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to ListDataAttributeBindings must match the call that
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributeBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributeBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_attribute_bindings(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataAttributeBindings', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributeBindingsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributeBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataAttributeBinding resource.
        # @param [String] name
        #   Output only. The relative resource name of the Data Attribute Binding, of the
        #   form: projects/`project_number`/locations/`location`/dataAttributeBindings/`
        #   data_attribute_binding_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding] google_cloud_dataplex_v1_data_attribute_binding_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_attribute_binding(name, google_cloud_dataplex_v1_data_attribute_binding_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding::Representation
          command.request_object = google_cloud_dataplex_v1_data_attribute_binding_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_data_attribute_binding_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_data_attribute_binding_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataScan resource.
        # @param [String] parent
        #   Required. The resource name of the parent location: projects/`project`/
        #   locations/`location_id` where project refers to a project_id or project_number
        #   and location_id refers to a Google Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan] google_cloud_dataplex_v1_data_scan_object
        # @param [String] data_scan_id
        #   Required. DataScan identifier. Must contain only lowercase letters, numbers
        #   and hyphens. Must start with a letter. Must end with a number or a letter.
        #   Must be between 1-63 characters. Must be unique within the customer project /
        #   location.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_scan(parent, google_cloud_dataplex_v1_data_scan_object = nil, data_scan_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dataScans', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan::Representation
          command.request_object = google_cloud_dataplex_v1_data_scan_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['dataScanId'] = data_scan_id unless data_scan_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataScan resource.
        # @param [String] name
        #   Required. The resource name of the dataScan: projects/`project`/locations/`
        #   location_id`/dataScans/`data_scan_id` where project refers to a project_id or
        #   project_number and location_id refers to a Google Cloud region.
        # @param [Boolean] force
        #   Optional. If set to true, any child resources of this data scan will also be
        #   deleted. (Otherwise, the request will only work if the data scan has no child
        #   resources.)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_scan(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates recommended data quality rules based on the results of a data
        # profiling scan.Use the recommendations to build rules for a data quality scan.
        # @param [String] name
        #   Required. The name must be one of the following: The name of a data scan with
        #   at least one successful, completed data profiling job The name of a successful,
        #   completed data profiling job (a data scan job where the job type is data
        #   profiling)
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesRequest] google_cloud_dataplex_v1_generate_data_quality_rules_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_data_scan_data_quality_rules(name, google_cloud_dataplex_v1_generate_data_quality_rules_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:generateDataQualityRules', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesRequest::Representation
          command.request_object = google_cloud_dataplex_v1_generate_data_quality_rules_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DataScan resource.
        # @param [String] name
        #   Required. The resource name of the dataScan: projects/`project`/locations/`
        #   location_id`/dataScans/`data_scan_id` where project refers to a project_id or
        #   project_number and location_id refers to a Google Cloud region.
        # @param [String] view
        #   Optional. Select the DataScan view to return. Defaults to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_scan(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_scan_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DataScans.
        # @param [String] parent
        #   Required. The resource name of the parent location: projects/`project`/
        #   locations/`location_id` where project refers to a project_id or project_number
        #   and location_id refers to a Google Cloud region.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields (name or create_time) for the result. If not
        #   specified, the ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of dataScans to return. The service may return fewer
        #   than this value. If unspecified, at most 500 scans will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListDataScans call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListDataScans must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScansResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScansResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_scans(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataScans', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScansResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScansResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataScan resource.
        # @param [String] name
        #   Output only. Identifier. The relative resource name of the scan, of the form:
        #   projects/`project`/locations/`location_id`/dataScans/`datascan_id`, where
        #   project refers to a project_id or project_number and location_id refers to a
        #   Google Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan] google_cloud_dataplex_v1_data_scan_object
        # @param [String] update_mask
        #   Optional. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_scan(name, google_cloud_dataplex_v1_data_scan_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan::Representation
          command.request_object = google_cloud_dataplex_v1_data_scan_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs an on-demand execution of a DataScan
        # @param [String] name
        #   Required. The resource name of the DataScan: projects/`project`/locations/`
        #   location_id`/dataScans/`data_scan_id`. where project refers to a project_id or
        #   project_number and location_id refers to a Google Cloud region.Only OnDemand
        #   data scans are allowed.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1RunDataScanRequest] google_cloud_dataplex_v1_run_data_scan_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1RunDataScanResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1RunDataScanResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_data_scan(name, google_cloud_dataplex_v1_run_data_scan_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1RunDataScanRequest::Representation
          command.request_object = google_cloud_dataplex_v1_run_data_scan_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1RunDataScanResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1RunDataScanResponse
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_data_scan_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_data_scan_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates recommended data quality rules based on the results of a data
        # profiling scan.Use the recommendations to build rules for a data quality scan.
        # @param [String] name
        #   Required. The name must be one of the following: The name of a data scan with
        #   at least one successful, completed data profiling job The name of a successful,
        #   completed data profiling job (a data scan job where the job type is data
        #   profiling)
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesRequest] google_cloud_dataplex_v1_generate_data_quality_rules_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_data_scan_job_data_quality_rules(name, google_cloud_dataplex_v1_generate_data_quality_rules_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:generateDataQualityRules', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesRequest::Representation
          command.request_object = google_cloud_dataplex_v1_generate_data_quality_rules_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GenerateDataQualityRulesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DataScanJob resource.
        # @param [String] name
        #   Required. The resource name of the DataScanJob: projects/`project`/locations/`
        #   location_id`/dataScans/`data_scan_id`/jobs/`data_scan_job_id` where project
        #   refers to a project_id or project_number and location_id refers to a Google
        #   Cloud region.
        # @param [String] view
        #   Optional. Select the DataScanJob view to return. Defaults to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_scan_job(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DataScanJobs under the given DataScan.
        # @param [String] parent
        #   Required. The resource name of the parent environment: projects/`project`/
        #   locations/`location_id`/dataScans/`data_scan_id` where project refers to a
        #   project_id or project_number and location_id refers to a Google Cloud region.
        # @param [String] filter
        #   Optional. An expression for filtering the results of the ListDataScanJobs
        #   request.If unspecified, all datascan jobs will be returned. Multiple filters
        #   can be applied (with AND, OR logical operators). Filters are case-sensitive.
        #   Allowed fields are: start_time end_timestart_time and end_time expect RFC-3339
        #   formatted strings (e.g. 2018-10-08T18:30:00-07:00).For instance, 'start_time >
        #   2018-10-08T00:00:00.123456789Z AND end_time < 2018-10-09T00:00:00.123456789Z'
        #   limits results to DataScanJobs between specified start and end times.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of DataScanJobs to return. The service may return
        #   fewer than this value. If unspecified, at most 10 DataScanJobs will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListDataScanJobs call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListDataScanJobs must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScanJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScanJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_scan_jobs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScanJobsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataScanJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a DataTaxonomy resource.
        # @param [String] parent
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy] google_cloud_dataplex_v1_data_taxonomy_object
        # @param [String] data_taxonomy_id
        #   Required. DataTaxonomy identifier. * Must contain only lowercase letters,
        #   numbers and hyphens. * Must start with a letter. * Must be between 1-63
        #   characters. * Must end with a number or a letter. * Must be unique within the
        #   Project.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_taxonomy(parent, google_cloud_dataplex_v1_data_taxonomy_object = nil, data_taxonomy_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dataTaxonomies', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy::Representation
          command.request_object = google_cloud_dataplex_v1_data_taxonomy_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['dataTaxonomyId'] = data_taxonomy_id unless data_taxonomy_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataTaxonomy resource. All attributes within the DataTaxonomy must
        # be deleted before the DataTaxonomy can be deleted.
        # @param [String] name
        #   Required. The resource name of the DataTaxonomy: projects/`project_number`/
        #   locations/`location_id`/dataTaxonomies/`data_taxonomy_id`
        # @param [String] etag
        #   Optional. If the client provided etag value does not match the current etag
        #   value,the DeleteDataTaxonomy method returns an ABORTED error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_taxonomy(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a DataTaxonomy resource.
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_taxonomy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_taxonomy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DataTaxonomy resources in a project and location.
        # @param [String] parent
        #   Required. The resource name of the DataTaxonomy location, of the form:
        #   projects/`project_number`/locations/`location_id` where location_id refers to
        #   a Google Cloud region.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of DataTaxonomies to return. The service may return
        #   fewer than this value. If unspecified, at most 10 DataTaxonomies will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListDataTaxonomies call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListDataTaxonomies must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_taxonomies(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataTaxonomies', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataTaxonomy resource.
        # @param [String] name
        #   Output only. The relative resource name of the DataTaxonomy, of the form:
        #   projects/`project_number`/locations/`location_id`/dataTaxonomies/`
        #   data_taxonomy_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy] google_cloud_dataplex_v1_data_taxonomy_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_taxonomy(name, google_cloud_dataplex_v1_data_taxonomy_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy::Representation
          command.request_object = google_cloud_dataplex_v1_data_taxonomy_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_data_taxonomy_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_data_taxonomy_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a DataAttribute resource.
        # @param [String] parent
        #   Required. The resource name of the parent data taxonomy projects/`
        #   project_number`/locations/`location_id`/dataTaxonomies/`data_taxonomy_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute] google_cloud_dataplex_v1_data_attribute_object
        # @param [String] data_attribute_id
        #   Required. DataAttribute identifier. * Must contain only lowercase letters,
        #   numbers and hyphens. * Must start with a letter. * Must be between 1-63
        #   characters. * Must end with a number or a letter. * Must be unique within the
        #   DataTaxonomy.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_taxonomy_attribute(parent, google_cloud_dataplex_v1_data_attribute_object = nil, data_attribute_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/attributes', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute::Representation
          command.request_object = google_cloud_dataplex_v1_data_attribute_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['dataAttributeId'] = data_attribute_id unless data_attribute_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Data Attribute resource.
        # @param [String] name
        #   Required. The resource name of the DataAttribute: projects/`project_number`/
        #   locations/`location_id`/dataTaxonomies/`dataTaxonomy`/attributes/`
        #   data_attribute_id`
        # @param [String] etag
        #   Optional. If the client provided etag value does not match the current etag
        #   value, the DeleteDataAttribute method returns an ABORTED error response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_taxonomy_attribute(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Data Attribute resource.
        # @param [String] name
        #   Required. The resource name of the dataAttribute: projects/`project_number`/
        #   locations/`location_id`/dataTaxonomies/`dataTaxonomy`/attributes/`
        #   data_attribute_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_taxonomy_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_taxonomy_attribute_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Data Attribute resources in a DataTaxonomy.
        # @param [String] parent
        #   Required. The resource name of the DataTaxonomy: projects/`project_number`/
        #   locations/`location_id`/dataTaxonomies/`data_taxonomy_id`
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of DataAttributes to return. The service may return
        #   fewer than this value. If unspecified, at most 10 dataAttributes will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListDataAttributes call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListDataAttributes must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_taxonomy_attributes(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attributes', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListDataAttributesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataAttribute resource.
        # @param [String] name
        #   Output only. The relative resource name of the dataAttribute, of the form:
        #   projects/`project_number`/locations/`location_id`/dataTaxonomies/`dataTaxonomy`
        #   /attributes/`data_attribute_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute] google_cloud_dataplex_v1_data_attribute_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_taxonomy_attribute(name, google_cloud_dataplex_v1_data_attribute_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute::Representation
          command.request_object = google_cloud_dataplex_v1_data_attribute_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_data_taxonomy_attribute_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_data_taxonomy_attribute_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an EntryGroup.
        # @param [String] parent
        #   Required. The resource name of the entryGroup, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup] google_cloud_dataplex_v1_entry_group_object
        # @param [String] entry_group_id
        #   Required. EntryGroup identifier.
        # @param [Boolean] validate_only
        #   Optional. The service validates the request without performing any mutations.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group(parent, google_cloud_dataplex_v1_entry_group_object = nil, entry_group_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entryGroups', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup::Representation
          command.request_object = google_cloud_dataplex_v1_entry_group_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['entryGroupId'] = entry_group_id unless entry_group_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an EntryGroup.
        # @param [String] name
        #   Required. The resource name of the EntryGroup: projects/`project_number`/
        #   locations/`location_id`/entryGroups/`entry_group_id`.
        # @param [String] etag
        #   Optional. If the client provided etag value does not match the current etag
        #   value, the DeleteEntryGroupRequest method returns an ABORTED error response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an EntryGroup.
        # @param [String] name
        #   Required. The resource name of the EntryGroup: projects/`project_number`/
        #   locations/`location_id`/entryGroups/`entry_group_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists EntryGroup resources in a project and location.
        # @param [String] parent
        #   Required. The resource name of the entryGroup location, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of EntryGroups to return. The service may return
        #   fewer than this value. If unspecified, the service returns at most 10
        #   EntryGroups. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListEntryGroups call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   you provide to ListEntryGroups must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entryGroups', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryGroupsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an EntryGroup.
        # @param [String] name
        #   Output only. The relative resource name of the EntryGroup, in the format
        #   projects/`project_id_or_number`/locations/`location_id`/entryGroups/`
        #   entry_group_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup] google_cloud_dataplex_v1_entry_group_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. The service validates the request, without performing any mutations.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group(name, google_cloud_dataplex_v1_entry_group_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup::Representation
          command.request_object = google_cloud_dataplex_v1_entry_group_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_entry_group_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_entry_group_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Entry.
        # @param [String] parent
        #   Required. The resource name of the parent Entry Group: projects/`project`/
        #   locations/`location`/entryGroups/`entry_group`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] google_cloud_dataplex_v1_entry_object
        # @param [String] entry_id
        #   Required. Entry identifier. It has to be unique within an Entry Group.Entries
        #   corresponding to Google Cloud resources use an Entry ID format based on full
        #   resource names (https://cloud.google.com/apis/design/resource_names#
        #   full_resource_name). The format is a full resource name of the resource
        #   without the prefix double slashes in the API service name part of the full
        #   resource name. This allows retrieval of entries using their associated
        #   resource name.For example, if the full resource name of a resource is //
        #   library.googleapis.com/shelves/shelf1/books/book2, then the suggested entry_id
        #   is library.googleapis.com/shelves/shelf1/books/book2.It is also suggested to
        #   follow the same convention for entries corresponding to resources from
        #   providers or systems other than Google Cloud.The maximum size of the field is
        #   4000 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_entry(parent, google_cloud_dataplex_v1_entry_object = nil, entry_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entries', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.request_object = google_cloud_dataplex_v1_entry_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry
          command.params['parent'] = parent unless parent.nil?
          command.query['entryId'] = entry_id unless entry_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Entry.
        # @param [String] name
        #   Required. The resource name of the Entry: projects/`project`/locations/`
        #   location`/entryGroups/`entry_group`/entries/`entry`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an Entry.
        # @param [String] name
        #   Required. The resource name of the Entry: projects/`project`/locations/`
        #   location`/entryGroups/`entry_group`/entries/`entry`.
        # @param [Array<String>, String] aspect_types
        #   Optional. Limits the aspects returned to the provided aspect types. It only
        #   works for CUSTOM view.
        # @param [Array<String>, String] paths
        #   Optional. Limits the aspects returned to those associated with the provided
        #   paths within the Entry. It only works for CUSTOM view.
        # @param [String] view
        #   Optional. View to control which parts of an entry the service should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group_entry(name, aspect_types: nil, paths: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry
          command.params['name'] = name unless name.nil?
          command.query['aspectTypes'] = aspect_types unless aspect_types.nil?
          command.query['paths'] = paths unless paths.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Entries within an EntryGroup.
        # @param [String] parent
        #   Required. The resource name of the parent Entry Group: projects/`project`/
        #   locations/`location`/entryGroups/`entry_group`.
        # @param [String] filter
        #   Optional. A filter on the entries to return. Filters are case-sensitive. You
        #   can filter the request by the following fields: entry_type entry_source.
        #   display_nameThe comparison operators are =, !=, <, >, <=, >=. The service
        #   compares strings according to lexical order.You can use the logical operators
        #   AND, OR, NOT in the filter.You can use Wildcard "*", but for entry_type you
        #   need to provide the full project id or number.Example filter expressions: "
        #   entry_source.display_name=AnExampleDisplayName" "entry_type=projects/example-
        #   project/locations/global/entryTypes/example-entry_type" "entry_type=projects/
        #   example-project/locations/us/entryTypes/a* OR entry_type=projects/another-
        #   project/locations/*" "NOT entry_source.display_name=AnotherExampleDisplayName"
        # @param [Fixnum] page_size
        #   Optional. Number of items to return per page. If there are remaining results,
        #   the service returns a next_page_token. If unspecified, the service returns at
        #   most 10 Entries. The maximum value is 100; values above 100 will be coerced to
        #   100.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListEntries call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_entries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entries', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntriesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Entry.
        # @param [String] name
        #   Identifier. The relative resource name of the entry, in the format projects/`
        #   project_id_or_number`/locations/`location_id`/entryGroups/`entry_group_id`/
        #   entries/`entry_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] google_cloud_dataplex_v1_entry_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true and the entry doesn't exist, the service will create
        #   it.
        # @param [Array<String>, String] aspect_keys
        #   Optional. The map keys of the Aspects which the service should modify. It
        #   supports the following syntaxes: - matches an aspect of the given type and
        #   empty path. @path - matches an aspect of the given type and specified path.
        #   For example, to attach an aspect to a field that is specified by the schema
        #   aspect, the path should have the format Schema.. @* - matches aspects of the
        #   given type for all paths. *@path - matches aspects of all types on the given
        #   path.The service will not remove existing aspects matching the syntax unless
        #   delete_missing_aspects is set to true.If this field is left empty, the service
        #   treats it as specifying exactly those Aspects present in the request.
        # @param [Boolean] delete_missing_aspects
        #   Optional. If set to true and the aspect_keys specify aspect ranges, the
        #   service deletes any existing aspects from that range that weren't provided in
        #   the request.
        # @param [String] update_mask
        #   Optional. Mask of fields to update. To update Aspects, the update_mask must
        #   contain the value "aspects".If the update_mask is empty, the service will
        #   update all modifiable fields present in the request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_entry(name, google_cloud_dataplex_v1_entry_object = nil, allow_missing: nil, aspect_keys: nil, delete_missing_aspects: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.request_object = google_cloud_dataplex_v1_entry_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['aspectKeys'] = aspect_keys unless aspect_keys.nil?
          command.query['deleteMissingAspects'] = delete_missing_aspects unless delete_missing_aspects.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Entry Link.
        # @param [String] parent
        #   Required. The resource name of the parent Entry Group: projects/`
        #   project_id_or_number`/locations/`location_id`/entryGroups/`entry_group_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink] google_cloud_dataplex_v1_entry_link_object
        # @param [String] entry_link_id
        #   Required. Entry Link identifier * Must contain only lowercase letters, numbers
        #   and hyphens. * Must start with a letter. * Must be between 1-63 characters. *
        #   Must end with a number or a letter. * Must be unique within the EntryGroup.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_entry_link(parent, google_cloud_dataplex_v1_entry_link_object = nil, entry_link_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entryLinks', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink::Representation
          command.request_object = google_cloud_dataplex_v1_entry_link_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink
          command.params['parent'] = parent unless parent.nil?
          command.query['entryLinkId'] = entry_link_id unless entry_link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Entry Link.
        # @param [String] name
        #   Required. The resource name of the Entry Link: projects/`project_id_or_number`/
        #   locations/`location_id`/entryGroups/`entry_group_id`/entryLinks/`entry_link_id`
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_entry_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an Entry Link.
        # @param [String] name
        #   Required. The resource name of the Entry Link: projects/`project_id_or_number`/
        #   locations/`location_id`/entryGroups/`entry_group_id`/entryLinks/`entry_link_id`
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group_entry_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_link_type_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_entry_link_type_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_entry_link_type_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an EntryType.
        # @param [String] parent
        #   Required. The resource name of the EntryType, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType] google_cloud_dataplex_v1_entry_type_object
        # @param [String] entry_type_id
        #   Required. EntryType identifier.
        # @param [Boolean] validate_only
        #   Optional. The service validates the request without performing any mutations.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_type(parent, google_cloud_dataplex_v1_entry_type_object = nil, entry_type_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entryTypes', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType::Representation
          command.request_object = google_cloud_dataplex_v1_entry_type_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['entryTypeId'] = entry_type_id unless entry_type_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an EntryType.
        # @param [String] name
        #   Required. The resource name of the EntryType: projects/`project_number`/
        #   locations/`location_id`/entryTypes/`entry_type_id`.
        # @param [String] etag
        #   Optional. If the client provided etag value does not match the current etag
        #   value, the DeleteEntryTypeRequest method returns an ABORTED error response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_type(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an EntryType.
        # @param [String] name
        #   Required. The resource name of the EntryType: projects/`project_number`/
        #   locations/`location_id`/entryTypes/`entry_type_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_type_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists EntryType resources in a project and location.
        # @param [String] parent
        #   Required. The resource name of the EntryType location, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [String] filter
        #   Optional. Filter request. Filters are case-sensitive. The service supports the
        #   following formats: labels.key1 = "value1" labels:key1 name = "value"These
        #   restrictions can be conjoined with AND, OR, and NOT conjunctions.
        # @param [String] order_by
        #   Optional. Orders the result by name or create_time fields. If not specified,
        #   the ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of EntryTypes to return. The service may return fewer
        #   than this value. If unspecified, the service returns at most 10 EntryTypes.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListEntryTypes call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   you provided to ListEntryTypes must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_types(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entryTypes', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryTypesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntryTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an EntryType.
        # @param [String] name
        #   Output only. The relative resource name of the EntryType, of the form:
        #   projects/`project_number`/locations/`location_id`/entryTypes/`entry_type_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType] google_cloud_dataplex_v1_entry_type_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. The service validates the request without performing any mutations.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_type(name, google_cloud_dataplex_v1_entry_type_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType::Representation
          command.request_object = google_cloud_dataplex_v1_entry_type_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_entry_type_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_entry_type_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Glossary resource.
        # @param [String] parent
        #   Required. The parent resource where this Glossary will be created. Format:
        #   projects/`project_id_or_number`/locations/`location_id` where location_id
        #   refers to a Google Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary] google_cloud_dataplex_v1_glossary_object
        # @param [String] glossary_id
        #   Required. Glossary ID: Glossary identifier.
        # @param [Boolean] validate_only
        #   Optional. Validates the request without actually creating the Glossary.
        #   Default: false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_glossary(parent, google_cloud_dataplex_v1_glossary_object = nil, glossary_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/glossaries', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary::Representation
          command.request_object = google_cloud_dataplex_v1_glossary_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['glossaryId'] = glossary_id unless glossary_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Glossary resource. All the categories and terms within the Glossary
        # must be deleted before the Glossary can be deleted.
        # @param [String] name
        #   Required. The name of the Glossary to delete. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`
        # @param [String] etag
        #   Optional. The etag of the Glossary. If this is provided, it must match the
        #   server's etag. If the etag is provided and does not match the server-computed
        #   etag, the request must fail with a ABORTED error code.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_glossary(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Glossary resource.
        # @param [String] name
        #   Required. The name of the Glossary to retrieve. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Glossary resources in a project and location.
        # @param [String] parent
        #   Required. The parent, which has this collection of Glossaries. Format:
        #   projects/`project_id_or_number`/locations/`location_id` where location_id
        #   refers to a Google Cloud region.
        # @param [String] filter
        #   Optional. Filter expression that filters Glossaries listed in the response.
        #   Filters on proto fields of Glossary are supported. Examples of using a filter
        #   are: - display_name="my-glossary" - categoryCount=1 - termCount=0
        # @param [String] order_by
        #   Optional. Order by expression that orders Glossaries listed in the response.
        #   Order by fields are: name or create_time for the result. If not specified, the
        #   ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of Glossaries to return. The service may return
        #   fewer than this value. If unspecified, at most 50 Glossaries will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListGlossaries call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListGlossaries must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossariesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossariesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_glossaries(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/glossaries', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossariesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossariesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Glossary resource.
        # @param [String] name
        #   Output only. Identifier. The resource name of the Glossary. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary] google_cloud_dataplex_v1_glossary_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Validates the request without actually updating the Glossary.
        #   Default: false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_glossary(name, google_cloud_dataplex_v1_glossary_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary::Representation
          command.request_object = google_cloud_dataplex_v1_glossary_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_glossary_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_glossary_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new GlossaryCategory resource.
        # @param [String] parent
        #   Required. The parent resource where this GlossaryCategory will be created.
        #   Format: projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        #   glossary_id` where locationId refers to a Google Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory] google_cloud_dataplex_v1_glossary_category_object
        # @param [String] category_id
        #   Required. GlossaryCategory identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_glossary_category(parent, google_cloud_dataplex_v1_glossary_category_object = nil, category_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/categories', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory::Representation
          command.request_object = google_cloud_dataplex_v1_glossary_category_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory
          command.params['parent'] = parent unless parent.nil?
          command.query['categoryId'] = category_id unless category_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GlossaryCategory resource. All the GlossaryCategories and
        # GlossaryTerms nested directly under the specified GlossaryCategory will be
        # moved one level up to the parent in the hierarchy.
        # @param [String] name
        #   Required. The name of the GlossaryCategory to delete. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`/
        #   categories/`category_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_glossary_category(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GlossaryCategory resource.
        # @param [String] name
        #   Required. The name of the GlossaryCategory to retrieve. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`/
        #   categories/`category_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary_category(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary_category_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GlossaryCategory resources in a Glossary.
        # @param [String] parent
        #   Required. The parent, which has this collection of GlossaryCategories. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        #   glossary_id` Location is the Google Cloud region.
        # @param [String] filter
        #   Optional. Filter expression that filters GlossaryCategories listed in the
        #   response. Filters are supported on the following fields: -
        #   immediate_parentExamples of using a filter are: - immediate_parent="projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`" -
        #   immediate_parent="projects/`project_id_or_number`/locations/`location_id`/
        #   glossaries/`glossary_id`/categories/`category_id`"This will only return the
        #   GlossaryCategories that are directly nested under the specified parent.
        # @param [String] order_by
        #   Optional. Order by expression that orders GlossaryCategories listed in the
        #   response. Order by fields are: name or create_time for the result. If not
        #   specified, the ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of GlossaryCategories to return. The service may
        #   return fewer than this value. If unspecified, at most 50 GlossaryCategories
        #   will be returned. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListGlossaryCategories call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to ListGlossaryCategories must match the call that
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_glossary_categories(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/categories', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryCategoriesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryCategoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GlossaryCategory resource.
        # @param [String] name
        #   Output only. Identifier. The resource name of the GlossaryCategory. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        #   glossary_id`/categories/`category_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory] google_cloud_dataplex_v1_glossary_category_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_glossary_category(name, google_cloud_dataplex_v1_glossary_category_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory::Representation
          command.request_object = google_cloud_dataplex_v1_glossary_category_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_glossary_category_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_glossary_category_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new GlossaryTerm resource.
        # @param [String] parent
        #   Required. The parent resource where the GlossaryTerm will be created. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        #   glossary_id` where location_id refers to a Google Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm] google_cloud_dataplex_v1_glossary_term_object
        # @param [String] term_id
        #   Required. GlossaryTerm identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_glossary_term(parent, google_cloud_dataplex_v1_glossary_term_object = nil, term_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/terms', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm::Representation
          command.request_object = google_cloud_dataplex_v1_glossary_term_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm
          command.params['parent'] = parent unless parent.nil?
          command.query['termId'] = term_id unless term_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GlossaryTerm resource.
        # @param [String] name
        #   Required. The name of the GlossaryTerm to delete. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`/terms/`
        #   term_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_glossary_term(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GlossaryTerm resource.
        # @param [String] name
        #   Required. The name of the GlossaryTerm to retrieve. Format: projects/`
        #   project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`/terms/`
        #   term_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary_term(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary_term_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GlossaryTerm resources in a Glossary.
        # @param [String] parent
        #   Required. The parent, which has this collection of GlossaryTerms. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        #   glossary_id` where location_id refers to a Google Cloud region.
        # @param [String] filter
        #   Optional. Filter expression that filters GlossaryTerms listed in the response.
        #   Filters are supported on the following fields: - immediate_parentExamples of
        #   using a filter are: - immediate_parent="projects/`project_id_or_number`/
        #   locations/`location_id`/glossaries/`glossary_id`" - immediate_parent="projects/
        #   `project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`/
        #   categories/`category_id`"This will only return the GlossaryTerms that are
        #   directly nested under the specified parent.
        # @param [String] order_by
        #   Optional. Order by expression that orders GlossaryTerms listed in the response.
        #   Order by fields are: name or create_time for the result. If not specified,
        #   the ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of GlossaryTerms to return. The service may
        #   return fewer than this value. If unspecified, at most 50 GlossaryTerms will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListGlossaryTerms call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to ListGlossaryTerms must match the call that provided the
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryTermsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryTermsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_glossary_terms(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/terms', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryTermsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListGlossaryTermsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GlossaryTerm resource.
        # @param [String] name
        #   Output only. Identifier. The resource name of the GlossaryTerm. Format:
        #   projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        #   glossary_id`/terms/`term_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm] google_cloud_dataplex_v1_glossary_term_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_glossary_term(name, google_cloud_dataplex_v1_glossary_term_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm::Representation
          command.request_object = google_cloud_dataplex_v1_glossary_term_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_glossary_term_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_glossary_term_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_governance_rule_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_governance_rule_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_governance_rule_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a lake resource.
        # @param [String] parent
        #   Required. The resource name of the lake location, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake] google_cloud_dataplex_v1_lake_object
        # @param [String] lake_id
        #   Required. Lake identifier. This ID will be used to generate names such as
        #   database and dataset names when publishing metadata to Hive Metastore and
        #   BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must
        #   start with a letter. * Must end with a number or a letter. * Must be between 1-
        #   63 characters. * Must be unique within the customer project / location.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake(parent, google_cloud_dataplex_v1_lake_object = nil, lake_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/lakes', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake::Representation
          command.request_object = google_cloud_dataplex_v1_lake_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['lakeId'] = lake_id unless lake_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a lake resource. All zones within the lake must be deleted before the
        # lake can be deleted.
        # @param [String] name
        #   Required. The resource name of the lake: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a lake resource.
        # @param [String] name
        #   Required. The resource name of the lake: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists lake resources in a project and location.
        # @param [String] parent
        #   Required. The resource name of the lake location, of the form: projects/`
        #   project_number`/locations/`location_id` where location_id refers to a Google
        #   Cloud region.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of Lakes to return. The service may return fewer than
        #   this value. If unspecified, at most 10 lakes will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListLakes call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to ListLakes must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListLakesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListLakesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lakes(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/lakes', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListLakesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListLakesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a lake resource.
        # @param [String] name
        #   Output only. The relative resource name of the lake, of the form: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake] google_cloud_dataplex_v1_lake_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake(name, google_cloud_dataplex_v1_lake_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake::Representation
          command.request_object = google_cloud_dataplex_v1_lake_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists action resources in a lake.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of actions to return. The service may return fewer
        #   than this value. If unspecified, at most 10 actions will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListLakeActions call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListLakeActions must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_actions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/actions', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a content.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] google_cloud_dataplex_v1_content_object
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_content(parent, google_cloud_dataplex_v1_content_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/content', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.request_object = google_cloud_dataplex_v1_content_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a content.
        # @param [String] name
        #   Required. The resource name of the content: projects/`project_id`/locations/`
        #   location_id`/lakes/`lake_id`/content/`content_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_content(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a content resource.
        # @param [String] name
        #   Required. The resource name of the content: projects/`project_id`/locations/`
        #   location_id`/lakes/`lake_id`/content/`content_id`
        # @param [String] view
        #   Optional. Specify content view to make a partial request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_content(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a contentitem resource. A NOT_FOUND error
        # is returned if the resource does not exist. An empty policy is returned if the
        # resource exists but does not have a policy set on it.Caller must have Google
        # IAM dataplex.content.getIamPolicy permission on the resource.
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_content_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List content.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`
        # @param [String] filter
        #   Optional. Filter request. Filters are case-sensitive. The following formats
        #   are supported:labels.key1 = "value1" labels:key1 type = "NOTEBOOK" type = "
        #   SQL_SCRIPT"These restrictions can be coinjoined with AND, OR and NOT
        #   conjunctions.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of content to return. The service may return fewer
        #   than this value. If unspecified, at most 10 content will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListContent call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListContent must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_contents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/content', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a content. Only supports full resource update.
        # @param [String] name
        #   Output only. The relative resource name of the content, of the form: projects/`
        #   project_id`/locations/`location_id`/lakes/`lake_id`/content/`content_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] google_cloud_dataplex_v1_content_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake_content(name, google_cloud_dataplex_v1_content_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.request_object = google_cloud_dataplex_v1_content_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified contentitem resource. Replaces
        # any existing policy.Caller must have Google IAM dataplex.content.setIamPolicy
        # permission on the resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_content_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a resource. If the resource does not exist,
        # an empty set of permissions is returned (a NOT_FOUND error is not returned).A
        # caller is not required to have Google IAM permission to make this request.Note:
        # This operation is designed to be used for building permission-aware UIs and
        # command-line tools, not for authorization checking. This operation may "fail
        # open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_content_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a content.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] google_cloud_dataplex_v1_content_object
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_contentitem(parent, google_cloud_dataplex_v1_content_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/contentitems', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.request_object = google_cloud_dataplex_v1_content_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a content.
        # @param [String] name
        #   Required. The resource name of the content: projects/`project_id`/locations/`
        #   location_id`/lakes/`lake_id`/content/`content_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_contentitem(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a content resource.
        # @param [String] name
        #   Required. The resource name of the content: projects/`project_id`/locations/`
        #   location_id`/lakes/`lake_id`/content/`content_id`
        # @param [String] view
        #   Optional. Specify content view to make a partial request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_contentitem(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a contentitem resource. A NOT_FOUND error
        # is returned if the resource does not exist. An empty policy is returned if the
        # resource exists but does not have a policy set on it.Caller must have Google
        # IAM dataplex.content.getIamPolicy permission on the resource.
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_contentitem_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List content.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`
        # @param [String] filter
        #   Optional. Filter request. Filters are case-sensitive. The following formats
        #   are supported:labels.key1 = "value1" labels:key1 type = "NOTEBOOK" type = "
        #   SQL_SCRIPT"These restrictions can be coinjoined with AND, OR and NOT
        #   conjunctions.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of content to return. The service may return fewer
        #   than this value. If unspecified, at most 10 content will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListContent call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListContent must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_contentitems(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contentitems', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListContentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a content. Only supports full resource update.
        # @param [String] name
        #   Output only. The relative resource name of the content, of the form: projects/`
        #   project_id`/locations/`location_id`/lakes/`lake_id`/content/`content_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] google_cloud_dataplex_v1_content_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Content]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake_contentitem(name, google_cloud_dataplex_v1_content_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.request_object = google_cloud_dataplex_v1_content_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Content
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified contentitem resource. Replaces
        # any existing policy.Caller must have Google IAM dataplex.content.setIamPolicy
        # permission on the resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_contentitem_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a resource. If the resource does not exist,
        # an empty set of permissions is returned (a NOT_FOUND error is not returned).A
        # caller is not required to have Google IAM permission to make this request.Note:
        # This operation is designed to be used for building permission-aware UIs and
        # command-line tools, not for authorization checking. This operation may "fail
        # open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_contentitem_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an environment resource.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment] google_cloud_dataplex_v1_environment_object
        # @param [String] environment_id
        #   Required. Environment identifier. * Must contain only lowercase letters,
        #   numbers and hyphens. * Must start with a letter. * Must be between 1-63
        #   characters. * Must end with a number or a letter. * Must be unique within the
        #   lake.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_environment(parent, google_cloud_dataplex_v1_environment_object = nil, environment_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/environments', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment::Representation
          command.request_object = google_cloud_dataplex_v1_environment_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['environmentId'] = environment_id unless environment_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the environment resource. All the child resources must have been
        # deleted before environment deletion can be initiated.
        # @param [String] name
        #   Required. The resource name of the environment: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`/environments/`environment_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get environment resource.
        # @param [String] name
        #   Required. The resource name of the environment: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`/environments/`environment_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_environment_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists environments under the given lake.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_id`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of environments to return. The service may return
        #   fewer than this value. If unspecified, at most 10 environments will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListEnvironments call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListEnvironments must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_environments(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/environments', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the environment resource.
        # @param [String] name
        #   Output only. The relative resource name of the environment, of the form:
        #   projects/`project_id`/locations/`location_id`/lakes/`lake_id`/environment/`
        #   environment_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment] google_cloud_dataplex_v1_environment_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake_environment(name, google_cloud_dataplex_v1_environment_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment::Representation
          command.request_object = google_cloud_dataplex_v1_environment_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_environment_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_environment_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists session resources in an environment.
        # @param [String] parent
        #   Required. The resource name of the parent environment: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`/environment/`
        #   environment_id`.
        # @param [String] filter
        #   Optional. Filter request. The following mode filter is supported to return
        #   only the sessions belonging to the requester when the mode is USER and return
        #   sessions of all the users when the mode is ADMIN. When no filter is sent
        #   default to USER mode. NOTE: When the mode is ADMIN, the requester should have
        #   dataplex.environments.listAllSessions permission to list all sessions, in
        #   absence of the permission, the request fails.mode = ADMIN | USER
        # @param [Fixnum] page_size
        #   Optional. Maximum number of sessions to return. The service may return fewer
        #   than this value. If unspecified, at most 10 sessions will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListSessions call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListSessions must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_environment_sessions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListSessionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a task resource within a lake.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Task] google_cloud_dataplex_v1_task_object
        # @param [String] task_id
        #   Required. Task identifier.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_task(parent, google_cloud_dataplex_v1_task_object = nil, task_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tasks', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Task::Representation
          command.request_object = google_cloud_dataplex_v1_task_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['taskId'] = task_id unless task_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the task resource.
        # @param [String] name
        #   Required. The resource name of the task: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/task/`task_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_task(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get task resource.
        # @param [String] name
        #   Required. The resource name of the task: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/tasks/`tasks_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_task(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Task::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Task
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_task_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists tasks under the given lake.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of tasks to return. The service may return fewer than
        #   this value. If unspecified, at most 10 tasks will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListZones call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to ListZones must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_tasks(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tasks', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListTasksResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListTasksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the task resource.
        # @param [String] name
        #   Output only. The relative resource name of the task, of the form: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`/ tasks/`task_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Task] google_cloud_dataplex_v1_task_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake_task(name, google_cloud_dataplex_v1_task_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Task::Representation
          command.request_object = google_cloud_dataplex_v1_task_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Run an on demand execution of a Task.
        # @param [String] name
        #   Required. The resource name of the task: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/tasks/`task_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1RunTaskRequest] google_cloud_dataplex_v1_run_task_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1RunTaskResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1RunTaskResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_lake_task(name, google_cloud_dataplex_v1_run_task_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1RunTaskRequest::Representation
          command.request_object = google_cloud_dataplex_v1_run_task_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1RunTaskResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1RunTaskResponse
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_task_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_task_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel jobs running for the task resource.
        # @param [String] name
        #   Required. The resource name of the job: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/task/`task_id`/job/`job_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1CancelJobRequest] google_cloud_dataplex_v1_cancel_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_lake_task_job(name, google_cloud_dataplex_v1_cancel_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1CancelJobRequest::Representation
          command.request_object = google_cloud_dataplex_v1_cancel_job_request_object
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get job resource.
        # @param [String] name
        #   Required. The resource name of the job: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/tasks/`task_id`/jobs/`job_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_task_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Job::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Jobs under the given task.
        # @param [String] parent
        #   Required. The resource name of the parent environment: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`/tasks/`task_id`.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of jobs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 jobs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListJobs call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to ListJobs must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_task_jobs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListJobsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a zone resource within a lake.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone] google_cloud_dataplex_v1_zone_object
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] zone_id
        #   Required. Zone identifier. This ID will be used to generate names such as
        #   database and dataset names when publishing metadata to Hive Metastore and
        #   BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must
        #   start with a letter. * Must end with a number or a letter. * Must be between 1-
        #   63 characters. * Must be unique across all lakes from all locations in a
        #   project. * Must not be one of the reserved IDs (i.e. "default", "global-temp")
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_zone(parent, google_cloud_dataplex_v1_zone_object = nil, validate_only: nil, zone_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/zones', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone::Representation
          command.request_object = google_cloud_dataplex_v1_zone_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['zoneId'] = zone_id unless zone_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a zone resource. All assets within a zone must be deleted before the
        # zone can be deleted.
        # @param [String] name
        #   Required. The resource name of the zone: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_zone(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a zone resource.
        # @param [String] name
        #   Required. The resource name of the zone: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_zone(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_zone_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists zone resources in a lake.
        # @param [String] parent
        #   Required. The resource name of the parent lake: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of zones to return. The service may return fewer than
        #   this value. If unspecified, at most 10 zones will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListZones call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to ListZones must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListZonesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListZonesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_zones(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/zones', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListZonesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListZonesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a zone resource.
        # @param [String] name
        #   Output only. The relative resource name of the zone, of the form: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone] google_cloud_dataplex_v1_zone_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake_zone(name, google_cloud_dataplex_v1_zone_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone::Representation
          command.request_object = google_cloud_dataplex_v1_zone_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_zone_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_zone_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists action resources in a zone.
        # @param [String] parent
        #   Required. The resource name of the parent zone: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of actions to return. The service may return fewer
        #   than this value. If unspecified, at most 10 actions will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListZoneActions call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListZoneActions must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_zone_actions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/actions', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an asset resource.
        # @param [String] parent
        #   Required. The resource name of the parent zone: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset] google_cloud_dataplex_v1_asset_object
        # @param [String] asset_id
        #   Required. Asset identifier. This ID will be used to generate names such as
        #   table names when publishing metadata to Hive Metastore and BigQuery. * Must
        #   contain only lowercase letters, numbers and hyphens. * Must start with a
        #   letter. * Must end with a number or a letter. * Must be between 1-63
        #   characters. * Must be unique within the zone.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_zone_asset(parent, google_cloud_dataplex_v1_asset_object = nil, asset_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assets', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset::Representation
          command.request_object = google_cloud_dataplex_v1_asset_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['assetId'] = asset_id unless asset_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an asset resource. The referenced storage resource is detached (
        # default) or deleted based on the associated Lifecycle policy.
        # @param [String] name
        #   Required. The resource name of the asset: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/zones/`zone_id`/assets/`asset_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_zone_asset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an asset resource.
        # @param [String] name
        #   Required. The resource name of the asset: projects/`project_number`/locations/`
        #   location_id`/lakes/`lake_id`/zones/`zone_id`/assets/`asset_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_zone_asset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_zone_asset_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists asset resources in a zone.
        # @param [String] parent
        #   Required. The resource name of the parent zone: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [String] filter
        #   Optional. Filter request.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of asset to return. The service may return fewer than
        #   this value. If unspecified, at most 10 assets will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListAssets call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to ListAssets must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_zone_assets(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assets', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAssetsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an asset resource.
        # @param [String] name
        #   Output only. The relative resource name of the asset, of the form: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/assets/
        #   `asset_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset] google_cloud_dataplex_v1_asset_object
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_lake_zone_asset(name, google_cloud_dataplex_v1_asset_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset::Representation
          command.request_object = google_cloud_dataplex_v1_asset_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_lake_zone_asset_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1Policy
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
        # @param [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_lake_zone_asset_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists action resources in an asset.
        # @param [String] parent
        #   Required. The resource name of the parent asset: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/assets/`asset_id`.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of actions to return. The service may return fewer
        #   than this value. If unspecified, at most 10 actions will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListAssetActions call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListAssetActions must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_zone_asset_actions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/actions', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListActionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a metadata entity.
        # @param [String] parent
        #   Required. The resource name of the parent zone: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity] google_cloud_dataplex_v1_entity_object
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_zone_entity(parent, google_cloud_dataplex_v1_entity_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entities', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
          command.request_object = google_cloud_dataplex_v1_entity_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a metadata entity.
        # @param [String] name
        #   Required. The resource name of the entity: projects/`project_number`/locations/
        #   `location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`.
        # @param [String] etag
        #   Required. The etag associated with the entity, which can be retrieved with a
        #   GetEntity request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_zone_entity(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a metadata entity.
        # @param [String] name
        #   Required. The resource name of the entity: projects/`project_number`/locations/
        #   `location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`.
        # @param [String] view
        #   Optional. Used to select the subset of entity information to return. Defaults
        #   to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_zone_entity(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List metadata entities in a zone.
        # @param [String] parent
        #   Required. The resource name of the parent zone: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # @param [String] filter
        #   Optional. The following filter parameters can be added to the URL to limit the
        #   entities returned by the API: Entity ID: ?filter="id=entityID" Asset ID: ?
        #   filter="asset=assetID" Data path ?filter="data_path=gs://my-bucket" Is HIVE
        #   compatible: ?filter="hive_compatible=true" Is BigQuery compatible: ?filter="
        #   bigquery_compatible=true"
        # @param [Fixnum] page_size
        #   Optional. Maximum number of entities to return. The service may return fewer
        #   than this value. If unspecified, 100 entities will be returned by default. The
        #   maximum value is 500; larger values will will be truncated to 500.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListEntities call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListEntities must match the call that provided the page token.
        # @param [String] view
        #   Required. Specify the entity view to make a partial list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_zone_entities(parent, filter: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entities', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntitiesResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListEntitiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a metadata entity. Only supports full resource update.
        # @param [String] name
        #   Output only. The resource name of the entity, of the form: projects/`
        #   project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/
        #   entities/`id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity] google_cloud_dataplex_v1_entity_object
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_lake_zone_entity(name, google_cloud_dataplex_v1_entity_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
          command.request_object = google_cloud_dataplex_v1_entity_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a metadata partition.
        # @param [String] parent
        #   Required. The resource name of the parent zone: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`.
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition] google_cloud_dataplex_v1_partition_object
        # @param [Boolean] validate_only
        #   Optional. Only validate the request, but do not perform mutations. The default
        #   is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_lake_zone_entity_partition(parent, google_cloud_dataplex_v1_partition_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/partitions', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition::Representation
          command.request_object = google_cloud_dataplex_v1_partition_object
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a metadata partition.
        # @param [String] name
        #   Required. The resource name of the partition. format: projects/`project_number`
        #   /locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`/
        #   partitions/`partition_value_path`. The `partition_value_path` segment consists
        #   of an ordered sequence of partition values separated by "/". All values must
        #   be provided.
        # @param [String] etag
        #   Optional. The etag associated with the partition.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_lake_zone_entity_partition(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a metadata partition of an entity.
        # @param [String] name
        #   Required. The resource name of the partition: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`/
        #   partitions/`partition_value_path`. The `partition_value_path` segment consists
        #   of an ordered sequence of partition values separated by "/". All values must
        #   be provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lake_zone_entity_partition(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List metadata partitions of an entity.
        # @param [String] parent
        #   Required. The resource name of the parent entity: projects/`project_number`/
        #   locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`.
        # @param [String] filter
        #   Optional. Filter the partitions returned to the caller using a key value pair
        #   expression. Supported operators and syntax: logic operators: AND, OR
        #   comparison operators: <, >, >=, <= ,=, != LIKE operators: The right hand of a
        #   LIKE operator supports "." and "*" for wildcard searches, for example "value1
        #   LIKE ".*oo.*" parenthetical grouping: ( )Sample filter expression: `?filter="
        #   key1 < value1 OR key2 > value2"Notes: Keys to the left of operators are case
        #   insensitive. Partition results are sorted first by creation time, then by
        #   lexicographic order. Up to 20 key value filter pairs are allowed, but due to
        #   performance considerations, only the first 10 will be used as a filter.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of partitions to return. The service may return fewer
        #   than this value. If unspecified, 100 partitions will be returned by default.
        #   The maximum page size is 500; larger values will will be truncated to 500.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListPartitions call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListPartitions must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListPartitionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListPartitionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_lake_zone_entity_partitions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/partitions', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListPartitionsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListPartitionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a metadata job.If you cancel a metadata import job that is in progress,
        # the changes in the job might be partially applied. We recommend that you
        # reset the state of the entry groups in your project by running another
        # metadata job that reverts the changes from the canceled job.
        # @param [String] name
        #   Required. The resource name of the job, in the format projects/`
        #   project_id_or_number`/locations/`location_id`/metadataJobs/`metadata_job_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1CancelMetadataJobRequest] google_cloud_dataplex_v1_cancel_metadata_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_metadata_job(name, google_cloud_dataplex_v1_cancel_metadata_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1CancelMetadataJobRequest::Representation
          command.request_object = google_cloud_dataplex_v1_cancel_metadata_job_request_object
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a metadata job. For example, use a metadata job to import Dataplex
        # Catalog entries and aspects from a third-party system into Dataplex.
        # @param [String] parent
        #   Required. The resource name of the parent location, in the format projects/`
        #   project_id_or_number`/locations/`location_id`
        # @param [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob] google_cloud_dataplex_v1_metadata_job_object
        # @param [String] metadata_job_id
        #   Optional. The metadata job ID. If not provided, a unique ID is generated with
        #   the prefix metadata-job-.
        # @param [Boolean] validate_only
        #   Optional. The service validates the request without performing any mutations.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_metadata_job(parent, google_cloud_dataplex_v1_metadata_job_object = nil, metadata_job_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/metadataJobs', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob::Representation
          command.request_object = google_cloud_dataplex_v1_metadata_job_object
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['metadataJobId'] = metadata_job_id unless metadata_job_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a metadata job.
        # @param [String] name
        #   Required. The resource name of the metadata job, in the format projects/`
        #   project_id_or_number`/locations/`location_id`/metadataJobs/`metadata_job_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_metadata_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists metadata jobs.
        # @param [String] parent
        #   Required. The resource name of the parent location, in the format projects/`
        #   project_id_or_number`/locations/`location_id`
        # @param [String] filter
        #   Optional. Filter request. Filters are case-sensitive. The service supports the
        #   following formats: labels.key1 = "value1" labels:key1 name = "value"You can
        #   combine filters with AND, OR, and NOT operators.
        # @param [String] order_by
        #   Optional. The field to sort the results by, either name or create_time. If not
        #   specified, the ordering is undefined.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of metadata jobs to return. The service might
        #   return fewer jobs than this value. If unspecified, at most 10 jobs are
        #   returned. The maximum value is 1,000.
        # @param [String] page_token
        #   Optional. The page token received from a previous ListMetadataJobs call.
        #   Provide this token to retrieve the subsequent page of results. When paginating,
        #   all other parameters that are provided to the ListMetadataJobs request must
        #   match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListMetadataJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ListMetadataJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_metadata_jobs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/metadataJobs', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListMetadataJobsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleCloudDataplexV1ListMetadataJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DataplexV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DataplexV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::DataplexV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::Empty::Representation
          command.response_class = Google::Apis::DataplexV1::Empty
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DataplexV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
