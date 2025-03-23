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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ManagedkafkaV1
      
      class AccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CapacityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectGcpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerPartitionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerTopicMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsumerGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseConnectorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseConnectorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RebalanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartConnectorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartConnectorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeConnectorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeConnectorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopConnectorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopConnectorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskRetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_configs, as: 'networkConfigs', class: Google::Apis::ManagedkafkaV1::NetworkConfig, decorator: Google::Apis::ManagedkafkaV1::NetworkConfig::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CapacityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :memory_bytes, :numeric_string => true, as: 'memoryBytes'
          property :vcpu_count, :numeric_string => true, as: 'vcpuCount'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_config, as: 'capacityConfig', class: Google::Apis::ManagedkafkaV1::CapacityConfig, decorator: Google::Apis::ManagedkafkaV1::CapacityConfig::Representation
      
          property :create_time, as: 'createTime'
          property :gcp_config, as: 'gcpConfig', class: Google::Apis::ManagedkafkaV1::GcpConfig, decorator: Google::Apis::ManagedkafkaV1::GcpConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :rebalance_config, as: 'rebalanceConfig', class: Google::Apis::ManagedkafkaV1::RebalanceConfig, decorator: Google::Apis::ManagedkafkaV1::RebalanceConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_configs, as: 'networkConfigs', class: Google::Apis::ManagedkafkaV1::ConnectNetworkConfig, decorator: Google::Apis::ManagedkafkaV1::ConnectNetworkConfig::Representation
      
        end
      end
      
      class ConnectCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_config, as: 'capacityConfig', class: Google::Apis::ManagedkafkaV1::CapacityConfig, decorator: Google::Apis::ManagedkafkaV1::CapacityConfig::Representation
      
          hash :config, as: 'config'
          property :create_time, as: 'createTime'
          property :gcp_config, as: 'gcpConfig', class: Google::Apis::ManagedkafkaV1::ConnectGcpConfig, decorator: Google::Apis::ManagedkafkaV1::ConnectGcpConfig::Representation
      
          property :kafka_cluster, as: 'kafkaCluster'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectGcpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_config, as: 'accessConfig', class: Google::Apis::ManagedkafkaV1::ConnectAccessConfig, decorator: Google::Apis::ManagedkafkaV1::ConnectAccessConfig::Representation
      
          collection :secret_paths, as: 'secretPaths'
        end
      end
      
      class ConnectNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_subnets, as: 'additionalSubnets'
          collection :dns_domain_names, as: 'dnsDomainNames'
          property :primary_subnet, as: 'primarySubnet'
        end
      end
      
      class Connector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :configs, as: 'configs'
          property :name, as: 'name'
          property :state, as: 'state'
          property :task_restart_policy, as: 'taskRestartPolicy', class: Google::Apis::ManagedkafkaV1::TaskRetryPolicy, decorator: Google::Apis::ManagedkafkaV1::TaskRetryPolicy::Representation
      
        end
      end
      
      class ConsumerGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :topics, as: 'topics', class: Google::Apis::ManagedkafkaV1::ConsumerTopicMetadata, decorator: Google::Apis::ManagedkafkaV1::ConsumerTopicMetadata::Representation
      
        end
      end
      
      class ConsumerPartitionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata'
          property :offset, :numeric_string => true, as: 'offset'
        end
      end
      
      class ConsumerTopicMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :partitions, as: 'partitions', class: Google::Apis::ManagedkafkaV1::ConsumerPartitionMetadata, decorator: Google::Apis::ManagedkafkaV1::ConsumerPartitionMetadata::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GcpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_config, as: 'accessConfig', class: Google::Apis::ManagedkafkaV1::AccessConfig, decorator: Google::Apis::ManagedkafkaV1::AccessConfig::Representation
      
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ManagedkafkaV1::Cluster, decorator: Google::Apis::ManagedkafkaV1::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connect_clusters, as: 'connectClusters', class: Google::Apis::ManagedkafkaV1::ConnectCluster, decorator: Google::Apis::ManagedkafkaV1::ConnectCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connectors, as: 'connectors', class: Google::Apis::ManagedkafkaV1::Connector, decorator: Google::Apis::ManagedkafkaV1::Connector::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConsumerGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_groups, as: 'consumerGroups', class: Google::Apis::ManagedkafkaV1::ConsumerGroup, decorator: Google::Apis::ManagedkafkaV1::ConsumerGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ManagedkafkaV1::Location, decorator: Google::Apis::ManagedkafkaV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ManagedkafkaV1::Operation, decorator: Google::Apis::ManagedkafkaV1::Operation::Representation
      
        end
      end
      
      class ListTopicsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topics, as: 'topics', class: Google::Apis::ManagedkafkaV1::Topic, decorator: Google::Apis::ManagedkafkaV1::Topic::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnet, as: 'subnet'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ManagedkafkaV1::Status, decorator: Google::Apis::ManagedkafkaV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PauseConnectorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PauseConnectorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RebalanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class RestartConnectorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestartConnectorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResumeConnectorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResumeConnectorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StopConnectorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StopConnectorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TaskRetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum_backoff, as: 'maximumBackoff'
          property :minimum_backoff, as: 'minimumBackoff'
        end
      end
      
      class Topic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :configs, as: 'configs'
          property :name, as: 'name'
          property :partition_count, as: 'partitionCount'
          property :replication_factor, as: 'replicationFactor'
        end
      end
    end
  end
end
