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
    module HypercomputeclusterV1
      
      class BootDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BucketReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckClusterHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInstanceSlurmNodeSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeResourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateFilestoreInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLoginNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLustreInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateNodeset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateOrchestrator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreatePartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreatePrivateServiceAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateStorageBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteFilestoreInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteLoginNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteLustreInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteNodeset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteOrchestrator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeletePartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeletePrivateServiceAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteStorageBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExistingBucketConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExistingFilestoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExistingLustreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExistingNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileShareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilestoreReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsAutoclassConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsHierarchicalNamespaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LustreReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkResourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewBucketConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewFilestoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewFlexStartInstancesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewLustreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewOnDemandInstancesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewReservedInstancesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewSpotInstancesConfig
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
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Orchestrator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlurmLoginNodes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlurmNodeSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlurmOrchestrator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlurmPartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageResourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateLoginNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateNodeset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateOrchestrator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BootDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :type, as: 'type'
        end
      end
      
      class BucketReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckClusterHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :compute_resources, as: 'computeResources', class: Google::Apis::HypercomputeclusterV1::ComputeResource, decorator: Google::Apis::HypercomputeclusterV1::ComputeResource::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          hash :network_resources, as: 'networkResources', class: Google::Apis::HypercomputeclusterV1::NetworkResource, decorator: Google::Apis::HypercomputeclusterV1::NetworkResource::Representation
      
          property :orchestrator, as: 'orchestrator', class: Google::Apis::HypercomputeclusterV1::Orchestrator, decorator: Google::Apis::HypercomputeclusterV1::Orchestrator::Representation
      
          property :reconciling, as: 'reconciling'
          hash :storage_resources, as: 'storageResources', class: Google::Apis::HypercomputeclusterV1::StorageResource, decorator: Google::Apis::HypercomputeclusterV1::StorageResource::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ComputeInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
        end
      end
      
      class ComputeInstanceSlurmNodeSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk, as: 'bootDisk', class: Google::Apis::HypercomputeclusterV1::BootDisk, decorator: Google::Apis::HypercomputeclusterV1::BootDisk::Representation
      
          hash :labels, as: 'labels'
          property :startup_script, as: 'startupScript'
        end
      end
      
      class ComputeResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::HypercomputeclusterV1::ComputeResourceConfig, decorator: Google::Apis::HypercomputeclusterV1::ComputeResourceConfig::Representation
      
        end
      end
      
      class ComputeResourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_flex_start_instances, as: 'newFlexStartInstances', class: Google::Apis::HypercomputeclusterV1::NewFlexStartInstancesConfig, decorator: Google::Apis::HypercomputeclusterV1::NewFlexStartInstancesConfig::Representation
      
          property :new_on_demand_instances, as: 'newOnDemandInstances', class: Google::Apis::HypercomputeclusterV1::NewOnDemandInstancesConfig, decorator: Google::Apis::HypercomputeclusterV1::NewOnDemandInstancesConfig::Representation
      
          property :new_reserved_instances, as: 'newReservedInstances', class: Google::Apis::HypercomputeclusterV1::NewReservedInstancesConfig, decorator: Google::Apis::HypercomputeclusterV1::NewReservedInstancesConfig::Representation
      
          property :new_spot_instances, as: 'newSpotInstances', class: Google::Apis::HypercomputeclusterV1::NewSpotInstancesConfig, decorator: Google::Apis::HypercomputeclusterV1::NewSpotInstancesConfig::Representation
      
        end
      end
      
      class CreateFilestoreInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filestore, as: 'filestore'
        end
      end
      
      class CreateLoginNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateLustreInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lustre, as: 'lustre'
        end
      end
      
      class CreateNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
        end
      end
      
      class CreateNodeset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodesets, as: 'nodesets'
        end
      end
      
      class CreateOrchestrator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreatePartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partitions, as: 'partitions'
        end
      end
      
      class CreatePrivateServiceAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateStorageBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
        end
      end
      
      class DeleteFilestoreInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filestore, as: 'filestore'
        end
      end
      
      class DeleteLoginNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteLustreInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lustre, as: 'lustre'
        end
      end
      
      class DeleteNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
        end
      end
      
      class DeleteNodeset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodesets, as: 'nodesets'
        end
      end
      
      class DeleteOrchestrator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeletePartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partitions, as: 'partitions'
        end
      end
      
      class DeletePrivateServiceAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteStorageBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExistingBucketConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
        end
      end
      
      class ExistingFilestoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filestore, as: 'filestore'
        end
      end
      
      class ExistingLustreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lustre, as: 'lustre'
        end
      end
      
      class ExistingNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class FileShareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :file_share, as: 'fileShare'
        end
      end
      
      class FilestoreReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filestore, as: 'filestore'
        end
      end
      
      class GcsAutoclassConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :terminal_storage_class, as: 'terminalStorageClass'
        end
      end
      
      class GcsHierarchicalNamespaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::HypercomputeclusterV1::Cluster, decorator: Google::Apis::HypercomputeclusterV1::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::HypercomputeclusterV1::Location, decorator: Google::Apis::HypercomputeclusterV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::HypercomputeclusterV1::Operation, decorator: Google::Apis::HypercomputeclusterV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class LustreReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lustre, as: 'lustre'
        end
      end
      
      class NetworkReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::HypercomputeclusterV1::NetworkResourceConfig, decorator: Google::Apis::HypercomputeclusterV1::NetworkResourceConfig::Representation
      
          property :network, as: 'network', class: Google::Apis::HypercomputeclusterV1::NetworkReference, decorator: Google::Apis::HypercomputeclusterV1::NetworkReference::Representation
      
        end
      end
      
      class NetworkResourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :existing_network, as: 'existingNetwork', class: Google::Apis::HypercomputeclusterV1::ExistingNetworkConfig, decorator: Google::Apis::HypercomputeclusterV1::ExistingNetworkConfig::Representation
      
          property :new_network, as: 'newNetwork', class: Google::Apis::HypercomputeclusterV1::NewNetworkConfig, decorator: Google::Apis::HypercomputeclusterV1::NewNetworkConfig::Representation
      
        end
      end
      
      class NewBucketConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoclass, as: 'autoclass', class: Google::Apis::HypercomputeclusterV1::GcsAutoclassConfig, decorator: Google::Apis::HypercomputeclusterV1::GcsAutoclassConfig::Representation
      
          property :bucket, as: 'bucket'
          property :hierarchical_namespace, as: 'hierarchicalNamespace', class: Google::Apis::HypercomputeclusterV1::GcsHierarchicalNamespaceConfig, decorator: Google::Apis::HypercomputeclusterV1::GcsHierarchicalNamespaceConfig::Representation
      
          property :storage_class, as: 'storageClass'
        end
      end
      
      class NewFilestoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :file_shares, as: 'fileShares', class: Google::Apis::HypercomputeclusterV1::FileShareConfig, decorator: Google::Apis::HypercomputeclusterV1::FileShareConfig::Representation
      
          property :filestore, as: 'filestore'
          property :protocol, as: 'protocol'
          property :tier, as: 'tier'
        end
      end
      
      class NewFlexStartInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :max_duration, as: 'maxDuration'
          property :zone, as: 'zone'
        end
      end
      
      class NewLustreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :description, as: 'description'
          property :filesystem, as: 'filesystem'
          property :lustre, as: 'lustre'
        end
      end
      
      class NewNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :network, as: 'network'
        end
      end
      
      class NewOnDemandInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :zone, as: 'zone'
        end
      end
      
      class NewReservedInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reservation, as: 'reservation'
        end
      end
      
      class NewSpotInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :termination_action, as: 'terminationAction'
          property :zone, as: 'zone'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::HypercomputeclusterV1::Status, decorator: Google::Apis::HypercomputeclusterV1::Status::Representation
      
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
          property :progress, as: 'progress', class: Google::Apis::HypercomputeclusterV1::OperationProgress, decorator: Google::Apis::HypercomputeclusterV1::OperationProgress::Representation
      
          property :requested_cancellation, as: 'requestedCancellation'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :steps, as: 'steps', class: Google::Apis::HypercomputeclusterV1::OperationStep, decorator: Google::Apis::HypercomputeclusterV1::OperationStep::Representation
      
        end
      end
      
      class OperationStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_cluster_health, as: 'checkClusterHealth', class: Google::Apis::HypercomputeclusterV1::CheckClusterHealth, decorator: Google::Apis::HypercomputeclusterV1::CheckClusterHealth::Representation
      
          property :create_filestore_instance, as: 'createFilestoreInstance', class: Google::Apis::HypercomputeclusterV1::CreateFilestoreInstance, decorator: Google::Apis::HypercomputeclusterV1::CreateFilestoreInstance::Representation
      
          property :create_login_node, as: 'createLoginNode', class: Google::Apis::HypercomputeclusterV1::CreateLoginNode, decorator: Google::Apis::HypercomputeclusterV1::CreateLoginNode::Representation
      
          property :create_lustre_instance, as: 'createLustreInstance', class: Google::Apis::HypercomputeclusterV1::CreateLustreInstance, decorator: Google::Apis::HypercomputeclusterV1::CreateLustreInstance::Representation
      
          property :create_network, as: 'createNetwork', class: Google::Apis::HypercomputeclusterV1::CreateNetwork, decorator: Google::Apis::HypercomputeclusterV1::CreateNetwork::Representation
      
          property :create_nodeset, as: 'createNodeset', class: Google::Apis::HypercomputeclusterV1::CreateNodeset, decorator: Google::Apis::HypercomputeclusterV1::CreateNodeset::Representation
      
          property :create_orchestrator, as: 'createOrchestrator', class: Google::Apis::HypercomputeclusterV1::CreateOrchestrator, decorator: Google::Apis::HypercomputeclusterV1::CreateOrchestrator::Representation
      
          property :create_partition, as: 'createPartition', class: Google::Apis::HypercomputeclusterV1::CreatePartition, decorator: Google::Apis::HypercomputeclusterV1::CreatePartition::Representation
      
          property :create_private_service_access, as: 'createPrivateServiceAccess', class: Google::Apis::HypercomputeclusterV1::CreatePrivateServiceAccess, decorator: Google::Apis::HypercomputeclusterV1::CreatePrivateServiceAccess::Representation
      
          property :create_storage_bucket, as: 'createStorageBucket', class: Google::Apis::HypercomputeclusterV1::CreateStorageBucket, decorator: Google::Apis::HypercomputeclusterV1::CreateStorageBucket::Representation
      
          property :delete_filestore_instance, as: 'deleteFilestoreInstance', class: Google::Apis::HypercomputeclusterV1::DeleteFilestoreInstance, decorator: Google::Apis::HypercomputeclusterV1::DeleteFilestoreInstance::Representation
      
          property :delete_login_node, as: 'deleteLoginNode', class: Google::Apis::HypercomputeclusterV1::DeleteLoginNode, decorator: Google::Apis::HypercomputeclusterV1::DeleteLoginNode::Representation
      
          property :delete_lustre_instance, as: 'deleteLustreInstance', class: Google::Apis::HypercomputeclusterV1::DeleteLustreInstance, decorator: Google::Apis::HypercomputeclusterV1::DeleteLustreInstance::Representation
      
          property :delete_network, as: 'deleteNetwork', class: Google::Apis::HypercomputeclusterV1::DeleteNetwork, decorator: Google::Apis::HypercomputeclusterV1::DeleteNetwork::Representation
      
          property :delete_nodeset, as: 'deleteNodeset', class: Google::Apis::HypercomputeclusterV1::DeleteNodeset, decorator: Google::Apis::HypercomputeclusterV1::DeleteNodeset::Representation
      
          property :delete_orchestrator, as: 'deleteOrchestrator', class: Google::Apis::HypercomputeclusterV1::DeleteOrchestrator, decorator: Google::Apis::HypercomputeclusterV1::DeleteOrchestrator::Representation
      
          property :delete_partition, as: 'deletePartition', class: Google::Apis::HypercomputeclusterV1::DeletePartition, decorator: Google::Apis::HypercomputeclusterV1::DeletePartition::Representation
      
          property :delete_private_service_access, as: 'deletePrivateServiceAccess', class: Google::Apis::HypercomputeclusterV1::DeletePrivateServiceAccess, decorator: Google::Apis::HypercomputeclusterV1::DeletePrivateServiceAccess::Representation
      
          property :delete_storage_bucket, as: 'deleteStorageBucket', class: Google::Apis::HypercomputeclusterV1::DeleteStorageBucket, decorator: Google::Apis::HypercomputeclusterV1::DeleteStorageBucket::Representation
      
          property :state, as: 'state'
          property :update_login_node, as: 'updateLoginNode', class: Google::Apis::HypercomputeclusterV1::UpdateLoginNode, decorator: Google::Apis::HypercomputeclusterV1::UpdateLoginNode::Representation
      
          property :update_nodeset, as: 'updateNodeset', class: Google::Apis::HypercomputeclusterV1::UpdateNodeset, decorator: Google::Apis::HypercomputeclusterV1::UpdateNodeset::Representation
      
          property :update_orchestrator, as: 'updateOrchestrator', class: Google::Apis::HypercomputeclusterV1::UpdateOrchestrator, decorator: Google::Apis::HypercomputeclusterV1::UpdateOrchestrator::Representation
      
          property :update_partition, as: 'updatePartition', class: Google::Apis::HypercomputeclusterV1::UpdatePartition, decorator: Google::Apis::HypercomputeclusterV1::UpdatePartition::Representation
      
        end
      end
      
      class Orchestrator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :slurm, as: 'slurm', class: Google::Apis::HypercomputeclusterV1::SlurmOrchestrator, decorator: Google::Apis::HypercomputeclusterV1::SlurmOrchestrator::Representation
      
        end
      end
      
      class SlurmLoginNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk, as: 'bootDisk', class: Google::Apis::HypercomputeclusterV1::BootDisk, decorator: Google::Apis::HypercomputeclusterV1::BootDisk::Representation
      
          property :count, :numeric_string => true, as: 'count'
          property :enable_os_login, as: 'enableOsLogin'
          property :enable_public_ips, as: 'enablePublicIps'
          collection :instances, as: 'instances', class: Google::Apis::HypercomputeclusterV1::ComputeInstance, decorator: Google::Apis::HypercomputeclusterV1::ComputeInstance::Representation
      
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :startup_script, as: 'startupScript'
          collection :storage_configs, as: 'storageConfigs', class: Google::Apis::HypercomputeclusterV1::StorageConfig, decorator: Google::Apis::HypercomputeclusterV1::StorageConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class SlurmNodeSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_id, as: 'computeId'
          property :compute_instance, as: 'computeInstance', class: Google::Apis::HypercomputeclusterV1::ComputeInstanceSlurmNodeSet, decorator: Google::Apis::HypercomputeclusterV1::ComputeInstanceSlurmNodeSet::Representation
      
          property :id, as: 'id'
          property :max_dynamic_node_count, :numeric_string => true, as: 'maxDynamicNodeCount'
          property :static_node_count, :numeric_string => true, as: 'staticNodeCount'
          collection :storage_configs, as: 'storageConfigs', class: Google::Apis::HypercomputeclusterV1::StorageConfig, decorator: Google::Apis::HypercomputeclusterV1::StorageConfig::Representation
      
        end
      end
      
      class SlurmOrchestrator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_partition, as: 'defaultPartition'
          collection :epilog_bash_scripts, as: 'epilogBashScripts'
          property :login_nodes, as: 'loginNodes', class: Google::Apis::HypercomputeclusterV1::SlurmLoginNodes, decorator: Google::Apis::HypercomputeclusterV1::SlurmLoginNodes::Representation
      
          collection :node_sets, as: 'nodeSets', class: Google::Apis::HypercomputeclusterV1::SlurmNodeSet, decorator: Google::Apis::HypercomputeclusterV1::SlurmNodeSet::Representation
      
          collection :partitions, as: 'partitions', class: Google::Apis::HypercomputeclusterV1::SlurmPartition, decorator: Google::Apis::HypercomputeclusterV1::SlurmPartition::Representation
      
          collection :prolog_bash_scripts, as: 'prologBashScripts'
        end
      end
      
      class SlurmPartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :node_set_ids, as: 'nodeSetIds'
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
      
      class StorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :local_mount, as: 'localMount'
        end
      end
      
      class StorageResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket', class: Google::Apis::HypercomputeclusterV1::BucketReference, decorator: Google::Apis::HypercomputeclusterV1::BucketReference::Representation
      
          property :config, as: 'config', class: Google::Apis::HypercomputeclusterV1::StorageResourceConfig, decorator: Google::Apis::HypercomputeclusterV1::StorageResourceConfig::Representation
      
          property :filestore, as: 'filestore', class: Google::Apis::HypercomputeclusterV1::FilestoreReference, decorator: Google::Apis::HypercomputeclusterV1::FilestoreReference::Representation
      
          property :lustre, as: 'lustre', class: Google::Apis::HypercomputeclusterV1::LustreReference, decorator: Google::Apis::HypercomputeclusterV1::LustreReference::Representation
      
        end
      end
      
      class StorageResourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :existing_bucket, as: 'existingBucket', class: Google::Apis::HypercomputeclusterV1::ExistingBucketConfig, decorator: Google::Apis::HypercomputeclusterV1::ExistingBucketConfig::Representation
      
          property :existing_filestore, as: 'existingFilestore', class: Google::Apis::HypercomputeclusterV1::ExistingFilestoreConfig, decorator: Google::Apis::HypercomputeclusterV1::ExistingFilestoreConfig::Representation
      
          property :existing_lustre, as: 'existingLustre', class: Google::Apis::HypercomputeclusterV1::ExistingLustreConfig, decorator: Google::Apis::HypercomputeclusterV1::ExistingLustreConfig::Representation
      
          property :new_bucket, as: 'newBucket', class: Google::Apis::HypercomputeclusterV1::NewBucketConfig, decorator: Google::Apis::HypercomputeclusterV1::NewBucketConfig::Representation
      
          property :new_filestore, as: 'newFilestore', class: Google::Apis::HypercomputeclusterV1::NewFilestoreConfig, decorator: Google::Apis::HypercomputeclusterV1::NewFilestoreConfig::Representation
      
          property :new_lustre, as: 'newLustre', class: Google::Apis::HypercomputeclusterV1::NewLustreConfig, decorator: Google::Apis::HypercomputeclusterV1::NewLustreConfig::Representation
      
        end
      end
      
      class UpdateLoginNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateNodeset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodesets, as: 'nodesets'
        end
      end
      
      class UpdateOrchestrator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdatePartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partitions, as: 'partitions'
        end
      end
    end
  end
end
