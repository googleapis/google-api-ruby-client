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
    module ApigatewayV1beta
      # API Gateway API
      #
      # 
      #
      # @example
      #    require 'google/apis/apigateway_v1beta'
      #
      #    Apigateway = Google::Apis::ApigatewayV1beta # Alias the module
      #    service = Apigateway::ApigatewayService.new
      #
      # @see  https://cloud.google.com/api-gateway/docs
      class ApigatewayService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://apigateway.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayLocation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayLocation
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/locations', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayListLocationsResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Api in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the API, of the form: `projects/*/locations/
        #   global`
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayApi] apigateway_api_object
        # @param [String] api_id
        #   Required. Identifier to assign to the API. Must be unique within scope of the
        #   parent resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api(parent, apigateway_api_object = nil, api_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/apis', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayApi::Representation
          command.request_object = apigateway_api_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['apiId'] = api_id unless api_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Api.
        # @param [String] name
        #   Required. Resource name of the form: `projects/*/locations/global/apis/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Api.
        # @param [String] name
        #   Required. Resource name of the form: `projects/*/locations/global/apis/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayApi] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayApi]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayApi::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayApi
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Apis in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the API, of the form: `projects/*/locations/
        #   global`
        # @param [String] filter
        #   Filter.
        # @param [String] order_by
        #   Order by parameters.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayListApisResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayListApisResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_apis(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/apis', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayListApisResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayListApisResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Api.
        # @param [String] name
        #   Output only. Resource name of the API. Format: projects/`project`/locations/
        #   global/apis/`api`
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayApi] apigateway_api_object
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the Api resource
        #   by the update. The fields specified in the update_mask are relative to the
        #   resource, not the full request. A field will be overwritten if it is in the
        #   mask. If the user does not provide a mask then all fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_api(name, apigateway_api_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayApi::Representation
          command.request_object = apigateway_api_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewaySetIamPolicyRequest] apigateway_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_api_iam_policy(resource, apigateway_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewaySetIamPolicyRequest::Representation
          command.request_object = apigateway_set_iam_policy_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayPolicy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsRequest] apigateway_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_api_iam_permissions(resource, apigateway_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsRequest::Representation
          command.request_object = apigateway_test_iam_permissions_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ApiConfig in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the API Config, of the form: `projects/*/
        #   locations/global/apis/*`
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayApiConfig] apigateway_api_config_object
        # @param [String] api_config_id
        #   Required. Identifier to assign to the API Config. Must be unique within scope
        #   of the parent resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api_config(parent, apigateway_api_config_object = nil, api_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/configs', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayApiConfig::Representation
          command.request_object = apigateway_api_config_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['apiConfigId'] = api_config_id unless api_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ApiConfig.
        # @param [String] name
        #   Required. Resource name of the form: `projects/*/locations/global/apis/*/
        #   configs/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ApiConfig.
        # @param [String] name
        #   Required. Resource name of the form: `projects/*/locations/global/apis/*/
        #   configs/*`
        # @param [String] view
        #   Specifies which fields of the API Config are returned in the response.
        #   Defaults to `BASIC` view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayApiConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayApiConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_config(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayApiConfig::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayApiConfig
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_config_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ApiConfigs in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the API Config, of the form: `projects/*/
        #   locations/global/apis/*`
        # @param [String] filter
        #   Filter.
        # @param [String] order_by
        #   Order by parameters.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayListApiConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayListApiConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_api_configs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/configs', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayListApiConfigsResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayListApiConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single ApiConfig.
        # @param [String] name
        #   Output only. Resource name of the API Config. Format: projects/`project`/
        #   locations/global/apis/`api`/configs/`api_config`
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayApiConfig] apigateway_api_config_object
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the ApiConfig
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_api_config(name, apigateway_api_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayApiConfig::Representation
          command.request_object = apigateway_api_config_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewaySetIamPolicyRequest] apigateway_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_api_config_iam_policy(resource, apigateway_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewaySetIamPolicyRequest::Representation
          command.request_object = apigateway_set_iam_policy_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayPolicy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsRequest] apigateway_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_api_config_iam_permissions(resource, apigateway_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsRequest::Representation
          command.request_object = apigateway_test_iam_permissions_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Gateway in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the Gateway, of the form: `projects/*/locations/*`
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayGateway] apigateway_gateway_object
        # @param [String] gateway_id
        #   Required. Identifier to assign to the Gateway. Must be unique within scope of
        #   the parent resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_gateway(parent, apigateway_gateway_object = nil, gateway_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/gateways', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayGateway::Representation
          command.request_object = apigateway_gateway_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['gatewayId'] = gateway_id unless gateway_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Gateway.
        # @param [String] name
        #   Required. Resource name of the form: `projects/*/locations/*/gateways/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_gateway(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Gateway.
        # @param [String] name
        #   Required. Resource name of the form: `projects/*/locations/*/gateways/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayGateway] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayGateway]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_gateway(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayGateway::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayGateway
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_gateway_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayPolicy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Gateways in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the Gateway, of the form: `projects/*/locations/*`
        # @param [String] filter
        #   Filter.
        # @param [String] order_by
        #   Order by parameters.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayListGatewaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayListGatewaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gateways(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/gateways', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayListGatewaysResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayListGatewaysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Gateway.
        # @param [String] name
        #   Output only. Resource name of the Gateway. Format: projects/`project`/
        #   locations/`location`/gateways/`gateway`
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayGateway] apigateway_gateway_object
        # @param [String] update_mask
        #   Field mask is used to specify the fields to be overwritten in the Gateway
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_gateway(name, apigateway_gateway_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayGateway::Representation
          command.request_object = apigateway_gateway_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewaySetIamPolicyRequest] apigateway_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_gateway_iam_policy(resource, apigateway_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewaySetIamPolicyRequest::Representation
          command.request_object = apigateway_set_iam_policy_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayPolicy
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
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsRequest] apigateway_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_gateway_iam_permissions(resource, apigateway_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsRequest::Representation
          command.request_object = apigateway_test_iam_permissions_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayTestIamPermissionsResponse
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
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::ApigatewayV1beta::ApigatewayCancelOperationRequest] apigateway_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigatewayV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, apigateway_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:cancel', options)
          command.request_representation = Google::Apis::ApigatewayV1beta::ApigatewayCancelOperationRequest::Representation
          command.request_object = apigateway_cancel_operation_request_object
          command.response_representation = Google::Apis::ApigatewayV1beta::Empty::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::Empty
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::Empty::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::Empty
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayOperation
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
        # @yieldparam result [Google::Apis::ApigatewayV1beta::ApigatewayListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigatewayV1beta::ApigatewayListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::ApigatewayV1beta::ApigatewayListOperationsResponse::Representation
          command.response_class = Google::Apis::ApigatewayV1beta::ApigatewayListOperationsResponse
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
