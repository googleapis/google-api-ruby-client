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
    module ContainerV1
      # Google Container Engine API
      #
      # The Google Container Engine API is used for building and managing container
      #  based applications, powered by the open source Kubernetes technology.
      #
      # @example
      #    require 'google/apis/container_v1'
      #
      #    Container = Google::Apis::ContainerV1 # Alias the module
      #    service = Container::ContainerService.new
      #
      # @see https://cloud.google.com/container-engine/
      class ContainerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://container.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns configuration info about the Container Engine service.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine [zone](/compute/docs/zones#available)
        #   to return operations for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::ServerConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::ServerConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_zone_serverconfig(project_id, zone, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/serverconfig', options)
          command.response_representation = Google::Apis::ContainerV1::ServerConfig::Representation
          command.response_class = Google::Apis::ContainerV1::ServerConfig
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the addons of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::SetAddonsConfigRequest] set_addons_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addons_project_zone_cluster(project_id, zone, cluster_id, set_addons_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/addons', options)
          command.request_representation = Google::Apis::ContainerV1::SetAddonsConfigRequest::Representation
          command.request_object = set_addons_config_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes master IP rotation.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [Google::Apis::ContainerV1::CompleteIpRotationRequest] complete_ip_rotation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_cluster_ip_rotation(project_id, zone, cluster_id, complete_ip_rotation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:completeIpRotation', options)
          command.request_representation = Google::Apis::ContainerV1::CompleteIpRotationRequest::Representation
          command.request_object = complete_ip_rotation_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a cluster, consisting of the specified number and type of Google
        # Compute Engine instances.
        # By default, the cluster is created in the project's
        # [default network](/compute/docs/networks-and-firewalls#networks).
        # One firewall is added for the cluster. After cluster creation,
        # the cluster creates routes for each node to allow the containers
        # on that node to communicate with all other instances in the
        # cluster.
        # Finally, an entry is added to the project's global metadata indicating
        # which CIDR range is being used by the cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [Google::Apis::ContainerV1::CreateClusterRequest] create_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_cluster(project_id, zone, create_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters', options)
          command.request_representation = Google::Apis::ContainerV1::CreateClusterRequest::Representation
          command.request_object = create_cluster_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the cluster, including the Kubernetes endpoint and all worker
        # nodes.
        # Firewalls and routes that were configured during cluster creation
        # are also deleted.
        # Other Google Compute Engine resources that might be in use by the cluster
        # (e.g. load balancer resources) will not be deleted if they weren't present
        # at the initial create time.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_zone_cluster(project_id, zone, cluster_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}', options)
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_cluster(project_id, zone, cluster_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}', options)
          command.response_representation = Google::Apis::ContainerV1::Cluster::Representation
          command.response_class = Google::Apis::ContainerV1::Cluster
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables or disables the ABAC authorization mechanism on a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to update.
        # @param [Google::Apis::ContainerV1::SetLegacyAbacRequest] set_legacy_abac_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def legacy_project_zone_cluster_abac(project_id, zone, cluster_id, set_legacy_abac_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/legacyAbac', options)
          command.request_representation = Google::Apis::ContainerV1::SetLegacyAbacRequest::Representation
          command.request_object = set_legacy_abac_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all clusters owned by a project in either the specified zone or all
        # zones.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides, or "-" for all zones.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_clusters(project_id, zone, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/clusters', options)
          command.response_representation = Google::Apis::ContainerV1::ListClustersResponse::Representation
          command.response_class = Google::Apis::ContainerV1::ListClustersResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the locations of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::SetLocationsRequest] set_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def locations_project_zone_cluster(project_id, zone, cluster_id, set_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/locations', options)
          command.request_representation = Google::Apis::ContainerV1::SetLocationsRequest::Representation
          command.request_object = set_locations_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the logging service of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::SetLoggingServiceRequest] set_logging_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def logging_project_zone_cluster(project_id, zone, cluster_id, set_logging_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/logging', options)
          command.request_representation = Google::Apis::ContainerV1::SetLoggingServiceRequest::Representation
          command.request_object = set_logging_service_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the master of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::UpdateMasterRequest] update_master_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def master_project_zone_cluster(project_id, zone, cluster_id, update_master_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/master', options)
          command.request_representation = Google::Apis::ContainerV1::UpdateMasterRequest::Representation
          command.request_object = update_master_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the monitoring service of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::SetMonitoringServiceRequest] set_monitoring_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def monitoring_project_zone_cluster(project_id, zone, cluster_id, set_monitoring_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/monitoring', options)
          command.request_representation = Google::Apis::ContainerV1::SetMonitoringServiceRequest::Representation
          command.request_object = set_monitoring_service_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets labels on a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [Google::Apis::ContainerV1::SetLabelsRequest] set_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resource_project_zone_cluster_labels(project_id, zone, cluster_id, set_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/resourceLabels', options)
          command.request_representation = Google::Apis::ContainerV1::SetLabelsRequest::Representation
          command.request_object = set_labels_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the maintenance policy for a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to update.
        # @param [Google::Apis::ContainerV1::SetMaintenancePolicyRequest] set_maintenance_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_cluster_maintenance_policy(project_id, zone, cluster_id, set_maintenance_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMaintenancePolicy', options)
          command.request_representation = Google::Apis::ContainerV1::SetMaintenancePolicyRequest::Representation
          command.request_object = set_maintenance_policy_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used to set master auth materials. Currently supports :-
        # Changing the admin password of a specific cluster.
        # This can be either via password generation or explicitly set the password.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::SetMasterAuthRequest] set_master_auth_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_cluster_master_auth(project_id, zone, cluster_id, set_master_auth_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMasterAuth', options)
          command.request_representation = Google::Apis::ContainerV1::SetMasterAuthRequest::Representation
          command.request_object = set_master_auth_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables/Disables Network Policy for a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [Google::Apis::ContainerV1::SetNetworkPolicyRequest] set_network_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_cluster_network_policy(project_id, zone, cluster_id, set_network_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setNetworkPolicy', options)
          command.request_representation = Google::Apis::ContainerV1::SetNetworkPolicyRequest::Representation
          command.request_object = set_network_policy_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Start master IP rotation.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [Google::Apis::ContainerV1::StartIpRotationRequest] start_ip_rotation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_cluster_ip_rotation(project_id, zone, cluster_id, start_ip_rotation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:startIpRotation', options)
          command.request_representation = Google::Apis::ContainerV1::StartIpRotationRequest::Representation
          command.request_object = start_ip_rotation_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings of a specific cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [Google::Apis::ContainerV1::UpdateClusterRequest] update_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_cluster(project_id, zone, cluster_id, update_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}', options)
          command.request_representation = Google::Apis::ContainerV1::UpdateClusterRequest::Representation
          command.request_object = update_cluster_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the autoscaling settings of a specific node pool.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [String] node_pool_id
        #   The name of the node pool to upgrade.
        # @param [Google::Apis::ContainerV1::SetNodePoolAutoscalingRequest] set_node_pool_autoscaling_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def autoscaling_project_zone_cluster_node_pool(project_id, zone, cluster_id, node_pool_id, set_node_pool_autoscaling_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/autoscaling', options)
          command.request_representation = Google::Apis::ContainerV1::SetNodePoolAutoscalingRequest::Representation
          command.request_object = set_node_pool_autoscaling_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a node pool for a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [Google::Apis::ContainerV1::CreateNodePoolRequest] create_node_pool_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_pool(project_id, zone, cluster_id, create_node_pool_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools', options)
          command.request_representation = Google::Apis::ContainerV1::CreateNodePoolRequest::Representation
          command.request_object = create_node_pool_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a node pool from a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [String] node_pool_id
        #   The name of the node pool to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_zone_cluster_node_pool(project_id, zone, cluster_id, node_pool_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}', options)
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the node pool requested.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [String] node_pool_id
        #   The name of the node pool.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::NodePool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::NodePool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_zone_cluster_node_pool(project_id, zone, cluster_id, node_pool_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}', options)
          command.response_representation = Google::Apis::ContainerV1::NodePool::Representation
          command.response_class = Google::Apis::ContainerV1::NodePool
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the node pools for a cluster.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://developers.google.com/console/help/new/#projectnumber).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::ListNodePoolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::ListNodePoolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_zone_cluster_node_pools(project_id, zone, cluster_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools', options)
          command.response_representation = Google::Apis::ContainerV1::ListNodePoolsResponse::Representation
          command.response_class = Google::Apis::ContainerV1::ListNodePoolsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Roll back the previously Aborted or Failed NodePool upgrade.
        # This will be an no-op if the last upgrade successfully completed.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to rollback.
        # @param [String] node_pool_id
        #   The name of the node pool to rollback.
        # @param [Google::Apis::ContainerV1::RollbackNodePoolUpgradeRequest] rollback_node_pool_upgrade_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_node_pool_upgrade(project_id, zone, cluster_id, node_pool_id, rollback_node_pool_upgrade_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}:rollback', options)
          command.request_representation = Google::Apis::ContainerV1::RollbackNodePoolUpgradeRequest::Representation
          command.request_object = rollback_node_pool_upgrade_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the NodeManagement options for a node pool.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to update.
        # @param [String] node_pool_id
        #   The name of the node pool to update.
        # @param [Google::Apis::ContainerV1::SetNodePoolManagementRequest] set_node_pool_management_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_zone_cluster_node_pool_management(project_id, zone, cluster_id, node_pool_id, set_node_pool_management_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setManagement', options)
          command.request_representation = Google::Apis::ContainerV1::SetNodePoolManagementRequest::Representation
          command.request_object = set_node_pool_management_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the size of a specific node pool.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to update.
        # @param [String] node_pool_id
        #   The name of the node pool to update.
        # @param [Google::Apis::ContainerV1::SetNodePoolSizeRequest] set_node_pool_size_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_zone_cluster_node_pool_size(project_id, zone, cluster_id, node_pool_id, set_node_pool_size_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setSize', options)
          command.request_representation = Google::Apis::ContainerV1::SetNodePoolSizeRequest::Representation
          command.request_object = set_node_pool_size_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the version and/or image type of a specific node pool.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] cluster_id
        #   The name of the cluster to upgrade.
        # @param [String] node_pool_id
        #   The name of the node pool to upgrade.
        # @param [Google::Apis::ContainerV1::UpdateNodePoolRequest] update_node_pool_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_node_pool(project_id, zone, cluster_id, node_pool_id, update_node_pool_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/update', options)
          command.request_representation = Google::Apis::ContainerV1::UpdateNodePoolRequest::Representation
          command.request_object = update_node_pool_request_object
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.params['nodePoolId'] = node_pool_id unless node_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels the specified operation.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the operation resides.
        # @param [String] operation_id
        #   The server-assigned `name` of the operation.
        # @param [Google::Apis::ContainerV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(project_id, zone, operation_id, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/projects/{projectId}/zones/{zone}/operations/{operationId}:cancel', options)
          command.request_representation = Google::Apis::ContainerV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::ContainerV1::Empty::Representation
          command.response_class = Google::Apis::ContainerV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operationId'] = operation_id unless operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified operation.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine
        #   [zone](/compute/docs/zones#available) in which the cluster
        #   resides.
        # @param [String] operation_id
        #   The server-assigned `name` of the operation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project_id, zone, operation_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/operations/{operationId}', options)
          command.response_representation = Google::Apis::ContainerV1::Operation::Representation
          command.response_class = Google::Apis::ContainerV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operationId'] = operation_id unless operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all operations in a project in a specific zone or all zones.
        # @param [String] project_id
        #   The Google Developers Console [project ID or project
        #   number](https://support.google.com/cloud/answer/6158840).
        # @param [String] zone
        #   The name of the Google Compute Engine [zone](/compute/docs/zones#available)
        #   to return operations for, or `-` for all zones.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContainerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContainerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project_id, zone, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/zones/{zone}/operations', options)
          command.response_representation = Google::Apis::ContainerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ContainerV1::ListOperationsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['zone'] = zone unless zone.nil?
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
