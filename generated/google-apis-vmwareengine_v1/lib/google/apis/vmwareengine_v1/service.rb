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
    module VmwareengineV1
      # VMware Engine API
      #
      # The Google VMware Engine API lets you programmatically manage VMware
      #  environments.
      #
      # @example
      #    require 'google/apis/vmwareengine_v1'
      #
      #    Vmwareengine = Google::Apis::VmwareengineV1 # Alias the module
      #    service = Vmwareengine::VMwareEngineService.new
      #
      # @see https://cloud.google.com/solutions/vmware-as-a-service
      class VMwareEngineService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://vmwareengine.googleapis.com/', '',
                client_name: 'google-apis-vmwareengine_v1',
                client_version: Google::Apis::VmwareengineV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Location::Representation
          command.response_class = Google::Apis::VmwareengineV1::Location
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new network policy in a given VMware Engine network of a project and
        # location (region). A new network policy cannot be created if another network
        # policy already exists in the same scope.
        # @param [String] parent
        #   Required. The resource name of the location (region) to create the new network
        #   policy in. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-central1`
        # @param [Google::Apis::VmwareengineV1::NetworkPolicy] network_policy_object
        # @param [String] network_policy_id
        #   Required. The user-provided identifier of the network policy to be created.
        #   This identifier must be unique within parent `projects/`my-project`/locations/`
        #   us-central1`/networkPolicies` and becomes the final token in the name URI. The
        #   identifier must meet the following requirements: * Only contains 1-63
        #   alphanumeric characters and hyphens * Begins with an alphabetical character *
        #   Ends with a non-hyphen character * Not formatted as a UUID * Complies with [
        #   RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_network_policy(parent, network_policy_object = nil, network_policy_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/networkPolicies', options)
          command.request_representation = Google::Apis::VmwareengineV1::NetworkPolicy::Representation
          command.request_object = network_policy_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['networkPolicyId'] = network_policy_id unless network_policy_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `NetworkPolicy` resource. A network policy cannot be deleted when `
        # NetworkService.state` is set to `RECONCILING` for either its external IP or
        # internet access service.
        # @param [String] name
        #   Required. The resource name of the network policy to delete. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1/networkPolicies/my-network-policy`
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_network_policy(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `NetworkPolicy` resource by its resource name.
        # @param [String] name
        #   Required. The resource name of the network policy to retrieve. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1/networkPolicies/my-network-policy`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::NetworkPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::NetworkPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_network_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::NetworkPolicy::Representation
          command.response_class = Google::Apis::VmwareengineV1::NetworkPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `NetworkPolicy` resources in a specified project and location.
        # @param [String] parent
        #   Required. The resource name of the location (region) to query for network
        #   policies. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-central1`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of network policies, you can exclude the ones
        #   named `example-policy` by specifying `name != "example-policy"`. To filter on
        #   multiple expressions, provide each separate expression within parentheses. For
        #   example: ``` (name = "example-policy") (createTime > "2021-04-12T08:15:10.40Z")
        #   ``` By default, each expression is an `AND` expression. However, you can
        #   include `AND` and `OR` expressions explicitly. For example: ``` (name = "
        #   example-policy-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "
        #   example-policy-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of network policies to return in one page. The service may
        #   return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListNetworkPolicies` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListNetworkPolicies` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListNetworkPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListNetworkPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_network_policies(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/networkPolicies', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListNetworkPoliciesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListNetworkPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a `NetworkPolicy` resource. Only the following fields can be updated:
        # `internet_access`, `external_ip`, `edge_services_cidr`. Only fields specified
        # in `updateMask` are applied. When updating a network policy, the external IP
        # network service can only be disabled if there are no external IP addresses
        # present in the scope of the policy. Also, a `NetworkService` cannot be updated
        # when `NetworkService.state` is set to `RECONCILING`. During operation
        # processing, the resource is temporarily in the `ACTIVE` state before the
        # operation fully completes. For that period of time, you can't update the
        # resource. Use the operation status to determine when the processing fully
        # completes.
        # @param [String] name
        #   Output only. The resource name of this network policy. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1/
        #   networkPolicies/my-network-policy`
        # @param [Google::Apis::VmwareengineV1::NetworkPolicy] network_policy_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   NetworkPolicy` resource by the update. The fields specified in the `
        #   update_mask` are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask. If the user does not provide a mask then
        #   all fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_network_policy(name, network_policy_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::NetworkPolicy::Representation
          command.request_object = network_policy_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single `NodeType`.
        # @param [String] name
        #   Required. The resource name of the node type to retrieve. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-proj/locations/us-central1-a/
        #   nodeTypes/standard-72`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::NodeType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::NodeType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_node_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::NodeType::Representation
          command.response_class = Google::Apis::VmwareengineV1::NodeType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists node types
        # @param [String] parent
        #   Required. The resource name of the location to be queried for node types.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of node types, you can exclude the ones named `
        #   standard-72` by specifying `name != "standard-72"`. To filter on multiple
        #   expressions, provide each separate expression within parentheses. For example:
        #   ``` (name = "standard-72") (virtual_cpu_count > 2) ``` By default, each
        #   expression is an `AND` expression. However, you can include `AND` and `OR`
        #   expressions explicitly. For example: ``` (name = "standard-96") AND (
        #   virtual_cpu_count > 2) OR (name = "standard-72") ```
        # @param [Fixnum] page_size
        #   The maximum number of node types to return in one page. The service may return
        #   fewer than this value. The maximum value is coerced to 1000. The default value
        #   of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListNodeTypes` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListNodeTypes` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ListNodeTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListNodeTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_node_types(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/nodeTypes', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListNodeTypesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListNodeTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Empty::Representation
          command.response_class = Google::Apis::VmwareengineV1::Empty
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `PrivateCloud` resource in a given project and location. Private
        # clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources, `STRETCHED`
        # private clouds are regional. Creating a private cloud also creates a [
        # management cluster](https://cloud.google.com/vmware-engine/docs/concepts-
        # vmware-components) for that private cloud.
        # @param [String] parent
        #   Required. The resource name of the location to create the new private cloud in.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a`
        # @param [Google::Apis::VmwareengineV1::PrivateCloud] private_cloud_object
        # @param [String] private_cloud_id
        #   Required. The user-provided identifier of the private cloud to be created.
        #   This identifier must be unique among each `PrivateCloud` within the parent and
        #   becomes the final token in the name URI. The identifier must meet the
        #   following requirements: * Only contains 1-63 alphanumeric characters and
        #   hyphens * Begins with an alphabetical character * Ends with a non-hyphen
        #   character * Not formatted as a UUID * Complies with [RFC 1034](https://
        #   datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
        # @param [String] request_id
        #   Optional. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. True if you want the request to be validated and not executed; false
        #   otherwise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_cloud(parent, private_cloud_object = nil, private_cloud_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/privateClouds', options)
          command.request_representation = Google::Apis::VmwareengineV1::PrivateCloud::Representation
          command.request_object = private_cloud_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['privateCloudId'] = private_cloud_id unless private_cloud_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedules a `PrivateCloud` resource for deletion. A `PrivateCloud` resource
        # scheduled for deletion has `PrivateCloud.state` set to `DELETED` and `
        # expireTime` set to the time when deletion is final and can no longer be
        # reversed. The delete operation is marked as done as soon as the `PrivateCloud`
        # is successfully scheduled for deletion (this also applies when `delayHours` is
        # set to zero), and the operation is not kept in pending state until `
        # PrivateCloud` is purged. `PrivateCloud` can be restored using `
        # UndeletePrivateCloud` method before the `expireTime` elapses. When `expireTime`
        # is reached, deletion is final and all private cloud resources are
        # irreversibly removed and billing stops. During the final removal process, `
        # PrivateCloud.state` is set to `PURGING`. `PrivateCloud` can be polled using
        # standard `GET` method for the whole period of deletion and purging. It will
        # not be returned only when it is completely purged.
        # @param [String] name
        #   Required. The resource name of the private cloud to delete. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud`
        # @param [Fixnum] delay_hours
        #   Optional. Time delay of the deletion specified in hours. The default value is `
        #   3`. Specifying a non-zero value for this field changes the value of `
        #   PrivateCloud.state` to `DELETED` and sets `expire_time` to the planned
        #   deletion time. Deletion can be cancelled before `expire_time` elapses using
        #   VmwareEngine.UndeletePrivateCloud. Specifying a value of `0` for this field
        #   instead begins the deletion process and ceases billing immediately. During the
        #   final deletion process, the value of `PrivateCloud.state` becomes `PURGING`.
        # @param [Boolean] force
        #   Optional. If set to true, cascade delete is enabled and all children of this
        #   private cloud resource are also deleted. When this flag is set to false, the
        #   private cloud will not be deleted if there are any children other than the
        #   management cluster. The management cluster is always deleted.
        # @param [String] request_id
        #   Optional. The request ID must be a valid UUID with the exception that zero
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_private_cloud(name, delay_hours: nil, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['delayHours'] = delay_hours unless delay_hours.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `PrivateCloud` resource by its resource name.
        # @param [String] name
        #   Required. The resource name of the private cloud to retrieve. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::PrivateCloud] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::PrivateCloud]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::PrivateCloud::Representation
          command.response_class = Google::Apis::VmwareengineV1::PrivateCloud
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::VmwareengineV1::Policy::Representation
          command.response_class = Google::Apis::VmwareengineV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `PrivateCloud` resources in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the private cloud to be queried for clusters.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of private clouds, you can exclude the ones named `
        #   example-pc` by specifying `name != "example-pc"`. You can also filter nested
        #   fields. For example, you could specify `networkConfig.managementCidr = "192.
        #   168.0.0/24"` to include private clouds only if they have a matching address in
        #   their network configuration. To filter on multiple expressions, provide each
        #   separate expression within parentheses. For example: ``` (name = "example-pc")
        #   (createTime > "2021-04-12T08:15:10.40Z") ``` By default, each expression is an
        #   `AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (name = "private-cloud-1") AND (createTime > "
        #   2021-04-12T08:15:10.40Z") OR (name = "private-cloud-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of private clouds to return in one page. The service may
        #   return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListPrivateClouds` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListPrivateClouds` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListPrivateCloudsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListPrivateCloudsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_clouds(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/privateClouds', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListPrivateCloudsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListPrivateCloudsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a `PrivateCloud` resource. Only the following fields can be updated: `
        # description`. Only fields specified in `updateMask` are applied. During
        # operation processing, the resource is temporarily in the `ACTIVE` state before
        # the operation fully completes. For that period of time, you can't update the
        # resource. Use the operation status to determine when the processing fully
        # completes.
        # @param [String] name
        #   Output only. The resource name of this private cloud. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::PrivateCloud] private_cloud_object
        # @param [String] request_id
        #   Optional. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   PrivateCloud` resource by the update. The fields specified in `updateMask` are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_private_cloud(name, private_cloud_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::PrivateCloud::Representation
          command.request_object = private_cloud_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets credentials of the NSX appliance.
        # @param [String] private_cloud
        #   Required. The resource name of the private cloud to reset credentials for.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::ResetNsxCredentialsRequest] reset_nsx_credentials_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_private_cloud_nsx_credentials(private_cloud, reset_nsx_credentials_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+privateCloud}:resetNsxCredentials', options)
          command.request_representation = Google::Apis::VmwareengineV1::ResetNsxCredentialsRequest::Representation
          command.request_object = reset_nsx_credentials_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['privateCloud'] = private_cloud unless private_cloud.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets credentials of the Vcenter appliance.
        # @param [String] private_cloud
        #   Required. The resource name of the private cloud to reset credentials for.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::ResetVcenterCredentialsRequest] reset_vcenter_credentials_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_private_cloud_vcenter_credentials(private_cloud, reset_vcenter_credentials_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+privateCloud}:resetVcenterCredentials', options)
          command.request_representation = Google::Apis::VmwareengineV1::ResetVcenterCredentialsRequest::Representation
          command.request_object = reset_vcenter_credentials_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['privateCloud'] = private_cloud unless private_cloud.nil?
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
        # @param [Google::Apis::VmwareengineV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_private_cloud_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::VmwareengineV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Policy::Representation
          command.response_class = Google::Apis::VmwareengineV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of credentials for NSX appliance.
        # @param [String] private_cloud
        #   Required. The resource name of the private cloud to be queried for credentials.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Credentials] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Credentials]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def show_project_location_private_cloud_nsx_credentials(private_cloud, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+privateCloud}:showNsxCredentials', options)
          command.response_representation = Google::Apis::VmwareengineV1::Credentials::Representation
          command.response_class = Google::Apis::VmwareengineV1::Credentials
          command.params['privateCloud'] = private_cloud unless private_cloud.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of credentials for Vcenter appliance.
        # @param [String] private_cloud
        #   Required. The resource name of the private cloud to be queried for credentials.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Credentials] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Credentials]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def show_project_location_private_cloud_vcenter_credentials(private_cloud, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+privateCloud}:showVcenterCredentials', options)
          command.response_representation = Google::Apis::VmwareengineV1::Credentials::Representation
          command.response_class = Google::Apis::VmwareengineV1::Credentials
          command.params['privateCloud'] = private_cloud unless private_cloud.nil?
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
        # @param [Google::Apis::VmwareengineV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_private_cloud_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::VmwareengineV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::VmwareengineV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a private cloud that was previously scheduled for deletion by `
        # DeletePrivateCloud`. A `PrivateCloud` resource scheduled for deletion has `
        # PrivateCloud.state` set to `DELETED` and `PrivateCloud.expireTime` set to the
        # time when deletion can no longer be reversed.
        # @param [String] name
        #   Required. The resource name of the private cloud scheduled for deletion.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::UndeletePrivateCloudRequest] undelete_private_cloud_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_private_cloud(name, undelete_private_cloud_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undelete', options)
          command.request_representation = Google::Apis::VmwareengineV1::UndeletePrivateCloudRequest::Representation
          command.request_object = undelete_private_cloud_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new cluster in a given private cloud. Creating a new cluster
        # provides additional nodes for use in the parent private cloud and requires
        # sufficient [node quota](https://cloud.google.com/vmware-engine/quotas).
        # @param [String] parent
        #   Required. The resource name of the private cloud to create a new cluster in.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::Cluster] cluster_object
        # @param [String] cluster_id
        #   Required. The user-provided identifier of the new `Cluster`. This identifier
        #   must be unique among clusters within the parent and becomes the final token in
        #   the name URI. The identifier must meet the following requirements: * Only
        #   contains 1-63 alphanumeric characters and hyphens * Begins with an
        #   alphabetical character * Ends with a non-hyphen character * Not formatted as a
        #   UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
        #   (section 3.5)
        # @param [String] request_id
        #   Optional. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. True if you want the request to be validated and not executed; false
        #   otherwise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_cloud_cluster(parent, cluster_object = nil, cluster_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/clusters', options)
          command.request_representation = Google::Apis::VmwareengineV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Cluster` resource. To avoid unintended data loss, migrate or
        # gracefully shut down any workloads running on the cluster before deletion. You
        # cannot delete the management cluster of a private cloud using this method.
        # @param [String] name
        #   Required. The resource name of the cluster to delete. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud/clusters/my-cluster`
        # @param [String] request_id
        #   Optional. The request ID must be a valid UUID with the exception that zero
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_private_cloud_cluster(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Cluster` resource by its resource name.
        # @param [String] name
        #   Required. The cluster resource name to retrieve. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. For example: `projects/my-project/locations/us-central1-a/
        #   privateClouds/my-cloud/clusters/my-cluster`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Cluster::Representation
          command.response_class = Google::Apis::VmwareengineV1::Cluster
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_cluster_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::VmwareengineV1::Policy::Representation
          command.response_class = Google::Apis::VmwareengineV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `Cluster` resources in a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to query for clusters.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [String] filter
        #   To filter on multiple expressions, provide each separate expression within
        #   parentheses. For example: ``` (name = "example-cluster") (nodeCount = "3") ```
        #   By default, each expression is an `AND` expression. However, you can include `
        #   AND` and `OR` expressions explicitly. For example: ``` (name = "example-
        #   cluster-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "example-
        #   cluster-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of clusters to return in one page. The service may return
        #   fewer than this value. The maximum value is coerced to 1000. The default value
        #   of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListClusters` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListClusters` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_clusters(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/clusters', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListClustersResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a `Cluster` resource. Only fields specified in `updateMask` are
        # applied. During operation processing, the resource is temporarily in the `
        # ACTIVE` state before the operation fully completes. For that period of time,
        # you can't update the resource. Use the operation status to determine when the
        # processing fully completes.
        # @param [String] name
        #   Output only. The resource name of this cluster. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. For example: `projects/my-project/locations/us-central1-a/
        #   privateClouds/my-cloud/clusters/my-cluster`
        # @param [Google::Apis::VmwareengineV1::Cluster] cluster_object
        # @param [String] request_id
        #   Optional. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Cluster` resource by the update. The fields specified in the `updateMask` are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [Boolean] validate_only
        #   Optional. True if you want the request to be validated and not executed; false
        #   otherwise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_private_cloud_cluster(name, cluster_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
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
        # @param [Google::Apis::VmwareengineV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_cluster_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::VmwareengineV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Policy::Representation
          command.response_class = Google::Apis::VmwareengineV1::Policy
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
        # @param [Google::Apis::VmwareengineV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_cluster_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::VmwareengineV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::VmwareengineV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new HCX activation key in a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to create the key for.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::HcxActivationKey] hcx_activation_key_object
        # @param [String] hcx_activation_key_id
        #   Required. The user-provided identifier of the `HcxActivationKey` to be created.
        #   This identifier must be unique among `HcxActivationKey` resources within the
        #   parent and becomes the final token in the name URI. The identifier must meet
        #   the following requirements: * Only contains 1-63 alphanumeric characters and
        #   hyphens * Begins with an alphabetical character * Ends with a non-hyphen
        #   character * Not formatted as a UUID * Complies with [RFC 1034](https://
        #   datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server guarantees that a request doesn't result in
        #   creation of duplicate commitments for at least 60 minutes. For example,
        #   consider a situation where you make an initial request and the request times
        #   out. If you make the request again with the same request ID, the server can
        #   check if original operation with the same request ID was received, and if so,
        #   will ignore the second request. This prevents clients from accidentally
        #   creating duplicate commitments. The request ID must be a valid UUID with the
        #   exception that zero UUID is not supported (00000000-0000-0000-0000-
        #   000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_cloud_hcx_activation_key(parent, hcx_activation_key_object = nil, hcx_activation_key_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/hcxActivationKeys', options)
          command.request_representation = Google::Apis::VmwareengineV1::HcxActivationKey::Representation
          command.request_object = hcx_activation_key_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['hcxActivationKeyId'] = hcx_activation_key_id unless hcx_activation_key_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `HcxActivationKey` resource by its resource name.
        # @param [String] name
        #   Required. The resource name of the HCX activation key to retrieve. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::HcxActivationKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::HcxActivationKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_hcx_activation_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::HcxActivationKey::Representation
          command.response_class = Google::Apis::VmwareengineV1::HcxActivationKey
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_hcx_activation_key_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::VmwareengineV1::Policy::Representation
          command.response_class = Google::Apis::VmwareengineV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `HcxActivationKey` resources in a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to be queried for HCX
        #   activation keys. Resource names are schemeless URIs that follow the
        #   conventions in https://cloud.google.com/apis/design/resource_names. For
        #   example: `projects/my-project/locations/us-central1/privateClouds/my-cloud`
        # @param [Fixnum] page_size
        #   The maximum number of HCX activation keys to return in one page. The service
        #   may return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListHcxActivationKeys` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListHcxActivationKeys` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListHcxActivationKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListHcxActivationKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_hcx_activation_keys(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/hcxActivationKeys', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListHcxActivationKeysResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListHcxActivationKeysResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @param [Google::Apis::VmwareengineV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_hcx_activation_key_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::VmwareengineV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Policy::Representation
          command.response_class = Google::Apis::VmwareengineV1::Policy
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
        # @param [Google::Apis::VmwareengineV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_hcx_activation_key_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::VmwareengineV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::VmwareengineV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single subnet.
        # @param [String] name
        #   Required. The resource name of the subnet to retrieve. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud/subnets/my-subnet`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Subnet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Subnet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_subnet(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Subnet::Representation
          command.response_class = Google::Apis::VmwareengineV1::Subnet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists subnets in a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to be queried for subnets.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud`
        # @param [Fixnum] page_size
        #   The maximum number of subnets to return in one page. The service may return
        #   fewer than this value. The maximum value is coerced to 1000. The default value
        #   of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListSubnetsRequest` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSubnetsRequest` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListSubnetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListSubnetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_subnets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/subnets', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListSubnetsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListSubnetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single subnet. Only fields specified in `
        # update_mask` are applied. *Note*: This API is synchronous and always returns a
        # successful `google.longrunning.Operation` (LRO). The returned LRO will only
        # have `done` and `response` fields.
        # @param [String] name
        #   Output only. The resource name of this subnet. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. For example: `projects/my-project/locations/us-central1-a/
        #   privateClouds/my-cloud/subnets/my-subnet`
        # @param [Google::Apis::VmwareengineV1::Subnet] subnet_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Subnet` resource by the update. The fields specified in the `update_mask` are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
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
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_private_cloud_subnet(name, subnet_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::Subnet::Representation
          command.request_object = subnet_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new private connection that can be used for accessing private Clouds.
        # @param [String] parent
        #   Required. The resource name of the location to create the new private
        #   connection in. Private connection is a regional resource. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1`
        # @param [Google::Apis::VmwareengineV1::PrivateConnection] private_connection_object
        # @param [String] private_connection_id
        #   Required. The user-provided identifier of the new private connection. This
        #   identifier must be unique among private connection resources within the parent
        #   and becomes the final token in the name URI. The identifier must meet the
        #   following requirements: * Only contains 1-63 alphanumeric characters and
        #   hyphens * Begins with an alphabetical character * Ends with a non-hyphen
        #   character * Not formatted as a UUID * Complies with [RFC 1034](https://
        #   datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_connection(parent, private_connection_object = nil, private_connection_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/privateConnections', options)
          command.request_representation = Google::Apis::VmwareengineV1::PrivateConnection::Representation
          command.request_object = private_connection_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['privateConnectionId'] = private_connection_id unless private_connection_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `PrivateConnection` resource. When a private connection is deleted
        # for a VMware Engine network, the connected network becomes inaccessible to
        # that VMware Engine network.
        # @param [String] name
        #   Required. The resource name of the private connection to be deleted. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1/privateConnections/my-connection`
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_private_connection(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `PrivateConnection` resource by its resource name. The resource
        # contains details of the private connection, such as connected network, routing
        # mode and state.
        # @param [String] name
        #   Required. The resource name of the private connection to retrieve. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1/privateConnections/my-connection`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::PrivateConnection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::PrivateConnection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::PrivateConnection::Representation
          command.response_class = Google::Apis::VmwareengineV1::PrivateConnection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `PrivateConnection` resources in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the location to query for private connections.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of private connections, you can exclude the ones
        #   named `example-connection` by specifying `name != "example-connection"`. To
        #   filter on multiple expressions, provide each separate expression within
        #   parentheses. For example: ``` (name = "example-connection") (createTime > "
        #   2022-09-22T08:15:10.40Z") ``` By default, each expression is an `AND`
        #   expression. However, you can include `AND` and `OR` expressions explicitly.
        #   For example: ``` (name = "example-connection-1") AND (createTime > "2021-04-
        #   12T08:15:10.40Z") OR (name = "example-connection-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of private connections to return in one page. The maximum
        #   value is coerced to 1000. The default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListPrivateConnections` call. Provide
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListPrivateConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListPrivateConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/privateConnections', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListPrivateConnectionsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListPrivateConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a `PrivateConnection` resource. Only `description` and `routing_mode`
        # fields can be updated. Only fields specified in `updateMask` are applied.
        # @param [String] name
        #   Output only. The resource name of the private connection. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1/
        #   privateConnections/my-connection`
        # @param [Google::Apis::VmwareengineV1::PrivateConnection] private_connection_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   PrivateConnection` resource by the update. The fields specified in the `
        #   update_mask` are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask. If the user does not provide a mask then
        #   all fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_private_connection(name, private_connection_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::PrivateConnection::Representation
          command.request_object = private_connection_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the private connection routes exchanged over a peering connection.
        # @param [String] parent
        #   Required. The resource name of the private connection to retrieve peering
        #   routes from. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-west1/privateConnections/my-connection`
        # @param [Fixnum] page_size
        #   The maximum number of peering routes to return in one page. The service may
        #   return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListPrivateConnectionPeeringRoutes`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListPrivateConnectionPeeringRoutes` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ListPrivateConnectionPeeringRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListPrivateConnectionPeeringRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_connection_peering_routes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/peeringRoutes', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListPrivateConnectionPeeringRoutesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListPrivateConnectionPeeringRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new VMware Engine network that can be used by a private cloud.
        # @param [String] parent
        #   Required. The resource name of the location to create the new VMware Engine
        #   network in. A VMware Engine network of type `LEGACY` is a regional resource,
        #   and a VMware Engine network of type `STANDARD` is a global resource. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/
        #   global`
        # @param [Google::Apis::VmwareengineV1::VmwareEngineNetwork] vmware_engine_network_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] vmware_engine_network_id
        #   Required. The user-provided identifier of the new VMware Engine network. This
        #   identifier must be unique among VMware Engine network resources within the
        #   parent and becomes the final token in the name URI. The identifier must meet
        #   the following requirements: * For networks of type LEGACY, adheres to the
        #   format: ``region-id`-default`. Replace ``region-id`` with the region where you
        #   want to create the VMware Engine network. For example, "us-central1-default". *
        #   Only contains 1-63 alphanumeric characters and hyphens * Begins with an
        #   alphabetical character * Ends with a non-hyphen character * Not formatted as a
        #   UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
        #   (section 3.5)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_vmware_engine_network(parent, vmware_engine_network_object = nil, request_id: nil, vmware_engine_network_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/vmwareEngineNetworks', options)
          command.request_representation = Google::Apis::VmwareengineV1::VmwareEngineNetwork::Representation
          command.request_object = vmware_engine_network_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['vmwareEngineNetworkId'] = vmware_engine_network_id unless vmware_engine_network_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `VmwareEngineNetwork` resource. You can only delete a VMware Engine
        # network after all resources that refer to it are deleted. For example, a
        # private cloud, a network peering, and a network policy can all refer to the
        # same VMware Engine network.
        # @param [String] name
        #   Required. The resource name of the VMware Engine network to be deleted.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/global/vmwareEngineNetworks/my-network`
        # @param [String] etag
        #   Optional. Checksum used to ensure that the user-provided value is up to date
        #   before the server processes the request. The server compares provided checksum
        #   with the current checksum of the resource. If the user-provided value is out
        #   of date, this request returns an `ABORTED` error.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_vmware_engine_network(name, etag: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `VmwareEngineNetwork` resource by its resource name. The resource
        # contains details of the VMware Engine network, such as its VMware Engine
        # network type, peered networks in a service project, and state (for example, `
        # CREATING`, `ACTIVE`, `DELETING`).
        # @param [String] name
        #   Required. The resource name of the VMware Engine network to retrieve. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/
        #   global/vmwareEngineNetworks/my-network`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::VmwareEngineNetwork] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::VmwareEngineNetwork]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_vmware_engine_network(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::VmwareEngineNetwork::Representation
          command.response_class = Google::Apis::VmwareengineV1::VmwareEngineNetwork
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `VmwareEngineNetwork` resources in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the location to query for VMware Engine
        #   networks. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/global`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of network peerings, you can exclude the ones
        #   named `example-network` by specifying `name != "example-network"`. To filter
        #   on multiple expressions, provide each separate expression within parentheses.
        #   For example: ``` (name = "example-network") (createTime > "2021-04-12T08:15:10.
        #   40Z") ``` By default, each expression is an `AND` expression. However, you can
        #   include `AND` and `OR` expressions explicitly. For example: ``` (name = "
        #   example-network-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "
        #   example-network-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of results to return in one page. The maximum value is
        #   coerced to 1000. The default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListVmwareEngineNetworks` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListVmwareEngineNetworks` must match the call that
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListVmwareEngineNetworksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListVmwareEngineNetworksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_vmware_engine_networks(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/vmwareEngineNetworks', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListVmwareEngineNetworksResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListVmwareEngineNetworksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a VMware Engine network resource. Only the following fields can be
        # updated: `description`. Only fields specified in `updateMask` are applied.
        # @param [String] name
        #   Output only. The resource name of the VMware Engine network. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/global/
        #   vmwareEngineNetworks/my-network`
        # @param [Google::Apis::VmwareengineV1::VmwareEngineNetwork] vmware_engine_network_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if original operation with the same request ID was received,
        #   and if so, will ignore the second request. This prevents clients from
        #   accidentally creating duplicate commitments. The request ID must be a valid
        #   UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        #   0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   VMware Engine network resource by the update. The fields specified in the `
        #   update_mask` are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask. If the user does not provide a mask then
        #   all fields will be overwritten. Only the following fields can be updated: `
        #   description`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_vmware_engine_network(name, vmware_engine_network_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::VmwareEngineNetwork::Representation
          command.request_object = vmware_engine_network_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
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
