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
    module BaremetalsolutionV1alpha1
      
      class DisableInteractiveSerialConsoleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableInteractiveSerialConsoleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableInteractiveSerialConsoleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableInteractiveSerialConsoleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProvisioningQuotasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSshKeysResponse
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
      
      class Lun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LunRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProvisioningConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProvisioningQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetInstanceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreVolumeSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SshKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SerialPortOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetVolumeSnapshotSchedulePolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetVolumeSnapshotSchedulePolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotSchedulePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmitProvisioningConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VlanAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeSnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableInteractiveSerialConsoleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisableInteractiveSerialConsoleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableInteractiveSerialConsoleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableInteractiveSerialConsoleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hyperthreading_enabled, as: 'hyperthreadingEnabled'
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV1alpha1::Lun, decorator: Google::Apis::BaremetalsolutionV1alpha1::Lun::Representation
      
          property :name, as: 'name'
          property :scheduled_power_reset_time, as: 'scheduledPowerResetTime'
          property :ssh_enabled, as: 'sshEnabled'
          property :state, as: 'state'
        end
      end
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_network, as: 'clientNetwork', class: Google::Apis::BaremetalsolutionV1alpha1::NetworkAddress, decorator: Google::Apis::BaremetalsolutionV1alpha1::NetworkAddress::Representation
      
          property :hyperthreading, as: 'hyperthreading'
          property :id, as: 'id'
          property :instance_type, as: 'instanceType'
          property :location, as: 'location'
          property :os_image, as: 'osImage'
          property :private_network, as: 'privateNetwork', class: Google::Apis::BaremetalsolutionV1alpha1::NetworkAddress, decorator: Google::Apis::BaremetalsolutionV1alpha1::NetworkAddress::Representation
      
          property :user_note, as: 'userNote'
        end
      end
      
      class InstanceQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_machine_count, as: 'availableMachineCount'
          property :instance_type, as: 'instanceType'
          property :location, as: 'location'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::BaremetalsolutionV1alpha1::Instance, decorator: Google::Apis::BaremetalsolutionV1alpha1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV1alpha1::Lun, decorator: Google::Apis::BaremetalsolutionV1alpha1::Lun::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProvisioningQuotasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :provisioning_quotas, as: 'provisioningQuotas', class: Google::Apis::BaremetalsolutionV1alpha1::ProvisioningQuota, decorator: Google::Apis::BaremetalsolutionV1alpha1::ProvisioningQuota::Representation
      
        end
      end
      
      class ListSshKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :ssh_keys, as: 'sshKeys', class: Google::Apis::BaremetalsolutionV1alpha1::SshKey, decorator: Google::Apis::BaremetalsolutionV1alpha1::SshKey::Representation
      
        end
      end
      
      class ListSnapshotSchedulePoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshot_schedule_policies, as: 'snapshotSchedulePolicies', class: Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy, decorator: Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy::Representation
      
        end
      end
      
      class ListVolumeSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :volume_snapshots, as: 'volumeSnapshots', class: Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot, decorator: Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot::Representation
      
        end
      end
      
      class ListVolumesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :volumes, as: 'volumes', class: Google::Apis::BaremetalsolutionV1alpha1::Volume, decorator: Google::Apis::BaremetalsolutionV1alpha1::Volume::Representation
      
        end
      end
      
      class Lun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_boot, as: 'isBoot'
          property :multiprotocol_type, as: 'multiprotocolType'
          property :name, as: 'name'
          property :remote_volume, as: 'remoteVolume', class: Google::Apis::BaremetalsolutionV1alpha1::Volume, decorator: Google::Apis::BaremetalsolutionV1alpha1::Volume::Representation
      
          property :serial_number, as: 'serialNumber'
          property :shareable, as: 'shareable'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :state, as: 'state'
          property :wwid, as: 'wwid'
        end
      end
      
      class LunRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity, as: 'quantity'
          property :size_gb, as: 'sizeGb'
        end
      end
      
      class NetworkAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :network_id, as: 'networkId'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth, as: 'bandwidth'
          property :cidr, as: 'cidr'
          property :id, as: 'id'
          property :location, as: 'location'
          property :service_cidr, as: 'serviceCidr'
          property :type, as: 'type'
          property :user_note, as: 'userNote'
          collection :vlan_attachments, as: 'vlanAttachments', class: Google::Apis::BaremetalsolutionV1alpha1::VlanAttachment, decorator: Google::Apis::BaremetalsolutionV1alpha1::VlanAttachment::Representation
      
        end
      end
      
      class NfsExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_dev, as: 'allowDev'
          property :allow_suid, as: 'allowSuid'
          property :cidr, as: 'cidr'
          property :machine_id, as: 'machineId'
          property :network_id, as: 'networkId'
          property :no_root_squash, as: 'noRootSquash'
          property :permissions, as: 'permissions'
        end
      end
      
      class ProvisioningConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::BaremetalsolutionV1alpha1::InstanceConfig, decorator: Google::Apis::BaremetalsolutionV1alpha1::InstanceConfig::Representation
      
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV1alpha1::NetworkConfig, decorator: Google::Apis::BaremetalsolutionV1alpha1::NetworkConfig::Representation
      
          property :ticket_id, as: 'ticketId'
          collection :volumes, as: 'volumes', class: Google::Apis::BaremetalsolutionV1alpha1::VolumeConfig, decorator: Google::Apis::BaremetalsolutionV1alpha1::VolumeConfig::Representation
      
        end
      end
      
      class ProvisioningQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_quota, as: 'instanceQuota', class: Google::Apis::BaremetalsolutionV1alpha1::InstanceQuota, decorator: Google::Apis::BaremetalsolutionV1alpha1::InstanceQuota::Representation
      
        end
      end
      
      class ResetInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResetInstanceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestoreVolumeSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SshKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :public_key, as: 'publicKey'
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
      
      class SerialPortOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :next_start_byte, :numeric_string => true, as: 'nextStartByte'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class SetVolumeSnapshotSchedulePolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_schedule_policy, as: 'snapshotSchedulePolicy'
        end
      end
      
      class SetVolumeSnapshotSchedulePolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SnapshotSchedulePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          collection :schedules, as: 'schedules', class: Google::Apis::BaremetalsolutionV1alpha1::Schedule, decorator: Google::Apis::BaremetalsolutionV1alpha1::Schedule::Representation
      
          collection :volumes, as: 'volumes'
        end
      end
      
      class SubmitProvisioningConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provisioning_config, as: 'provisioningConfig', class: Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig, decorator: Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig::Representation
      
        end
      end
      
      class VlanAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :pairing_key, as: 'pairingKey'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_grown_size_gb, :numeric_string => true, as: 'autoGrownSizeGb'
          property :current_size_gb, :numeric_string => true, as: 'currentSizeGb'
          property :name, as: 'name'
          property :remaining_space_gb, :numeric_string => true, as: 'remainingSpaceGb'
          property :requested_size_gb, :numeric_string => true, as: 'requestedSizeGb'
          property :snapshot_auto_delete_behavior, as: 'snapshotAutoDeleteBehavior'
          property :snapshot_reserved_space_percent, as: 'snapshotReservedSpacePercent'
          property :snapshot_reserved_space_remaining_gb, :numeric_string => true, as: 'snapshotReservedSpaceRemainingGb'
          property :snapshot_reserved_space_used_percent, as: 'snapshotReservedSpaceUsedPercent'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class VolumeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :location, as: 'location'
          collection :lun_ranges, as: 'lunRanges', class: Google::Apis::BaremetalsolutionV1alpha1::LunRange, decorator: Google::Apis::BaremetalsolutionV1alpha1::LunRange::Representation
      
          collection :machine_ids, as: 'machineIds'
          collection :nfs_exports, as: 'nfsExports', class: Google::Apis::BaremetalsolutionV1alpha1::NfsExport, decorator: Google::Apis::BaremetalsolutionV1alpha1::NfsExport::Representation
      
          property :protocol, as: 'protocol'
          property :size_gb, as: 'sizeGb'
          property :snapshots_enabled, as: 'snapshotsEnabled'
          property :type, as: 'type'
          property :user_note, as: 'userNote'
        end
      end
      
      class VolumeSnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :state, as: 'state'
        end
      end
    end
  end
end
