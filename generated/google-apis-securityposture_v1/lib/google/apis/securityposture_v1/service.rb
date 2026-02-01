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
    module SecuritypostureV1
      # Security Posture API
      #
      # Defines, assesses, and monitors the overall status of your security in Google
      #  Cloud. You can use security postures to evaluate your current cloud security
      #  against defined benchmarks and help maintain the level of security that your
      #  organization requires.
      #
      # @example
      #    require 'google/apis/securityposture_v1'
      #
      #    Securityposture = Google::Apis::SecuritypostureV1 # Alias the module
      #    service = Securityposture::SecurityPostureService.new
      #
      # @see https://cloud.google.com/security-command-center
      class SecurityPostureService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://securityposture.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-securityposture_v1',
                client_version: Google::Apis::SecuritypostureV1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @param [Google::Apis::SecuritypostureV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::SecuritypostureV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::SecuritypostureV1::Empty::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Empty
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
        # @yieldparam result [Google::Apis::SecuritypostureV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Empty::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Empty
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
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
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
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new PostureDeployment in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [Google::Apis::SecuritypostureV1::PostureDeployment] posture_deployment_object
        # @param [String] posture_deployment_id
        #   Required. An identifier for the posture deployment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_posture_deployment(parent, posture_deployment_object = nil, posture_deployment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/postureDeployments', options)
          command.request_representation = Google::Apis::SecuritypostureV1::PostureDeployment::Representation
          command.request_object = posture_deployment_object
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['postureDeploymentId'] = posture_deployment_id unless posture_deployment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a PostureDeployment.
        # @param [String] name
        #   Required. The name of the posture deployment, in the format `organizations/`
        #   organization`/locations/global/postureDeployments/`posture_id``.
        # @param [String] etag
        #   Optional. An opaque identifier for the current version of the posture
        #   deployment. If you provide this value, then it must match the existing value.
        #   If the values don't match, then the request fails with an ABORTED error. If
        #   you omit this value, then the posture deployment is deleted regardless of its
        #   current `etag` value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_posture_deployment(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details for a PostureDeployment.
        # @param [String] name
        #   Required. The name of the PostureDeployment, in the format `organizations/`
        #   organization`/locations/global/postureDeployments/`posture_deployment_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::PostureDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::PostureDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_posture_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::PostureDeployment::Representation
          command.response_class = Google::Apis::SecuritypostureV1::PostureDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists every PostureDeployment in a project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [String] filter
        #   Optional. A filter to apply to the list of postures, in the format defined in [
        #   AIP-160: Filtering](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of posture deployments to return. The default
        #   value is `500`. If you exceed the maximum value of `1000`, then the service
        #   uses the maximum value.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous request to list posture
        #   deployments. Provide this token to retrieve the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListPostureDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListPostureDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_posture_deployments(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/postureDeployments', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListPostureDeploymentsResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListPostureDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing PostureDeployment. To prevent concurrent updates from
        # overwriting each other, always follow the read-modify-write pattern when you
        # update a posture deployment: 1. Call GetPostureDeployment to get the current
        # version of the deployment. 2. Update the fields in the deployment as needed. 3.
        # Call UpdatePostureDeployment to update the deployment. Ensure that your
        # request includes the `etag` value from the GetPostureDeployment response. **
        # Important:** If you omit the `etag` when you call UpdatePostureDeployment,
        # then the updated deployment unconditionally overwrites the existing deployment.
        # @param [String] name
        #   Required. Identifier. The name of the posture deployment, in the format `
        #   organizations/`organization`/locations/global/postureDeployments/`
        #   deployment_id``.
        # @param [Google::Apis::SecuritypostureV1::PostureDeployment] posture_deployment_object
        # @param [String] update_mask
        #   Required. The fields in the PostureDeployment to update. You can update only
        #   the following fields: * PostureDeployment.posture_id * PostureDeployment.
        #   posture_revision_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_posture_deployment(name, posture_deployment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritypostureV1::PostureDeployment::Representation
          command.request_object = posture_deployment_object
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single revision of a PostureTemplate.
        # @param [String] name
        #   Required. The name of the PostureTemplate, in the format `organizations/`
        #   organization`/locations/global/postureTemplates/`posture_template``.
        # @param [String] revision_id
        #   Optional. The posture template revision to retrieve. If not specified, the
        #   most recently updated revision is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::PostureTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::PostureTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_posture_template(name, revision_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::PostureTemplate::Representation
          command.response_class = Google::Apis::SecuritypostureV1::PostureTemplate
          command.params['name'] = name unless name.nil?
          command.query['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists every PostureTemplate in a given organization and location.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [String] filter
        #   Optional. A filter to apply to the list of postures, in the format defined in [
        #   AIP-160: Filtering](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of posture templates to return. The default value
        #   is `500`. If you exceed the maximum value of `1000`, then the service uses the
        #   maximum value.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous request to list posture
        #   templates. Provide this token to retrieve the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListPostureTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListPostureTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_posture_templates(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/postureTemplates', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListPostureTemplatesResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListPostureTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Posture.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [Google::Apis::SecuritypostureV1::Posture] posture_object
        # @param [String] posture_id
        #   Required. An identifier for the posture.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_posture(parent, posture_object = nil, posture_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/postures', options)
          command.request_representation = Google::Apis::SecuritypostureV1::Posture::Representation
          command.request_object = posture_object
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['postureId'] = posture_id unless posture_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all revisions of a Posture. You can only delete a posture if none of
        # its revisions are deployed.
        # @param [String] name
        #   Required. The name of the Posture, in the format `organizations/`organization`/
        #   locations/global/postures/`posture_id``.
        # @param [String] etag
        #   Optional. An opaque identifier for the current version of the posture. If you
        #   provide this value, then it must match the existing value. If the values don't
        #   match, then the request fails with an ABORTED error. If you omit this value,
        #   then the posture is deleted regardless of its current `etag` value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_posture(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Extracts existing policies from an organization, folder, or project, and
        # applies them to another organization, folder, or project as a Posture. If the
        # other organization, folder, or project already has a posture, then the result
        # of the long-running operation is an ALREADY_EXISTS error.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [Google::Apis::SecuritypostureV1::ExtractPostureRequest] extract_posture_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def extract_posture(parent, extract_posture_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/postures:extract', options)
          command.request_representation = Google::Apis::SecuritypostureV1::ExtractPostureRequest::Representation
          command.request_object = extract_posture_request_object
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single revision of a Posture.
        # @param [String] name
        #   Required. The name of the Posture, in the format `organizations/`organization`/
        #   locations/global/postures/`posture_id``.
        # @param [String] revision_id
        #   Optional. The posture revision to retrieve. If not specified, the most
        #   recently updated revision is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Posture] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Posture]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_posture(name, revision_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Posture::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Posture
          command.params['name'] = name unless name.nil?
          command.query['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the most recent revisions of all Posture resources in a specified
        # organization and location.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [String] filter
        #   Optional. A filter to apply to the list of postures, in the format defined in [
        #   AIP-160: Filtering](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of postures to return. The default value is `500`. If you
        #   exceed the maximum value of `1000`, then the service uses the maximum value.
        # @param [String] page_token
        #   A pagination token returned from a previous request to list postures. Provide
        #   this token to retrieve the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListPosturesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListPosturesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_postures(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/postures', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListPosturesResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListPosturesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all revisions of a single Posture.
        # @param [String] name
        #   Required. The name of the Posture, in the format `organizations/`organization`/
        #   locations/global/postures/`posture_id``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of posture revisions to return. The default value
        #   is `500`. If you exceed the maximum value of `1000`, then the service uses the
        #   maximum value.
        # @param [String] page_token
        #   Optional. A pagination token from a previous request to list posture revisions.
        #   Provide this token to retrieve the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListPostureRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListPostureRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_posture_revisions(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:listRevisions', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListPostureRevisionsResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListPostureRevisionsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a revision of an existing Posture. If the posture revision that you
        # update is currently deployed, then a new revision of the posture is created.
        # To prevent concurrent updates from overwriting each other, always follow the
        # read-modify-write pattern when you update a posture: 1. Call GetPosture to get
        # the current version of the posture. 2. Update the fields in the posture as
        # needed. 3. Call UpdatePosture to update the posture. Ensure that your request
        # includes the `etag` value from the GetPosture response. **Important:** If you
        # omit the `etag` when you call UpdatePosture, then the updated posture
        # unconditionally overwrites the existing posture.
        # @param [String] name
        #   Required. Identifier. The name of the posture, in the format `organizations/`
        #   organization`/locations/global/postures/`posture_id``.
        # @param [Google::Apis::SecuritypostureV1::Posture] posture_object
        # @param [String] revision_id
        #   Required. The revision ID of the posture to update. If the posture revision
        #   that you update is currently deployed, then a new revision of the posture is
        #   created.
        # @param [String] update_mask
        #   Required. The fields in the Posture to update. You can update only the
        #   following fields: * Posture.description * Posture.policy_sets * Posture.state
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_posture(name, posture_object = nil, revision_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritypostureV1::Posture::Representation
          command.request_object = posture_object
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['revisionId'] = revision_id unless revision_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a specified infrastructure-as-code (IaC) configuration, and creates
        # a Report with the validation results. Only Terraform configurations are
        # supported. Only modified assets are validated.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [Google::Apis::SecuritypostureV1::CreateIaCValidationReportRequest] create_ia_c_validation_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_ia_c_validation_report(parent, create_ia_c_validation_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reports:createIaCValidationReport', options)
          command.request_representation = Google::Apis::SecuritypostureV1::CreateIaCValidationReportRequest::Representation
          command.request_object = create_ia_c_validation_report_request_object
          command.response_representation = Google::Apis::SecuritypostureV1::Operation::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details for a Report.
        # @param [String] name
        #   Required. The name of the report, in the format `organizations/`organization`/
        #   locations/global/reports/`report_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Report::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Report
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists every Report in a given organization and location.
        # @param [String] parent
        #   Required. The parent resource name, in the format `organizations/`organization`
        #   /locations/global`.
        # @param [String] filter
        #   Optional. A filter to apply to the list of reports, in the format defined in [
        #   AIP-160: Filtering](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reports to return. The default value is `500`.
        #   If you exceed the maximum value of `1000`, then the service uses the maximum
        #   value.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous request to list reports.
        #   Provide this token to retrieve the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_reports(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reports', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListReportsResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListReportsResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::SecuritypostureV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritypostureV1::Location::Representation
          command.response_class = Google::Apis::SecuritypostureV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service. This method
        # can be called in two ways: * **List all public locations:** Use the path `GET /
        # v1/locations`. * **List project-visible locations:** Use the path `GET /v1/
        # projects/`project_id`/locations`. This may include public locations as well as
        # private or other locations specifically visible to the project.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. Do not use this field. It is unsupported and is ignored unless
        #   explicitly documented otherwise. This is primarily for internal usage.
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
        # @yieldparam result [Google::Apis::SecuritypostureV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritypostureV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::SecuritypostureV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::SecuritypostureV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
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
