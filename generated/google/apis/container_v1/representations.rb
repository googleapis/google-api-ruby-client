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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ContainerV1
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpLoadBalancing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HorizontalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :description, as: 'description'
          property :initial_node_count, as: 'initialNodeCount'
          property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :logging_service, as: 'loggingService'
          property :monitoring_service, as: 'monitoringService'
          property :network, as: 'network'
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :subnetwork, as: 'subnetwork'
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
          collection :locations, as: 'locations'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
          property :endpoint, as: 'endpoint'
          property :initial_cluster_version, as: 'initialClusterVersion'
          property :current_master_version, as: 'currentMasterVersion'
          property :current_node_version, as: 'currentNodeVersion'
          property :create_time, as: 'createTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :node_ipv4_cidr_size, as: 'nodeIpv4CidrSize'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :current_node_count, as: 'currentNodeCount'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :disk_size_gb, as: 'diskSizeGb'
          collection :oauth_scopes, as: 'oauthScopes'
          hash :metadata, as: 'metadata'
        end
      end
      
      class MasterAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :username, as: 'username'
          property :password, as: 'password'
          property :cluster_ca_certificate, as: 'clusterCaCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
        end
      end
      
      class AddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_load_balancing, as: 'httpLoadBalancing', class: Google::Apis::ContainerV1::HttpLoadBalancing, decorator: Google::Apis::ContainerV1::HttpLoadBalancing::Representation
      
          property :horizontal_pod_autoscaling, as: 'horizontalPodAutoscaling', class: Google::Apis::ContainerV1::HorizontalPodAutoscaling, decorator: Google::Apis::ContainerV1::HorizontalPodAutoscaling::Representation
      
        end
      end
      
      class HttpLoadBalancing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class HorizontalPodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :config, as: 'config', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :initial_node_count, as: 'initialNodeCount'
          property :self_link, as: 'selfLink'
          property :version, as: 'version'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :zone, as: 'zone'
          property :operation_type, as: 'operationType'
          property :status, as: 'status'
          property :detail, as: 'detail'
          property :status_message, as: 'statusMessage'
          property :self_link, as: 'selfLink'
          property :target_link, as: 'targetLink'
        end
      end
      
      class UpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update, as: 'update', class: Google::Apis::ContainerV1::ClusterUpdate, decorator: Google::Apis::ContainerV1::ClusterUpdate::Representation
      
        end
      end
      
      class ClusterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_node_version, as: 'desiredNodeVersion'
          property :desired_monitoring_service, as: 'desiredMonitoringService'
          property :desired_addons_config, as: 'desiredAddonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :desired_node_pool_id, as: 'desiredNodePoolId'
          property :desired_master_version, as: 'desiredMasterVersion'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1::Operation, decorator: Google::Apis::ContainerV1::Operation::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class ServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_cluster_version, as: 'defaultClusterVersion'
          collection :valid_node_versions, as: 'validNodeVersions'
          property :default_image_family, as: 'defaultImageFamily'
          collection :valid_image_families, as: 'validImageFamilies'
        end
      end
      
      class ListNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
        end
      end
      
      class CreateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool, as: 'nodePool', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
        end
      end
    end
  end
end
