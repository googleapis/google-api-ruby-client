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
    module ServicenetworkingV1beta
      # Service Networking API
      #
      # Provides automatic management of network configurations necessary for certain
      #  services.
      #
      # @example
      #    require 'google/apis/servicenetworking_v1beta'
      #
      #    Servicenetworking = Google::Apis::ServicenetworkingV1beta # Alias the module
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
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
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
        # @yieldparam result [Google::Apis::ServicenetworkingV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ServicenetworkingV1beta::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1beta::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service producers use this method to provision a new subnet in
        # peered service shared VPC network.
        # It will validate previously provided allocated ranges, find
        # non-conflicting sub-range of requested size (expressed in
        # number of leading bits of ipv4 network mask, as in CIDR range
        # notation). It will then create a subnetwork in the request
        # region. The subsequent call will try to reuse the
        # subnetwork previously created if subnetwork name, region and
        # prefix length of the IP range match.
        # Operation<response: Subnetwork>
        # @param [String] parent
        #   Required. This is a 'tenant' project in the service producer organization.
        #   services/`service`/`collection-id`/`resource-id`
        #   `collection id` is the cloud resource collection type representing the
        #   tenant project. Only 'projects' are currently supported.
        #   `resource id` is the tenant project numeric id: '123456'.
        #   `service` the name of the peering service, for example
        #   'service-peering.example.com'. This service must be activated.
        #   in the consumer project.
        # @param [Google::Apis::ServicenetworkingV1beta::AddSubnetworkRequest] add_subnetwork_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_service_subnetwork(parent, add_subnetwork_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta/{+parent}:addSubnetwork', options)
          command.request_representation = Google::Apis::ServicenetworkingV1beta::AddSubnetworkRequest::Representation
          command.request_object = add_subnetwork_request_object
          command.response_representation = Google::Apis::ServicenetworkingV1beta::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # To connect service to a VPC network peering connection
        # must be established prior to service provisioning.
        # This method must be invoked by the consumer VPC network administrator
        # It will establish a permanent peering connection with a shared
        # network created in the service producer organization and register a
        # allocated IP range(s) to be used for service subnetwork provisioning.
        # This connection will be used for all supported services in the service
        # producer organization, so it only needs to be invoked once.
        # Operation<response: Connection>.
        # @param [String] parent
        #   Provider peering service that is managing peering connectivity for a
        #   service provider organization.
        #   For Google services that support this functionality it is
        #   'services/servicenetworking.googleapis.com'.
        # @param [Google::Apis::ServicenetworkingV1beta::Connection] connection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_connection(parent, connection_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta/{+parent}/connections', options)
          command.request_representation = Google::Apis::ServicenetworkingV1beta::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::ServicenetworkingV1beta::Operation::Representation
          command.response_class = Google::Apis::ServicenetworkingV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Service consumers use this method to list configured peering connection for
        # the given service and consumer network.
        # @param [String] parent
        #   Provider peering service that is managing peering connectivity for a
        #   service provider organization.
        #   For Google services that support this functionality it is
        #   'services/servicenetworking.googleapis.com'.
        # @param [String] network
        #   Network name in the consumer project.   This network must have been
        #   already peered with a shared VPC network using CreateConnection
        #   method.
        #   Must be in a form 'projects/`project`/global/networks/`network`'.
        #   `project` is a project number, as in '12345'
        #   `network` is network name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicenetworkingV1beta::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicenetworkingV1beta::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_connections(parent, network: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta/{+parent}/connections', options)
          command.response_representation = Google::Apis::ServicenetworkingV1beta::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::ServicenetworkingV1beta::ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['network'] = network unless network.nil?
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
