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
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAggregatedClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAggregatedOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MasterAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_api_version, as: 'clusterApiVersion'
          property :container_ipv4_cidr, as: 'containerIpv4Cidr'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :enable_cloud_logging, as: 'enableCloudLogging'
          property :enable_cloud_monitoring, as: 'enableCloudMonitoring'
          property :endpoint, as: 'endpoint'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1beta1::MasterAuth, decorator: Google::Apis::ContainerV1beta1::MasterAuth::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1beta1::NodeConfig, decorator: Google::Apis::ContainerV1beta1::NodeConfig::Representation
      
          property :node_routing_prefix_size, as: 'nodeRoutingPrefixSize'
          property :num_nodes, as: 'numNodes'
          property :self_link, as: 'selfLink'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :zone, as: 'zone'
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::Cluster::Representation
      
        end
      end
      
      class ListAggregatedClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::Cluster::Representation
      
        end
      end
      
      class ListAggregatedOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1beta1::Operation, decorator: Google::Apis::ContainerV1beta1::Operation::Representation
      
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::Cluster::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1beta1::Operation, decorator: Google::Apis::ContainerV1beta1::Operation::Representation
      
        end
      end
      
      class MasterAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bearer_token, as: 'bearerToken'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :cluster_ca_certificate, as: 'clusterCaCertificate'
          property :password, as: 'password'
          property :user, as: 'user'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ContainerV1beta1::ServiceAccount, decorator: Google::Apis::ContainerV1beta1::ServiceAccount::Representation
      
          property :source_image, as: 'sourceImage'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :name, as: 'name'
          property :operation_type, as: 'operationType'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :target, as: 'target'
          property :target_link, as: 'targetLink'
          property :zone, as: 'zone'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
    end
  end
end
