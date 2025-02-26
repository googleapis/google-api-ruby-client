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
    module NetworksecurityV1beta1
      # Network Security API
      #
      # 
      #
      # @example
      #    require 'google/apis/networksecurity_v1beta1'
      #
      #    Networksecurity = Google::Apis::NetworksecurityV1beta1 # Alias the module
      #    service = Networksecurity::NetworkSecurityService.new
      #
      # @see https://cloud.google.com/networking
      class NetworkSecurityService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://networksecurity.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-networksecurity_v1beta1',
                client_version: Google::Apis::NetworksecurityV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Adds items to an address group.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to add items to. Must be in the format `
        #   projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Google::Apis::NetworksecurityV1beta1::AddAddressGroupItemsRequest] add_address_group_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_organization_location_address_group_items(address_group, add_address_group_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+addressGroup}:addItems', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AddAddressGroupItemsRequest::Representation
          command.request_object = add_address_group_items_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clones items from one address group to another.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to clone items to. Must be in the format `
        #   projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Google::Apis::NetworksecurityV1beta1::CloneAddressGroupItemsRequest] clone_address_group_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_organization_location_address_group_items(address_group, clone_address_group_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+addressGroup}:cloneItems', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::CloneAddressGroupItemsRequest::Representation
          command.request_object = clone_address_group_items_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new address group in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the AddressGroup. Must be in the format `
        #   projects/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::AddressGroup] address_group_object
        # @param [String] address_group_id
        #   Required. Short name of the AddressGroup resource to be created. This value
        #   should be 1-63 characters long, containing only letters, numbers, hyphens, and
        #   underscores, and should not start with a number. E.g. "authz_policy".
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_address_group(parent, address_group_object = nil, address_group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/addressGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
          command.request_object = address_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['addressGroupId'] = address_group_id unless address_group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an address group.
        # @param [String] name
        #   Required. A name of the AddressGroup to delete. Must be in the format `
        #   projects/*/locations/`location`/addressGroups/*`.
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_address_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single address group.
        # @param [String] name
        #   Required. A name of the AddressGroup to get. Must be in the format `projects/*/
        #   locations/`location`/addressGroups/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::AddressGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::AddressGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_address_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::AddressGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists address groups in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the AddressGroups should be
        #   listed, specified in the format `projects/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of AddressGroups to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListAddressGroupsResponse` Indicates that this
        #   is a continuation of a prior `ListAddressGroups` call, and that the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_address_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/addressGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists references of an address group.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to clone items to. Must be in the format `
        #   projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Fixnum] page_size
        #   The maximum number of references to return. If unspecified, server will pick
        #   an appropriate default. Server may return fewer items than requested. A caller
        #   should only rely on response's next_page_token to determine if there are more
        #   AddressGroupUsers left to be queried.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_address_group_references(address_group, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+addressGroup}:listReferences', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates parameters of an address group.
        # @param [String] name
        #   Required. Name of the AddressGroup resource. It matches pattern `projects/*/
        #   locations/`location`/addressGroups/`.
        # @param [Google::Apis::NetworksecurityV1beta1::AddressGroup] address_group_object
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
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   AddressGroup resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_address_group(name, address_group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
          command.request_object = address_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes items from an address group.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to remove items from. Must be in the
        #   format `projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Google::Apis::NetworksecurityV1beta1::RemoveAddressGroupItemsRequest] remove_address_group_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_organization_location_address_group_items(address_group, remove_address_group_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+addressGroup}:removeItems', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::RemoveAddressGroupItemsRequest::Representation
          command.request_object = remove_address_group_items_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new FirewallEndpoint in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::FirewallEndpoint] firewall_endpoint_object
        # @param [String] firewall_endpoint_id
        #   Required. Id of the requesting object. If auto-generating Id server-side,
        #   remove this field and firewall_endpoint_id from the method_signature of Create
        #   RPC.
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_firewall_endpoint(parent, firewall_endpoint_object = nil, firewall_endpoint_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/firewallEndpoints', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::FirewallEndpoint::Representation
          command.request_object = firewall_endpoint_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['firewallEndpointId'] = firewall_endpoint_id unless firewall_endpoint_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Endpoint.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_firewall_endpoint(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Endpoint.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::FirewallEndpoint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::FirewallEndpoint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_firewall_endpoint(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::FirewallEndpoint::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::FirewallEndpoint
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists FirewallEndpoints in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListEndpointsRequest
        # @param [String] filter
        #   Optional. Filtering results
        # @param [String] order_by
        #   Hint for how to order the results
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_firewall_endpoints(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/firewallEndpoints', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single Endpoint.
        # @param [String] name
        #   Immutable. Identifier. name of resource
        # @param [Google::Apis::NetworksecurityV1beta1::FirewallEndpoint] firewall_endpoint_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   Endpoint resource by the update. The fields specified in the update_mask are
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_firewall_endpoint(name, firewall_endpoint_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::FirewallEndpoint::Representation
          command.request_object = firewall_endpoint_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
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
        # @param [Google::Apis::NetworksecurityV1beta1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_organization_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Empty::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Empty
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Empty::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Empty
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SecurityProfileGroup in a given organization and location.
        # @param [String] parent
        #   Required. The parent resource of the SecurityProfileGroup. Must be in the
        #   format `projects|organizations/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup] security_profile_group_object
        # @param [String] security_profile_group_id
        #   Required. Short name of the SecurityProfileGroup resource to be created. This
        #   value should be 1-63 characters long, containing only letters, numbers,
        #   hyphens, and underscores, and should not start with a number. E.g. "
        #   security_profile_group1".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_security_profile_group(parent, security_profile_group_object = nil, security_profile_group_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/securityProfileGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup::Representation
          command.request_object = security_profile_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['securityProfileGroupId'] = security_profile_group_id unless security_profile_group_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single SecurityProfileGroup.
        # @param [String] name
        #   Required. A name of the SecurityProfileGroup to delete. Must be in the format `
        #   projects|organizations/*/locations/`location`/securityProfileGroups/`
        #   security_profile_group``.
        # @param [String] etag
        #   Optional. If client provided etag is out of date, delete will return
        #   FAILED_PRECONDITION error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_security_profile_group(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single SecurityProfileGroup.
        # @param [String] name
        #   Required. A name of the SecurityProfileGroup to get. Must be in the format `
        #   projects|organizations/*/locations/`location`/securityProfileGroups/`
        #   security_profile_group``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_security_profile_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SecurityProfileGroups in a given organization and location.
        # @param [String] parent
        #   Required. The project or organization and location from which the
        #   SecurityProfileGroups should be listed, specified in the format `projects|
        #   organizations/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of SecurityProfileGroups to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListSecurityProfileGroupsResponse` Indicates
        #   that this is a continuation of a prior `ListSecurityProfileGroups` call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListSecurityProfileGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListSecurityProfileGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_security_profile_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/securityProfileGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListSecurityProfileGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListSecurityProfileGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single SecurityProfileGroup.
        # @param [String] name
        #   Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches
        #   pattern `projects|organizations/*/locations/`location`/securityProfileGroups/`
        #   security_profile_group``.
        # @param [Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup] security_profile_group_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   SecurityProfileGroup resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_security_profile_group(name, security_profile_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup::Representation
          command.request_object = security_profile_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SecurityProfile in a given organization and location.
        # @param [String] parent
        #   Required. The parent resource of the SecurityProfile. Must be in the format `
        #   projects|organizations/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::SecurityProfile] security_profile_object
        # @param [String] security_profile_id
        #   Required. Short name of the SecurityProfile resource to be created. This value
        #   should be 1-63 characters long, containing only letters, numbers, hyphens, and
        #   underscores, and should not start with a number. E.g. "security_profile1".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_security_profile(parent, security_profile_object = nil, security_profile_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/securityProfiles', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::SecurityProfile::Representation
          command.request_object = security_profile_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['securityProfileId'] = security_profile_id unless security_profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single SecurityProfile.
        # @param [String] name
        #   Required. A name of the SecurityProfile to delete. Must be in the format `
        #   projects|organizations/*/locations/`location`/securityProfiles/`
        #   security_profile_id``.
        # @param [String] etag
        #   Optional. If client provided etag is out of date, delete will return
        #   FAILED_PRECONDITION error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_security_profile(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single SecurityProfile.
        # @param [String] name
        #   Required. A name of the SecurityProfile to get. Must be in the format `
        #   projects|organizations/*/locations/`location`/securityProfiles/`
        #   security_profile_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::SecurityProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::SecurityProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_security_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::SecurityProfile::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::SecurityProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SecurityProfiles in a given organization and location.
        # @param [String] parent
        #   Required. The project or organization and location from which the
        #   SecurityProfiles should be listed, specified in the format `projects|
        #   organizations/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of SecurityProfiles to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListSecurityProfilesResponse` Indicates that
        #   this is a continuation of a prior `ListSecurityProfiles` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListSecurityProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListSecurityProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_security_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/securityProfiles', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListSecurityProfilesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListSecurityProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single SecurityProfile.
        # @param [String] name
        #   Immutable. Identifier. Name of the SecurityProfile resource. It matches
        #   pattern `projects|organizations/*/locations/`location`/securityProfiles/`
        #   security_profile``.
        # @param [Google::Apis::NetworksecurityV1beta1::SecurityProfile] security_profile_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   SecurityProfile resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_security_profile(name, security_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::SecurityProfile::Representation
          command.request_object = security_profile_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Location::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Location
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds items to an address group.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to add items to. Must be in the format `
        #   projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Google::Apis::NetworksecurityV1beta1::AddAddressGroupItemsRequest] add_address_group_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_address_group_items(address_group, add_address_group_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+addressGroup}:addItems', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AddAddressGroupItemsRequest::Representation
          command.request_object = add_address_group_items_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clones items from one address group to another.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to clone items to. Must be in the format `
        #   projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Google::Apis::NetworksecurityV1beta1::CloneAddressGroupItemsRequest] clone_address_group_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_project_location_address_group_items(address_group, clone_address_group_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+addressGroup}:cloneItems', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::CloneAddressGroupItemsRequest::Representation
          command.request_object = clone_address_group_items_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new address group in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the AddressGroup. Must be in the format `
        #   projects/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::AddressGroup] address_group_object
        # @param [String] address_group_id
        #   Required. Short name of the AddressGroup resource to be created. This value
        #   should be 1-63 characters long, containing only letters, numbers, hyphens, and
        #   underscores, and should not start with a number. E.g. "authz_policy".
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_address_group(parent, address_group_object = nil, address_group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/addressGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
          command.request_object = address_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['addressGroupId'] = address_group_id unless address_group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single address group.
        # @param [String] name
        #   Required. A name of the AddressGroup to delete. Must be in the format `
        #   projects/*/locations/`location`/addressGroups/*`.
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_address_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single address group.
        # @param [String] name
        #   Required. A name of the AddressGroup to get. Must be in the format `projects/*/
        #   locations/`location`/addressGroups/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::AddressGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::AddressGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_address_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::AddressGroup
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_address_group_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists address groups in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the AddressGroups should be
        #   listed, specified in the format `projects/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of AddressGroups to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListAddressGroupsResponse` Indicates that this
        #   is a continuation of a prior `ListAddressGroups` call, and that the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_address_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/addressGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListAddressGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists references of an address group.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to clone items to. Must be in the format `
        #   projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Fixnum] page_size
        #   The maximum number of references to return. If unspecified, server will pick
        #   an appropriate default. Server may return fewer items than requested. A caller
        #   should only rely on response's next_page_token to determine if there are more
        #   AddressGroupUsers left to be queried.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_address_group_references(address_group, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+addressGroup}:listReferences', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponse
          command.params['addressGroup'] = address_group unless address_group.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single address group.
        # @param [String] name
        #   Required. Name of the AddressGroup resource. It matches pattern `projects/*/
        #   locations/`location`/addressGroups/`.
        # @param [Google::Apis::NetworksecurityV1beta1::AddressGroup] address_group_object
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
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   AddressGroup resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_address_group(name, address_group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
          command.request_object = address_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes items from an address group.
        # @param [String] address_group
        #   Required. A name of the AddressGroup to remove items from. Must be in the
        #   format `projects|organization/*/locations/`location`/addressGroups/*`.
        # @param [Google::Apis::NetworksecurityV1beta1::RemoveAddressGroupItemsRequest] remove_address_group_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_address_group_items(address_group, remove_address_group_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+addressGroup}:removeItems', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::RemoveAddressGroupItemsRequest::Representation
          command.request_object = remove_address_group_items_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['addressGroup'] = address_group unless address_group.nil?
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_address_group_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_address_group_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AuthorizationPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the AuthorizationPolicy. Must be in the
        #   format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy] authorization_policy_object
        # @param [String] authorization_policy_id
        #   Required. Short name of the AuthorizationPolicy resource to be created. This
        #   value should be 1-63 characters long, containing only letters, numbers,
        #   hyphens, and underscores, and should not start with a number. E.g. "
        #   authz_policy".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorization_policy(parent, authorization_policy_object = nil, authorization_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/authorizationPolicies', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy::Representation
          command.request_object = authorization_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizationPolicyId'] = authorization_policy_id unless authorization_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single AuthorizationPolicy.
        # @param [String] name
        #   Required. A name of the AuthorizationPolicy to delete. Must be in the format `
        #   projects/`project`/locations/`location`/authorizationPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorization_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AuthorizationPolicy.
        # @param [String] name
        #   Required. A name of the AuthorizationPolicy to get. Must be in the format `
        #   projects/`project`/locations/`location`/authorizationPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorization_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorization_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AuthorizationPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the AuthorizationPolicies should
        #   be listed, specified in the format `projects/`project`/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of AuthorizationPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListAuthorizationPoliciesResponse` Indicates
        #   that this is a continuation of a prior `ListAuthorizationPolicies` call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListAuthorizationPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListAuthorizationPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorization_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/authorizationPolicies', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListAuthorizationPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListAuthorizationPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single AuthorizationPolicy.
        # @param [String] name
        #   Required. Name of the AuthorizationPolicy resource. It matches pattern `
        #   projects/`project`/locations/`location`/authorizationPolicies/`.
        # @param [Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy] authorization_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   AuthorizationPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authorization_policy(name, authorization_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy::Representation
          command.request_object = authorization_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_authorization_policy_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_authorization_policy_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AuthzPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the `AuthzPolicy` resource. Must be in the
        #   format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::AuthzPolicy] authz_policy_object
        # @param [String] authz_policy_id
        #   Required. User-provided ID of the `AuthzPolicy` resource to be created.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for at
        #   least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, ignores the second
        #   request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authz_policy(parent, authz_policy_object = nil, authz_policy_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/authzPolicies', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AuthzPolicy::Representation
          command.request_object = authz_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['authzPolicyId'] = authz_policy_id unless authz_policy_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single AuthzPolicy.
        # @param [String] name
        #   Required. The name of the `AuthzPolicy` resource to delete. Must be in the
        #   format `projects/`project`/locations/`location`/authzPolicies/`authz_policy``.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for at
        #   least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, ignores the second
        #   request. This prevents clients from accidentally creating duplicate
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authz_policy(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AuthzPolicy.
        # @param [String] name
        #   Required. A name of the `AuthzPolicy` resource to get. Must be in the format `
        #   projects/`project`/locations/`location`/authzPolicies/`authz_policy``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::AuthzPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authz_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::AuthzPolicy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::AuthzPolicy
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authz_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AuthzPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the `AuthzPolicy` resources are
        #   listed, specified in the following format: `projects/`project`/locations/`
        #   location``.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server might return fewer items than
        #   requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results that the server returns.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListAuthzPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListAuthzPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authz_policies(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/authzPolicies', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListAuthzPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListAuthzPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single AuthzPolicy.
        # @param [String] name
        #   Required. Identifier. Name of the `AuthzPolicy` resource in the following
        #   format: `projects/`project`/locations/`location`/authzPolicies/`authz_policy``.
        # @param [Google::Apis::NetworksecurityV1beta1::AuthzPolicy] authz_policy_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server can ignore the
        #   request if it has already been completed. The server guarantees that for at
        #   least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, ignores the second
        #   request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Used to specify the fields to be overwritten in the `AuthzPolicy`
        #   resource by the update. The fields specified in the `update_mask` are relative
        #   to the resource, not the full request. A field is overwritten if it is in the
        #   mask. If the user does not specify a mask, then all fields are overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authz_policy(name, authz_policy_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::AuthzPolicy::Representation
          command.request_object = authz_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_authz_policy_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_authz_policy_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new BackendAuthenticationConfig in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the BackendAuthenticationConfig. Must be in
        #   the format `projects/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig] backend_authentication_config_object
        # @param [String] backend_authentication_config_id
        #   Required. Short name of the BackendAuthenticationConfig resource to be created.
        #   This value should be 1-63 characters long, containing only letters, numbers,
        #   hyphens, and underscores, and should not start with a number. E.g. "backend-
        #   auth-config".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_backend_authentication_config(parent, backend_authentication_config_object = nil, backend_authentication_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/backendAuthenticationConfigs', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig::Representation
          command.request_object = backend_authentication_config_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backendAuthenticationConfigId'] = backend_authentication_config_id unless backend_authentication_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single BackendAuthenticationConfig to BackendAuthenticationConfig.
        # @param [String] name
        #   Required. A name of the BackendAuthenticationConfig to delete. Must be in the
        #   format `projects/*/locations/`location`/backendAuthenticationConfigs/*`.
        # @param [String] etag
        #   Optional. Etag of the resource. If this is provided, it must match the server'
        #   s etag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backend_authentication_config(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single BackendAuthenticationConfig to
        # BackendAuthenticationConfig.
        # @param [String] name
        #   Required. A name of the BackendAuthenticationConfig to get. Must be in the
        #   format `projects/*/locations/`location`/backendAuthenticationConfigs/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backend_authentication_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BackendAuthenticationConfigs in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the BackendAuthenticationConfigs
        #   should be listed, specified in the format `projects/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of BackendAuthenticationConfigs to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListBackendAuthenticationConfigsResponse`
        #   Indicates that this is a continuation of a prior `
        #   ListBackendAuthenticationConfigs` call, and that the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListBackendAuthenticationConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListBackendAuthenticationConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backend_authentication_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/backendAuthenticationConfigs', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListBackendAuthenticationConfigsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListBackendAuthenticationConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single BackendAuthenticationConfig to
        # BackendAuthenticationConfig.
        # @param [String] name
        #   Required. Name of the BackendAuthenticationConfig resource. It matches the
        #   pattern `projects/*/locations/`location`/backendAuthenticationConfigs/`
        #   backend_authentication_config``
        # @param [Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig] backend_authentication_config_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   BackendAuthenticationConfig resource by the update. The fields specified in
        #   the update_mask are relative to the resource, not the full request. A field
        #   will be overwritten if it is in the mask. If the user does not provide a mask
        #   then all fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_backend_authentication_config(name, backend_authentication_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig::Representation
          command.request_object = backend_authentication_config_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ClientTlsPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the ClientTlsPolicy. Must be in the format `
        #   projects/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy] client_tls_policy_object
        # @param [String] client_tls_policy_id
        #   Required. Short name of the ClientTlsPolicy resource to be created. This value
        #   should be 1-63 characters long, containing only letters, numbers, hyphens, and
        #   underscores, and should not start with a number. E.g. "client_mtls_policy".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_client_tls_policy(parent, client_tls_policy_object = nil, client_tls_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/clientTlsPolicies', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy::Representation
          command.request_object = client_tls_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['clientTlsPolicyId'] = client_tls_policy_id unless client_tls_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ClientTlsPolicy.
        # @param [String] name
        #   Required. A name of the ClientTlsPolicy to delete. Must be in the format `
        #   projects/*/locations/`location`/clientTlsPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_client_tls_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ClientTlsPolicy.
        # @param [String] name
        #   Required. A name of the ClientTlsPolicy to get. Must be in the format `
        #   projects/*/locations/`location`/clientTlsPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_client_tls_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_client_tls_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ClientTlsPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the ClientTlsPolicies should be
        #   listed, specified in the format `projects/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of ClientTlsPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListClientTlsPoliciesResponse` Indicates that
        #   this is a continuation of a prior `ListClientTlsPolicies` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListClientTlsPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListClientTlsPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_client_tls_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/clientTlsPolicies', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListClientTlsPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListClientTlsPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single ClientTlsPolicy.
        # @param [String] name
        #   Required. Name of the ClientTlsPolicy resource. It matches the pattern `
        #   projects/*/locations/`location`/clientTlsPolicies/`client_tls_policy``
        # @param [Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy] client_tls_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   ClientTlsPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_client_tls_policy(name, client_tls_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy::Representation
          command.request_object = client_tls_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_client_tls_policy_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_client_tls_policy_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new FirewallEndpointAssociation in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation] firewall_endpoint_association_object
        # @param [String] firewall_endpoint_association_id
        #   Optional. Id of the requesting object. If auto-generating Id server-side,
        #   remove this field and firewall_endpoint_association_id from the
        #   method_signature of Create RPC.
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_firewall_endpoint_association(parent, firewall_endpoint_association_object = nil, firewall_endpoint_association_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/firewallEndpointAssociations', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation::Representation
          command.request_object = firewall_endpoint_association_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['firewallEndpointAssociationId'] = firewall_endpoint_association_id unless firewall_endpoint_association_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single FirewallEndpointAssociation.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_firewall_endpoint_association(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single FirewallEndpointAssociation.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_firewall_endpoint_association(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Associations in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListAssociationsRequest
        # @param [String] filter
        #   Optional. Filtering results
        # @param [String] order_by
        #   Hint for how to order the results
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_firewall_endpoint_associations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/firewallEndpointAssociations', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointAssociationsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListFirewallEndpointAssociationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single FirewallEndpointAssociation.
        # @param [String] name
        #   Immutable. Identifier. name of resource
        # @param [Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation] firewall_endpoint_association_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   Association resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_firewall_endpoint_association(name, firewall_endpoint_association_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation::Representation
          command.request_object = firewall_endpoint_association_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new GatewaySecurityPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the GatewaySecurityPolicy. Must be in the
        #   format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy] gateway_security_policy_object
        # @param [String] gateway_security_policy_id
        #   Required. Short name of the GatewaySecurityPolicy resource to be created. This
        #   value should be 1-63 characters long, containing only letters, numbers,
        #   hyphens, and underscores, and should not start with a number. E.g. "
        #   gateway_security_policy1".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_gateway_security_policy(parent, gateway_security_policy_object = nil, gateway_security_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/gatewaySecurityPolicies', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy::Representation
          command.request_object = gateway_security_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gatewaySecurityPolicyId'] = gateway_security_policy_id unless gateway_security_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single GatewaySecurityPolicy.
        # @param [String] name
        #   Required. A name of the GatewaySecurityPolicy to delete. Must be in the format
        #   `projects/`project`/locations/`location`/gatewaySecurityPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_gateway_security_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single GatewaySecurityPolicy.
        # @param [String] name
        #   Required. A name of the GatewaySecurityPolicy to get. Must be in the format `
        #   projects/`project`/locations/`location`/gatewaySecurityPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_gateway_security_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GatewaySecurityPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the GatewaySecurityPolicies
        #   should be listed, specified in the format `projects/`project`/locations/`
        #   location``.
        # @param [Fixnum] page_size
        #   Maximum number of GatewaySecurityPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last 'ListGatewaySecurityPoliciesResponse' Indicates
        #   that this is a continuation of a prior 'ListGatewaySecurityPolicies' call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gateway_security_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/gatewaySecurityPolicies', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single GatewaySecurityPolicy.
        # @param [String] name
        #   Required. Name of the resource. Name is of the form projects/`project`/
        #   locations/`location`/gatewaySecurityPolicies/`gateway_security_policy`
        #   gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]`0,61`[a-z0-
        #   9])?$).
        # @param [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy] gateway_security_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   GatewaySecurityPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_gateway_security_policy(name, gateway_security_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy::Representation
          command.request_object = gateway_security_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new GatewaySecurityPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent where this rule will be created. Format : projects/`
        #   project`/location/`location`/gatewaySecurityPolicies/*
        # @param [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule] gateway_security_policy_rule_object
        # @param [String] gateway_security_policy_rule_id
        #   The ID to use for the rule, which will become the final component of the rule'
        #   s resource name. This value should be 4-63 characters, and valid characters
        #   are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_gateway_security_policy_rule(parent, gateway_security_policy_rule_object = nil, gateway_security_policy_rule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/rules', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule::Representation
          command.request_object = gateway_security_policy_rule_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gatewaySecurityPolicyRuleId'] = gateway_security_policy_rule_id unless gateway_security_policy_rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single GatewaySecurityPolicyRule.
        # @param [String] name
        #   Required. A name of the GatewaySecurityPolicyRule to delete. Must be in the
        #   format `projects/`project`/locations/`location`/gatewaySecurityPolicies/`
        #   gatewaySecurityPolicy`/rules/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_gateway_security_policy_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single GatewaySecurityPolicyRule.
        # @param [String] name
        #   Required. The name of the GatewaySecurityPolicyRule to retrieve. Format:
        #   projects/`project`/location/`location`/gatewaySecurityPolicies/*/rules/*
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_gateway_security_policy_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GatewaySecurityPolicyRules in a given project and location.
        # @param [String] parent
        #   Required. The project, location and GatewaySecurityPolicy from which the
        #   GatewaySecurityPolicyRules should be listed, specified in the format `projects/
        #   `project`/locations/`location`/gatewaySecurityPolicies/`gatewaySecurityPolicy``
        #   .
        # @param [Fixnum] page_size
        #   Maximum number of GatewaySecurityPolicyRules to return per call.
        # @param [String] page_token
        #   The value returned by the last 'ListGatewaySecurityPolicyRulesResponse'
        #   Indicates that this is a continuation of a prior '
        #   ListGatewaySecurityPolicyRules' call, and that the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPolicyRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPolicyRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_gateway_security_policy_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/rules', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPolicyRulesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListGatewaySecurityPolicyRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single GatewaySecurityPolicyRule.
        # @param [String] name
        #   Required. Immutable. Name of the resource. ame is the full resource name so
        #   projects/`project`/locations/`location`/gatewaySecurityPolicies/`
        #   gateway_security_policy`/rules/`rule` rule should match the pattern: (^[a-z]([
        #   a-z0-9-]`0,61`[a-z0-9])?$).
        # @param [Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule] gateway_security_policy_rule_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   GatewaySecurityPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_gateway_security_policy_rule(name, gateway_security_policy_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule::Representation
          command.request_object = gateway_security_policy_rule_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new InterceptDeploymentGroup in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup] intercept_deployment_group_object
        # @param [String] intercept_deployment_group_id
        #   Required. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and intercept_deployment_group_id from the method_signature
        #   of Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_intercept_deployment_group(parent, intercept_deployment_group_object = nil, intercept_deployment_group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/interceptDeploymentGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup::Representation
          command.request_object = intercept_deployment_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['interceptDeploymentGroupId'] = intercept_deployment_group_id unless intercept_deployment_group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single InterceptDeploymentGroup.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_intercept_deployment_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single InterceptDeploymentGroup.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_intercept_deployment_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InterceptDeploymentGroups in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInterceptDeploymentGroupsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_intercept_deployment_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/interceptDeploymentGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single InterceptDeploymentGroup.
        # @param [String] name
        #   Immutable. Identifier. Then name of the InterceptDeploymentGroup.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup] intercept_deployment_group_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   InterceptDeploymentGroup resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_intercept_deployment_group(name, intercept_deployment_group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup::Representation
          command.request_object = intercept_deployment_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new InterceptDeployment in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptDeployment] intercept_deployment_object
        # @param [String] intercept_deployment_id
        #   Required. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and intercept_deployment_id from the method_signature of
        #   Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_intercept_deployment(parent, intercept_deployment_object = nil, intercept_deployment_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/interceptDeployments', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptDeployment::Representation
          command.request_object = intercept_deployment_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['interceptDeploymentId'] = intercept_deployment_id unless intercept_deployment_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single InterceptDeployment.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_intercept_deployment(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single InterceptDeployment.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::InterceptDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::InterceptDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_intercept_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::InterceptDeployment::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::InterceptDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InterceptDeployments in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInterceptDeploymentsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_intercept_deployments(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/interceptDeployments', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListInterceptDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single InterceptDeployment.
        # @param [String] name
        #   Immutable. Identifier. The name of the InterceptDeployment.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptDeployment] intercept_deployment_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   InterceptDeployment resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_intercept_deployment(name, intercept_deployment_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptDeployment::Representation
          command.request_object = intercept_deployment_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new InterceptEndpointGroupAssociation in a given project and
        # location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation] intercept_endpoint_group_association_object
        # @param [String] intercept_endpoint_group_association_id
        #   Optional. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and intercept_endpoint_group_association_id from the
        #   method_signature of Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_intercept_endpoint_group_association(parent, intercept_endpoint_group_association_object = nil, intercept_endpoint_group_association_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/interceptEndpointGroupAssociations', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation::Representation
          command.request_object = intercept_endpoint_group_association_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['interceptEndpointGroupAssociationId'] = intercept_endpoint_group_association_id unless intercept_endpoint_group_association_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single InterceptEndpointGroupAssociation.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_intercept_endpoint_group_association(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single InterceptEndpointGroupAssociation.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_intercept_endpoint_group_association(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InterceptEndpointGroupAssociations in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInterceptEndpointGroupAssociationsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_intercept_endpoint_group_associations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/interceptEndpointGroupAssociations', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupAssociationsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupAssociationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single InterceptEndpointGroupAssociation.
        # @param [String] name
        #   Immutable. Identifier. The name of the InterceptEndpointGroupAssociation.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation] intercept_endpoint_group_association_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   InterceptEndpointGroupAssociation resource by the update. The fields specified
        #   in the update_mask are relative to the resource, not the full request. A field
        #   will be overwritten if it is in the mask. If the user does not provide a mask
        #   then all fields will be overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_intercept_endpoint_group_association(name, intercept_endpoint_group_association_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation::Representation
          command.request_object = intercept_endpoint_group_association_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new InterceptEndpointGroup in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup] intercept_endpoint_group_object
        # @param [String] intercept_endpoint_group_id
        #   Required. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and intercept_endpoint_group_id from the method_signature of
        #   Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_intercept_endpoint_group(parent, intercept_endpoint_group_object = nil, intercept_endpoint_group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/interceptEndpointGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup::Representation
          command.request_object = intercept_endpoint_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['interceptEndpointGroupId'] = intercept_endpoint_group_id unless intercept_endpoint_group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single InterceptEndpointGroup.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_intercept_endpoint_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single InterceptEndpointGroup.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_intercept_endpoint_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InterceptEndpointGroups in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInterceptEndpointGroupsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_intercept_endpoint_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/interceptEndpointGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListInterceptEndpointGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single InterceptEndpointGroup.
        # @param [String] name
        #   Immutable. Identifier. The name of the InterceptEndpointGroup.
        # @param [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup] intercept_endpoint_group_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   InterceptEndpointGroup resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_intercept_endpoint_group(name, intercept_endpoint_group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup::Representation
          command.request_object = intercept_endpoint_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new MirroringDeploymentGroup in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup] mirroring_deployment_group_object
        # @param [String] mirroring_deployment_group_id
        #   Required. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and mirroring_deployment_group_id from the method_signature
        #   of Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_mirroring_deployment_group(parent, mirroring_deployment_group_object = nil, mirroring_deployment_group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/mirroringDeploymentGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup::Representation
          command.request_object = mirroring_deployment_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['mirroringDeploymentGroupId'] = mirroring_deployment_group_id unless mirroring_deployment_group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single MirroringDeploymentGroup.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_mirroring_deployment_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single MirroringDeploymentGroup.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_mirroring_deployment_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists MirroringDeploymentGroups in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListMirroringDeploymentGroupsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_mirroring_deployment_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/mirroringDeploymentGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single MirroringDeploymentGroup.
        # @param [String] name
        #   Immutable. Identifier. The resource name of this deployment group, for example:
        #   `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`. See
        #   https://google.aip.dev/122 for more details.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup] mirroring_deployment_group_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   MirroringDeploymentGroup resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_mirroring_deployment_group(name, mirroring_deployment_group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup::Representation
          command.request_object = mirroring_deployment_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a deployment in a given project and location. See https://google.aip.
        # dev/133.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringDeployment] mirroring_deployment_object
        # @param [String] mirroring_deployment_id
        #   Required. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and mirroring_deployment_id from the method_signature of
        #   Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_mirroring_deployment(parent, mirroring_deployment_object = nil, mirroring_deployment_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/mirroringDeployments', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringDeployment::Representation
          command.request_object = mirroring_deployment_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['mirroringDeploymentId'] = mirroring_deployment_id unless mirroring_deployment_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a deployment. See https://google.aip.dev/135.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_mirroring_deployment(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific deployment. See https://google.aip.dev/131.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::MirroringDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::MirroringDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_mirroring_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::MirroringDeployment::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::MirroringDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists deployments in a given project and location. See https://google.aip.dev/
        # 132.
        # @param [String] parent
        #   Required. Parent value for ListMirroringDeploymentsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_mirroring_deployments(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/mirroringDeployments', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListMirroringDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a deployment. See https://google.aip.dev/134.
        # @param [String] name
        #   Immutable. Identifier. The resource name of this deployment, for example: `
        #   projects/123456789/locations/us-central1-a/mirroringDeployments/my-dep`. See
        #   https://google.aip.dev/122 for more details.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringDeployment] mirroring_deployment_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   MirroringDeployment resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_mirroring_deployment(name, mirroring_deployment_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringDeployment::Representation
          command.request_object = mirroring_deployment_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an association in a given project and location. See https://google.aip.
        # dev/133.
        # @param [String] parent
        #   Required. Container (project and location) where the association will be
        #   created, e.g. `projects/123456789/locations/global`.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation] mirroring_endpoint_group_association_object
        # @param [String] mirroring_endpoint_group_association_id
        #   Optional. ID for the new association. If not provided, the server will
        #   generate a unique ID. The ID must be a valid RFC 1035 resource name. The ID
        #   must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*
        #   [a-z0-9])?`. The first character must be a lowercase letter, and all following
        #   characters (except for the last character) must be a dash, lowercase letter,
        #   or digit. The last character must be a
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_mirroring_endpoint_group_association(parent, mirroring_endpoint_group_association_object = nil, mirroring_endpoint_group_association_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/mirroringEndpointGroupAssociations', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation::Representation
          command.request_object = mirroring_endpoint_group_association_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['mirroringEndpointGroupAssociationId'] = mirroring_endpoint_group_association_id unless mirroring_endpoint_group_association_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single association. See https://google.aip.dev/135.
        # @param [String] name
        #   Required. Full resource name of the association to delete, e.g. projects/
        #   123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-
        #   association.
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_mirroring_endpoint_group_association(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific association. See https://google.aip.dev/131.
        # @param [String] name
        #   Required. Full resource name of the association to get, e.g. projects/
        #   123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-
        #   association.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_mirroring_endpoint_group_association(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists associations in a given project and location. See https://google.aip.dev/
        # 132.
        # @param [String] parent
        #   Required. Parent container (project and location) of the associations to list,
        #   e.g. `projects/123456789/locations/global`.
        # @param [String] filter
        #   Optional. A filter expression that filters the results listed in the response.
        #   See https://google.aip.dev/160.
        # @param [String] order_by
        #   Optional. Hint for how to order the results
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default. See https://google.
        #   aip.dev/158.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return. See
        #   https://google.aip.dev/158.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_mirroring_endpoint_group_associations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/mirroringEndpointGroupAssociations', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupAssociationsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupAssociationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an association. See https://google.aip.dev/134.
        # @param [String] name
        #   Immutable. Identifier. The resource name of this endpoint group association,
        #   for example: `projects/123456789/locations/global/
        #   mirroringEndpointGroupAssociations/my-eg-association`. See https://google.aip.
        #   dev/122 for more details.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation] mirroring_endpoint_group_association_object
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
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   association by the update. See https://google.aip.dev/161.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_mirroring_endpoint_group_association(name, mirroring_endpoint_group_association_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation::Representation
          command.request_object = mirroring_endpoint_group_association_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an endpoint group in a given project and location. See https://google.
        # aip.dev/133.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup] mirroring_endpoint_group_object
        # @param [String] mirroring_endpoint_group_id
        #   Required. Id of the requesting object If auto-generating Id server-side,
        #   remove this field and mirroring_endpoint_group_id from the method_signature of
        #   Create RPC
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_mirroring_endpoint_group(parent, mirroring_endpoint_group_object = nil, mirroring_endpoint_group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/mirroringEndpointGroups', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup::Representation
          command.request_object = mirroring_endpoint_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['mirroringEndpointGroupId'] = mirroring_endpoint_group_id unless mirroring_endpoint_group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an endpoint group. See https://google.aip.dev/135.
        # @param [String] name
        #   Required. Name of the resource
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_mirroring_endpoint_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific endpoint group. See https://google.aip.dev/131.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_mirroring_endpoint_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists endpoint groups in a given project and location. See https://google.aip.
        # dev/132.
        # @param [String] parent
        #   Required. Parent value for ListMirroringEndpointGroupsRequest
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_mirroring_endpoint_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/mirroringEndpointGroups', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListMirroringEndpointGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an endpoint group. See https://google.aip.dev/134.
        # @param [String] name
        #   Immutable. Identifier. The resource name of this endpoint group, for example: `
        #   projects/123456789/locations/global/mirroringEndpointGroups/my-eg`. See https:/
        #   /google.aip.dev/122 for more details.
        # @param [Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup] mirroring_endpoint_group_object
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
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   MirroringEndpointGroup resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_mirroring_endpoint_group(name, mirroring_endpoint_group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup::Representation
          command.request_object = mirroring_endpoint_group_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
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
        # @param [Google::Apis::NetworksecurityV1beta1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Empty::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Empty
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Empty::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Empty
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ServerTlsPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the ServerTlsPolicy. Must be in the format `
        #   projects/*/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy] server_tls_policy_object
        # @param [String] server_tls_policy_id
        #   Required. Short name of the ServerTlsPolicy resource to be created. This value
        #   should be 1-63 characters long, containing only letters, numbers, hyphens, and
        #   underscores, and should not start with a number. E.g. "server_mtls_policy".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_server_tls_policy(parent, server_tls_policy_object = nil, server_tls_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/serverTlsPolicies', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy::Representation
          command.request_object = server_tls_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['serverTlsPolicyId'] = server_tls_policy_id unless server_tls_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ServerTlsPolicy.
        # @param [String] name
        #   Required. A name of the ServerTlsPolicy to delete. Must be in the format `
        #   projects/*/locations/`location`/serverTlsPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_server_tls_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ServerTlsPolicy.
        # @param [String] name
        #   Required. A name of the ServerTlsPolicy to get. Must be in the format `
        #   projects/*/locations/`location`/serverTlsPolicies/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_server_tls_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_server_tls_policy_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ServerTlsPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the ServerTlsPolicies should be
        #   listed, specified in the format `projects/*/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of ServerTlsPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListServerTlsPoliciesResponse` Indicates that
        #   this is a continuation of a prior `ListServerTlsPolicies` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListServerTlsPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListServerTlsPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_server_tls_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/serverTlsPolicies', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListServerTlsPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListServerTlsPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single ServerTlsPolicy.
        # @param [String] name
        #   Required. Name of the ServerTlsPolicy resource. It matches the pattern `
        #   projects/*/locations/`location`/serverTlsPolicies/`server_tls_policy``
        # @param [Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy] server_tls_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   ServerTlsPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_server_tls_policy(name, server_tls_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy::Representation
          command.request_object = server_tls_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_server_tls_policy_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy
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
        # @param [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_server_tls_policy_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new TlsInspectionPolicy in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the TlsInspectionPolicy. Must be in the
        #   format `projects/`project`/locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy] tls_inspection_policy_object
        # @param [String] tls_inspection_policy_id
        #   Required. Short name of the TlsInspectionPolicy resource to be created. This
        #   value should be 1-63 characters long, containing only letters, numbers,
        #   hyphens, and underscores, and should not start with a number. E.g. "
        #   tls_inspection_policy1".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tls_inspection_policy(parent, tls_inspection_policy_object = nil, tls_inspection_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/tlsInspectionPolicies', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy::Representation
          command.request_object = tls_inspection_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['tlsInspectionPolicyId'] = tls_inspection_policy_id unless tls_inspection_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single TlsInspectionPolicy.
        # @param [String] name
        #   Required. A name of the TlsInspectionPolicy to delete. Must be in the format `
        #   projects/`project`/locations/`location`/tlsInspectionPolicies/`
        #   tls_inspection_policy``.
        # @param [Boolean] force
        #   If set to true, any rules for this TlsInspectionPolicy will also be deleted. (
        #   Otherwise, the request will only work if the TlsInspectionPolicy has no rules.)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tls_inspection_policy(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single TlsInspectionPolicy.
        # @param [String] name
        #   Required. A name of the TlsInspectionPolicy to get. Must be in the format `
        #   projects/`project`/locations/`location`/tlsInspectionPolicies/`
        #   tls_inspection_policy``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tls_inspection_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists TlsInspectionPolicies in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the TlsInspectionPolicies should
        #   be listed, specified in the format `projects/`project`/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of TlsInspectionPolicies to return per call.
        # @param [String] page_token
        #   The value returned by the last 'ListTlsInspectionPoliciesResponse' Indicates
        #   that this is a continuation of a prior 'ListTlsInspectionPolicies' call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListTlsInspectionPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListTlsInspectionPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_tls_inspection_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/tlsInspectionPolicies', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListTlsInspectionPoliciesResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListTlsInspectionPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single TlsInspectionPolicy.
        # @param [String] name
        #   Required. Name of the resource. Name is of the form projects/`project`/
        #   locations/`location`/tlsInspectionPolicies/`tls_inspection_policy`
        #   tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]`0,61`[a-z0-9])
        #   ?$).
        # @param [Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy] tls_inspection_policy_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   TlsInspectionPolicy resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tls_inspection_policy(name, tls_inspection_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy::Representation
          command.request_object = tls_inspection_policy_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new UrlList in a given project and location.
        # @param [String] parent
        #   Required. The parent resource of the UrlList. Must be in the format `projects/*
        #   /locations/`location``.
        # @param [Google::Apis::NetworksecurityV1beta1::UrlList] url_list_object
        # @param [String] url_list_id
        #   Required. Short name of the UrlList resource to be created. This value should
        #   be 1-63 characters long, containing only letters, numbers, hyphens, and
        #   underscores, and should not start with a number. E.g. "url_list".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_url_list(parent, url_list_object = nil, url_list_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/urlLists', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::UrlList::Representation
          command.request_object = url_list_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['urlListId'] = url_list_id unless url_list_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single UrlList.
        # @param [String] name
        #   Required. A name of the UrlList to delete. Must be in the format `projects/*/
        #   locations/`location`/urlLists/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_url_list(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single UrlList.
        # @param [String] name
        #   Required. A name of the UrlList to get. Must be in the format `projects/*/
        #   locations/`location`/urlLists/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::UrlList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::UrlList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_url_list(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::UrlList::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::UrlList
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists UrlLists in a given project and location.
        # @param [String] parent
        #   Required. The project and location from which the UrlLists should be listed,
        #   specified in the format `projects/`project`/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of UrlLists to return per call.
        # @param [String] page_token
        #   The value returned by the last `ListUrlListsResponse` Indicates that this is a
        #   continuation of a prior `ListUrlLists` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::ListUrlListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::ListUrlListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_url_lists(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/urlLists', options)
          command.response_representation = Google::Apis::NetworksecurityV1beta1::ListUrlListsResponse::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::ListUrlListsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single UrlList.
        # @param [String] name
        #   Required. Name of the resource provided by the user. Name is of the form
        #   projects/`project`/locations/`location`/urlLists/`url_list` url_list should
        #   match the pattern:(^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$).
        # @param [Google::Apis::NetworksecurityV1beta1::UrlList] url_list_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   UrlList resource by the update. The fields specified in the update_mask are
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
        # @yieldparam result [Google::Apis::NetworksecurityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::NetworksecurityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_url_list(name, url_list_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::NetworksecurityV1beta1::UrlList::Representation
          command.request_object = url_list_object
          command.response_representation = Google::Apis::NetworksecurityV1beta1::Operation::Representation
          command.response_class = Google::Apis::NetworksecurityV1beta1::Operation
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
