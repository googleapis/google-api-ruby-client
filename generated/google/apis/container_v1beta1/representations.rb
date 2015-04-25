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
    module ContainerV1beta1
      
      class ClusterRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CreateClusterRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListAggregatedClustersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListAggregatedOperationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListClustersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListOperationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MasterAuthRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NodeConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ServiceAccountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TokenRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ClusterRepresentation < Google::Apis::Core::JsonRepresentation
        property :cluster_api_version, as: 'clusterApiVersion'
        property :container_ipv4_cidr, as: 'containerIpv4Cidr'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :enable_cloud_logging, as: 'enableCloudLogging'
        property :endpoint, as: 'endpoint'
        property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1beta1::MasterAuth, decorator: Google::Apis::ContainerV1beta1::MasterAuthRepresentation
        
        property :name, as: 'name'
        property :network, as: 'network'
        property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1beta1::NodeConfig, decorator: Google::Apis::ContainerV1beta1::NodeConfigRepresentation
        
        property :node_routing_prefix_size, as: 'nodeRoutingPrefixSize'
        property :num_nodes, as: 'numNodes'
        property :self_link, as: 'selfLink'
        property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
        property :status, as: 'status'
        property :status_message, as: 'statusMessage'
        property :zone, as: 'zone'
      end

      # @private
      class CreateClusterRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :cluster, as: 'cluster', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::ClusterRepresentation
      end

      # @private
      class ListAggregatedClustersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::ClusterRepresentation
      end

      # @private
      class ListAggregatedOperationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :operations, as: 'operations', class: Google::Apis::ContainerV1beta1::Operation, decorator: Google::Apis::ContainerV1beta1::OperationRepresentation
      end

      # @private
      class ListClustersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::ClusterRepresentation
      end

      # @private
      class ListOperationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :operations, as: 'operations', class: Google::Apis::ContainerV1beta1::Operation, decorator: Google::Apis::ContainerV1beta1::OperationRepresentation
      end

      # @private
      class MasterAuthRepresentation < Google::Apis::Core::JsonRepresentation
        property :bearer_token, as: 'bearerToken'
        property :password, as: 'password'
        property :user, as: 'user'
      end

      # @private
      class NodeConfigRepresentation < Google::Apis::Core::JsonRepresentation
        property :machine_type, as: 'machineType'
        collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ContainerV1beta1::ServiceAccount, decorator: Google::Apis::ContainerV1beta1::ServiceAccountRepresentation
        
        
        property :source_image, as: 'sourceImage'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        property :error_message, as: 'errorMessage'
        property :name, as: 'name'
        property :operation_type, as: 'operationType'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :target, as: 'target'
        property :target_link, as: 'targetLink'
        property :zone, as: 'zone'
      end

      # @private
      class ServiceAccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        collection :scopes, as: 'scopes'
      end

      # @private
      class TokenRepresentation < Google::Apis::Core::JsonRepresentation
        property :access_token, as: 'accessToken'
        property :expiry_time_seconds, as: 'expiryTimeSeconds'
      end
    end
  end
end
