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
    module GameservicesV1beta
      # Game Services API
      #
      # Deploy and manage infrastructure for global multiplayer gaming experiences.
      #
      # @example
      #    require 'google/apis/gameservices_v1beta'
      #
      #    Gameservices = Google::Apis::GameservicesV1beta # Alias the module
      #    service = Gameservices::GameServicesService.new
      #
      # @see https://cloud.google.com/solutions/gaming/
      class GameServicesService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://gameservices.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::GameservicesV1beta::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Location::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Location
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
        # @param [Boolean] include_unrevealed_locations
        #   If true, the returned list will include locations which are not yet revealed.
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
        # @yieldparam result [Google::Apis::GameservicesV1beta::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, include_unrevealed_locations: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/locations', options)
          command.response_representation = Google::Apis::GameservicesV1beta::ListLocationsResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['includeUnrevealedLocations'] = include_unrevealed_locations unless include_unrevealed_locations.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new game server deployment in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::GameservicesV1beta::GameServerDeployment] game_server_deployment_object
        # @param [String] deployment_id
        #   Required. The ID of the game server delpoyment resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_game_server_deployment(parent, game_server_deployment_object = nil, deployment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/gameServerDeployments', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerDeployment::Representation
          command.request_object = game_server_deployment_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['deploymentId'] = deployment_id unless deployment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single game server deployment.
        # @param [String] name
        #   Required. The name of the game server delpoyment to delete, in the following
        #   form: `projects/`project`/locations/`location`/gameServerDeployments/`
        #   deployment``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_game_server_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about the current state of the game server deployment.
        # Gathers all the Agones fleets and Agones autoscalers, including fleets running
        # an older version of the game server deployment.
        # @param [String] name
        #   Required. The name of the game server delpoyment, in the following form: `
        #   projects/`project`/locations/`location`/gameServerDeployments/`deployment``.
        # @param [Google::Apis::GameservicesV1beta::FetchDeploymentStateRequest] fetch_deployment_state_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::FetchDeploymentStateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::FetchDeploymentStateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_game_server_deployment_deployment_state(name, fetch_deployment_state_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:fetchDeploymentState', options)
          command.request_representation = Google::Apis::GameservicesV1beta::FetchDeploymentStateRequest::Representation
          command.request_object = fetch_deployment_state_request_object
          command.response_representation = Google::Apis::GameservicesV1beta::FetchDeploymentStateResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::FetchDeploymentStateResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single game server deployment.
        # @param [String] name
        #   Required. The name of the game server delpoyment to retrieve, in the following
        #   form: `projects/`project`/locations/`location`/gameServerDeployments/`
        #   deployment``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::GameServerDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::GameServerDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_game_server_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::GameServerDeployment::Representation
          command.response_class = Google::Apis::GameservicesV1beta::GameServerDeployment
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
        # @yieldparam result [Google::Apis::GameservicesV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_game_server_deployment_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Policy::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details a single game server deployment rollout.
        # @param [String] name
        #   Required. The name of the game server delpoyment to retrieve, in the following
        #   form: `projects/`project`/locations/`location`/gameServerDeployments/`
        #   deployment`/rollout`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::GameServerDeploymentRollout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::GameServerDeploymentRollout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_game_server_deployment_rollout(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/rollout', options)
          command.response_representation = Google::Apis::GameservicesV1beta::GameServerDeploymentRollout::Representation
          command.response_class = Google::Apis::GameservicesV1beta::GameServerDeploymentRollout
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists game server deployments in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location``.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results following syntax at https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, the server
        #   will pick an appropriate default. The server may return fewer items than
        #   requested. A caller should only rely on response's next_page_token to
        #   determine if there are more GameServerDeployments left to be queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::ListGameServerDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::ListGameServerDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_game_server_deployments(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/gameServerDeployments', options)
          command.response_representation = Google::Apis::GameservicesV1beta::ListGameServerDeploymentsResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::ListGameServerDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a game server deployment.
        # @param [String] name
        #   The resource name of the game server deployment, in the following form: `
        #   projects/`project`/locations/`location`/gameServerDeployments/`deployment``.
        #   For example, `projects/my-project/locations/global/gameServerDeployments/my-
        #   deployment`.
        # @param [Google::Apis::GameservicesV1beta::GameServerDeployment] game_server_deployment_object
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. For the `FieldMask` definition, see https: //developers.google.com/
        #   protocol-buffers // /docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_game_server_deployment(name, game_server_deployment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerDeployment::Representation
          command.request_object = game_server_deployment_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Previews the game server deployment rollout. This API does not mutate the
        # rollout resource.
        # @param [String] name
        #   The resource name of the game server deployment rollout, in the following form:
        #   `projects/`project`/locations/`location`/gameServerDeployments/`deployment`/
        #   rollout`. For example, `projects/my-project/locations/global/
        #   gameServerDeployments/my-deployment/rollout`.
        # @param [Google::Apis::GameservicesV1beta::GameServerDeploymentRollout] game_server_deployment_rollout_object
        # @param [String] preview_time
        #   Optional. The target timestamp to compute the preview. Defaults to the
        #   immediately after the proposed rollout completes.
        # @param [String] update_mask
        #   Optional. Mask of fields to update. At least one path must be supplied in this
        #   field. For the `FieldMask` definition, see https: //developers.google.com/
        #   protocol-buffers // /docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::PreviewGameServerDeploymentRolloutResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::PreviewGameServerDeploymentRolloutResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def preview_project_location_game_server_deployment_rollout(name, game_server_deployment_rollout_object = nil, preview_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}/rollout:preview', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerDeploymentRollout::Representation
          command.request_object = game_server_deployment_rollout_object
          command.response_representation = Google::Apis::GameservicesV1beta::PreviewGameServerDeploymentRolloutResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::PreviewGameServerDeploymentRolloutResponse
          command.params['name'] = name unless name.nil?
          command.query['previewTime'] = preview_time unless preview_time.nil?
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
        # @param [Google::Apis::GameservicesV1beta::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_game_server_deployment_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::GameservicesV1beta::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::GameservicesV1beta::Policy::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Policy
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
        # @param [Google::Apis::GameservicesV1beta::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_game_server_deployment_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::GameservicesV1beta::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::GameservicesV1beta::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a single game server deployment rollout. The method will not return an
        # error if the update does not affect any existing realms. For example - if the
        # default_game_server_config is changed but all existing realms use the override,
        # that is valid. Similarly, if a non existing realm is explicitly called out in
        # game_server_config_overrides field, that will also not result in an error.
        # @param [String] name
        #   The resource name of the game server deployment rollout, in the following form:
        #   `projects/`project`/locations/`location`/gameServerDeployments/`deployment`/
        #   rollout`. For example, `projects/my-project/locations/global/
        #   gameServerDeployments/my-deployment/rollout`.
        # @param [Google::Apis::GameservicesV1beta::GameServerDeploymentRollout] game_server_deployment_rollout_object
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. For the `FieldMask` definition, see https: //developers.google.com/
        #   protocol-buffers // /docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_game_server_deployment_rollout(name, game_server_deployment_rollout_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}/rollout', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerDeploymentRollout::Representation
          command.request_object = game_server_deployment_rollout_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new game server config in a given project, location, and game server
        # deployment. Game server configs are immutable, and are not applied until
        # referenced in the game server deployment rollout resource.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location`/gameServerDeployments/`deployment`/`.
        # @param [Google::Apis::GameservicesV1beta::GameServerConfig] game_server_config_object
        # @param [String] config_id
        #   Required. The ID of the game server config resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_game_server_deployment_config(parent, game_server_config_object = nil, config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/configs', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerConfig::Representation
          command.request_object = game_server_config_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single game server config. The deletion will fail if the game server
        # config is referenced in a game server deployment rollout.
        # @param [String] name
        #   Required. The name of the game server config to delete, in the following form:
        #   `projects/`project`/locations/`location`/gameServerDeployments/`deployment`/
        #   configs/`config``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_game_server_deployment_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single game server config.
        # @param [String] name
        #   Required. The name of the game server config to retrieve, in the following
        #   form: `projects/`project`/locations/`location`/gameServerDeployments/`
        #   deployment`/configs/`config``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::GameServerConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::GameServerConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_game_server_deployment_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::GameServerConfig::Representation
          command.response_class = Google::Apis::GameservicesV1beta::GameServerConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists game server configs in a given project, location, and game server
        # deployment.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location`/gameServerDeployments/`deployment`/configs/*`.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results following syntax at https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, server will
        #   pick an appropriate default. Server may return fewer items than requested. A
        #   caller should only rely on response's next_page_token to determine if there
        #   are more GameServerConfigs left to be queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::ListGameServerConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::ListGameServerConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_game_server_deployment_configs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/configs', options)
          command.response_representation = Google::Apis::GameservicesV1beta::ListGameServerConfigsResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::ListGameServerConfigsResponse
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
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::GameservicesV1beta::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:cancel', options)
          command.request_representation = Google::Apis::GameservicesV1beta::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::GameservicesV1beta::Empty::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Empty
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
        # @yieldparam result [Google::Apis::GameservicesV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Empty::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Empty
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
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
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
        # @yieldparam result [Google::Apis::GameservicesV1beta::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::GameservicesV1beta::ListOperationsResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new realm in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::GameservicesV1beta::Realm] realm_object
        # @param [String] realm_id
        #   Required. The ID of the realm resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_realm(parent, realm_object = nil, realm_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/realms', options)
          command.request_representation = Google::Apis::GameservicesV1beta::Realm::Representation
          command.request_object = realm_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['realmId'] = realm_id unless realm_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single realm.
        # @param [String] name
        #   Required. The name of the realm to delete, in the following form: `projects/`
        #   project`/locations/`location`/realms/`realm``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_realm(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single realm.
        # @param [String] name
        #   Required. The name of the realm to retrieve, in the following form: `projects/`
        #   project`/locations/`location`/realms/`realm``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Realm] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Realm]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_realm(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Realm::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Realm
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists realms in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location``.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results following syntax at https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, server will
        #   pick an appropriate default. Server may return fewer items than requested. A
        #   caller should only rely on response's next_page_token to determine if there
        #   are more realms left to be queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::ListRealmsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::ListRealmsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_realms(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/realms', options)
          command.response_representation = Google::Apis::GameservicesV1beta::ListRealmsResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::ListRealmsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a single realm.
        # @param [String] name
        #   The resource name of the realm, in the following form: `projects/`project`/
        #   locations/`location`/realms/`realm``. For example, `projects/my-project/
        #   locations/`location`/realms/my-realm`.
        # @param [Google::Apis::GameservicesV1beta::Realm] realm_object
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https: //developers.google.com/protocol-buffers // /docs/
        #   reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_realm(name, realm_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::GameservicesV1beta::Realm::Representation
          command.request_object = realm_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Previews patches to a single realm.
        # @param [String] name
        #   The resource name of the realm, in the following form: `projects/`project`/
        #   locations/`location`/realms/`realm``. For example, `projects/my-project/
        #   locations/`location`/realms/my-realm`.
        # @param [Google::Apis::GameservicesV1beta::Realm] realm_object
        # @param [String] preview_time
        #   Optional. The target timestamp to compute the preview.
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https: //developers.google.com/protocol-buffers // /docs/
        #   reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::PreviewRealmUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::PreviewRealmUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def preview_project_location_realm_update(name, realm_object = nil, preview_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}:previewUpdate', options)
          command.request_representation = Google::Apis::GameservicesV1beta::Realm::Representation
          command.request_object = realm_object
          command.response_representation = Google::Apis::GameservicesV1beta::PreviewRealmUpdateResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::PreviewRealmUpdateResponse
          command.params['name'] = name unless name.nil?
          command.query['previewTime'] = preview_time unless preview_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new game server cluster in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location`/realms/`realm-id``.
        # @param [Google::Apis::GameservicesV1beta::GameServerCluster] game_server_cluster_object
        # @param [String] game_server_cluster_id
        #   Required. The ID of the game server cluster resource to be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_realm_game_server_cluster(parent, game_server_cluster_object = nil, game_server_cluster_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/gameServerClusters', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerCluster::Representation
          command.request_object = game_server_cluster_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gameServerClusterId'] = game_server_cluster_id unless game_server_cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single game server cluster.
        # @param [String] name
        #   Required. The name of the game server cluster to delete, in the following form:
        #   `projects/`project`/locations/`location`/gameServerClusters/`cluster``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_realm_game_server_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single game server cluster.
        # @param [String] name
        #   Required. The name of the game server cluster to retrieve, in the following
        #   form: `projects/`project`/locations/`location`/realms/`realm-id`/
        #   gameServerClusters/`cluster``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::GameServerCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::GameServerCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_realm_game_server_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::GameservicesV1beta::GameServerCluster::Representation
          command.response_class = Google::Apis::GameservicesV1beta::GameServerCluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists game server clusters in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: "projects/`project`/
        #   locations/`location`/realms/`realm`".
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results following syntax at https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If unspecified, the server
        #   will pick an appropriate default. The server may return fewer items than
        #   requested. A caller should only rely on response's next_page_token to
        #   determine if there are more GameServerClusters left to be queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::ListGameServerClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::ListGameServerClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_realm_game_server_clusters(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/gameServerClusters', options)
          command.response_representation = Google::Apis::GameservicesV1beta::ListGameServerClustersResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::ListGameServerClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a single game server cluster.
        # @param [String] name
        #   Required. The resource name of the game server cluster, in the following form:
        #   `projects/`project`/locations/`location`/realms/`realm`/gameServerClusters/`
        #   cluster``. For example, `projects/my-project/locations/`location`/realms/
        #   zanzibar/gameServerClusters/my-onprem-cluster`.
        # @param [Google::Apis::GameservicesV1beta::GameServerCluster] game_server_cluster_object
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. For the `FieldMask` definition, see https: //developers.google.com/
        #   protocol-buffers // /docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_realm_game_server_cluster(name, game_server_cluster_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerCluster::Representation
          command.request_object = game_server_cluster_object
          command.response_representation = Google::Apis::GameservicesV1beta::Operation::Representation
          command.response_class = Google::Apis::GameservicesV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Previews creation of a new game server cluster in a given project and location.
        # @param [String] parent
        #   Required. The parent resource name, in the following form: `projects/`project`/
        #   locations/`location`/realms/`realm``.
        # @param [Google::Apis::GameservicesV1beta::GameServerCluster] game_server_cluster_object
        # @param [String] game_server_cluster_id
        #   Required. The ID of the game server cluster resource to be created.
        # @param [String] preview_time
        #   Optional. The target timestamp to compute the preview.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::PreviewCreateGameServerClusterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::PreviewCreateGameServerClusterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def preview_project_location_realm_game_server_cluster_create(parent, game_server_cluster_object = nil, game_server_cluster_id: nil, preview_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/gameServerClusters:previewCreate', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerCluster::Representation
          command.request_object = game_server_cluster_object
          command.response_representation = Google::Apis::GameservicesV1beta::PreviewCreateGameServerClusterResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::PreviewCreateGameServerClusterResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['gameServerClusterId'] = game_server_cluster_id unless game_server_cluster_id.nil?
          command.query['previewTime'] = preview_time unless preview_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Previews deletion of a single game server cluster.
        # @param [String] name
        #   Required. The name of the game server cluster to delete, in the following form:
        #   `projects/`project`/locations/`location`/gameServerClusters/`cluster``.
        # @param [String] preview_time
        #   Optional. The target timestamp to compute the preview.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::PreviewDeleteGameServerClusterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::PreviewDeleteGameServerClusterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def preview_project_location_realm_game_server_cluster_delete(name, preview_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}:previewDelete', options)
          command.response_representation = Google::Apis::GameservicesV1beta::PreviewDeleteGameServerClusterResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::PreviewDeleteGameServerClusterResponse
          command.params['name'] = name unless name.nil?
          command.query['previewTime'] = preview_time unless preview_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Previews updating a GameServerCluster.
        # @param [String] name
        #   Required. The resource name of the game server cluster, in the following form:
        #   `projects/`project`/locations/`location`/realms/`realm`/gameServerClusters/`
        #   cluster``. For example, `projects/my-project/locations/`location`/realms/
        #   zanzibar/gameServerClusters/my-onprem-cluster`.
        # @param [Google::Apis::GameservicesV1beta::GameServerCluster] game_server_cluster_object
        # @param [String] preview_time
        #   Optional. The target timestamp to compute the preview.
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. For the `FieldMask` definition, see https: //developers.google.com/
        #   protocol-buffers // /docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GameservicesV1beta::PreviewUpdateGameServerClusterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GameservicesV1beta::PreviewUpdateGameServerClusterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def preview_project_location_realm_game_server_cluster_update(name, game_server_cluster_object = nil, preview_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}:previewUpdate', options)
          command.request_representation = Google::Apis::GameservicesV1beta::GameServerCluster::Representation
          command.request_object = game_server_cluster_object
          command.response_representation = Google::Apis::GameservicesV1beta::PreviewUpdateGameServerClusterResponse::Representation
          command.response_class = Google::Apis::GameservicesV1beta::PreviewUpdateGameServerClusterResponse
          command.params['name'] = name unless name.nil?
          command.query['previewTime'] = preview_time unless preview_time.nil?
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
