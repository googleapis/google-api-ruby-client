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
    module ContainerV1beta1
      # Google Container Engine API
      #
      # The Google Container Engine API is used for building and managing container
      #  based applications, powered by the open source Kubernetes technology.
      #
      # @example
      #    require 'google/apis/container_v1beta1'
      #
      #    Container = Google::Apis::ContainerV1beta1 # Alias the module
      #    service = Container::ContainerService.new
      #
      # @see https://cloud.google.com/container-engine/docs/v1beta1/
      class ContainerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'container/v1beta1/projects/')
        end
        
        # Lists all clusters owned by a project across all zones.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::ListAggregatedClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::ListAggregatedClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_clusters(project_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/clusters'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::ListAggregatedClustersResponse::Representation
          command.response_class = Google::Apis::ContainerV1beta1::ListAggregatedClustersResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all operations in a project, across all zones.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::ListAggregatedOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::ListAggregatedOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::ListAggregatedOperationsResponse::Representation
          command.response_class = Google::Apis::ContainerV1beta1::ListAggregatedOperationsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a cluster, consisting of the specified number and type of Google
        # Compute Engine instances, plus a Kubernetes master instance.
        # The cluster is created in the project's default network.
        # A firewall is added that allows traffic into port 443 on the master, which
        # enables HTTPS. A firewall and a route is added for each node to allow the
        # containers on that node to communicate with all other instances in the cluster.
        # Finally, an entry is added to the project's global metadata indicating which
        # CIDR range is being used by the cluster.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] zone_id
        #   The name of the Google Compute Engine zone in which the cluster resides.
        # @param [Google::Apis::ContainerV1beta1::CreateClusterRequest] create_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_cluster(project_id, zone_id, create_cluster_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/zones/{zoneId}/clusters'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContainerV1beta1::CreateClusterRequest::Representation
          command.request_object = create_cluster_request_object
          command.response_representation = Google::Apis::ContainerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1beta1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zoneId'] = zone_id unless zone_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the cluster, including the Kubernetes master and all worker nodes.
        # Firewalls and routes that were configured at cluster creation are also deleted.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] zone_id
        #   The name of the Google Compute Engine zone in which the cluster resides.
        # @param [String] cluster_id
        #   The name of the cluster to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_zone_cluster(project_id, zone_id, cluster_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/zones/{zoneId}/clusters/{clusterId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1beta1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zoneId'] = zone_id unless zone_id.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] zone_id
        #   The name of the Google Compute Engine zone in which the cluster resides.
        # @param [String] cluster_id
        #   The name of the cluster to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_cluster(project_id, zone_id, cluster_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/zones/{zoneId}/clusters/{clusterId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::Cluster::Representation
          command.response_class = Google::Apis::ContainerV1beta1::Cluster
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zoneId'] = zone_id unless zone_id.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all clusters owned by a project in the specified zone.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] zone_id
        #   The name of the Google Compute Engine zone in which the cluster resides.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_clusters(project_id, zone_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/zones/{zoneId}/clusters'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::ListClustersResponse::Representation
          command.response_class = Google::Apis::ContainerV1beta1::ListClustersResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zoneId'] = zone_id unless zone_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified operation.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] zone_id
        #   The name of the Google Compute Engine zone in which the operation resides.
        #   This is always the same zone as the cluster with which the operation is
        #   associated.
        # @param [String] operation_id
        #   The server-assigned name of the operation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project_id, zone_id, operation_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/zones/{zoneId}/operations/{operationId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1beta1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zoneId'] = zone_id unless zone_id.nil?
          command.params['operationId'] = operation_id unless operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all operations in a project in a specific zone.
        # @param [String] project_id
        #   The Google Developers Console project ID or  project number.
        # @param [String] zone_id
        #   The name of the Google Compute Engine zone to return operations for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project_id, zone_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/zones/{zoneId}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContainerV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ContainerV1beta1::ListOperationsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zoneId'] = zone_id unless zone_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
