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
    module OsconfigV2
      # OS Config API
      #
      # OS management tools that can be used for patch management, patch compliance,
      #  and configuration management on VM instances.
      #
      # @example
      #    require 'google/apis/osconfig_v2'
      #
      #    Osconfig = Google::Apis::OsconfigV2 # Alias the module
      #    service = Osconfig::OSConfigService.new
      #
      # @see https://cloud.google.com/compute/docs/osconfig/rest
      class OSConfigService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://osconfig.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-osconfig_v2',
                client_version: Google::Apis::OsconfigV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a new policy orchestrator under the given folder resource. `name`
        # field of the given orchestrator are ignored and instead replaced by a product
        # of `parent` and `policy_orchestrator_id`. Orchestrator state field might be
        # only set to `ACTIVE`, `STOPPED` or omitted (in which case, the created
        # resource will be in `ACTIVE` state anyway).
        # @param [String] parent
        #   Required. The parent resource name in the form of: * `organizations/`
        #   organization_id`/locations/global` * `folders/`folder_id`/locations/global` * `
        #   projects/`project_id_or_number`/locations/global`
        # @param [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] google_cloud_osconfig_v2__policy_orchestrator_object
        # @param [String] policy_orchestrator_id
        #   Required. The logical identifier of the policy orchestrator, with the
        #   following restrictions: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the parent.
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_global_policy_orchestrator(parent, google_cloud_osconfig_v2__policy_orchestrator_object = nil, policy_orchestrator_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/policyOrchestrators', options)
          command.request_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.request_object = google_cloud_osconfig_v2__policy_orchestrator_object
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['policyOrchestratorId'] = policy_orchestrator_id unless policy_orchestrator_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing policy orchestrator resource, parented by a folder.
        # @param [String] name
        #   Required. Name of the resource to be deleted.
        # @param [String] etag
        #   Optional. The current etag of the policy orchestrator. If an etag is provided
        #   and does not match the current etag of the policy orchestrator, deletion will
        #   be blocked and an ABORTED error will be returned.
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_global_policy_orchestrator(name, etag: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing policy orchestrator, parented by a folder.
        # @param [String] name
        #   Required. The resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_global_policy_orchestrator(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.response_class = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the policy orchestrators under the given parent folder resource.
        # @param [String] parent
        #   Required. The parent resource name.
        # @param [String] filter
        #   Optional. Filtering results
        # @param [String] order_by
        #   Optional. Hint for how to order the results
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
        # @yieldparam result [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_global_policy_orchestrators(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/policyOrchestrators', options)
          command.response_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse::Representation
          command.response_class = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing policy orchestrator, parented by a folder.
        # @param [String] name
        #   Immutable. Identifier. In form of * `organizations/`organization_id`/locations/
        #   global/policyOrchestrators/`orchestrator_id`` * `folders/`folder_id`/locations/
        #   global/policyOrchestrators/`orchestrator_id`` * `projects/`
        #   project_id_or_number`/locations/global/policyOrchestrators/`orchestrator_id``
        # @param [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] google_cloud_osconfig_v2__policy_orchestrator_object
        # @param [String] update_mask
        #   Optional. The list of fields to merge into the existing policy orchestrator. A
        #   special ["*"] field mask can be used to simply replace the entire resource.
        #   Otherwise, for all paths referenced in the mask, following merge rules are
        #   used: * output only fields are ignored, * primitive fields are replaced, *
        #   repeated fields are replaced, * map fields are merged key by key, * message
        #   fields are cleared if not set in the request, otherwise they are merged
        #   recursively (in particular - message fields set to an empty message has no
        #   side effects) If field mask (or its paths) is not specified, it is
        #   automatically inferred from the request using following rules: * primitive
        #   fields are listed, if set to a non-default value (as there is no way to
        #   distinguish between default and unset value), * map and repeated fields are
        #   listed, * `google.protobuf.Any` fields are listed, * other message fields are
        #   traversed recursively. Note: implicit mask does not allow clearing fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_location_global_policy_orchestrator(name, google_cloud_osconfig_v2__policy_orchestrator_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.request_object = google_cloud_osconfig_v2__policy_orchestrator_object
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::OsconfigV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_folder_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::OsconfigV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::OsconfigV2::Empty::Representation
          command.response_class = Google::Apis::OsconfigV2::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Empty::Representation
          command.response_class = Google::Apis::OsconfigV2::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
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
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::OsconfigV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::OsconfigV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new policy orchestrator under the given organizations resource. `
        # name` field of the given orchestrator are ignored and instead replaced by a
        # product of `parent` and `policy_orchestrator_id`. Orchestrator state field
        # might be only set to `ACTIVE`, `STOPPED` or omitted (in which case, the
        # created resource will be in `ACTIVE` state anyway).
        # @param [String] parent
        #   Required. The parent resource name in the form of: * `organizations/`
        #   organization_id`/locations/global` * `folders/`folder_id`/locations/global` * `
        #   projects/`project_id_or_number`/locations/global`
        # @param [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] google_cloud_osconfig_v2__policy_orchestrator_object
        # @param [String] policy_orchestrator_id
        #   Required. The logical identifier of the policy orchestrator, with the
        #   following restrictions: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the parent.
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_global_policy_orchestrator(parent, google_cloud_osconfig_v2__policy_orchestrator_object = nil, policy_orchestrator_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/policyOrchestrators', options)
          command.request_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.request_object = google_cloud_osconfig_v2__policy_orchestrator_object
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['policyOrchestratorId'] = policy_orchestrator_id unless policy_orchestrator_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing policy orchestrator resource, parented by an organization.
        # @param [String] name
        #   Required. Name of the resource to be deleted.
        # @param [String] etag
        #   Optional. The current etag of the policy orchestrator. If an etag is provided
        #   and does not match the current etag of the policy orchestrator, deletion will
        #   be blocked and an ABORTED error will be returned.
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_global_policy_orchestrator(name, etag: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing policy orchestrator, parented by an organization.
        # @param [String] name
        #   Required. The resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_global_policy_orchestrator(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.response_class = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the policy orchestrators under the given parent organization resource.
        # @param [String] parent
        #   Required. The parent resource name.
        # @param [String] filter
        #   Optional. Filtering results
        # @param [String] order_by
        #   Optional. Hint for how to order the results
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
        # @yieldparam result [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_global_policy_orchestrators(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/policyOrchestrators', options)
          command.response_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse::Representation
          command.response_class = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing policy orchestrator, parented by an organization.
        # @param [String] name
        #   Immutable. Identifier. In form of * `organizations/`organization_id`/locations/
        #   global/policyOrchestrators/`orchestrator_id`` * `folders/`folder_id`/locations/
        #   global/policyOrchestrators/`orchestrator_id`` * `projects/`
        #   project_id_or_number`/locations/global/policyOrchestrators/`orchestrator_id``
        # @param [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] google_cloud_osconfig_v2__policy_orchestrator_object
        # @param [String] update_mask
        #   Optional. The list of fields to merge into the existing policy orchestrator. A
        #   special ["*"] field mask can be used to simply replace the entire resource.
        #   Otherwise, for all paths referenced in the mask, following merge rules are
        #   used: * output only fields are ignored, * primitive fields are replaced, *
        #   repeated fields are replaced, * map fields are merged key by key, * message
        #   fields are cleared if not set in the request, otherwise they are merged
        #   recursively (in particular - message fields set to an empty message has no
        #   side effects) If field mask (or its paths) is not specified, it is
        #   automatically inferred from the request using following rules: * primitive
        #   fields are listed, if set to a non-default value (as there is no way to
        #   distinguish between default and unset value), * map and repeated fields are
        #   listed, * `google.protobuf.Any` fields are listed, * other message fields are
        #   traversed recursively. Note: implicit mask does not allow clearing fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_global_policy_orchestrator(name, google_cloud_osconfig_v2__policy_orchestrator_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.request_object = google_cloud_osconfig_v2__policy_orchestrator_object
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::OsconfigV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_organization_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::OsconfigV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::OsconfigV2::Empty::Representation
          command.response_class = Google::Apis::OsconfigV2::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Empty::Representation
          command.response_class = Google::Apis::OsconfigV2::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
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
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::OsconfigV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::OsconfigV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new policy orchestrator under the given project resource. `name`
        # field of the given orchestrator are ignored and instead replaced by a product
        # of `parent` and `policy_orchestrator_id`. Orchestrator state field might be
        # only set to `ACTIVE`, `STOPPED` or omitted (in which case, the created
        # resource will be in `ACTIVE` state anyway).
        # @param [String] parent
        #   Required. The parent resource name in the form of: * `organizations/`
        #   organization_id`/locations/global` * `folders/`folder_id`/locations/global` * `
        #   projects/`project_id_or_number`/locations/global`
        # @param [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] google_cloud_osconfig_v2__policy_orchestrator_object
        # @param [String] policy_orchestrator_id
        #   Required. The logical identifier of the policy orchestrator, with the
        #   following restrictions: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the parent.
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_global_policy_orchestrator(parent, google_cloud_osconfig_v2__policy_orchestrator_object = nil, policy_orchestrator_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/policyOrchestrators', options)
          command.request_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.request_object = google_cloud_osconfig_v2__policy_orchestrator_object
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['policyOrchestratorId'] = policy_orchestrator_id unless policy_orchestrator_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing policy orchestrator resource, parented by a project.
        # @param [String] name
        #   Required. Name of the resource to be deleted.
        # @param [String] etag
        #   Optional. The current etag of the policy orchestrator. If an etag is provided
        #   and does not match the current etag of the policy orchestrator, deletion will
        #   be blocked and an ABORTED error will be returned.
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_global_policy_orchestrator(name, etag: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing policy orchestrator, parented by a project.
        # @param [String] name
        #   Required. The resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_global_policy_orchestrator(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.response_class = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the policy orchestrators under the given parent project resource.
        # @param [String] parent
        #   Required. The parent resource name.
        # @param [String] filter
        #   Optional. Filtering results
        # @param [String] order_by
        #   Optional. Hint for how to order the results
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
        # @yieldparam result [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_global_policy_orchestrators(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/policyOrchestrators', options)
          command.response_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse::Representation
          command.response_class = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing policy orchestrator, parented by a project.
        # @param [String] name
        #   Immutable. Identifier. In form of * `organizations/`organization_id`/locations/
        #   global/policyOrchestrators/`orchestrator_id`` * `folders/`folder_id`/locations/
        #   global/policyOrchestrators/`orchestrator_id`` * `projects/`
        #   project_id_or_number`/locations/global/policyOrchestrators/`orchestrator_id``
        # @param [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator] google_cloud_osconfig_v2__policy_orchestrator_object
        # @param [String] update_mask
        #   Optional. The list of fields to merge into the existing policy orchestrator. A
        #   special ["*"] field mask can be used to simply replace the entire resource.
        #   Otherwise, for all paths referenced in the mask, following merge rules are
        #   used: * output only fields are ignored, * primitive fields are replaced, *
        #   repeated fields are replaced, * map fields are merged key by key, * message
        #   fields are cleared if not set in the request, otherwise they are merged
        #   recursively (in particular - message fields set to an empty message has no
        #   side effects) If field mask (or its paths) is not specified, it is
        #   automatically inferred from the request using following rules: * primitive
        #   fields are listed, if set to a non-default value (as there is no way to
        #   distinguish between default and unset value), * map and repeated fields are
        #   listed, * `google.protobuf.Any` fields are listed, * other message fields are
        #   traversed recursively. Note: implicit mask does not allow clearing fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_global_policy_orchestrator(name, google_cloud_osconfig_v2__policy_orchestrator_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
          command.request_object = google_cloud_osconfig_v2__policy_orchestrator_object
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::OsconfigV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::OsconfigV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::OsconfigV2::Empty::Representation
          command.response_class = Google::Apis::OsconfigV2::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Empty::Representation
          command.response_class = Google::Apis::OsconfigV2::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV2::Operation::Representation
          command.response_class = Google::Apis::OsconfigV2::Operation
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
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::OsconfigV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::OsconfigV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
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
