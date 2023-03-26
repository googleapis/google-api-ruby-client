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
    module TpuV2alpha1
      
      # A TPU accelerator configuration.
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # Required. Topology of TPU in chips.
        # Corresponds to the JSON property `topology`
        # @return [String]
        attr_accessor :topology
      
        # Required. Type of TPU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topology = args[:topology] if args.key?(:topology)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A accelerator type that a Node can be configured with.
      class AcceleratorType
        include Google::Apis::Core::Hashable
      
        # The accelerator config.
        # Corresponds to the JSON property `acceleratorConfigs`
        # @return [Array<Google::Apis::TpuV2alpha1::AcceleratorConfig>]
        attr_accessor :accelerator_configs
      
        # The resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The accelerator type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_configs = args[:accelerator_configs] if args.key?(:accelerator_configs)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Further data for the accepted state.
      class AcceptedData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An access config attached to the TPU worker.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # Output only. An external IP address associated with the TPU worker.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
        end
      end
      
      # Further data for the active state.
      class ActiveData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A node-attached disk resource. Next ID: 8;
      class AttachedDisk
        include Google::Apis::Core::Hashable
      
        # The mode in which to attach this disk. If not specified, the default is
        # READ_WRITE mode. Only applicable to data_disks.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Specifies the full path to an existing disk. For example: "projects/my-project/
        # zones/us-central1-c/disks/my-disk".
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @source_disk = args[:source_disk] if args.key?(:source_disk)
        end
      end
      
      # BestEffort tier definition.
      class BestEffort
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Further data for the creating state.
      class CreatingData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Further data for the deleting state.
      class DeletingData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Further data for the failed state.
      class FailedData
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::TpuV2alpha1::Status]
        attr_accessor :error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
        end
      end
      
      # Request for GenerateServiceIdentity.
      class GenerateServiceIdentityRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for GenerateServiceIdentity.
      class GenerateServiceIdentityResponse
        include Google::Apis::Core::Hashable
      
        # The per-product per-project service identity for Cloud TPU service.
        # Corresponds to the JSON property `identity`
        # @return [Google::Apis::TpuV2alpha1::ServiceIdentity]
        attr_accessor :identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity = args[:identity] if args.key?(:identity)
        end
      end
      
      # Request for GetGuestAttributes.
      class GetGuestAttributesRequest
        include Google::Apis::Core::Hashable
      
        # The guest attributes path to be queried.
        # Corresponds to the JSON property `queryPath`
        # @return [String]
        attr_accessor :query_path
      
        # The 0-based worker ID. If it is empty, all workers' GuestAttributes will be
        # returned.
        # Corresponds to the JSON property `workerIds`
        # @return [Array<String>]
        attr_accessor :worker_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_path = args[:query_path] if args.key?(:query_path)
          @worker_ids = args[:worker_ids] if args.key?(:worker_ids)
        end
      end
      
      # Response for GetGuestAttributes.
      class GetGuestAttributesResponse
        include Google::Apis::Core::Hashable
      
        # The guest attributes for the TPU workers.
        # Corresponds to the JSON property `guestAttributes`
        # @return [Array<Google::Apis::TpuV2alpha1::GuestAttributes>]
        attr_accessor :guest_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guest_attributes = args[:guest_attributes] if args.key?(:guest_attributes)
        end
      end
      
      # Guaranteed tier definition.
      class Guaranteed
        include Google::Apis::Core::Hashable
      
        # Optional. Defines the minimum duration of the guarantee. If specified, the
        # requested resources will only be provisioned if they can be allocated for at
        # least the given duration.
        # Corresponds to the JSON property `minDuration`
        # @return [String]
        attr_accessor :min_duration
      
        # Optional. Specifies the request should be scheduled on reserved capacity.
        # Corresponds to the JSON property `reserved`
        # @return [Boolean]
        attr_accessor :reserved
        alias_method :reserved?, :reserved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_duration = args[:min_duration] if args.key?(:min_duration)
          @reserved = args[:reserved] if args.key?(:reserved)
        end
      end
      
      # A guest attributes.
      class GuestAttributes
        include Google::Apis::Core::Hashable
      
        # The path to be queried. This can be the default namespace ('/') or a nested
        # namespace ('/\/') or a specified key ('/\/\')
        # Corresponds to the JSON property `queryPath`
        # @return [String]
        attr_accessor :query_path
      
        # Array of guest attribute namespace/key/value tuples.
        # Corresponds to the JSON property `queryValue`
        # @return [Google::Apis::TpuV2alpha1::GuestAttributesValue]
        attr_accessor :query_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_path = args[:query_path] if args.key?(:query_path)
          @query_value = args[:query_value] if args.key?(:query_value)
        end
      end
      
      # A guest attributes namespace/key/value entry.
      class GuestAttributesEntry
        include Google::Apis::Core::Hashable
      
        # Key for the guest attribute entry.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Namespace for the guest attribute entry.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        # Value for the guest attribute entry.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @namespace = args[:namespace] if args.key?(:namespace)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Array of guest attribute namespace/key/value tuples.
      class GuestAttributesValue
        include Google::Apis::Core::Hashable
      
        # The list of guest attributes entries.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::TpuV2alpha1::GuestAttributesEntry>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Response for ListAcceleratorTypes.
      class ListAcceleratorTypesResponse
        include Google::Apis::Core::Hashable
      
        # The listed nodes.
        # Corresponds to the JSON property `acceleratorTypes`
        # @return [Array<Google::Apis::TpuV2alpha1::AcceleratorType>]
        attr_accessor :accelerator_types
      
        # The next page token or empty if none.
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
          @accelerator_types = args[:accelerator_types] if args.key?(:accelerator_types)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::TpuV2alpha1::Location>]
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
      
      # Response for ListNodes.
      class ListNodesResponse
        include Google::Apis::Core::Hashable
      
        # The next page token or empty if none.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The listed nodes.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::TpuV2alpha1::Node>]
        attr_accessor :nodes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @nodes = args[:nodes] if args.key?(:nodes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Array<Google::Apis::TpuV2alpha1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Response for ListQueuedResources.
      class ListQueuedResourcesResponse
        include Google::Apis::Core::Hashable
      
        # The next page token or empty if none.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The listed queued resources.
        # Corresponds to the JSON property `queuedResources`
        # @return [Array<Google::Apis::TpuV2alpha1::QueuedResource>]
        attr_accessor :queued_resources
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @queued_resources = args[:queued_resources] if args.key?(:queued_resources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListRuntimeVersions.
      class ListRuntimeVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The next page token or empty if none.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The listed nodes.
        # Corresponds to the JSON property `runtimeVersions`
        # @return [Array<Google::Apis::TpuV2alpha1::RuntimeVersion>]
        attr_accessor :runtime_versions
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtime_versions = args[:runtime_versions] if args.key?(:runtime_versions)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
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
      
      # Network related configurations.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Allows the TPU node to send and receive packets with non-matching destination
        # or source IPs. This is required if you plan to use the TPU workers to forward
        # routes.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # Indicates that external IP addresses would be associated with the TPU workers.
        # If set to false, the specified subnetwork or network should have Private
        # Google Access enabled.
        # Corresponds to the JSON property `enableExternalIps`
        # @return [Boolean]
        attr_accessor :enable_external_ips
        alias_method :enable_external_ips?, :enable_external_ips
      
        # The name of the network for the TPU node. It must be a preexisting Google
        # Compute Engine network. If none is provided, "default" will be used.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The name of the subnetwork for the TPU node. It must be a preexisting Google
        # Compute Engine subnetwork. If none is provided, "default" will be used.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @enable_external_ips = args[:enable_external_ips] if args.key?(:enable_external_ips)
          @network = args[:network] if args.key?(:network)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # A network endpoint over which a TPU worker can be reached.
      class NetworkEndpoint
        include Google::Apis::Core::Hashable
      
        # An access config attached to the TPU worker.
        # Corresponds to the JSON property `accessConfig`
        # @return [Google::Apis::TpuV2alpha1::AccessConfig]
        attr_accessor :access_config
      
        # The internal IP address of this network endpoint.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The port of this network endpoint.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_config = args[:access_config] if args.key?(:access_config)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # A TPU instance.
      class Node
        include Google::Apis::Core::Hashable
      
        # A TPU accelerator configuration.
        # Corresponds to the JSON property `acceleratorConfig`
        # @return [Google::Apis::TpuV2alpha1::AcceleratorConfig]
        attr_accessor :accelerator_config
      
        # The type of hardware accelerators associated with this node.
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        # Output only. The API version that created this Node.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The CIDR block that the TPU node will use when selecting an IP address. This
        # CIDR block must be a /29 block; the Compute Engine networks API forbids a
        # smaller block, and using a larger block would be wasteful (a node can only
        # consume one IP address). Errors will occur if the CIDR block has already been
        # used for a currently existing TPU node, the CIDR block conflicts with any
        # subnetworks in the user's provided network, or the provided network is peered
        # with another network that is using that CIDR block.
        # Corresponds to the JSON property `cidrBlock`
        # @return [String]
        attr_accessor :cidr_block
      
        # Output only. The time when the node was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The additional data disks for the Node.
        # Corresponds to the JSON property `dataDisks`
        # @return [Array<Google::Apis::TpuV2alpha1::AttachedDisk>]
        attr_accessor :data_disks
      
        # The user-supplied description of the TPU. Maximum of 512 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The health status of the TPU node.
        # Corresponds to the JSON property `health`
        # @return [String]
        attr_accessor :health
      
        # Output only. If this field is populated, it contains a description of why the
        # TPU Node is unhealthy.
        # Corresponds to the JSON property `healthDescription`
        # @return [String]
        attr_accessor :health_description
      
        # Output only. The unique identifier for the TPU Node.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Resource labels to represent user-provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-
        # script
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Output only. Immutable. The name of the TPU.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network related configurations.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::TpuV2alpha1::NetworkConfig]
        attr_accessor :network_config
      
        # Output only. The network endpoints where TPU workers can be accessed and sent
        # work. It is recommended that runtime clients of the node reach out to the 0th
        # entry in this map first.
        # Corresponds to the JSON property `networkEndpoints`
        # @return [Array<Google::Apis::TpuV2alpha1::NetworkEndpoint>]
        attr_accessor :network_endpoints
      
        # Output only. The qualified name of the QueuedResource that requested this Node.
        # Corresponds to the JSON property `queuedResource`
        # @return [String]
        attr_accessor :queued_resource
      
        # Required. The runtime version running in the Node.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        # Sets the scheduling options for this node.
        # Corresponds to the JSON property `schedulingConfig`
        # @return [Google::Apis::TpuV2alpha1::SchedulingConfig]
        attr_accessor :scheduling_config
      
        # A service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::TpuV2alpha1::ServiceAccount]
        attr_accessor :service_account
      
        # A set of Shielded Instance options.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::TpuV2alpha1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Output only. The current state for the TPU Node.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Symptoms that have occurred to the TPU Node.
        # Corresponds to the JSON property `symptoms`
        # @return [Array<Google::Apis::TpuV2alpha1::Symptom>]
        attr_accessor :symptoms
      
        # Tags to apply to the TPU Node. Tags are used to identify valid sources or
        # targets for network firewalls.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_config = args[:accelerator_config] if args.key?(:accelerator_config)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cidr_block = args[:cidr_block] if args.key?(:cidr_block)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_disks = args[:data_disks] if args.key?(:data_disks)
          @description = args[:description] if args.key?(:description)
          @health = args[:health] if args.key?(:health)
          @health_description = args[:health_description] if args.key?(:health_description)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @network_endpoints = args[:network_endpoints] if args.key?(:network_endpoints)
          @queued_resource = args[:queued_resource] if args.key?(:queued_resource)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
          @scheduling_config = args[:scheduling_config] if args.key?(:scheduling_config)
          @service_account = args[:service_account] if args.key?(:service_account)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @state = args[:state] if args.key?(:state)
          @symptoms = args[:symptoms] if args.key?(:symptoms)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Details of the TPU node(s) being requested. Users can request either a single
      # node or multiple nodes. NodeSpec provides the specification for node(s) to be
      # created.
      class NodeSpec
        include Google::Apis::Core::Hashable
      
        # A TPU instance.
        # Corresponds to the JSON property `node`
        # @return [Google::Apis::TpuV2alpha1::Node]
        attr_accessor :node
      
        # The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex
        # format. This is only specified when requesting a single node. In case of multi-
        # node requests, multi_node_params must be populated instead. It's an error to
        # specify both node_id and multi_node_params.
        # Corresponds to the JSON property `nodeId`
        # @return [String]
        attr_accessor :node_id
      
        # Required. The parent resource name.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node = args[:node] if args.key?(:node)
          @node_id = args[:node_id] if args.key?(:node_id)
          @parent = args[:parent] if args.key?(:parent)
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
        # @return [Google::Apis::TpuV2alpha1::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # Metadata describing an Operation
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Specifies if cancellation was requested for the operation.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Target of the operation - for example projects/project-1/connectivityTests/
        # test-1
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Further data for the provisioning state.
      class ProvisioningData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A QueuedResource represents a request for resources that will be placed in a
      # queue and fulfilled when the necessary resources are available.
      class QueuedResource
        include Google::Apis::Core::Hashable
      
        # BestEffort tier definition.
        # Corresponds to the JSON property `bestEffort`
        # @return [Google::Apis::TpuV2alpha1::BestEffort]
        attr_accessor :best_effort
      
        # Guaranteed tier definition.
        # Corresponds to the JSON property `guaranteed`
        # @return [Google::Apis::TpuV2alpha1::Guaranteed]
        attr_accessor :guaranteed
      
        # Output only. Immutable. The name of the QueuedResource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines the policy of the QueuedRequest.
        # Corresponds to the JSON property `queueingPolicy`
        # @return [Google::Apis::TpuV2alpha1::QueueingPolicy]
        attr_accessor :queueing_policy
      
        # QueuedResourceState defines the details of the QueuedResource request.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::TpuV2alpha1::QueuedResourceState]
        attr_accessor :state
      
        # Details of the TPU resource(s) being requested.
        # Corresponds to the JSON property `tpu`
        # @return [Google::Apis::TpuV2alpha1::Tpu]
        attr_accessor :tpu
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_effort = args[:best_effort] if args.key?(:best_effort)
          @guaranteed = args[:guaranteed] if args.key?(:guaranteed)
          @name = args[:name] if args.key?(:name)
          @queueing_policy = args[:queueing_policy] if args.key?(:queueing_policy)
          @state = args[:state] if args.key?(:state)
          @tpu = args[:tpu] if args.key?(:tpu)
        end
      end
      
      # QueuedResourceState defines the details of the QueuedResource request.
      class QueuedResourceState
        include Google::Apis::Core::Hashable
      
        # Further data for the accepted state.
        # Corresponds to the JSON property `acceptedData`
        # @return [Google::Apis::TpuV2alpha1::AcceptedData]
        attr_accessor :accepted_data
      
        # Further data for the active state.
        # Corresponds to the JSON property `activeData`
        # @return [Google::Apis::TpuV2alpha1::ActiveData]
        attr_accessor :active_data
      
        # Further data for the creating state.
        # Corresponds to the JSON property `creatingData`
        # @return [Google::Apis::TpuV2alpha1::CreatingData]
        attr_accessor :creating_data
      
        # Further data for the deleting state.
        # Corresponds to the JSON property `deletingData`
        # @return [Google::Apis::TpuV2alpha1::DeletingData]
        attr_accessor :deleting_data
      
        # Further data for the failed state.
        # Corresponds to the JSON property `failedData`
        # @return [Google::Apis::TpuV2alpha1::FailedData]
        attr_accessor :failed_data
      
        # Further data for the provisioning state.
        # Corresponds to the JSON property `provisioningData`
        # @return [Google::Apis::TpuV2alpha1::ProvisioningData]
        attr_accessor :provisioning_data
      
        # State of the QueuedResource request.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Further data for the suspended state.
        # Corresponds to the JSON property `suspendedData`
        # @return [Google::Apis::TpuV2alpha1::SuspendedData]
        attr_accessor :suspended_data
      
        # Further data for the suspending state.
        # Corresponds to the JSON property `suspendingData`
        # @return [Google::Apis::TpuV2alpha1::SuspendingData]
        attr_accessor :suspending_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_data = args[:accepted_data] if args.key?(:accepted_data)
          @active_data = args[:active_data] if args.key?(:active_data)
          @creating_data = args[:creating_data] if args.key?(:creating_data)
          @deleting_data = args[:deleting_data] if args.key?(:deleting_data)
          @failed_data = args[:failed_data] if args.key?(:failed_data)
          @provisioning_data = args[:provisioning_data] if args.key?(:provisioning_data)
          @state = args[:state] if args.key?(:state)
          @suspended_data = args[:suspended_data] if args.key?(:suspended_data)
          @suspending_data = args[:suspending_data] if args.key?(:suspending_data)
        end
      end
      
      # Defines the policy of the QueuedRequest.
      class QueueingPolicy
        include Google::Apis::Core::Hashable
      
        # A relative time after which resources may be created.
        # Corresponds to the JSON property `validAfterDuration`
        # @return [String]
        attr_accessor :valid_after_duration
      
        # An absolute time at which resources may be created.
        # Corresponds to the JSON property `validAfterTime`
        # @return [String]
        attr_accessor :valid_after_time
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `validInterval`
        # @return [Google::Apis::TpuV2alpha1::Interval]
        attr_accessor :valid_interval
      
        # A relative time after which resources should not be created. If the request
        # cannot be fulfilled by this time the request will be failed.
        # Corresponds to the JSON property `validUntilDuration`
        # @return [String]
        attr_accessor :valid_until_duration
      
        # An absolute time after which resources should not be created. If the request
        # cannot be fulfilled by this time the request will be failed.
        # Corresponds to the JSON property `validUntilTime`
        # @return [String]
        attr_accessor :valid_until_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @valid_after_duration = args[:valid_after_duration] if args.key?(:valid_after_duration)
          @valid_after_time = args[:valid_after_time] if args.key?(:valid_after_time)
          @valid_interval = args[:valid_interval] if args.key?(:valid_interval)
          @valid_until_duration = args[:valid_until_duration] if args.key?(:valid_until_duration)
          @valid_until_time = args[:valid_until_time] if args.key?(:valid_until_time)
        end
      end
      
      # Request for ResetQueuedResource.
      class ResetQueuedResourceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A runtime version that a Node can be configured with.
      class RuntimeVersion
        include Google::Apis::Core::Hashable
      
        # The resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The runtime version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Sets the scheduling options for this node.
      class SchedulingConfig
        include Google::Apis::Core::Hashable
      
        # Defines whether the node is preemptible.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        # Whether the node is created under a reservation.
        # Corresponds to the JSON property `reserved`
        # @return [Boolean]
        attr_accessor :reserved
        alias_method :reserved?, :reserved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
          @reserved = args[:reserved] if args.key?(:reserved)
        end
      end
      
      # A service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account. If empty, default Compute service
        # account will be used.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The list of scopes to be made available for this service account. If empty,
        # access to all Cloud APIs will be allowed.
        # Corresponds to the JSON property `scope`
        # @return [Array<String>]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # The per-product per-project service identity for Cloud TPU service.
      class ServiceIdentity
        include Google::Apis::Core::Hashable
      
        # The email address of the service identity.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # A set of Shielded Instance options.
      class ShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Defines whether the instance has Secure Boot enabled.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_secure_boot = args[:enable_secure_boot] if args.key?(:enable_secure_boot)
        end
      end
      
      # Request for SimulateMaintenanceEvent.
      class SimulateMaintenanceEventRequest
        include Google::Apis::Core::Hashable
      
        # The 0-based worker ID. If it is empty, worker ID 0 will be selected for
        # maintenance event simulation. A maintenance event will only be fired on the
        # first specified worker ID. Future implementations may support firing on
        # multiple workers.
        # Corresponds to the JSON property `workerIds`
        # @return [Array<String>]
        attr_accessor :worker_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @worker_ids = args[:worker_ids] if args.key?(:worker_ids)
        end
      end
      
      # Request for StartNode.
      class StartNodeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request for StopNode.
      class StopNodeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Further data for the suspended state.
      class SuspendedData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Further data for the suspending state.
      class SuspendingData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Symptom instance.
      class Symptom
        include Google::Apis::Core::Hashable
      
        # Timestamp when the Symptom is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Detailed information of the current Symptom.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Type of the Symptom.
        # Corresponds to the JSON property `symptomType`
        # @return [String]
        attr_accessor :symptom_type
      
        # A string used to uniquely distinguish a worker within a TPU node.
        # Corresponds to the JSON property `workerId`
        # @return [String]
        attr_accessor :worker_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @details = args[:details] if args.key?(:details)
          @symptom_type = args[:symptom_type] if args.key?(:symptom_type)
          @worker_id = args[:worker_id] if args.key?(:worker_id)
        end
      end
      
      # Details of the TPU resource(s) being requested.
      class Tpu
        include Google::Apis::Core::Hashable
      
        # The TPU node(s) being requested.
        # Corresponds to the JSON property `nodeSpec`
        # @return [Array<Google::Apis::TpuV2alpha1::NodeSpec>]
        attr_accessor :node_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_spec = args[:node_spec] if args.key?(:node_spec)
        end
      end
    end
  end
end
