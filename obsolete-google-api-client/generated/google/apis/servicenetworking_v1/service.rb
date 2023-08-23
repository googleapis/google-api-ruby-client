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
    module ServicenetworkingV1
      # Service Networking API
      #
      # Provides automatic management of network configurations necessary for certain
      #  services.
      #
      # @example
      #    require 'google/apis/servicenetworking_v1'
      #
      #    Servicenetworking = Google::Apis::ServicenetworkingV1 # Alias the module
      #    service = Servicenetworking::ServiceNetworkingService.new
      #
      # @see https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started
      class ServiceNetworkingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://servicenetworking.googleapis.com/', '')
          @batch_path = 'batch'
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
        # @param [Google::Apis::ServicenetworkingV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Empty::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Empty
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
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::Empty::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Empty
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
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
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
        # @yieldparam result [Google::Apis::ServicenetworkingV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # For service producers, provisions a new subnet in a peered service's shared
        # VPC network in the requested region and with the requested size that's
        # expressed as a CIDR range (number of leading bits of ipV4 network mask). The
        # method checks against the assigned allocated ranges to find a non-conflicting
        # IP address range. The method will reuse a subnet if subsequent calls contain
        # the same subnet name, region, and prefix length. This method will make
        # producer's tenant project to be a shared VPC service project as needed.
        # @param [String] parent
        #   Required. A tenant project in the service producer organization, in the
        #   following format: services/`service`/`collection-id`/`resource-id`. `
        #   collection-id` is the cloud resource collection type that represents the
        #   tenant project. Only `projects` are supported. `resource-id` is the tenant
        #   project numeric id, such as `123456`. `service` the name of the peering
        #   service, such as `service-peering.example.com`. This service must already be
        #   enabled in the service consumer's project.
        # @param [Google::Apis::ServicenetworkingV1::AddSubnetworkRequest] add_subnetwork_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_service_subnetwork(parent, add_subnetwork_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:addSubnetwork', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::AddSubnetworkRequest::Representation
          command.request_object = add_subnetwork_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables VPC service controls for a connection.
        # @param [String] parent
        #   The service that is managing peering connectivity for a service producer's
        #   organization. For Google services that support this functionality, this value
        #   is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::DisableVpcServiceControlsRequest] disable_vpc_service_controls_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_vpc_service_controls(parent, disable_vpc_service_controls_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+parent}:disableVpcServiceControls', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::DisableVpcServiceControlsRequest::Representation
          command.request_object = disable_vpc_service_controls_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables VPC service controls for a connection.
        # @param [String] parent
        #   The service that is managing peering connectivity for a service producer's
        #   organization. For Google services that support this functionality, this value
        #   is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::EnableVpcServiceControlsRequest] enable_vpc_service_controls_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_vpc_service_controls(parent, enable_vpc_service_controls_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+parent}:enableVpcServiceControls', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::EnableVpcServiceControlsRequest::Representation
          command.request_object = enable_vpc_service_controls_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to find a currently unused range within
        # consumer allocated ranges. This returned range is not reserved, and not
        # guaranteed to remain unused. It will validate previously provided allocated
        # ranges, find non-conflicting sub-range of requested size (expressed in number
        # of leading bits of ipv4 network mask, as in CIDR range notation).
        # @param [String] parent
        #   Required. This is in a form services/`service`. `service` the name of the
        #   private access management service, for example 'service-peering.example.com'.
        # @param [Google::Apis::ServicenetworkingV1::SearchRangeRequest] search_range_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_service_range(parent, search_range_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:searchRange', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::SearchRangeRequest::Representation
          command.request_object = search_range_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers use this method to validate if the consumer provided network,
        # project and requested range are valid. This allows them to use a fail-fast
        # mechanism for consumer requests, and not have to wait for AddSubnetwork
        # operation completion to determine if user request is invalid.
        # @param [String] parent
        #   Required. This is in a form services/`service` where `service` is the name of
        #   the private access management service. For example 'service-peering.example.
        #   com'.
        # @param [Google::Apis::ServicenetworkingV1::ValidateConsumerConfigRequest] validate_consumer_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::ValidateConsumerConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::ValidateConsumerConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_service_consumer_config(parent, validate_consumer_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:validate', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::ValidateConsumerConfigRequest::Representation
          command.request_object = validate_consumer_config_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::ValidateConsumerConfigResponse::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::ValidateConsumerConfigResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a private connection that establishes a VPC Network Peering connection
        # to a VPC network in the service producer's organization. The administrator of
        # the service consumer's VPC network invokes this method. The administrator must
        # assign one or more allocated IP ranges for provisioning subnetworks in the
        # service producer's VPC network. This connection is used for all supported
        # services in the service producer's organization, so it only needs to be
        # invoked once.
        # @param [String] parent
        #   The service that is managing peering connectivity for a service producer's
        #   organization. For Google services that support this functionality, this value
        #   is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::Connection] connection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_connection(parent, connection_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connections', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the private connections that are configured in a service consumer's VPC
        # network.
        # @param [String] parent
        #   The service that is managing peering connectivity for a service producer's
        #   organization. For Google services that support this functionality, this value
        #   is `services/servicenetworking.googleapis.com`. If you specify `services/-` as
        #   the parameter value, all configured peering services are listed.
        # @param [String] network
        #   The name of service consumer's VPC network that's connected with service
        #   producer network through a private connection. The network name must be in the
        #   following format: `projects/`project`/global/networks/`network``. `project` is
        #   a project number, such as in `12345` that includes the VPC service consumer's
        #   VPC network. `network` is the name of the service consumer's VPC network.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_connections(parent, network: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/connections', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['network'] = network unless network.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the allocated ranges that are assigned to a connection.
        # @param [String] name
        #   The private service connection that connects to a service producer
        #   organization. The name includes both the private service name and the VPC
        #   network peering name in the format of `services/`peering_service_name`/
        #   connections/`vpc_peering_name``. For Google services that support this
        #   functionality, this is `services/servicenetworking.googleapis.com/connections/
        #   servicenetworking-googleapis-com`.
        # @param [Google::Apis::ServicenetworkingV1::Connection] connection_object
        # @param [Boolean] force
        #   If a previously defined allocated range is removed, force flag must be set to
        #   true.
        # @param [String] update_mask
        #   The update mask. If this is omitted, it defaults to "*". You can only update
        #   the listed peering ranges.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_service_connection(name, connection_object = nil, force: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to add DNS record sets to private DNS
        # zones in the shared producer host project.
        # @param [String] parent
        #   Required. The service that is managing peering connectivity for a service
        #   producer's organization. For Google services that support this functionality,
        #   this value is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::AddDnsRecordSetRequest] add_dns_record_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_dns_record_set(parent, add_dns_record_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dnsRecordSets:add', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::AddDnsRecordSetRequest::Representation
          command.request_object = add_dns_record_set_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to remove DNS record sets from private
        # DNS zones in the shared producer host project.
        # @param [String] parent
        #   Required. The service that is managing peering connectivity for a service
        #   producer's organization. For Google services that support this functionality,
        #   this value is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::RemoveDnsRecordSetRequest] remove_dns_record_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_dns_record_set(parent, remove_dns_record_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dnsRecordSets:remove', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::RemoveDnsRecordSetRequest::Representation
          command.request_object = remove_dns_record_set_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to update DNS record sets from private
        # DNS zones in the shared producer host project.
        # @param [String] parent
        #   Required. The service that is managing peering connectivity for a service
        #   producer's organization. For Google services that support this functionality,
        #   this value is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::UpdateDnsRecordSetRequest] update_dns_record_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_dns_record_set(parent, update_dns_record_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dnsRecordSets:update', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::UpdateDnsRecordSetRequest::Representation
          command.request_object = update_dns_record_set_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to add private DNS zones in the shared
        # producer host project and matching peering zones in the consumer project.
        # @param [String] parent
        #   Required. The service that is managing peering connectivity for a service
        #   producer's organization. For Google services that support this functionality,
        #   this value is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::AddDnsZoneRequest] add_dns_zone_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_dns_zone(parent, add_dns_zone_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dnsZones:add', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::AddDnsZoneRequest::Representation
          command.request_object = add_dns_zone_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to remove private DNS zones in the
        # shared producer host project and matching peering zones in the consumer
        # project.
        # @param [String] parent
        #   Required. The service that is managing peering connectivity for a service
        #   producer's organization. For Google services that support this functionality,
        #   this value is `services/servicenetworking.googleapis.com`.
        # @param [Google::Apis::ServicenetworkingV1::RemoveDnsZoneRequest] remove_dns_zone_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_dns_zone(parent, remove_dns_zone_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dnsZones:remove', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::RemoveDnsZoneRequest::Representation
          command.request_object = remove_dns_zone_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers use this method to get the configuration of their connection
        # including the import/export of custom routes and subnetwork routes with public
        # IP.
        # @param [String] name
        #   Required. Name of the consumer config to retrieve in the format: `services/`
        #   service`/projects/`project`/global/networks/`network``. `service` is the
        #   peering service that is managing connectivity for the service producer's
        #   organization. For Google services that support this functionality, this value
        #   is `servicenetworking.googleapis.com`. `project` is a project number e.g. `
        #   12345` that contains the service consumer's VPC network. `network` is the name
        #   of the service consumer's VPC network.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::ConsumerConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::ConsumerConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_project_global_network(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::ConsumerConfig::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::ConsumerConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers use this method to update the configuration of their
        # connection including the import/export of custom routes and subnetwork routes
        # with public IP.
        # @param [String] parent
        #   Required. Parent resource identifying the connection for which the consumer
        #   config is being updated in the format: `services/`service`/projects/`project`/
        #   global/networks/`network`` `service` is the peering service that is managing
        #   connectivity for the service producer's organization. For Google services that
        #   support this functionality, this value is `servicenetworking.googleapis.com`. `
        #   project` is the number of the project that contains the service consumer's VPC
        #   network e.g. `12345`. `network` is the name of the service consumer's VPC
        #   network.
        # @param [Google::Apis::ServicenetworkingV1::UpdateConsumerConfigRequest] update_consumer_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_network_consumer_config(parent, update_consumer_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+parent}:updateConsumerConfig', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::UpdateConsumerConfigRequest::Representation
          command.request_object = update_consumer_config_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a peered DNS domain which sends requests for records in given
        # namespace originating in the service producer VPC network to the consumer VPC
        # network to be resolved.
        # @param [String] parent
        #   Required. Parent resource identifying the connection for which the peered DNS
        #   domain will be created in the format: `services/`service`/projects/`project`/
        #   global/networks/`network`` `service` is the peering service that is managing
        #   connectivity for the service producer's organization. For Google services that
        #   support this functionality, this value is `servicenetworking.googleapis.com`. `
        #   project` is the number of the project that contains the service consumer's VPC
        #   network e.g. `12345`. `network` is the name of the service consumer's VPC
        #   network.
        # @param [Google::Apis::ServicenetworkingV1::PeeredDnsDomain] peered_dns_domain_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_project_global_network_peered_dns_domain(parent, peered_dns_domain_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/peeredDnsDomains', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::PeeredDnsDomain::Representation
          command.request_object = peered_dns_domain_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a peered DNS domain.
        # @param [String] name
        #   Required. The name of the peered DNS domain to delete in the format: `services/
        #   `service`/projects/`project`/global/networks/`network`/peeredDnsDomains/`name``
        #   . `service` is the peering service that is managing connectivity for the
        #   service producer's organization. For Google services that support this
        #   functionality, this value is `servicenetworking.googleapis.com`. `project` is
        #   the number of the project that contains the service consumer's VPC network e.g.
        #   `12345`. `network` is the name of the service consumer's VPC network. `name`
        #   is the name of the peered DNS domain.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_service_project_global_network_peered_dns_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists peered DNS domains for a connection.
        # @param [String] parent
        #   Required. Parent resource identifying the connection which owns this
        #   collection of peered DNS domains in the format: `services/`service`/projects/`
        #   project`/global/networks/`network``. `service` is the peering service that is
        #   managing connectivity for the service producer's organization. For Google
        #   services that support this functionality, this value is `servicenetworking.
        #   googleapis.com`. `project` is a project number e.g. `12345` that contains the
        #   service consumer's VPC network. `network` is the name of the service consumer'
        #   s VPC network.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::ListPeeredDnsDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::ListPeeredDnsDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_project_global_network_peered_dns_domains(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/peeredDnsDomains', options)
          command.response_representation = Google::Apis::ServicenetworkingV1::ListPeeredDnsDomainsResponse::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::ListPeeredDnsDomainsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers can use this method to add roles in the shared VPC host
        # project. Each role is bound to the provided member. Each role must be selected
        # from within an allowlisted set of roles. Each role is applied at only the
        # granularity specified in the allowlist.
        # @param [String] parent
        #   Required. This is in a form services/`service` where `service` is the name of
        #   the private access management service. For example 'service-peering.example.
        #   com'.
        # @param [Google::Apis::ServicenetworkingV1::AddRolesRequest] add_roles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_roles(parent, add_roles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/roles:add', options)
          command.request_representation = Google::Apis::ServicenetworkingV1::AddRolesRequest::Representation
          command.request_object = add_roles_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1::Operation
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
