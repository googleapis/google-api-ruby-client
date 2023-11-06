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
        
        # Gets all the principals having bind permission on the intranet VPC associated
        # with the consumer project granted by the Grant API.
        # @param [String] name
        #   Required. The name of the resource which stores the users/service accounts
        #   having the permission to bind to the corresponding intranet VPC of the
        #   consumer project. DnsBindPermission is a global resource. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/global/
        #   dnsBindPermission`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::DnsBindPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::DnsBindPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_global_dns_bind_permission(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::DnsBindPermission::Representation
          command.response_class = Google::Apis::VmwareengineV1::DnsBindPermission
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Grants the bind permission to the customer provided principal(user / service
        # account) to bind their DNS zone with the intranet VPC associated with the
        # project.
        # @param [String] name
        #   Required. The name of the resource which stores the users/service accounts
        #   having the permission to bind to the corresponding intranet VPC of the
        #   consumer project. DnsBindPermission is a global resource. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/global/
        #   dnsBindPermission`
        # @param [Google::Apis::VmwareengineV1::GrantDnsBindPermissionRequest] grant_dns_bind_permission_request_object
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
        def grant_dns_bind_permission(name, grant_dns_bind_permission_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:grant', options)
          command.request_representation = Google::Apis::VmwareengineV1::GrantDnsBindPermissionRequest::Representation
          command.request_object = grant_dns_bind_permission_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Revokes the bind permission from the customer provided principal(user /
        # service account) on the intranet VPC associated with the consumer project.
        # @param [String] name
        #   Required. The name of the resource which stores the users/service accounts
        #   having the permission to bind to the corresponding intranet VPC of the
        #   consumer project. DnsBindPermission is a global resource. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/global/
        #   dnsBindPermission`
        # @param [Google::Apis::VmwareengineV1::RevokeDnsBindPermissionRequest] revoke_dns_bind_permission_request_object
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
        def revoke_dns_bind_permission(name, revoke_dns_bind_permission_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:revoke', options)
          command.request_representation = Google::Apis::VmwareengineV1::RevokeDnsBindPermissionRequest::Representation
          command.request_object = revoke_dns_bind_permission_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new network peering between the peer network and VMware Engine
        # network provided in a `NetworkPeering` resource.
        # @param [String] parent
        #   Required. The resource name of the location to create the new network peering
        #   in. This value is always `global`, because `NetworkPeering` is a global
        #   resource. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/global`
        # @param [Google::Apis::VmwareengineV1::NetworkPeering] network_peering_object
        # @param [String] network_peering_id
        #   Required. The user-provided identifier of the new `NetworkPeering`. This
        #   identifier must be unique among `NetworkPeering` resources within the parent
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
        def create_project_location_global_network_peering(parent, network_peering_object = nil, network_peering_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/networkPeerings', options)
          command.request_representation = Google::Apis::VmwareengineV1::NetworkPeering::Representation
          command.request_object = network_peering_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['networkPeeringId'] = network_peering_id unless network_peering_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `NetworkPeering` resource. When a network peering is deleted for a
        # VMware Engine network, the peer network becomes inaccessible to that VMware
        # Engine network.
        # @param [String] name
        #   Required. The resource name of the network peering to be deleted. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/
        #   global/networkPeerings/my-peering`
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
        def delete_project_location_global_network_peering(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `NetworkPeering` resource by its resource name. The resource
        # contains details of the network peering, such as peered networks, import and
        # export custom route configurations, and peering state.
        # @param [String] name
        #   Required. The resource name of the network peering to retrieve. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/global/
        #   networkPeerings/my-peering`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::NetworkPeering] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::NetworkPeering]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_global_network_peering(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::NetworkPeering::Representation
          command.response_class = Google::Apis::VmwareengineV1::NetworkPeering
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `NetworkPeering` resources in a given project.
        # @param [String] parent
        #   Required. The resource name of the location (global) to query for network
        #   peerings. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/global`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of network peerings, you can exclude the ones
        #   named `example-peering` by specifying `name != "example-peering"`. To filter
        #   on multiple expressions, provide each separate expression within parentheses.
        #   For example: ``` (name = "example-peering") (createTime > "2021-04-12T08:15:10.
        #   40Z") ``` By default, each expression is an `AND` expression. However, you can
        #   include `AND` and `OR` expressions explicitly. For example: ``` (name = "
        #   example-peering-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "
        #   example-peering-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of network peerings to return in one page. The maximum
        #   value is coerced to 1000. The default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListNetworkPeerings` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListNetworkPeerings` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListNetworkPeeringsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListNetworkPeeringsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_global_network_peerings(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/networkPeerings', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListNetworkPeeringsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListNetworkPeeringsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a `NetworkPeering` resource. Only the `description` field can be
        # updated. Only fields specified in `updateMask` are applied.
        # @param [String] name
        #   Output only. The resource name of the network peering. Resource names are
        #   scheme-less URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/global/
        #   networkPeerings/my-peering`
        # @param [Google::Apis::VmwareengineV1::NetworkPeering] network_peering_object
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
        #   NetworkPeering` resource by the update. The fields specified in the `
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
        def patch_project_location_global_network_peering(name, network_peering_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::NetworkPeering::Representation
          command.request_object = network_peering_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the network peering routes exchanged over a peering connection.
        # @param [String] parent
        #   Required. The resource name of the network peering to retrieve peering routes
        #   from. Resource names are schemeless URIs that follow the conventions in https:/
        #   /cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/global/networkPeerings/my-peering`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. Currently,
        #   only filtering on the `direction` field is supported. To return routes
        #   imported from the peer network, provide "direction=INCOMING". To return routes
        #   exported from the VMware Engine network, provide "direction=OUTGOING". Other
        #   filter expressions return an error.
        # @param [Fixnum] page_size
        #   The maximum number of peering routes to return in one page. The service may
        #   return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListPeeringRoutes` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListPeeringRoutes` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListPeeringRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListPeeringRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_global_network_peering_peering_routes(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/peeringRoutes', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListPeeringRoutesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListPeeringRoutesResponse
          command.params['parent'] = parent unless parent.nil?
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
        
        # Lists external IP addresses assigned to VMware workload VMs within the scope
        # of the given network policy.
        # @param [String] network_policy
        #   Required. The resource name of the network policy to query for assigned
        #   external IP addresses. Resource names are schemeless URIs that follow the
        #   conventions in https://cloud.google.com/apis/design/resource_names. For
        #   example: `projects/my-project/locations/us-central1/networkPolicies/my-policy`
        # @param [Fixnum] page_size
        #   The maximum number of external IP addresses to return in one page. The service
        #   may return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `FetchNetworkPolicyExternalAddresses`
        #   call. Provide this to retrieve the subsequent page. When paginating, all
        #   parameters provided to `FetchNetworkPolicyExternalAddresses`, except for `
        #   page_size` and `page_token`, must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::FetchNetworkPolicyExternalAddressesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::FetchNetworkPolicyExternalAddressesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_network_policy_external_addresses(network_policy, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+networkPolicy}:fetchExternalAddresses', options)
          command.response_representation = Google::Apis::VmwareengineV1::FetchNetworkPolicyExternalAddressesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::FetchNetworkPolicyExternalAddressesResponse
          command.params['networkPolicy'] = network_policy unless network_policy.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        
        # Creates a new external access rule in a given network policy.
        # @param [String] parent
        #   Required. The resource name of the network policy to create a new external
        #   access firewall rule in. Resource names are schemeless URIs that follow the
        #   conventions in https://cloud.google.com/apis/design/resource_names. For
        #   example: `projects/my-project/locations/us-central1/networkPolicies/my-policy`
        # @param [Google::Apis::VmwareengineV1::ExternalAccessRule] external_access_rule_object
        # @param [String] external_access_rule_id
        #   Required. The user-provided identifier of the `ExternalAccessRule` to be
        #   created. This identifier must be unique among `ExternalAccessRule` resources
        #   within the parent and becomes the final token in the name URI. The identifier
        #   must meet the following requirements: * Only contains 1-63 alphanumeric
        #   characters and hyphens * Begins with an alphabetical character * Ends with a
        #   non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](
        #   https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
        # @param [String] request_id
        #   A request ID to identify requests. Specify a unique request ID so that if you
        #   must retry your request, the server will know to ignore the request if it has
        #   already been completed. The server guarantees that a request doesn't result in
        #   creation of duplicate commitments for at least 60 minutes. For example,
        #   consider a situation where you make an initial request and the request times
        #   out. If you make the request again with the same request ID, the server can
        #   check if the original operation with the same request ID was received, and if
        #   so, will ignore the second request. This prevents clients from accidentally
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
        def create_project_location_network_policy_external_access_rule(parent, external_access_rule_object = nil, external_access_rule_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/externalAccessRules', options)
          command.request_representation = Google::Apis::VmwareengineV1::ExternalAccessRule::Representation
          command.request_object = external_access_rule_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['externalAccessRuleId'] = external_access_rule_id unless external_access_rule_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single external access rule.
        # @param [String] name
        #   Required. The resource name of the external access firewall rule to delete.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
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
        def delete_project_location_network_policy_external_access_rule(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single external access rule.
        # @param [String] name
        #   Required. The resource name of the external access firewall rule to retrieve.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ExternalAccessRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ExternalAccessRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_network_policy_external_access_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::ExternalAccessRule::Representation
          command.response_class = Google::Apis::VmwareengineV1::ExternalAccessRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `ExternalAccessRule` resources in the specified network policy.
        # @param [String] parent
        #   Required. The resource name of the network policy to query for external access
        #   firewall rules. Resource names are schemeless URIs that follow the conventions
        #   in https://cloud.google.com/apis/design/resource_names. For example: `projects/
        #   my-project/locations/us-central1/networkPolicies/my-policy`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of external access rules, you can exclude the ones
        #   named `example-rule` by specifying `name != "example-rule"`. To filter on
        #   multiple expressions, provide each separate expression within parentheses. For
        #   example: ``` (name = "example-rule") (createTime > "2021-04-12T08:15:10.40Z") `
        #   `` By default, each expression is an `AND` expression. However, you can
        #   include `AND` and `OR` expressions explicitly. For example: ``` (name = "
        #   example-rule-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "
        #   example-rule-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of external access rules to return in one page. The service
        #   may return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListExternalAccessRulesRequest` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListExternalAccessRulesRequest` must match the call
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListExternalAccessRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListExternalAccessRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_network_policy_external_access_rules(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/externalAccessRules', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListExternalAccessRulesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListExternalAccessRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single external access rule. Only fields specified
        # in `update_mask` are applied.
        # @param [String] name
        #   Output only. The resource name of this external access rule. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1/networkPolicies/my-policy/externalAccessRules/my-rule`
        # @param [Google::Apis::VmwareengineV1::ExternalAccessRule] external_access_rule_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   ExternalAccessRule` resource by the update. The fields specified in the `
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
        def patch_project_location_network_policy_external_access_rule(name, external_access_rule_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::ExternalAccessRule::Representation
          command.request_object = external_access_rule_object
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
        
        # Gets details of the `DnsForwarding` config.
        # @param [String] name
        #   Required. The resource name of a `DnsForwarding` to retrieve. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud/dnsForwarding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::DnsForwarding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::DnsForwarding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_dns_forwarding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::DnsForwarding::Representation
          command.response_class = Google::Apis::VmwareengineV1::DnsForwarding
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
        # @param [String] username
        #   Optional. The username of the user to be queried for credentials. The default
        #   value of this field is CloudOwner@gve.local. The provided value must be one of
        #   the following: CloudOwner@gve.local, solution-user-01@gve.local, solution-user-
        #   02@gve.local, solution-user-03@gve.local, solution-user-04@gve.local, solution-
        #   user-05@gve.local, zertoadmin@gve.local.
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
        def show_project_location_private_cloud_vcenter_credentials(private_cloud, username: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+privateCloud}:showVcenterCredentials', options)
          command.response_representation = Google::Apis::VmwareengineV1::Credentials::Representation
          command.response_class = Google::Apis::VmwareengineV1::Credentials
          command.params['privateCloud'] = private_cloud unless private_cloud.nil?
          command.query['username'] = username unless username.nil?
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
        
        # Updates the parameters of the `DnsForwarding` config, like associated domains.
        # Only fields specified in `update_mask` are applied.
        # @param [String] name
        #   Output only. The resource name of this DNS profile. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud/dnsForwarding`
        # @param [Google::Apis::VmwareengineV1::DnsForwarding] dns_forwarding_object
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
        #   DnsForwarding` resource by the update. The fields specified in the `
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
        def update_project_location_private_cloud_dns_forwarding(name, dns_forwarding_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::DnsForwarding::Representation
          command.request_object = dns_forwarding_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        
        # Gets details of a single node.
        # @param [String] name
        #   Required. The resource name of the node to retrieve. For example: `projects/`
        #   project`/locations/`location`/privateClouds/`private_cloud`/clusters/`cluster`/
        #   nodes/`node``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::Node] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::Node]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_cluster_node(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Node::Representation
          command.response_class = Google::Apis::VmwareengineV1::Node
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists nodes in a given cluster.
        # @param [String] parent
        #   Required. The resource name of the cluster to be queried for nodes. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud/clusters/my-cluster`
        # @param [Fixnum] page_size
        #   The maximum number of nodes to return in one page. The service may return
        #   fewer than this value. The maximum value is coerced to 1000. The default value
        #   of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListNodes` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListNodes` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ListNodesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListNodesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_cluster_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/nodes', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListNodesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListNodesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `ExternalAddress` resource in a given private cloud. The network
        # policy that corresponds to the private cloud must have the external IP address
        # network service enabled (`NetworkPolicy.external_ip`).
        # @param [String] parent
        #   Required. The resource name of the private cloud to create a new external IP
        #   address in. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::ExternalAddress] external_address_object
        # @param [String] external_address_id
        #   Required. The user-provided identifier of the `ExternalAddress` to be created.
        #   This identifier must be unique among `ExternalAddress` resources within the
        #   parent and becomes the final token in the name URI. The identifier must meet
        #   the following requirements: * Only contains 1-63 alphanumeric characters and
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
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
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
        def create_project_location_private_cloud_external_address(parent, external_address_object = nil, external_address_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/externalAddresses', options)
          command.request_representation = Google::Apis::VmwareengineV1::ExternalAddress::Representation
          command.request_object = external_address_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['externalAddressId'] = external_address_id unless external_address_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single external IP address. When you delete an external IP address,
        # connectivity between the external IP address and the corresponding internal IP
        # address is lost.
        # @param [String] name
        #   Required. The resource name of the external IP address to delete. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud/externalAddresses/my-ip`
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
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
        def delete_project_location_private_cloud_external_address(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single external IP address.
        # @param [String] name
        #   Required. The resource name of the external IP address to retrieve. Resource
        #   names are schemeless URIs that follow the conventions in https://cloud.google.
        #   com/apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud/externalAddresses/my-ip`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ExternalAddress] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ExternalAddress]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_external_address(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::ExternalAddress::Representation
          command.response_class = Google::Apis::VmwareengineV1::ExternalAddress
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists external IP addresses assigned to VMware workload VMs in a given private
        # cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to be queried for external IP
        #   addresses. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-central1-a/privateClouds/my-cloud`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of IP addresses, you can exclude the ones named `
        #   example-ip` by specifying `name != "example-ip"`. To filter on multiple
        #   expressions, provide each separate expression within parentheses. For example:
        #   ``` (name = "example-ip") (createTime > "2021-04-12T08:15:10.40Z") ``` By
        #   default, each expression is an `AND` expression. However, you can include `AND`
        #   and `OR` expressions explicitly. For example: ``` (name = "example-ip-1") AND
        #   (createTime > "2021-04-12T08:15:10.40Z") OR (name = "example-ip-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of external IP addresses to return in one page. The service
        #   may return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListExternalAddresses` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListExternalAddresses` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListExternalAddressesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListExternalAddressesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_external_addresses(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/externalAddresses', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListExternalAddressesResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListExternalAddressesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single external IP address. Only fields specified
        # in `update_mask` are applied. During operation processing, the resource is
        # temporarily in the `ACTIVE` state before the operation fully completes. For
        # that period of time, you can't update the resource. Use the operation status
        # to determine when the processing fully completes.
        # @param [String] name
        #   Output only. The resource name of this external IP address. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud/externalAddresses/my-address`
        # @param [Google::Apis::VmwareengineV1::ExternalAddress] external_address_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   ExternalAddress` resource by the update. The fields specified in the `
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
        def patch_project_location_private_cloud_external_address(name, external_address_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::ExternalAddress::Representation
          command.request_object = external_address_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        
        # Create a new logging server for a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to create a new Logging
        #   Server in. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::LoggingServer] logging_server_object
        # @param [String] logging_server_id
        #   Required. The user-provided identifier of the `LoggingServer` to be created.
        #   This identifier must be unique among `LoggingServer` resources within the
        #   parent and becomes the final token in the name URI. The identifier must meet
        #   the following requirements: * Only contains 1-63 alphanumeric characters and
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
        def create_project_location_private_cloud_logging_server(parent, logging_server_object = nil, logging_server_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/loggingServers', options)
          command.request_representation = Google::Apis::VmwareengineV1::LoggingServer::Representation
          command.request_object = logging_server_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['loggingServerId'] = logging_server_id unless logging_server_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single logging server.
        # @param [String] name
        #   Required. The resource name of the logging server to delete. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
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
        def delete_project_location_private_cloud_logging_server(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a logging server.
        # @param [String] name
        #   Required. The resource name of the Logging Server to retrieve. Resource names
        #   are schemeless URIs that follow the conventions in https://cloud.google.com/
        #   apis/design/resource_names. For example: `projects/my-project/locations/us-
        #   central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::LoggingServer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::LoggingServer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_logging_server(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::LoggingServer::Representation
          command.response_class = Google::Apis::VmwareengineV1::LoggingServer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists logging servers configured for a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to be queried for logging
        #   servers. Resource names are schemeless URIs that follow the conventions in
        #   https://cloud.google.com/apis/design/resource_names. For example: `projects/my-
        #   project/locations/us-central1-a/privateClouds/my-cloud`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of logging servers, you can exclude the ones named
        #   `example-server` by specifying `name != "example-server"`. To filter on
        #   multiple expressions, provide each separate expression within parentheses. For
        #   example: ``` (name = "example-server") (createTime > "2021-04-12T08:15:10.40Z")
        #   ``` By default, each expression is an `AND` expression. However, you can
        #   include `AND` and `OR` expressions explicitly. For example: ``` (name = "
        #   example-server-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "
        #   example-server-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of logging servers to return in one page. The service may
        #   return fewer than this value. The maximum value is coerced to 1000. The
        #   default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListLoggingServersRequest` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListLoggingServersRequest` must match the call that
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListLoggingServersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListLoggingServersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_logging_servers(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/loggingServers', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListLoggingServersResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListLoggingServersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single logging server. Only fields specified in `
        # update_mask` are applied.
        # @param [String] name
        #   Output only. The resource name of this logging server. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. For example: `projects/my-project/locations/us-central1-
        #   a/privateClouds/my-cloud/loggingServers/my-logging-server`
        # @param [Google::Apis::VmwareengineV1::LoggingServer] logging_server_object
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
        #   LoggingServer` resource by the update. The fields specified in the `
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
        def patch_project_location_private_cloud_logging_server(name, logging_server_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::LoggingServer::Representation
          command.request_object = logging_server_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `ManagementDnsZoneBinding` resource in a private cloud. This RPC
        # creates the DNS binding and the resource that represents the DNS binding of
        # the consumer VPC network to the management DNS zone. A management DNS zone is
        # the Cloud DNS cross-project binding zone that VMware Engine creates for each
        # private cloud. It contains FQDNs and corresponding IP addresses for the
        # private cloud's ESXi hosts and management VM appliances like vCenter and NSX
        # Manager.
        # @param [String] parent
        #   Required. The resource name of the private cloud to create a new management
        #   DNS zone binding for. Resource names are schemeless URIs that follow the
        #   conventions in https://cloud.google.com/apis/design/resource_names. For
        #   example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
        # @param [Google::Apis::VmwareengineV1::ManagementDnsZoneBinding] management_dns_zone_binding_object
        # @param [String] management_dns_zone_binding_id
        #   Required. The user-provided identifier of the `ManagementDnsZoneBinding`
        #   resource to be created. This identifier must be unique among `
        #   ManagementDnsZoneBinding` resources within the parent and becomes the final
        #   token in the name URI. The identifier must meet the following requirements: *
        #   Only contains 1-63 alphanumeric characters and hyphens * Begins with an
        #   alphabetical character * Ends with a non-hyphen character * Not formatted as a
        #   UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
        #   (section 3.5)
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
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
        def create_project_location_private_cloud_management_dns_zone_binding(parent, management_dns_zone_binding_object = nil, management_dns_zone_binding_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/managementDnsZoneBindings', options)
          command.request_representation = Google::Apis::VmwareengineV1::ManagementDnsZoneBinding::Representation
          command.request_object = management_dns_zone_binding_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['managementDnsZoneBindingId'] = management_dns_zone_binding_id unless management_dns_zone_binding_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `ManagementDnsZoneBinding` resource. When a management DNS zone
        # binding is deleted, the corresponding consumer VPC network is no longer bound
        # to the management DNS zone.
        # @param [String] name
        #   Required. The resource name of the management DNS zone binding to delete.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-
        #   management-dns-zone-binding`
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
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
        def delete_project_location_private_cloud_management_dns_zone_binding(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a 'ManagementDnsZoneBinding' resource by its resource name.
        # @param [String] name
        #   Required. The resource name of the management DNS zone binding to retrieve.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-
        #   management-dns-zone-binding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VmwareengineV1::ManagementDnsZoneBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ManagementDnsZoneBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_cloud_management_dns_zone_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VmwareengineV1::ManagementDnsZoneBinding::Representation
          command.response_class = Google::Apis::VmwareengineV1::ManagementDnsZoneBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Consumer VPCs bound to Management DNS Zone of a given private cloud.
        # @param [String] parent
        #   Required. The resource name of the private cloud to be queried for management
        #   DNS zone bindings. Resource names are schemeless URIs that follow the
        #   conventions in https://cloud.google.com/apis/design/resource_names. For
        #   example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
        # @param [String] filter
        #   A filter expression that matches resources returned in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be `=`, `!=`, `>`, or `<`. For example,
        #   if you are filtering a list of Management DNS Zone Bindings, you can exclude
        #   the ones named `example-management-dns-zone-binding` by specifying `name != "
        #   example-management-dns-zone-binding"`. To filter on multiple expressions,
        #   provide each separate expression within parentheses. For example: ``` (name = "
        #   example-management-dns-zone-binding") (createTime > "2021-04-12T08:15:10.40Z")
        #   ``` By default, each expression is an `AND` expression. However, you can
        #   include `AND` and `OR` expressions explicitly. For example: ``` (name = "
        #   example-management-dns-zone-binding-1") AND (createTime > "2021-04-12T08:15:10.
        #   40Z") OR (name = "example-management-dns-zone-binding-2") ```
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, returned results are
        #   ordered by `name` in ascending order. You can also sort results in descending
        #   order based on the `name` value using `orderBy="name desc"`. Currently, only
        #   ordering by `name` is supported.
        # @param [Fixnum] page_size
        #   The maximum number of management DNS zone bindings to return in one page. The
        #   service may return fewer than this value. The maximum value is coerced to 1000.
        #   The default value of this field is 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListManagementDnsZoneBindings` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListManagementDnsZoneBindings` must match the call
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
        # @yieldparam result [Google::Apis::VmwareengineV1::ListManagementDnsZoneBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VmwareengineV1::ListManagementDnsZoneBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_cloud_management_dns_zone_bindings(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/managementDnsZoneBindings', options)
          command.response_representation = Google::Apis::VmwareengineV1::ListManagementDnsZoneBindingsResponse::Representation
          command.response_class = Google::Apis::VmwareengineV1::ListManagementDnsZoneBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `ManagementDnsZoneBinding` resource. Only fields specified in `
        # update_mask` are applied.
        # @param [String] name
        #   Output only. The resource name of this binding. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. For example: `projects/my-project/locations/us-central1-a/
        #   privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-
        #   binding`
        # @param [Google::Apis::VmwareengineV1::ManagementDnsZoneBinding] management_dns_zone_binding_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server guarantees that a request
        #   doesn't result in creation of duplicate commitments for at least 60 minutes.
        #   For example, consider a situation where you make an initial request and the
        #   request times out. If you make the request again with the same request ID, the
        #   server can check if the original operation with the same request ID was
        #   received, and if so, will ignore the second request. This prevents clients
        #   from accidentally creating duplicate commitments. The request ID must be a
        #   valid UUID with the exception that zero UUID is not supported (00000000-0000-
        #   0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   ManagementDnsZoneBinding` resource by the update. The fields specified in the `
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
        def patch_project_location_private_cloud_management_dns_zone_binding(name, management_dns_zone_binding_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::VmwareengineV1::ManagementDnsZoneBinding::Representation
          command.request_object = management_dns_zone_binding_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retries to create a `ManagementDnsZoneBinding` resource that is in failed
        # state.
        # @param [String] name
        #   Required. The resource name of the management DNS zone binding to repair.
        #   Resource names are schemeless URIs that follow the conventions in https://
        #   cloud.google.com/apis/design/resource_names. For example: `projects/my-project/
        #   locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-
        #   management-dns-zone-binding`
        # @param [Google::Apis::VmwareengineV1::RepairManagementDnsZoneBindingRequest] repair_management_dns_zone_binding_request_object
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
        def repair_management_dns_zone_binding(name, repair_management_dns_zone_binding_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:repair', options)
          command.request_representation = Google::Apis::VmwareengineV1::RepairManagementDnsZoneBindingRequest::Representation
          command.request_object = repair_management_dns_zone_binding_request_object
          command.response_representation = Google::Apis::VmwareengineV1::Operation::Representation
          command.response_class = Google::Apis::VmwareengineV1::Operation
          command.params['name'] = name unless name.nil?
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
