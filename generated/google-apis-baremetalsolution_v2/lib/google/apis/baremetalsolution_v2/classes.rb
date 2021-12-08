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
    module BaremetalsolutionV2
      
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A server.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. Create a time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # True if you enable hyperthreading for the server, otherwise false. The default
        # value is false.
        # Corresponds to the JSON property `hyperthreadingEnabled`
        # @return [Boolean]
        attr_accessor :hyperthreading_enabled
        alias_method :hyperthreading_enabled?, :hyperthreading_enabled
      
        # True if the interactive serial console feature is enabled for the instance,
        # false otherwise. The default value is false.
        # Corresponds to the JSON property `interactiveSerialConsoleEnabled`
        # @return [Boolean]
        attr_accessor :interactive_serial_console_enabled
        alias_method :interactive_serial_console_enabled?, :interactive_serial_console_enabled
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # List of LUNs associated with this server.
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Lun>]
        attr_accessor :luns
      
        # The server type. [Available server types](https://cloud.google.com/bare-metal/
        # docs/bms-planning#server_configurations)
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Output only. The resource name of this `Instance`. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. Format: `projects/`project`/locations/`location`/
        # instances/`instance``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of networks associated with this server.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Network>]
        attr_accessor :networks
      
        # The state of the server.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Update a time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hyperthreading_enabled = args[:hyperthreading_enabled] if args.key?(:hyperthreading_enabled)
          @interactive_serial_console_enabled = args[:interactive_serial_console_enabled] if args.key?(:interactive_serial_console_enabled)
          @labels = args[:labels] if args.key?(:labels)
          @luns = args[:luns] if args.key?(:luns)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for the list of servers.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of servers.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Instance>]
        attr_accessor :instances
      
        # A token identifying a page of results from the server.
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
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Location>]
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
      
      # Response message containing the list of storage volume luns.
      class ListLunsResponse
        include Google::Apis::Core::Hashable
      
        # The list of luns.
        # Corresponds to the JSON property `luns`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Lun>]
        attr_accessor :luns
      
        # A token identifying a page of results from the server.
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
          @luns = args[:luns] if args.key?(:luns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message containing the list of networks.
      class ListNetworksResponse
        include Google::Apis::Core::Hashable
      
        # The list of networks.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Network>]
        attr_accessor :networks
      
        # A token identifying a page of results from the server.
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
          @networks = args[:networks] if args.key?(:networks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Array<Google::Apis::BaremetalsolutionV2::Operation>]
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
      
      # Response message containing the list of snapshot schedule policies.
      class ListSnapshotSchedulePoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The snapshot schedule policies registered in this project.
        # Corresponds to the JSON property `snapshotSchedulePolicies`
        # @return [Array<Google::Apis::BaremetalsolutionV2::SnapshotSchedulePolicy>]
        attr_accessor :snapshot_schedule_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshot_schedule_policies = args[:snapshot_schedule_policies] if args.key?(:snapshot_schedule_policies)
        end
      end
      
      # Response message containing the list of storage volume snapshots.
      class ListVolumeSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results from the server.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of storage volumes.
        # Corresponds to the JSON property `volumeSnapshots`
        # @return [Array<Google::Apis::BaremetalsolutionV2::VolumeSnapshot>]
        attr_accessor :volume_snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @volume_snapshots = args[:volume_snapshots] if args.key?(:volume_snapshots)
        end
      end
      
      # Response message containing the list of storage volumes.
      class ListVolumesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results from the server.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of storage volumes.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @volumes = args[:volumes] if args.key?(:volumes)
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
      
      # A storage volume logical unit number (LUN).
      class Lun
        include Google::Apis::Core::Hashable
      
        # Display if this LUN is a boot LUN.
        # Corresponds to the JSON property `bootLun`
        # @return [Boolean]
        attr_accessor :boot_lun
        alias_method :boot_lun?, :boot_lun
      
        # The LUN multiprotocol type ensures the characteristics of the LUN are
        # optimized for each operating system.
        # Corresponds to the JSON property `multiprotocolType`
        # @return [String]
        attr_accessor :multiprotocol_type
      
        # Output only. The name of the LUN.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Display if this LUN can be shared between multiple physical servers.
        # Corresponds to the JSON property `shareable`
        # @return [Boolean]
        attr_accessor :shareable
        alias_method :shareable?, :shareable
      
        # The size of this LUN, in gigabytes.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # The state of this storage volume.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The storage type for this LUN.
        # Corresponds to the JSON property `storageType`
        # @return [String]
        attr_accessor :storage_type
      
        # Display the storage volume for this LUN.
        # Corresponds to the JSON property `storageVolume`
        # @return [String]
        attr_accessor :storage_volume
      
        # The WWID for this LUN.
        # Corresponds to the JSON property `wwid`
        # @return [String]
        attr_accessor :wwid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_lun = args[:boot_lun] if args.key?(:boot_lun)
          @multiprotocol_type = args[:multiprotocol_type] if args.key?(:multiprotocol_type)
          @name = args[:name] if args.key?(:name)
          @shareable = args[:shareable] if args.key?(:shareable)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @state = args[:state] if args.key?(:state)
          @storage_type = args[:storage_type] if args.key?(:storage_type)
          @storage_volume = args[:storage_volume] if args.key?(:storage_volume)
          @wwid = args[:wwid] if args.key?(:wwid)
        end
      end
      
      # A Network.
      class Network
        include Google::Apis::Core::Hashable
      
        # The cidr of the Network.
        # Corresponds to the JSON property `cidr`
        # @return [String]
        attr_accessor :cidr
      
        # IP address configured.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # List of physical interfaces.
        # Corresponds to the JSON property `macAddress`
        # @return [Array<String>]
        attr_accessor :mac_address
      
        # Output only. The resource name of this `Network`. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. Format: `projects/`project`/locations/`location`/
        # networks/`network`` This field will contain the same value as field "network",
        # which will soon be deprecated. Please use this field to reference the name of
        # the network resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The Network state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The type of this network.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The vlan id of the Network.
        # Corresponds to the JSON property `vlanId`
        # @return [String]
        attr_accessor :vlan_id
      
        # A network VRF.
        # Corresponds to the JSON property `vrf`
        # @return [Google::Apis::BaremetalsolutionV2::Vrf]
        attr_accessor :vrf
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr = args[:cidr] if args.key?(:cidr)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @vlan_id = args[:vlan_id] if args.key?(:vlan_id)
          @vrf = args[:vrf] if args.key?(:vrf)
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
        # @return [Google::Apis::BaremetalsolutionV2::Status]
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
      
      # Message requesting to reset a server.
      class ResetInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for restoring a volume snapshot.
      class RestoreVolumeSnapshotRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A snapshot schedule.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # A crontab-like specification that the schedule uses to take snapshots.
        # Corresponds to the JSON property `crontabSpec`
        # @return [String]
        attr_accessor :crontab_spec
      
        # A list of snapshot names created in this schedule.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # The maximum number of snapshots to retain in this schedule.
        # Corresponds to the JSON property `retentionCount`
        # @return [Fixnum]
        attr_accessor :retention_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crontab_spec = args[:crontab_spec] if args.key?(:crontab_spec)
          @prefix = args[:prefix] if args.key?(:prefix)
          @retention_count = args[:retention_count] if args.key?(:retention_count)
        end
      end
      
      # Details about snapshot space reservation and usage on the storage volume.
      class SnapshotReservationDetail
        include Google::Apis::Core::Hashable
      
        # The space on this storage volume reserved for snapshots, shown in GiB.
        # Corresponds to the JSON property `reservedSpaceGib`
        # @return [Fixnum]
        attr_accessor :reserved_space_gib
      
        # The amount, in GiB, of available space in this storage volume's reserved
        # snapshot space.
        # Corresponds to the JSON property `reservedSpaceRemainingGib`
        # @return [Fixnum]
        attr_accessor :reserved_space_remaining_gib
      
        # The percent of snapshot space on this storage volume actually being used by
        # the snapshot copies. This value might be higher than 100% if the snapshot
        # copies have overflowed into the data portion of the storage volume.
        # Corresponds to the JSON property `reservedSpaceUsedPercent`
        # @return [Fixnum]
        attr_accessor :reserved_space_used_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reserved_space_gib = args[:reserved_space_gib] if args.key?(:reserved_space_gib)
          @reserved_space_remaining_gib = args[:reserved_space_remaining_gib] if args.key?(:reserved_space_remaining_gib)
          @reserved_space_used_percent = args[:reserved_space_used_percent] if args.key?(:reserved_space_used_percent)
        end
      end
      
      # A snapshot schedule policy.
      class SnapshotSchedulePolicy
        include Google::Apis::Core::Hashable
      
        # The description of the snapshot schedule policy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of the snapshot schedule policy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The snapshot schedules contained in this policy. You can specify a maxiumum of
        # 5 schedules.
        # Corresponds to the JSON property `schedules`
        # @return [Array<Google::Apis::BaremetalsolutionV2::Schedule>]
        attr_accessor :schedules
      
        # The names of the volumes associated with this policy.
        # Corresponds to the JSON property `volumes`
        # @return [Array<String>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @schedules = args[:schedules] if args.key?(:schedules)
          @volumes = args[:volumes] if args.key?(:volumes)
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
      
      # A network VRF.
      class Vrf
        include Google::Apis::Core::Hashable
      
        # The autonomous system number of the VRF.
        # Corresponds to the JSON property `autonomousSystemNumber`
        # @return [String]
        attr_accessor :autonomous_system_number
      
        # The Juniper alias of the VRF.
        # Corresponds to the JSON property `juniperAlias`
        # @return [String]
        attr_accessor :juniper_alias
      
        # The name of the VRF.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The route target of the VRF.
        # Corresponds to the JSON property `routeTarget`
        # @return [Fixnum]
        attr_accessor :route_target
      
        # The possible state of VRF.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autonomous_system_number = args[:autonomous_system_number] if args.key?(:autonomous_system_number)
          @juniper_alias = args[:juniper_alias] if args.key?(:juniper_alias)
          @name = args[:name] if args.key?(:name)
          @route_target = args[:route_target] if args.key?(:route_target)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A storage volume.
      class Volume
        include Google::Apis::Core::Hashable
      
        # The size, in GiB, that this storage volume has expanded as a result of an auto
        # grow policy. In the absence of auto-grow, the value is 0.
        # Corresponds to the JSON property `autoGrownSizeGib`
        # @return [Fixnum]
        attr_accessor :auto_grown_size_gib
      
        # The current size of this storage volume, in GiB, including space reserved for
        # snapshots. This size might be different than the requested size if the storage
        # volume has been configured with auto grow or auto shrink.
        # Corresponds to the JSON property `currentSizeGib`
        # @return [Fixnum]
        attr_accessor :current_size_gib
      
        # Output only. The resource name of this `Volume`. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. Format: `projects/`project`/locations/`location`/volumes/`
        # volume``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The space remaining in the storage volume for new LUNs, in GiB, excluding
        # space reserved for snapshots.
        # Corresponds to the JSON property `remainingSpaceGib`
        # @return [Fixnum]
        attr_accessor :remaining_space_gib
      
        # The requested size of this storage volume, in GiB.
        # Corresponds to the JSON property `requestedSizeGib`
        # @return [Fixnum]
        attr_accessor :requested_size_gib
      
        # The behavior to use when snapshot reserved space is full.
        # Corresponds to the JSON property `snapshotAutoDeleteBehavior`
        # @return [String]
        attr_accessor :snapshot_auto_delete_behavior
      
        # Details about snapshot space reservation and usage on the storage volume.
        # Corresponds to the JSON property `snapshotReservationDetail`
        # @return [Google::Apis::BaremetalsolutionV2::SnapshotReservationDetail]
        attr_accessor :snapshot_reservation_detail
      
        # The name of the snapshot schedule policy in use for this volume, if any.
        # Corresponds to the JSON property `snapshotSchedulePolicy`
        # @return [String]
        attr_accessor :snapshot_schedule_policy
      
        # The state of this storage volume.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The storage type for this volume.
        # Corresponds to the JSON property `storageType`
        # @return [String]
        attr_accessor :storage_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_grown_size_gib = args[:auto_grown_size_gib] if args.key?(:auto_grown_size_gib)
          @current_size_gib = args[:current_size_gib] if args.key?(:current_size_gib)
          @name = args[:name] if args.key?(:name)
          @remaining_space_gib = args[:remaining_space_gib] if args.key?(:remaining_space_gib)
          @requested_size_gib = args[:requested_size_gib] if args.key?(:requested_size_gib)
          @snapshot_auto_delete_behavior = args[:snapshot_auto_delete_behavior] if args.key?(:snapshot_auto_delete_behavior)
          @snapshot_reservation_detail = args[:snapshot_reservation_detail] if args.key?(:snapshot_reservation_detail)
          @snapshot_schedule_policy = args[:snapshot_schedule_policy] if args.key?(:snapshot_schedule_policy)
          @state = args[:state] if args.key?(:state)
          @storage_type = args[:storage_type] if args.key?(:storage_type)
        end
      end
      
      # Snapshot registered for a given storage volume.
      class VolumeSnapshot
        include Google::Apis::Core::Hashable
      
        # Optional. The creation time of the storage volume snapshot.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the storage volume snapshot.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of the storage volume snapshot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The size of the storage volume snapshot, in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # The storage volume this snapshot belongs to.
        # Corresponds to the JSON property `storageVolume`
        # @return [String]
        attr_accessor :storage_volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @storage_volume = args[:storage_volume] if args.key?(:storage_volume)
        end
      end
    end
  end
end
