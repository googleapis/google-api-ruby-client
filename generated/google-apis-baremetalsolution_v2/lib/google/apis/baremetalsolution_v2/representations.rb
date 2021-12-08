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
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSnapshotSchedulePoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVolumeSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVolumesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreVolumeSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotReservationDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotSchedulePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vrf
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeSnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :hyperthreading_enabled, as: 'hyperthreadingEnabled'
          property :interactive_serial_console_enabled, as: 'interactiveSerialConsoleEnabled'
          hash :labels, as: 'labels'
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV2::Lun, decorator: Google::Apis::BaremetalsolutionV2::Lun::Representation
      
          property :machine_type, as: 'machineType'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV2::Network, decorator: Google::Apis::BaremetalsolutionV2::Network::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::BaremetalsolutionV2::Instance, decorator: Google::Apis::BaremetalsolutionV2::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BaremetalsolutionV2::Location, decorator: Google::Apis::BaremetalsolutionV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV2::Lun, decorator: Google::Apis::BaremetalsolutionV2::Lun::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListNetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV2::Network, decorator: Google::Apis::BaremetalsolutionV2::Network::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BaremetalsolutionV2::Operation, decorator: Google::Apis::BaremetalsolutionV2::Operation::Representation
      
        end
      end
      
      class ListSnapshotSchedulePoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshot_schedule_policies, as: 'snapshotSchedulePolicies', class: Google::Apis::BaremetalsolutionV2::SnapshotSchedulePolicy, decorator: Google::Apis::BaremetalsolutionV2::SnapshotSchedulePolicy::Representation
      
        end
      end
      
      class ListVolumeSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :volume_snapshots, as: 'volumeSnapshots', class: Google::Apis::BaremetalsolutionV2::VolumeSnapshot, decorator: Google::Apis::BaremetalsolutionV2::VolumeSnapshot::Representation
      
        end
      end
      
      class ListVolumesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :volumes, as: 'volumes', class: Google::Apis::BaremetalsolutionV2::Volume, decorator: Google::Apis::BaremetalsolutionV2::Volume::Representation
      
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
      
      class Lun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_lun, as: 'bootLun'
          property :multiprotocol_type, as: 'multiprotocolType'
          property :name, as: 'name'
          property :shareable, as: 'shareable'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :state, as: 'state'
          property :storage_type, as: 'storageType'
          property :storage_volume, as: 'storageVolume'
          property :wwid, as: 'wwid'
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr, as: 'cidr'
          property :ip_address, as: 'ipAddress'
          collection :mac_address, as: 'macAddress'
          property :name, as: 'name'
          property :network, as: 'network'
          property :state, as: 'state'
          property :type, as: 'type'
          property :vlan_id, as: 'vlanId'
          property :vrf, as: 'vrf', class: Google::Apis::BaremetalsolutionV2::Vrf, decorator: Google::Apis::BaremetalsolutionV2::Vrf::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BaremetalsolutionV2::Status, decorator: Google::Apis::BaremetalsolutionV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class ResetInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestoreVolumeSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crontab_spec, as: 'crontabSpec'
          property :prefix, as: 'prefix'
          property :retention_count, as: 'retentionCount'
        end
      end
      
      class SnapshotReservationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reserved_space_gib, :numeric_string => true, as: 'reservedSpaceGib'
          property :reserved_space_remaining_gib, :numeric_string => true, as: 'reservedSpaceRemainingGib'
          property :reserved_space_used_percent, as: 'reservedSpaceUsedPercent'
        end
      end
      
      class SnapshotSchedulePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          collection :schedules, as: 'schedules', class: Google::Apis::BaremetalsolutionV2::Schedule, decorator: Google::Apis::BaremetalsolutionV2::Schedule::Representation
      
          collection :volumes, as: 'volumes'
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
      
      class Vrf
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autonomous_system_number, as: 'autonomousSystemNumber'
          property :juniper_alias, as: 'juniperAlias'
          property :name, as: 'name'
          property :route_target, :numeric_string => true, as: 'routeTarget'
          property :state, as: 'state'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_grown_size_gib, :numeric_string => true, as: 'autoGrownSizeGib'
          property :current_size_gib, :numeric_string => true, as: 'currentSizeGib'
          property :name, as: 'name'
          property :remaining_space_gib, :numeric_string => true, as: 'remainingSpaceGib'
          property :requested_size_gib, :numeric_string => true, as: 'requestedSizeGib'
          property :snapshot_auto_delete_behavior, as: 'snapshotAutoDeleteBehavior'
          property :snapshot_reservation_detail, as: 'snapshotReservationDetail', class: Google::Apis::BaremetalsolutionV2::SnapshotReservationDetail, decorator: Google::Apis::BaremetalsolutionV2::SnapshotReservationDetail::Representation
      
          property :snapshot_schedule_policy, as: 'snapshotSchedulePolicy'
          property :state, as: 'state'
          property :storage_type, as: 'storageType'
        end
      end
      
      class VolumeSnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :storage_volume, as: 'storageVolume'
        end
      end
    end
  end
end
