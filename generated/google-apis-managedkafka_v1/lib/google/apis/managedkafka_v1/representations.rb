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
      
      class Acl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddAclEntryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BrokerDetails
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
      
      class CertificateAuthorityServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckCompatibilityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckCompatibilityResponse
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
      
      class Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSchemaRegistryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateVersionResponse
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
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAclsResponse
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
      
      class ListSchemaRegistriesResponse
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
      
      class LookupVersionRequest
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
      
      class RemoveAclEntryResponse
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
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaRegistry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaVersion
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
      
      class TlsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrustConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSchemaConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSchemaModeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_configs, as: 'networkConfigs', class: Google::Apis::ManagedkafkaV1::NetworkConfig, decorator: Google::Apis::ManagedkafkaV1::NetworkConfig::Representation
      
        end
      end
      
      class Acl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :acl_entries, as: 'aclEntries', class: Google::Apis::ManagedkafkaV1::AclEntry, decorator: Google::Apis::ManagedkafkaV1::AclEntry::Representation
      
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :pattern_type, as: 'patternType'
          property :resource_name, as: 'resourceName'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class AclEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :operation, as: 'operation'
          property :permission_type, as: 'permissionType'
          property :principal, as: 'principal'
        end
      end
      
      class AddAclEntryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl, as: 'acl', class: Google::Apis::ManagedkafkaV1::Acl, decorator: Google::Apis::ManagedkafkaV1::Acl::Representation
      
          property :acl_created, as: 'aclCreated'
        end
      end
      
      class BrokerDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broker_index, :numeric_string => true, as: 'brokerIndex'
          property :node_id, :numeric_string => true, as: 'nodeId'
          property :rack, as: 'rack'
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
      
      class CertificateAuthorityServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_pool, as: 'caPool'
        end
      end
      
      class CheckCompatibilityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::ManagedkafkaV1::SchemaReference, decorator: Google::Apis::ManagedkafkaV1::SchemaReference::Representation
      
          property :schema, as: 'schema'
          property :schema_type, as: 'schemaType'
          property :verbose, as: 'verbose'
        end
      end
      
      class CheckCompatibilityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_compatible, as: 'is_compatible'
          collection :messages, as: 'messages'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :broker_details, as: 'brokerDetails', class: Google::Apis::ManagedkafkaV1::BrokerDetails, decorator: Google::Apis::ManagedkafkaV1::BrokerDetails::Representation
      
          property :capacity_config, as: 'capacityConfig', class: Google::Apis::ManagedkafkaV1::CapacityConfig, decorator: Google::Apis::ManagedkafkaV1::CapacityConfig::Representation
      
          property :create_time, as: 'createTime'
          property :gcp_config, as: 'gcpConfig', class: Google::Apis::ManagedkafkaV1::GcpConfig, decorator: Google::Apis::ManagedkafkaV1::GcpConfig::Representation
      
          property :kafka_version, as: 'kafkaVersion'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :rebalance_config, as: 'rebalanceConfig', class: Google::Apis::ManagedkafkaV1::RebalanceConfig, decorator: Google::Apis::ManagedkafkaV1::RebalanceConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :tls_config, as: 'tlsConfig', class: Google::Apis::ManagedkafkaV1::TlsConfig, decorator: Google::Apis::ManagedkafkaV1::TlsConfig::Representation
      
          property :update_options, as: 'updateOptions', class: Google::Apis::ManagedkafkaV1::UpdateOptions, decorator: Google::Apis::ManagedkafkaV1::UpdateOptions::Representation
      
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
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
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
      
      class Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :subjects, as: 'subjects'
        end
      end
      
      class CreateSchemaRegistryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema_registry, as: 'schemaRegistry', class: Google::Apis::ManagedkafkaV1::SchemaRegistry, decorator: Google::Apis::ManagedkafkaV1::SchemaRegistry::Representation
      
          property :schema_registry_id, as: 'schemaRegistryId'
        end
      end
      
      class CreateVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :normalize, as: 'normalize'
          collection :references, as: 'references', class: Google::Apis::ManagedkafkaV1::SchemaReference, decorator: Google::Apis::ManagedkafkaV1::SchemaReference::Representation
      
          property :schema, as: 'schema'
          property :schema_type, as: 'schemaType'
          property :version, as: 'version'
        end
      end
      
      class CreateVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
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
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class ListAclsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :acls, as: 'acls', class: Google::Apis::ManagedkafkaV1::Acl, decorator: Google::Apis::ManagedkafkaV1::Acl::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSchemaRegistriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schema_registries, as: 'schemaRegistries', class: Google::Apis::ManagedkafkaV1::SchemaRegistry, decorator: Google::Apis::ManagedkafkaV1::SchemaRegistry::Representation
      
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
      
      class LookupVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted, as: 'deleted'
          property :normalize, as: 'normalize'
          collection :references, as: 'references', class: Google::Apis::ManagedkafkaV1::SchemaReference, decorator: Google::Apis::ManagedkafkaV1::SchemaReference::Representation
      
          property :schema, as: 'schema'
          property :schema_type, as: 'schemaType'
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
      
      class RemoveAclEntryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl, as: 'acl', class: Google::Apis::ManagedkafkaV1::Acl, decorator: Google::Apis::ManagedkafkaV1::Acl::Representation
      
          property :acl_deleted, as: 'aclDeleted'
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
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::ManagedkafkaV1::SchemaReference, decorator: Google::Apis::ManagedkafkaV1::SchemaReference::Representation
      
          property :schema, as: 'schema'
          property :schema_type, as: 'schemaType'
        end
      end
      
      class SchemaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :compatibility, as: 'compatibility'
          property :normalize, as: 'normalize'
        end
      end
      
      class SchemaMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class SchemaReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :subject, as: 'subject'
          property :version, as: 'version'
        end
      end
      
      class SchemaRegistry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts'
          property :name, as: 'name'
        end
      end
      
      class SchemaVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :references, as: 'references', class: Google::Apis::ManagedkafkaV1::SchemaReference, decorator: Google::Apis::ManagedkafkaV1::SchemaReference::Representation
      
          property :schema, as: 'schema'
          property :schema_type, as: 'schemaType'
          property :subject, as: 'subject'
          property :version, as: 'version'
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
          property :task_retry_disabled, as: 'taskRetryDisabled'
        end
      end
      
      class TlsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ssl_principal_mapping_rules, as: 'sslPrincipalMappingRules'
          property :trust_config, as: 'trustConfig', class: Google::Apis::ManagedkafkaV1::TrustConfig, decorator: Google::Apis::ManagedkafkaV1::TrustConfig::Representation
      
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
      
      class TrustConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cas_configs, as: 'casConfigs', class: Google::Apis::ManagedkafkaV1::CertificateAuthorityServiceConfig, decorator: Google::Apis::ManagedkafkaV1::CertificateAuthorityServiceConfig::Representation
      
        end
      end
      
      class UpdateOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_broker_downscale_on_cluster_upscale, as: 'allowBrokerDownscaleOnClusterUpscale'
        end
      end
      
      class UpdateSchemaConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compatibility, as: 'compatibility'
          property :normalize, as: 'normalize'
        end
      end
      
      class UpdateSchemaModeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
    end
  end
end
