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
      
      # A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
      # boot disk for a Compute Engine VM instance.
      class BootDisk
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Size of the disk in gigabytes. Must be at least 10GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Required. Immutable. [Persistent disk type](https://cloud.google.com/compute/
        # docs/disks#disk-types), in the format `projects/`project`/zones/`zone`/
        # diskTypes/`disk_type``.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A reference to a [Google Cloud Storage](https://cloud.google.com/storage)
      # bucket.
      class BucketReference
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the bucket.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that cluster health check should be
      # performed.
      class CheckClusterHealth
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A collection of virtual machines and connected resources forming a high-
      # performance computing cluster capable of running large-scale, tightly coupled
      # workloads. A cluster combines a set a compute resources that perform
      # computations, storage resources that contain inputs and store outputs, an
      # orchestrator that is responsible for assigning jobs to compute resources, and
      # network resources that connect everything together.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Optional. Compute resources available to the cluster. Keys specify the ID of
        # the compute resource by which it can be referenced elsewhere, and must conform
        # to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
        # alphanumeric, and at most 63 characters).
        # Corresponds to the JSON property `computeResources`
        # @return [Hash<String,Google::Apis::HypercomputeclusterV1::ComputeResource>]
        attr_accessor :compute_resources
      
        # Output only. Time that the cluster was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. [Labels](https://cloud.google.com/compute/docs/labeling-resources)
        # applied to the cluster. Labels can be used to organize clusters and to filter
        # them in queries.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. [Relative resource name](https://google.aip.dev/122) of the
        # cluster, in the format `projects/`project`/locations/`location`/clusters/`
        # cluster``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Network resources available to the cluster. Must contain at most one
        # value. Keys specify the ID of the network resource by which it can be
        # referenced elsewhere, and must conform to [RFC-1034](https://datatracker.ietf.
        # org/doc/html/rfc1034) (lower-case, alphanumeric, and at most 63 characters).
        # Corresponds to the JSON property `networkResources`
        # @return [Hash<String,Google::Apis::HypercomputeclusterV1::NetworkResource>]
        attr_accessor :network_resources
      
        # The component responsible for scheduling and running workloads on the cluster
        # as well as providing the user interface for interacting with the cluster at
        # runtime.
        # Corresponds to the JSON property `orchestrator`
        # @return [Google::Apis::HypercomputeclusterV1::Orchestrator]
        attr_accessor :orchestrator
      
        # Output only. Indicates whether changes to the cluster are currently in flight.
        # If this is `true`, then the current state might not match the cluster's
        # intended state.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Optional. Storage resources available to the cluster. Keys specify the ID of
        # the storage resource by which it can be referenced elsewhere, and must conform
        # to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
        # alphanumeric, and at most 63 characters).
        # Corresponds to the JSON property `storageResources`
        # @return [Hash<String,Google::Apis::HypercomputeclusterV1::StorageResource>]
        attr_accessor :storage_resources
      
        # Output only. Time that the cluster was most recently updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_resources = args[:compute_resources] if args.key?(:compute_resources)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network_resources = args[:network_resources] if args.key?(:network_resources)
          @orchestrator = args[:orchestrator] if args.key?(:orchestrator)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @storage_resources = args[:storage_resources] if args.key?(:storage_resources)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details about a Compute Engine [instance](https://cloud.google.com/compute/
      # docs/instances).
      class ComputeInstance
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the VM instance, in the format `projects/`project`/zones/`
        # zone`/instances/`instance``.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # When set in a SlurmNodeSet, indicates that the nodeset should be backed by
      # Compute Engine VM instances.
      class ComputeInstanceSlurmNodeSet
        include Google::Apis::Core::Hashable
      
        # A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
        # boot disk for a Compute Engine VM instance.
        # Corresponds to the JSON property `bootDisk`
        # @return [Google::Apis::HypercomputeclusterV1::BootDisk]
        attr_accessor :boot_disk
      
        # Optional. [Labels](https://cloud.google.com/compute/docs/labeling-resources)
        # that should be applied to each VM instance in the nodeset.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. [Startup script](https://cloud.google.com/compute/docs/instances/
        # startup-scripts/linux) to be run on each VM instance in the nodeset. Max 256KB.
        # Corresponds to the JSON property `startupScript`
        # @return [String]
        attr_accessor :startup_script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_disk = args[:boot_disk] if args.key?(:boot_disk)
          @labels = args[:labels] if args.key?(:labels)
          @startup_script = args[:startup_script] if args.key?(:startup_script)
        end
      end
      
      # A resource defining how virtual machines and accelerators should be
      # provisioned for the cluster.
      class ComputeResource
        include Google::Apis::Core::Hashable
      
        # Describes how a compute resource should be created at runtime.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::HypercomputeclusterV1::ComputeResourceConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # Describes how a compute resource should be created at runtime.
      class ComputeResourceConfig
        include Google::Apis::Core::Hashable
      
        # When set in a ComputeResourceConfig, indicates that VM instances should be
        # created using [Flex Start](https://cloud.google.com/compute/docs/instances/
        # provisioning-models).
        # Corresponds to the JSON property `newFlexStartInstances`
        # @return [Google::Apis::HypercomputeclusterV1::NewFlexStartInstancesConfig]
        attr_accessor :new_flex_start_instances
      
        # When set in a ComputeResourceConfig, indicates that on-demand (i.e., using the
        # standard provisioning model) VM instances should be created.
        # Corresponds to the JSON property `newOnDemandInstances`
        # @return [Google::Apis::HypercomputeclusterV1::NewOnDemandInstancesConfig]
        attr_accessor :new_on_demand_instances
      
        # When set in a ComputeResourceConfig, indicates that VM instances should be
        # created from a [reservation](https://cloud.google.com/compute/docs/instances/
        # reservations-overview).
        # Corresponds to the JSON property `newReservedInstances`
        # @return [Google::Apis::HypercomputeclusterV1::NewReservedInstancesConfig]
        attr_accessor :new_reserved_instances
      
        # When set in a ComputeResourceConfig, indicates that [spot VM](https://cloud.
        # google.com/compute/docs/instances/spot) instances should be created.
        # Corresponds to the JSON property `newSpotInstances`
        # @return [Google::Apis::HypercomputeclusterV1::NewSpotInstancesConfig]
        attr_accessor :new_spot_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_flex_start_instances = args[:new_flex_start_instances] if args.key?(:new_flex_start_instances)
          @new_on_demand_instances = args[:new_on_demand_instances] if args.key?(:new_on_demand_instances)
          @new_reserved_instances = args[:new_reserved_instances] if args.key?(:new_reserved_instances)
          @new_spot_instances = args[:new_spot_instances] if args.key?(:new_spot_instances)
        end
      end
      
      # When set in OperationStep, indicates that a new filestore instance should be
      # created.
      class CreateFilestoreInstance
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Filestore instance, in the format `projects/`project`/
        # locations/`location`/instances/`instance``
        # Corresponds to the JSON property `filestore`
        # @return [String]
        attr_accessor :filestore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filestore = args[:filestore] if args.key?(:filestore)
        end
      end
      
      # When set in OperationStep, indicates that a login node should be created.
      class CreateLoginNode
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a new lustre instance should be
      # created.
      class CreateLustreInstance
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Managed Lustre instance, in the format `projects/`
        # project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `lustre`
        # @return [String]
        attr_accessor :lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lustre = args[:lustre] if args.key?(:lustre)
        end
      end
      
      # When set in OperationStep, indicates that a new network should be created.
      class CreateNetwork
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the network to create, in the format `projects/`project`/
        # global/networks/`network``.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # When set in OperationStep, indicates that a nodeset should be created.
      class CreateNodeset
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the nodeset to create
        # Corresponds to the JSON property `nodesets`
        # @return [Array<String>]
        attr_accessor :nodesets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodesets = args[:nodesets] if args.key?(:nodesets)
        end
      end
      
      # When set in OperationStep, indicates that an orchestrator should be created.
      class CreateOrchestrator
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a partition should be created.
      class CreatePartition
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the partition to create
        # Corresponds to the JSON property `partitions`
        # @return [Array<String>]
        attr_accessor :partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitions = args[:partitions] if args.key?(:partitions)
        end
      end
      
      # When set in OperationStep, indicates that a new private service access should
      # be created.
      class CreatePrivateServiceAccess
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a new storage bucket should be
      # created.
      class CreateStorageBucket
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the bucket.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
        end
      end
      
      # When set in OperationStep, indicates that a Filestore instance should be
      # deleted.
      class DeleteFilestoreInstance
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Filestore instance, in the format `projects/`project`/
        # locations/`location`/instances/`instance``
        # Corresponds to the JSON property `filestore`
        # @return [String]
        attr_accessor :filestore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filestore = args[:filestore] if args.key?(:filestore)
        end
      end
      
      # When set in OperationStep, indicates that a login node should be deleted.
      class DeleteLoginNode
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a Lustre instance should be deleted.
      class DeleteLustreInstance
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Managed Lustre instance, in the format `projects/`
        # project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `lustre`
        # @return [String]
        attr_accessor :lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lustre = args[:lustre] if args.key?(:lustre)
        end
      end
      
      # When set in OperationStep, indicates network deletion step with the resource
      # name.
      class DeleteNetwork
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the network to delete, in the format `projects/`project`/
        # global/networks/`network``.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # When set in OperationStep, indicates that a nodeset should be deleted.
      class DeleteNodeset
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the nodeset to delete
        # Corresponds to the JSON property `nodesets`
        # @return [Array<String>]
        attr_accessor :nodesets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodesets = args[:nodesets] if args.key?(:nodesets)
        end
      end
      
      # When set in OperationStep, indicates that an orchestrator should be deleted.
      class DeleteOrchestrator
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a partition should be deleted.
      class DeletePartition
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the partition to delete
        # Corresponds to the JSON property `partitions`
        # @return [Array<String>]
        attr_accessor :partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitions = args[:partitions] if args.key?(:partitions)
        end
      end
      
      # When set in OperationStep, indicates private service access deletion step.
      class DeletePrivateServiceAccess
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that Cloud Storage bucket should be
      # deleted.
      class DeleteStorageBucket
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the bucket.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in a StorageResourceConfig, indicates that an existing [Google Cloud
      # Storage](https://cloud.google.com/storage) bucket should be imported.
      class ExistingBucketConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the Cloud Storage bucket to import.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
        end
      end
      
      # When set in a StorageResourceConfig, indicates that an existing [Filestore](
      # https://cloud.google.com/filestore) instance should be imported.
      class ExistingFilestoreConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the Filestore instance to import, in the format `
        # projects/`project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `filestore`
        # @return [String]
        attr_accessor :filestore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filestore = args[:filestore] if args.key?(:filestore)
        end
      end
      
      # When set in a StorageResourceConfig, indicates that an existing [Managed
      # Lustre](https://cloud.google.com/products/managed-lustre) instance should be
      # imported.
      class ExistingLustreConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the Managed Lustre instance to import, in the
        # format `projects/`project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `lustre`
        # @return [String]
        attr_accessor :lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lustre = args[:lustre] if args.key?(:lustre)
        end
      end
      
      # When set in a NetworkResourceConfig, indicates that an existing network should
      # be imported.
      class ExistingNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the network to import, in the format `projects/`
        # project`/global/networks/`network``.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Required. Immutable. Particular subnetwork to use, in the format `projects/`
        # project`/regions/`region`/subnetworks/`subnetwork``.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Message describing filestore configuration
      class FileShareConfig
        include Google::Apis::Core::Hashable
      
        # Required. Size of the filestore in GB. Must be between 1024 and 102400, and
        # must meet scalability requirements described at https://cloud.google.com/
        # filestore/docs/service-tiers.
        # Corresponds to the JSON property `capacityGb`
        # @return [Fixnum]
        attr_accessor :capacity_gb
      
        # Required. Filestore share location
        # Corresponds to the JSON property `fileShare`
        # @return [String]
        attr_accessor :file_share
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_gb = args[:capacity_gb] if args.key?(:capacity_gb)
          @file_share = args[:file_share] if args.key?(:file_share)
        end
      end
      
      # A reference to a [Filestore](https://cloud.google.com/filestore) instance.
      class FilestoreReference
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Filestore instance, in the format `projects/`project`/
        # locations/`location`/instances/`instance``
        # Corresponds to the JSON property `filestore`
        # @return [String]
        attr_accessor :filestore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filestore = args[:filestore] if args.key?(:filestore)
        end
      end
      
      # Message describing Google Cloud Storage autoclass configuration
      class GcsAutoclassConfig
        include Google::Apis::Core::Hashable
      
        # Required. Enables Auto-class feature.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. Terminal storage class of the autoclass bucket
        # Corresponds to the JSON property `terminalStorageClass`
        # @return [String]
        attr_accessor :terminal_storage_class
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @terminal_storage_class = args[:terminal_storage_class] if args.key?(:terminal_storage_class)
        end
      end
      
      # Message describing Google Cloud Storage hierarchical namespace configuration
      class GcsHierarchicalNamespaceConfig
        include Google::Apis::Core::Hashable
      
        # Required. Enables hierarchical namespace setup for the bucket.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Response message for ListClusters.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # Clusters in the specified location.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::HypercomputeclusterV1::Cluster>]
        attr_accessor :clusters
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is absent, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::HypercomputeclusterV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::HypercomputeclusterV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A reference to a [Managed Lustre](https://cloud.google.com/products/managed-
      # lustre) instance.
      class LustreReference
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Managed Lustre instance, in the format `projects/`
        # project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `lustre`
        # @return [String]
        attr_accessor :lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lustre = args[:lustre] if args.key?(:lustre)
        end
      end
      
      # A reference to a [VPC network](https://cloud.google.com/vpc/docs/vpc) in
      # Google Compute Engine.
      class NetworkReference
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the network, in the format `projects/`project`/global/
        # networks/`network``.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. Name of the particular subnetwork being used by the cluster, in
        # the format `projects/`project`/regions/`region`/subnetworks/`subnetwork``.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # A resource representing a network that connects the various components of a
      # cluster together.
      class NetworkResource
        include Google::Apis::Core::Hashable
      
        # Describes how a network resource should be initialized. Each network resource
        # can either be imported from an existing Google Cloud resource or initialized
        # when the cluster is created.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::HypercomputeclusterV1::NetworkResourceConfig]
        attr_accessor :config
      
        # A reference to a [VPC network](https://cloud.google.com/vpc/docs/vpc) in
        # Google Compute Engine.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::HypercomputeclusterV1::NetworkReference]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Describes how a network resource should be initialized. Each network resource
      # can either be imported from an existing Google Cloud resource or initialized
      # when the cluster is created.
      class NetworkResourceConfig
        include Google::Apis::Core::Hashable
      
        # When set in a NetworkResourceConfig, indicates that an existing network should
        # be imported.
        # Corresponds to the JSON property `existingNetwork`
        # @return [Google::Apis::HypercomputeclusterV1::ExistingNetworkConfig]
        attr_accessor :existing_network
      
        # When set in a NetworkResourceConfig, indicates that a new network should be
        # created.
        # Corresponds to the JSON property `newNetwork`
        # @return [Google::Apis::HypercomputeclusterV1::NewNetworkConfig]
        attr_accessor :new_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @existing_network = args[:existing_network] if args.key?(:existing_network)
          @new_network = args[:new_network] if args.key?(:new_network)
        end
      end
      
      # When set in a StorageResourceConfig, indicates that a new [Google Cloud
      # Storage](https://cloud.google.com/storage) bucket should be created.
      class NewBucketConfig
        include Google::Apis::Core::Hashable
      
        # Message describing Google Cloud Storage autoclass configuration
        # Corresponds to the JSON property `autoclass`
        # @return [Google::Apis::HypercomputeclusterV1::GcsAutoclassConfig]
        attr_accessor :autoclass
      
        # Required. Immutable. Name of the Cloud Storage bucket to create.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Message describing Google Cloud Storage hierarchical namespace configuration
        # Corresponds to the JSON property `hierarchicalNamespace`
        # @return [Google::Apis::HypercomputeclusterV1::GcsHierarchicalNamespaceConfig]
        attr_accessor :hierarchical_namespace
      
        # Optional. Immutable. If set, uses the provided storage class as the bucket's
        # default storage class.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoclass = args[:autoclass] if args.key?(:autoclass)
          @bucket = args[:bucket] if args.key?(:bucket)
          @hierarchical_namespace = args[:hierarchical_namespace] if args.key?(:hierarchical_namespace)
          @storage_class = args[:storage_class] if args.key?(:storage_class)
        end
      end
      
      # When set in a StorageResourceConfig, indicates that a new [Filestore](https://
      # cloud.google.com/filestore) instance should be created.
      class NewFilestoreConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Description of the instance. Maximum of 2048 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. File system shares on the instance. Exactly one file
        # share must be specified.
        # Corresponds to the JSON property `fileShares`
        # @return [Array<Google::Apis::HypercomputeclusterV1::FileShareConfig>]
        attr_accessor :file_shares
      
        # Required. Immutable. Name of the Filestore instance to create, in the format `
        # projects/`project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `filestore`
        # @return [String]
        attr_accessor :filestore
      
        # Optional. Immutable. Access protocol to use for all file shares in the
        # instance. Defaults to NFS V3 if not set.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Required. Immutable. Service tier to use for the instance.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @file_shares = args[:file_shares] if args.key?(:file_shares)
          @filestore = args[:filestore] if args.key?(:filestore)
          @protocol = args[:protocol] if args.key?(:protocol)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # When set in a ComputeResourceConfig, indicates that VM instances should be
      # created using [Flex Start](https://cloud.google.com/compute/docs/instances/
      # provisioning-models).
      class NewFlexStartInstancesConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the Compute Engine [machine type](https://cloud.
        # google.com/compute/docs/machine-resource) to use, e.g. `n2-standard-2`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Required. Immutable. Specifies the time limit for created instances. Instances
        # will be terminated at the end of this duration.
        # Corresponds to the JSON property `maxDuration`
        # @return [String]
        attr_accessor :max_duration
      
        # Required. Immutable. Name of the zone in which VM instances should run, e.g., `
        # us-central1-a`. Must be in the same region as the cluster, and must match the
        # zone of any other resources specified in the cluster.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @max_duration = args[:max_duration] if args.key?(:max_duration)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # When set in a StorageResourceConfig, indicates that a new [Managed Lustre](
      # https://cloud.google.com/products/managed-lustre) instance should be created.
      class NewLustreConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Storage capacity of the instance in gibibytes (GiB).
        # Allowed values are between 18000 and 7632000.
        # Corresponds to the JSON property `capacityGb`
        # @return [Fixnum]
        attr_accessor :capacity_gb
      
        # Optional. Immutable. Description of the Managed Lustre instance. Maximum of
        # 2048 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. Filesystem name for this instance. This name is used by
        # client-side tools, including when mounting the instance. Must be 8 characters
        # or less and can only contain letters and numbers.
        # Corresponds to the JSON property `filesystem`
        # @return [String]
        attr_accessor :filesystem
      
        # Required. Immutable. Name of the Managed Lustre instance to create, in the
        # format `projects/`project`/locations/`location`/instances/`instance``
        # Corresponds to the JSON property `lustre`
        # @return [String]
        attr_accessor :lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_gb = args[:capacity_gb] if args.key?(:capacity_gb)
          @description = args[:description] if args.key?(:description)
          @filesystem = args[:filesystem] if args.key?(:filesystem)
          @lustre = args[:lustre] if args.key?(:lustre)
        end
      end
      
      # When set in a NetworkResourceConfig, indicates that a new network should be
      # created.
      class NewNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Description of the network. Maximum of 2048 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. Name of the network to create, in the format `projects/`
        # project`/global/networks/`network``.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # When set in a ComputeResourceConfig, indicates that on-demand (i.e., using the
      # standard provisioning model) VM instances should be created.
      class NewOnDemandInstancesConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the Compute Engine [machine type](https://cloud.
        # google.com/compute/docs/machine-resource) to use, e.g. `n2-standard-2`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Required. Immutable. Name of the zone in which VM instances should run, e.g., `
        # us-central1-a`. Must be in the same region as the cluster, and must match the
        # zone of any other resources specified in the cluster.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # When set in a ComputeResourceConfig, indicates that VM instances should be
      # created from a [reservation](https://cloud.google.com/compute/docs/instances/
      # reservations-overview).
      class NewReservedInstancesConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Name of the reservation from which VM instances should be
        # created, in the format `projects/`project`/zones/`zone`/reservations/`
        # reservation``.
        # Corresponds to the JSON property `reservation`
        # @return [String]
        attr_accessor :reservation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reservation = args[:reservation] if args.key?(:reservation)
        end
      end
      
      # When set in a ComputeResourceConfig, indicates that [spot VM](https://cloud.
      # google.com/compute/docs/instances/spot) instances should be created.
      class NewSpotInstancesConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Name of the Compute Engine [machine type](https://cloud.
        # google.com/compute/docs/machine-resource) to use, e.g. `n2-standard-2`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. Specifies the termination action of the instance
        # Corresponds to the JSON property `terminationAction`
        # @return [String]
        attr_accessor :termination_action
      
        # Required. Immutable. Name of the zone in which VM instances should run, e.g., `
        # us-central1-a`. Must be in the same region as the cluster, and must match the
        # zone of any other resources specified in the cluster.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @termination_action = args[:termination_action] if args.key?(:termination_action)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::HypercomputeclusterV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Message describing the progress of a cluster mutation long-running operation.
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::HypercomputeclusterV1::OperationProgress]
        attr_accessor :progress
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @progress = args[:progress] if args.key?(:progress)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Message describing the progress of a cluster mutation long-running operation.
      # operation.
      class OperationProgress
        include Google::Apis::Core::Hashable
      
        # Output only. Steps and status of the operation.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::HypercomputeclusterV1::OperationStep>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # Message describing the status of a single step in a cluster mutation long-
      # running operation.
      class OperationStep
        include Google::Apis::Core::Hashable
      
        # When set in OperationStep, indicates that cluster health check should be
        # performed.
        # Corresponds to the JSON property `checkClusterHealth`
        # @return [Google::Apis::HypercomputeclusterV1::CheckClusterHealth]
        attr_accessor :check_cluster_health
      
        # When set in OperationStep, indicates that a new filestore instance should be
        # created.
        # Corresponds to the JSON property `createFilestoreInstance`
        # @return [Google::Apis::HypercomputeclusterV1::CreateFilestoreInstance]
        attr_accessor :create_filestore_instance
      
        # When set in OperationStep, indicates that a login node should be created.
        # Corresponds to the JSON property `createLoginNode`
        # @return [Google::Apis::HypercomputeclusterV1::CreateLoginNode]
        attr_accessor :create_login_node
      
        # When set in OperationStep, indicates that a new lustre instance should be
        # created.
        # Corresponds to the JSON property `createLustreInstance`
        # @return [Google::Apis::HypercomputeclusterV1::CreateLustreInstance]
        attr_accessor :create_lustre_instance
      
        # When set in OperationStep, indicates that a new network should be created.
        # Corresponds to the JSON property `createNetwork`
        # @return [Google::Apis::HypercomputeclusterV1::CreateNetwork]
        attr_accessor :create_network
      
        # When set in OperationStep, indicates that a nodeset should be created.
        # Corresponds to the JSON property `createNodeset`
        # @return [Google::Apis::HypercomputeclusterV1::CreateNodeset]
        attr_accessor :create_nodeset
      
        # When set in OperationStep, indicates that an orchestrator should be created.
        # Corresponds to the JSON property `createOrchestrator`
        # @return [Google::Apis::HypercomputeclusterV1::CreateOrchestrator]
        attr_accessor :create_orchestrator
      
        # When set in OperationStep, indicates that a partition should be created.
        # Corresponds to the JSON property `createPartition`
        # @return [Google::Apis::HypercomputeclusterV1::CreatePartition]
        attr_accessor :create_partition
      
        # When set in OperationStep, indicates that a new private service access should
        # be created.
        # Corresponds to the JSON property `createPrivateServiceAccess`
        # @return [Google::Apis::HypercomputeclusterV1::CreatePrivateServiceAccess]
        attr_accessor :create_private_service_access
      
        # When set in OperationStep, indicates that a new storage bucket should be
        # created.
        # Corresponds to the JSON property `createStorageBucket`
        # @return [Google::Apis::HypercomputeclusterV1::CreateStorageBucket]
        attr_accessor :create_storage_bucket
      
        # When set in OperationStep, indicates that a Filestore instance should be
        # deleted.
        # Corresponds to the JSON property `deleteFilestoreInstance`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteFilestoreInstance]
        attr_accessor :delete_filestore_instance
      
        # When set in OperationStep, indicates that a login node should be deleted.
        # Corresponds to the JSON property `deleteLoginNode`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteLoginNode]
        attr_accessor :delete_login_node
      
        # When set in OperationStep, indicates that a Lustre instance should be deleted.
        # Corresponds to the JSON property `deleteLustreInstance`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteLustreInstance]
        attr_accessor :delete_lustre_instance
      
        # When set in OperationStep, indicates network deletion step with the resource
        # name.
        # Corresponds to the JSON property `deleteNetwork`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteNetwork]
        attr_accessor :delete_network
      
        # When set in OperationStep, indicates that a nodeset should be deleted.
        # Corresponds to the JSON property `deleteNodeset`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteNodeset]
        attr_accessor :delete_nodeset
      
        # When set in OperationStep, indicates that an orchestrator should be deleted.
        # Corresponds to the JSON property `deleteOrchestrator`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteOrchestrator]
        attr_accessor :delete_orchestrator
      
        # When set in OperationStep, indicates that a partition should be deleted.
        # Corresponds to the JSON property `deletePartition`
        # @return [Google::Apis::HypercomputeclusterV1::DeletePartition]
        attr_accessor :delete_partition
      
        # When set in OperationStep, indicates private service access deletion step.
        # Corresponds to the JSON property `deletePrivateServiceAccess`
        # @return [Google::Apis::HypercomputeclusterV1::DeletePrivateServiceAccess]
        attr_accessor :delete_private_service_access
      
        # When set in OperationStep, indicates that Cloud Storage bucket should be
        # deleted.
        # Corresponds to the JSON property `deleteStorageBucket`
        # @return [Google::Apis::HypercomputeclusterV1::DeleteStorageBucket]
        attr_accessor :delete_storage_bucket
      
        # Output only. State of the operation step.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # When set in OperationStep, indicates that a login node should be updated.
        # Corresponds to the JSON property `updateLoginNode`
        # @return [Google::Apis::HypercomputeclusterV1::UpdateLoginNode]
        attr_accessor :update_login_node
      
        # When set in OperationStep, indicates that a nodeset should be updated.
        # Corresponds to the JSON property `updateNodeset`
        # @return [Google::Apis::HypercomputeclusterV1::UpdateNodeset]
        attr_accessor :update_nodeset
      
        # When set in OperationStep, indicates that an orchestrator should be updated.
        # Corresponds to the JSON property `updateOrchestrator`
        # @return [Google::Apis::HypercomputeclusterV1::UpdateOrchestrator]
        attr_accessor :update_orchestrator
      
        # When set in OperationStep, indicates that a partition should be updated.
        # Corresponds to the JSON property `updatePartition`
        # @return [Google::Apis::HypercomputeclusterV1::UpdatePartition]
        attr_accessor :update_partition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_cluster_health = args[:check_cluster_health] if args.key?(:check_cluster_health)
          @create_filestore_instance = args[:create_filestore_instance] if args.key?(:create_filestore_instance)
          @create_login_node = args[:create_login_node] if args.key?(:create_login_node)
          @create_lustre_instance = args[:create_lustre_instance] if args.key?(:create_lustre_instance)
          @create_network = args[:create_network] if args.key?(:create_network)
          @create_nodeset = args[:create_nodeset] if args.key?(:create_nodeset)
          @create_orchestrator = args[:create_orchestrator] if args.key?(:create_orchestrator)
          @create_partition = args[:create_partition] if args.key?(:create_partition)
          @create_private_service_access = args[:create_private_service_access] if args.key?(:create_private_service_access)
          @create_storage_bucket = args[:create_storage_bucket] if args.key?(:create_storage_bucket)
          @delete_filestore_instance = args[:delete_filestore_instance] if args.key?(:delete_filestore_instance)
          @delete_login_node = args[:delete_login_node] if args.key?(:delete_login_node)
          @delete_lustre_instance = args[:delete_lustre_instance] if args.key?(:delete_lustre_instance)
          @delete_network = args[:delete_network] if args.key?(:delete_network)
          @delete_nodeset = args[:delete_nodeset] if args.key?(:delete_nodeset)
          @delete_orchestrator = args[:delete_orchestrator] if args.key?(:delete_orchestrator)
          @delete_partition = args[:delete_partition] if args.key?(:delete_partition)
          @delete_private_service_access = args[:delete_private_service_access] if args.key?(:delete_private_service_access)
          @delete_storage_bucket = args[:delete_storage_bucket] if args.key?(:delete_storage_bucket)
          @state = args[:state] if args.key?(:state)
          @update_login_node = args[:update_login_node] if args.key?(:update_login_node)
          @update_nodeset = args[:update_nodeset] if args.key?(:update_nodeset)
          @update_orchestrator = args[:update_orchestrator] if args.key?(:update_orchestrator)
          @update_partition = args[:update_partition] if args.key?(:update_partition)
        end
      end
      
      # The component responsible for scheduling and running workloads on the cluster
      # as well as providing the user interface for interacting with the cluster at
      # runtime.
      class Orchestrator
        include Google::Apis::Core::Hashable
      
        # When set in Orchestrator, indicates that the cluster should use [Slurm](https:/
        # /slurm.schedmd.com/) as the orchestrator.
        # Corresponds to the JSON property `slurm`
        # @return [Google::Apis::HypercomputeclusterV1::SlurmOrchestrator]
        attr_accessor :slurm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @slurm = args[:slurm] if args.key?(:slurm)
        end
      end
      
      # Configuration for Slurm [login nodes](https://slurm.schedmd.com/
      # quickstart_admin.html#login) in the cluster. Login nodes are Compute Engine VM
      # instances that allow users to access the cluster over SSH.
      class SlurmLoginNodes
        include Google::Apis::Core::Hashable
      
        # A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
        # boot disk for a Compute Engine VM instance.
        # Corresponds to the JSON property `bootDisk`
        # @return [Google::Apis::HypercomputeclusterV1::BootDisk]
        attr_accessor :boot_disk
      
        # Required. Number of login node instances to create.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. Whether [OS Login](https://cloud.google.com/compute/docs/oslogin)
        # should be enabled on login node instances.
        # Corresponds to the JSON property `enableOsLogin`
        # @return [Boolean]
        attr_accessor :enable_os_login
        alias_method :enable_os_login?, :enable_os_login
      
        # Optional. Whether login node instances should be assigned [external IP
        # addresses](https://cloud.google.com/compute/docs/ip-addresses#
        # externaladdresses).
        # Corresponds to the JSON property `enablePublicIps`
        # @return [Boolean]
        attr_accessor :enable_public_ips
        alias_method :enable_public_ips?, :enable_public_ips
      
        # Output only. Information about the login node instances that were created in
        # Compute Engine.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::HypercomputeclusterV1::ComputeInstance>]
        attr_accessor :instances
      
        # Optional. [Labels](https://cloud.google.com/compute/docs/labeling-resources)
        # that should be applied to each login node instance.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the Compute Engine [machine type](https://cloud.google.com/
        # compute/docs/machine-resource) to use for login nodes, e.g. `n2-standard-2`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. [Startup script](https://cloud.google.com/compute/docs/instances/
        # startup-scripts/linux) to be run on each login node instance. Max 256KB. The
        # script must complete within the system-defined default timeout of 5 minutes.
        # For tasks that require more time, consider running them in the background
        # using methods such as `&` or `nohup`.
        # Corresponds to the JSON property `startupScript`
        # @return [String]
        attr_accessor :startup_script
      
        # Optional. How storage resources should be mounted on each login node.
        # Corresponds to the JSON property `storageConfigs`
        # @return [Array<Google::Apis::HypercomputeclusterV1::StorageConfig>]
        attr_accessor :storage_configs
      
        # Required. Name of the zone in which login nodes should run, e.g., `us-central1-
        # a`. Must be in the same region as the cluster, and must match the zone of any
        # other resources specified in the cluster.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_disk = args[:boot_disk] if args.key?(:boot_disk)
          @count = args[:count] if args.key?(:count)
          @enable_os_login = args[:enable_os_login] if args.key?(:enable_os_login)
          @enable_public_ips = args[:enable_public_ips] if args.key?(:enable_public_ips)
          @instances = args[:instances] if args.key?(:instances)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @startup_script = args[:startup_script] if args.key?(:startup_script)
          @storage_configs = args[:storage_configs] if args.key?(:storage_configs)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Configuration for Slurm nodesets in the cluster. Nodesets are groups of
      # compute nodes used by Slurm that are responsible for running workloads
      # submitted to the cluster.
      class SlurmNodeSet
        include Google::Apis::Core::Hashable
      
        # Optional. ID of the compute resource on which this nodeset will run. Must
        # match a key in the cluster's [compute_resources](Cluster.compute_resources).
        # Corresponds to the JSON property `computeId`
        # @return [String]
        attr_accessor :compute_id
      
        # When set in a SlurmNodeSet, indicates that the nodeset should be backed by
        # Compute Engine VM instances.
        # Corresponds to the JSON property `computeInstance`
        # @return [Google::Apis::HypercomputeclusterV1::ComputeInstanceSlurmNodeSet]
        attr_accessor :compute_instance
      
        # Required. Identifier for the nodeset, which allows it to be referenced by
        # partitions. Must conform to [RFC-1034](https://datatracker.ietf.org/doc/html/
        # rfc1034) (lower-case, alphanumeric, and at most 63 characters).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Controls how many additional nodes a cluster can bring online to
        # handle workloads. Set this value to enable dynamic node creation and limit the
        # number of additional nodes the cluster can bring online. Leave empty if you do
        # not want the cluster to create nodes dynamically, and instead rely only on
        # static nodes.
        # Corresponds to the JSON property `maxDynamicNodeCount`
        # @return [Fixnum]
        attr_accessor :max_dynamic_node_count
      
        # Optional. Number of nodes to be statically created for this nodeset. The
        # cluster will attempt to ensure that at least this many nodes exist at all
        # times.
        # Corresponds to the JSON property `staticNodeCount`
        # @return [Fixnum]
        attr_accessor :static_node_count
      
        # Optional. How storage resources should be mounted on each compute node.
        # Corresponds to the JSON property `storageConfigs`
        # @return [Array<Google::Apis::HypercomputeclusterV1::StorageConfig>]
        attr_accessor :storage_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_id = args[:compute_id] if args.key?(:compute_id)
          @compute_instance = args[:compute_instance] if args.key?(:compute_instance)
          @id = args[:id] if args.key?(:id)
          @max_dynamic_node_count = args[:max_dynamic_node_count] if args.key?(:max_dynamic_node_count)
          @static_node_count = args[:static_node_count] if args.key?(:static_node_count)
          @storage_configs = args[:storage_configs] if args.key?(:storage_configs)
        end
      end
      
      # When set in Orchestrator, indicates that the cluster should use [Slurm](https:/
      # /slurm.schedmd.com/) as the orchestrator.
      class SlurmOrchestrator
        include Google::Apis::Core::Hashable
      
        # Optional. Default partition to use for submitted jobs that do not explicitly
        # specify a partition. Required if and only if there is more than one partition,
        # in which case it must match the id of one of the partitions.
        # Corresponds to the JSON property `defaultPartition`
        # @return [String]
        attr_accessor :default_partition
      
        # Optional. Slurm [epilog scripts](https://slurm.schedmd.com/prolog_epilog.html),
        # which will be executed by compute nodes whenever a node finishes running a
        # job. Values must not be empty.
        # Corresponds to the JSON property `epilogBashScripts`
        # @return [Array<String>]
        attr_accessor :epilog_bash_scripts
      
        # Configuration for Slurm [login nodes](https://slurm.schedmd.com/
        # quickstart_admin.html#login) in the cluster. Login nodes are Compute Engine VM
        # instances that allow users to access the cluster over SSH.
        # Corresponds to the JSON property `loginNodes`
        # @return [Google::Apis::HypercomputeclusterV1::SlurmLoginNodes]
        attr_accessor :login_nodes
      
        # Required. Configuration of Slurm nodesets, which define groups of compute
        # resources that can be used by Slurm. At least one compute node is required.
        # Corresponds to the JSON property `nodeSets`
        # @return [Array<Google::Apis::HypercomputeclusterV1::SlurmNodeSet>]
        attr_accessor :node_sets
      
        # Required. Configuration of Slurm partitions, which group one or more nodesets.
        # Acts as a queue against which jobs can be submitted. At least one partition is
        # required.
        # Corresponds to the JSON property `partitions`
        # @return [Array<Google::Apis::HypercomputeclusterV1::SlurmPartition>]
        attr_accessor :partitions
      
        # Optional. Slurm [prolog scripts](https://slurm.schedmd.com/prolog_epilog.html),
        # which will be executed by compute nodes before a node begins running a new
        # job. Values must not be empty.
        # Corresponds to the JSON property `prologBashScripts`
        # @return [Array<String>]
        attr_accessor :prolog_bash_scripts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_partition = args[:default_partition] if args.key?(:default_partition)
          @epilog_bash_scripts = args[:epilog_bash_scripts] if args.key?(:epilog_bash_scripts)
          @login_nodes = args[:login_nodes] if args.key?(:login_nodes)
          @node_sets = args[:node_sets] if args.key?(:node_sets)
          @partitions = args[:partitions] if args.key?(:partitions)
          @prolog_bash_scripts = args[:prolog_bash_scripts] if args.key?(:prolog_bash_scripts)
        end
      end
      
      # Configuration for Slurm partitions in the cluster. Partitions are groups of
      # nodesets, and are how clients specify where their workloads should be run.
      class SlurmPartition
        include Google::Apis::Core::Hashable
      
        # Required. ID of the partition, which is how users will identify it. Must
        # conform to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-
        # case, alphanumeric, and at most 63 characters).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. IDs of the nodesets that make up this partition. Values must match
        # SlurmNodeSet.id.
        # Corresponds to the JSON property `nodeSetIds`
        # @return [Array<String>]
        attr_accessor :node_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @node_set_ids = args[:node_set_ids] if args.key?(:node_set_ids)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Description of how a storage resource should be mounted on a VM instance.
      class StorageConfig
        include Google::Apis::Core::Hashable
      
        # Required. ID of the storage resource to mount, which must match a key in the
        # cluster's [storage_resources](Cluster.storage_resources).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. A directory inside the VM instance's file system where the storage
        # resource should be mounted (e.g., `/mnt/share`).
        # Corresponds to the JSON property `localMount`
        # @return [String]
        attr_accessor :local_mount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @local_mount = args[:local_mount] if args.key?(:local_mount)
        end
      end
      
      # A resource representing a form of persistent storage that is accessible to
      # compute resources in the cluster.
      class StorageResource
        include Google::Apis::Core::Hashable
      
        # A reference to a [Google Cloud Storage](https://cloud.google.com/storage)
        # bucket.
        # Corresponds to the JSON property `bucket`
        # @return [Google::Apis::HypercomputeclusterV1::BucketReference]
        attr_accessor :bucket
      
        # Describes how a storage resource should be initialized. Each storage resource
        # can either be imported from an existing Google Cloud resource or initialized
        # when the cluster is created.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::HypercomputeclusterV1::StorageResourceConfig]
        attr_accessor :config
      
        # A reference to a [Filestore](https://cloud.google.com/filestore) instance.
        # Corresponds to the JSON property `filestore`
        # @return [Google::Apis::HypercomputeclusterV1::FilestoreReference]
        attr_accessor :filestore
      
        # A reference to a [Managed Lustre](https://cloud.google.com/products/managed-
        # lustre) instance.
        # Corresponds to the JSON property `lustre`
        # @return [Google::Apis::HypercomputeclusterV1::LustreReference]
        attr_accessor :lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @config = args[:config] if args.key?(:config)
          @filestore = args[:filestore] if args.key?(:filestore)
          @lustre = args[:lustre] if args.key?(:lustre)
        end
      end
      
      # Describes how a storage resource should be initialized. Each storage resource
      # can either be imported from an existing Google Cloud resource or initialized
      # when the cluster is created.
      class StorageResourceConfig
        include Google::Apis::Core::Hashable
      
        # When set in a StorageResourceConfig, indicates that an existing [Google Cloud
        # Storage](https://cloud.google.com/storage) bucket should be imported.
        # Corresponds to the JSON property `existingBucket`
        # @return [Google::Apis::HypercomputeclusterV1::ExistingBucketConfig]
        attr_accessor :existing_bucket
      
        # When set in a StorageResourceConfig, indicates that an existing [Filestore](
        # https://cloud.google.com/filestore) instance should be imported.
        # Corresponds to the JSON property `existingFilestore`
        # @return [Google::Apis::HypercomputeclusterV1::ExistingFilestoreConfig]
        attr_accessor :existing_filestore
      
        # When set in a StorageResourceConfig, indicates that an existing [Managed
        # Lustre](https://cloud.google.com/products/managed-lustre) instance should be
        # imported.
        # Corresponds to the JSON property `existingLustre`
        # @return [Google::Apis::HypercomputeclusterV1::ExistingLustreConfig]
        attr_accessor :existing_lustre
      
        # When set in a StorageResourceConfig, indicates that a new [Google Cloud
        # Storage](https://cloud.google.com/storage) bucket should be created.
        # Corresponds to the JSON property `newBucket`
        # @return [Google::Apis::HypercomputeclusterV1::NewBucketConfig]
        attr_accessor :new_bucket
      
        # When set in a StorageResourceConfig, indicates that a new [Filestore](https://
        # cloud.google.com/filestore) instance should be created.
        # Corresponds to the JSON property `newFilestore`
        # @return [Google::Apis::HypercomputeclusterV1::NewFilestoreConfig]
        attr_accessor :new_filestore
      
        # When set in a StorageResourceConfig, indicates that a new [Managed Lustre](
        # https://cloud.google.com/products/managed-lustre) instance should be created.
        # Corresponds to the JSON property `newLustre`
        # @return [Google::Apis::HypercomputeclusterV1::NewLustreConfig]
        attr_accessor :new_lustre
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @existing_bucket = args[:existing_bucket] if args.key?(:existing_bucket)
          @existing_filestore = args[:existing_filestore] if args.key?(:existing_filestore)
          @existing_lustre = args[:existing_lustre] if args.key?(:existing_lustre)
          @new_bucket = args[:new_bucket] if args.key?(:new_bucket)
          @new_filestore = args[:new_filestore] if args.key?(:new_filestore)
          @new_lustre = args[:new_lustre] if args.key?(:new_lustre)
        end
      end
      
      # When set in OperationStep, indicates that a login node should be updated.
      class UpdateLoginNode
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a nodeset should be updated.
      class UpdateNodeset
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the nodeset to update
        # Corresponds to the JSON property `nodesets`
        # @return [Array<String>]
        attr_accessor :nodesets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodesets = args[:nodesets] if args.key?(:nodesets)
        end
      end
      
      # When set in OperationStep, indicates that an orchestrator should be updated.
      class UpdateOrchestrator
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When set in OperationStep, indicates that a partition should be updated.
      class UpdatePartition
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the partition to update
        # Corresponds to the JSON property `partitions`
        # @return [Array<String>]
        attr_accessor :partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitions = args[:partitions] if args.key?(:partitions)
        end
      end
    end
  end
end
