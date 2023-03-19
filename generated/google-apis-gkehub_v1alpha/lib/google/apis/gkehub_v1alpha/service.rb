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
    module GkehubV1alpha
      # GKE Hub API
      #
      # 
      #
      # @example
      #    require 'google/apis/gkehub_v1alpha'
      #
      #    Gkehub = Google::Apis::GkehubV1alpha # Alias the module
      #    service = Gkehub::GKEHubService.new
      #
      # @see https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster
      class GKEHubService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://gkehub.googleapis.com/', '',
                client_name: 'google-apis-gkehub_v1alpha',
                client_version: Google::Apis::GkehubV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns all fleets within an organization or a project that the caller has
        # access to.
        # @param [String] parent
        #   Required. The organization or project to list for Fleets under, in the format `
        #   organizations/*/locations/*` or `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of fleets to return. The service may return fewer
        #   than this value. If unspecified, at most 200 fleets will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListFleets` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListFleets` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListFleetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListFleetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_fleets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/fleets', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListFleetsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListFleetsResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Location::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Location
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/locations', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListLocationsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a new Feature.
        # @param [String] parent
        #   Required. The parent (project and location) where the Feature will be created.
        #   Specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::GkehubV1alpha::Feature] feature_object
        # @param [String] feature_id
        #   The ID of the feature to create.
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   after the first request. For example, consider a situation where you make an
        #   initial request and the request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_feature(parent, feature_object = nil, feature_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/features', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Feature::Representation
          command.request_object = feature_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['featureId'] = feature_id unless feature_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a Feature.
        # @param [String] name
        #   Required. The Feature resource name in the format `projects/*/locations/*/
        #   features/*`.
        # @param [Boolean] force
        #   If set to true, the delete will ignore any outstanding resources for this
        #   Feature (that is, `FeatureState.has_resources` is set to true). These
        #   resources will NOT be cleaned up or modified in any way.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_feature(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Feature.
        # @param [String] name
        #   Required. The Feature resource name in the format `projects/*/locations/*/
        #   features/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Feature] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Feature]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_feature(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Feature::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Feature
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_feature_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Policy::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Features in a given project and location.
        # @param [String] parent
        #   Required. The parent (project and location) where the Features will be listed.
        #   Specified in the format `projects/*/locations/*`.
        # @param [String] filter
        #   Lists Features that match the filter expression, following the syntax outlined
        #   in https://google.aip.dev/160. Examples: - Feature with the name "servicemesh"
        #   in project "foo-proj": name = "projects/foo-proj/locations/global/features/
        #   servicemesh" - Features that have a label called `foo`: labels.foo:* -
        #   Features that have a label called `foo` whose value is `bar`: labels.foo = bar
        # @param [String] order_by
        #   One or more fields to compare and use to sort the output. See https://google.
        #   aip.dev/132#ordering.
        # @param [Fixnum] page_size
        #   When requesting a 'page' of resources, `page_size` specifies number of
        #   resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Token returned by previous call to `ListFeatures` which specifies the position
        #   in the list from where to continue listing the resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListFeaturesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListFeaturesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_features(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/features', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListFeaturesResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListFeaturesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Feature.
        # @param [String] name
        #   Required. The Feature resource name in the format `projects/*/locations/*/
        #   features/*`.
        # @param [Google::Apis::GkehubV1alpha::Feature] feature_object
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server will guarantee that for at least 60 minutes
        #   after the first request. For example, consider a situation where you make an
        #   initial request and the request times out. If you make the request again with
        #   the same request ID, the server can check if original operation with the same
        #   request ID was received, and if so, will ignore the second request. This
        #   prevents clients from accidentally creating duplicate commitments. The request
        #   ID must be a valid UUID with the exception that zero UUID is not supported (
        #   00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Mask of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_feature(name, feature_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Feature::Representation
          command.request_object = feature_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::GkehubV1alpha::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_feature_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::GkehubV1alpha::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::GkehubV1alpha::Policy::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Policy
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
        # @param [Google::Apis::GkehubV1alpha::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_feature_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::GkehubV1alpha::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::GkehubV1alpha::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a fleet.
        # @param [String] parent
        #   Required. The parent (project and location) where the Fleet will be created.
        #   Specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::GkehubV1alpha::Fleet] fleet_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_fleet(parent, fleet_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/fleets', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Fleet::Representation
          command.request_object = fleet_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a Fleet. There must be no memberships remaining in the Fleet.
        # @param [String] name
        #   Required. The Fleet resource name in the format `projects/*/locations/*/fleets/
        #   *`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_fleet(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details of a fleet.
        # @param [String] name
        #   Required. The Fleet resource name in the format `projects/*/locations/*/fleets/
        #   *`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Fleet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Fleet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_fleet(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Fleet::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Fleet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all fleets within an organization or a project that the caller has
        # access to.
        # @param [String] parent
        #   Required. The organization or project to list for Fleets under, in the format `
        #   organizations/*/locations/*` or `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of fleets to return. The service may return fewer
        #   than this value. If unspecified, at most 200 fleets will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListFleets` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListFleets` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListFleetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListFleetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_fleets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/fleets', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListFleetsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListFleetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a fleet.
        # @param [String] name
        #   Output only. The full, unique resource name of this fleet in the format of `
        #   projects/`project`/locations/`location`/fleets/`fleet``. Each GCP project can
        #   have at most one fleet resource, named "default".
        # @param [Google::Apis::GkehubV1alpha::Fleet] fleet_object
        # @param [String] update_mask
        #   Required. The fields to be updated;
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_fleet(name, fleet_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Fleet::Representation
          command.request_object = fleet_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Membership. **This is currently only supported for GKE clusters
        # on Google Cloud**. To register other clusters, follow the instructions at
        # https://cloud.google.com/anthos/multicluster-management/connect/registering-a-
        # cluster.
        # @param [String] parent
        #   Required. The parent (project and location) where the Memberships will be
        #   created. Specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::GkehubV1alpha::Membership] membership_object
        # @param [String] membership_id
        #   Required. Client chosen ID for the membership. `membership_id` must be a valid
        #   RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must
        #   consist of lower case alphanumeric characters or `-` 3. It must start and end
        #   with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([
        #   -a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_membership(parent, membership_object = nil, membership_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/memberships', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['membershipId'] = membership_id unless membership_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a Membership. **This is currently only supported for GKE clusters on
        # Google Cloud**. To unregister other clusters, follow the instructions at https:
        # //cloud.google.com/anthos/multicluster-management/connect/unregistering-a-
        # cluster.
        # @param [String] name
        #   Required. The Membership resource name in the format `projects/*/locations/*/
        #   memberships/*`.
        # @param [Boolean] force
        #   Optional. If set to true, any subresource from this Membership will also be
        #   deleted. Otherwise, the request will only work if the Membership has no
        #   subresource.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_membership(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates the manifest for deployment of the GKE connect agent. **This method
        # is used internally by Google-provided libraries.** Most clients should not
        # need to call this method directly.
        # @param [String] name
        #   Required. The Membership resource name the Agent will associate with, in the
        #   format `projects/*/locations/*/memberships/*`.
        # @param [String] image_pull_secret_content
        #   Optional. The image pull secret content for the registry, if not public.
        # @param [Boolean] is_upgrade
        #   Optional. If true, generate the resources for upgrade only. Some resources
        #   generated only for installation (e.g. secrets) will be excluded.
        # @param [String] namespace
        #   Optional. Namespace for GKE Connect agent resources. Defaults to `gke-connect`.
        #   The Connect Agent is authorized automatically when run in the default
        #   namespace. Otherwise, explicit authorization must be granted with an
        #   additional IAM binding.
        # @param [String] proxy
        #   Optional. URI of a proxy if connectivity from the agent to gkeconnect.
        #   googleapis.com requires the use of a proxy. Format must be in the form `http(s)
        #   ://`proxy_address``, depending on the HTTP/HTTPS protocol supported by the
        #   proxy. This will direct the connect agent's outbound traffic through a HTTP(S)
        #   proxy.
        # @param [String] registry
        #   Optional. The registry to fetch the connect agent image from. Defaults to gcr.
        #   io/gkeconnect.
        # @param [String] version
        #   Optional. The Connect agent version to use. Defaults to the most current
        #   version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::GenerateConnectManifestResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::GenerateConnectManifestResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_membership_connect_manifest(name, image_pull_secret_content: nil, is_upgrade: nil, namespace: nil, proxy: nil, registry: nil, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:generateConnectManifest', options)
          command.response_representation = Google::Apis::GkehubV1alpha::GenerateConnectManifestResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::GenerateConnectManifestResponse
          command.params['name'] = name unless name.nil?
          command.query['imagePullSecretContent'] = image_pull_secret_content unless image_pull_secret_content.nil?
          command.query['isUpgrade'] = is_upgrade unless is_upgrade.nil?
          command.query['namespace'] = namespace unless namespace.nil?
          command.query['proxy'] = proxy unless proxy.nil?
          command.query['registry'] = registry unless registry.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a Membership.
        # @param [String] name
        #   Required. The Membership resource name in the format `projects/*/locations/*/
        #   memberships/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Membership] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Membership]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_membership(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Membership::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Membership
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_membership_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Policy::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Memberships in a given project and location.
        # @param [String] parent
        #   Required. The parent (project and location) where the Memberships will be
        #   listed. Specified in the format `projects/*/locations/*`. `projects/*/
        #   locations/-` list memberships in all the regions.
        # @param [String] filter
        #   Optional. Lists Memberships that match the filter expression, following the
        #   syntax outlined in https://google.aip.dev/160. Examples: - Name is `bar` in
        #   project `foo-proj` and location `global`: name = "projects/foo-proj/locations/
        #   global/membership/bar" - Memberships that have a label called `foo`: labels.
        #   foo:* - Memberships that have a label called `foo` whose value is `bar`:
        #   labels.foo = bar - Memberships in the CREATING state: state = CREATING
        # @param [String] order_by
        #   Optional. One or more fields to compare and use to sort the output. See https:/
        #   /google.aip.dev/132#ordering.
        # @param [Fixnum] page_size
        #   Optional. When requesting a 'page' of resources, `page_size` specifies number
        #   of resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Optional. Token returned by previous call to `ListMemberships` which specifies
        #   the position in the list from where to continue listing the resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_memberships(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/memberships', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListMembershipsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Memberships of admin clusters in a given project and location. **This
        # method is only used internally**.
        # @param [String] parent
        #   Required. The parent (project and location) where the Memberships of admin
        #   cluster will be listed. Specified in the format `projects/*/locations/*`.
        # @param [String] filter
        #   Optional. Lists Memberships of admin clusters that match the filter expression.
        # @param [String] order_by
        #   Optional. One or more fields to compare and use to sort the output. See https:/
        #   /google.aip.dev/132#ordering.
        # @param [Fixnum] page_size
        #   Optional. When requesting a 'page' of resources, `page_size` specifies number
        #   of resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Optional. Token returned by previous call to `ListAdminClusterMemberships`
        #   which specifies the position in the list from where to continue listing the
        #   resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListAdminClusterMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListAdminClusterMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_membership_admin(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/memberships:listAdmin', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListAdminClusterMembershipsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListAdminClusterMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Membership.
        # @param [String] name
        #   Required. The Membership resource name in the format `projects/*/locations/*/
        #   memberships/*`.
        # @param [Google::Apis::GkehubV1alpha::Membership] membership_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Mask of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_membership(name, membership_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::GkehubV1alpha::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_membership_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::GkehubV1alpha::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::GkehubV1alpha::Policy::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Policy
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
        # @param [Google::Apis::GkehubV1alpha::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_membership_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::GkehubV1alpha::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::GkehubV1alpha::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ValidateCreateMembership is a preflight check for CreateMembership. It checks
        # the following: 1. Caller has the required `gkehub.memberships.create`
        # permission. 2. The membership_id is still available.
        # @param [String] parent
        #   Required. The parent (project and location) where the Memberships will be
        #   created. Specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::GkehubV1alpha::ValidateCreateMembershipRequest] validate_create_membership_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ValidateCreateMembershipResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ValidateCreateMembershipResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_create_membership(parent, validate_create_membership_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/memberships:validateCreate', options)
          command.request_representation = Google::Apis::GkehubV1alpha::ValidateCreateMembershipRequest::Representation
          command.request_object = validate_create_membership_request_object
          command.response_representation = Google::Apis::GkehubV1alpha::ValidateCreateMembershipResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ValidateCreateMembershipResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a MembershipBinding.
        # @param [String] parent
        #   Required. The parent (project and location) where the MembershipBinding will
        #   be created. Specified in the format `projects/*/locations/*/memberships/*`.
        # @param [Google::Apis::GkehubV1alpha::MembershipBinding] membership_binding_object
        # @param [String] membership_binding_id
        #   Required. The ID to use for the MembershipBinding.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_membership_binding(parent, membership_binding_object = nil, membership_binding_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/bindings', options)
          command.request_representation = Google::Apis::GkehubV1alpha::MembershipBinding::Representation
          command.request_object = membership_binding_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['membershipBindingId'] = membership_binding_id unless membership_binding_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a MembershipBinding.
        # @param [String] name
        #   Required. The MembershipBinding resource name in the format `projects/*/
        #   locations/*/memberships/*/bindings/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_membership_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details of a MembershipBinding.
        # @param [String] name
        #   Required. The MembershipBinding resource name in the format `projects/*/
        #   locations/*/memberships/*/bindings/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::MembershipBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::MembershipBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_membership_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::MembershipBinding::Representation
          command.response_class = Google::Apis::GkehubV1alpha::MembershipBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists MembershipBindings.
        # @param [String] parent
        #   Required. The parent Membership for which the MembershipBindings will be
        #   listed. Specified in the format `projects/*/locations/*/memberships/*`.
        # @param [Fixnum] page_size
        #   Optional. When requesting a 'page' of resources, `page_size` specifies number
        #   of resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Optional. Token returned by previous call to `ListMembershipBindings` which
        #   specifies the position in the list from where to continue listing the
        #   resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListMembershipBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListMembershipBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_membership_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/bindings', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListMembershipBindingsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListMembershipBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a MembershipBinding.
        # @param [String] name
        #   The resource name for the membershipbinding itself `projects/`project`/
        #   locations/`location`/memberships/`membership`/bindings/`membershipbinding``
        # @param [Google::Apis::GkehubV1alpha::MembershipBinding] membership_binding_object
        # @param [String] update_mask
        #   Required. The fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_membership_binding(name, membership_binding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::MembershipBinding::Representation
          command.request_object = membership_binding_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a fleet namespace.
        # @param [String] parent
        #   Required. The parent (project and location) where the Namespace will be
        #   created. Specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::GkehubV1alpha::Namespace] namespace_object
        # @param [String] namespace_id
        #   Required. Client chosen ID for the Namespace. `namespace_id` must be a valid
        #   RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must
        #   consist of lower case alphanumeric characters or `-` 3. It must start and end
        #   with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([
        #   -a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_namespace(parent, namespace_object = nil, namespace_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/namespaces', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Namespace::Representation
          command.request_object = namespace_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['namespaceId'] = namespace_id unless namespace_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a fleet namespace.
        # @param [String] name
        #   Required. The Namespace resource name in the format `projects/*/locations/*/
        #   namespaces/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_namespace(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details of a fleet namespace.
        # @param [String] name
        #   Required. The Namespace resource name in the format `projects/*/locations/*/
        #   namespaces/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Namespace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Namespace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_namespace(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Namespace::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Namespace
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists fleet namespaces.
        # @param [String] parent
        #   Required. The parent (project and location) where the Features will be listed.
        #   Specified in the format `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Optional. When requesting a 'page' of resources, `page_size` specifies number
        #   of resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Optional. Token returned by previous call to `ListFeatures` which specifies
        #   the position in the list from where to continue listing the resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListNamespacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListNamespacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_namespaces(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/namespaces', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListNamespacesResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListNamespacesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a fleet namespace.
        # @param [String] name
        #   The resource name for the namespace `projects/`project`/locations/`location`/
        #   namespaces/`namespace``
        # @param [Google::Apis::GkehubV1alpha::Namespace] namespace_object
        # @param [String] update_mask
        #   Required. The fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_namespace(name, namespace_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Namespace::Representation
          command.request_object = namespace_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a RBACRoleBinding.
        # @param [String] parent
        #   Required. The parent (project and location) where the RBACRoleBinding will be
        #   created. Specified in the format `projects/*/locations/*/namespaces/*`.
        # @param [Google::Apis::GkehubV1alpha::RbacRoleBinding] rbac_role_binding_object
        # @param [String] rbacrolebinding_id
        #   Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must
        #   be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2.
        #   It must consist of lower case alphanumeric characters or `-` 3. It must start
        #   and end with an alphanumeric character Which can be expressed as the regex: `[
        #   a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_namespace_rbacrolebinding(parent, rbac_role_binding_object = nil, rbacrolebinding_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/rbacrolebindings', options)
          command.request_representation = Google::Apis::GkehubV1alpha::RbacRoleBinding::Representation
          command.request_object = rbac_role_binding_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['rbacrolebindingId'] = rbacrolebinding_id unless rbacrolebinding_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a RBACRoleBinding.
        # @param [String] name
        #   Required. The RBACRoleBinding resource name in the format `projects/*/
        #   locations/*/namespaces/*/rbacrolebindings/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_namespace_rbacrolebinding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details of a RBACRoleBinding.
        # @param [String] name
        #   Required. The RBACRoleBinding resource name in the format `projects/*/
        #   locations/*/namespaces/*/rbacrolebindings/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::RbacRoleBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::RbacRoleBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_namespace_rbacrolebinding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::RbacRoleBinding::Representation
          command.response_class = Google::Apis::GkehubV1alpha::RbacRoleBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists RBACRoleBinding.
        # @param [String] parent
        #   Required. The parent (project and location) where the Features will be listed.
        #   Specified in the format `projects/*/locations/*/namespaces/*`.
        # @param [Fixnum] page_size
        #   Optional. When requesting a 'page' of resources, `page_size` specifies number
        #   of resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Optional. Token returned by previous call to `ListRBACRoleBindings` which
        #   specifies the position in the list from where to continue listing the
        #   resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListRbacRoleBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListRbacRoleBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_namespace_rbacrolebindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/rbacrolebindings', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListRbacRoleBindingsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListRbacRoleBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a RBACRoleBinding.
        # @param [String] name
        #   The resource name for the rbacrolebinding `projects/`project`/locations/`
        #   location`/namespaces/`namespace`/rbacrolebindings/`rbacrolebinding`` or `
        #   projects/`project`/locations/`location`/memberships/`membership`/
        #   rbacrolebindings/`rbacrolebinding``
        # @param [Google::Apis::GkehubV1alpha::RbacRoleBinding] rbac_role_binding_object
        # @param [String] update_mask
        #   Required. The fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_namespace_rbacrolebinding(name, rbac_role_binding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::RbacRoleBinding::Representation
          command.request_object = rbac_role_binding_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
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
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::GkehubV1alpha::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::GkehubV1alpha::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::GkehubV1alpha::Empty::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Empty
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Empty::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Empty
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
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
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListOperationsResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Scope.
        # @param [String] parent
        #   Required. The parent (project and location) where the Scope will be created.
        #   Specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::GkehubV1alpha::Scope] scope_object
        # @param [String] scope_id
        #   Required. Client chosen ID for the Scope. `scope_id` must be a ????
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_scope(parent, scope_object = nil, scope_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/scopes', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Scope::Representation
          command.request_object = scope_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['scopeId'] = scope_id unless scope_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Scope.
        # @param [String] name
        #   Required. The Scope resource name in the format `projects/*/locations/*/scopes/
        #   *`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details of a Scope.
        # @param [String] name
        #   Required. The Scope resource name in the format `projects/*/locations/*/scopes/
        #   *`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Scope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Scope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::GkehubV1alpha::Scope::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Scope
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Scopes.
        # @param [String] parent
        #   Required. The parent (project and location) where the Scope will be listed.
        #   Specified in the format `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Optional. When requesting a 'page' of resources, `page_size` specifies number
        #   of resources to return. If unspecified or set to 0, all resources will be
        #   returned.
        # @param [String] page_token
        #   Optional. Token returned by previous call to `ListScopes` which specifies the
        #   position in the list from where to continue listing the resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::ListScopesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::ListScopesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_scopes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/scopes', options)
          command.response_representation = Google::Apis::GkehubV1alpha::ListScopesResponse::Representation
          command.response_class = Google::Apis::GkehubV1alpha::ListScopesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a scopes.
        # @param [String] name
        #   The resource name for the scope `projects/`project`/locations/`location`/
        #   scopes/`scope``
        # @param [Google::Apis::GkehubV1alpha::Scope] scope_object
        # @param [String] update_mask
        #   Required. The fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GkehubV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GkehubV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_scope(name, scope_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::GkehubV1alpha::Scope::Representation
          command.request_object = scope_object
          command.response_representation = Google::Apis::GkehubV1alpha::Operation::Representation
          command.response_class = Google::Apis::GkehubV1alpha::Operation
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
