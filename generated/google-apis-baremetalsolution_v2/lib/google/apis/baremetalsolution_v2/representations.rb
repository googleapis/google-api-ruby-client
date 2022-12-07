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
      
      class AllowedClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachLunRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableInteractiveSerialConsoleRequest
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
      
      class FetchInstanceProvisioningSettingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBaremetalsolutionV2LogicalInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface
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
      
      class IntakeVlanAttachment
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
      
      class ListNetworkUsageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNfsSharesResponse
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
      
      class LogicalNetworkInterface
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
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddressReservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkMountPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsShare
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsImage
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
      
      class ProvisioningConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProvisioningQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QosPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResizeVolumeRequest
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
      
      class ServerNetworkTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotReservationDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmitProvisioningConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmitProvisioningConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vrf
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
      
      class AllowedClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_dev, as: 'allowDev'
          property :allow_suid, as: 'allowSuid'
          property :allowed_clients_cidr, as: 'allowedClientsCidr'
          property :mount_permissions, as: 'mountPermissions'
          property :network, as: 'network'
          property :nfs_path, as: 'nfsPath'
          property :no_root_squash, as: 'noRootSquash'
          property :share_ip, as: 'shareIp'
        end
      end
      
      class DetachLunRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lun, as: 'lun'
          property :skip_reboot, as: 'skipReboot'
        end
      end
      
      class DisableInteractiveSerialConsoleRequest
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
      
      class FetchInstanceProvisioningSettingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images', class: Google::Apis::BaremetalsolutionV2::OsImage, decorator: Google::Apis::BaremetalsolutionV2::OsImage::Representation
      
        end
      end
      
      class GoogleCloudBaremetalsolutionV2LogicalInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interface_index, as: 'interfaceIndex'
          collection :logical_network_interfaces, as: 'logicalNetworkInterfaces', class: Google::Apis::BaremetalsolutionV2::LogicalNetworkInterface, decorator: Google::Apis::BaremetalsolutionV2::LogicalNetworkInterface::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :required, as: 'required'
          property :type, as: 'type'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :hyperthreading_enabled, as: 'hyperthreadingEnabled'
          property :id, as: 'id'
          property :interactive_serial_console_enabled, as: 'interactiveSerialConsoleEnabled'
          hash :labels, as: 'labels'
          collection :logical_interfaces, as: 'logicalInterfaces', class: Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2LogicalInterface, decorator: Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2LogicalInterface::Representation
      
          property :login_info, as: 'loginInfo'
          collection :luns, as: 'luns', class: Google::Apis::BaremetalsolutionV2::Lun, decorator: Google::Apis::BaremetalsolutionV2::Lun::Representation
      
          property :machine_type, as: 'machineType'
          property :name, as: 'name'
          property :network_template, as: 'networkTemplate'
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV2::Network, decorator: Google::Apis::BaremetalsolutionV2::Network::Representation
      
          property :os_image, as: 'osImage'
          property :pod, as: 'pod'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          collection :volumes, as: 'volumes', class: Google::Apis::BaremetalsolutionV2::Volume, decorator: Google::Apis::BaremetalsolutionV2::Volume::Representation
      
          property :workload_profile, as: 'workloadProfile'
        end
      end
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_networks_enabled, as: 'accountNetworksEnabled'
          property :client_network, as: 'clientNetwork', class: Google::Apis::BaremetalsolutionV2::NetworkAddress, decorator: Google::Apis::BaremetalsolutionV2::NetworkAddress::Representation
      
          property :hyperthreading, as: 'hyperthreading'
          property :id, as: 'id'
          property :instance_type, as: 'instanceType'
          collection :logical_interfaces, as: 'logicalInterfaces', class: Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2LogicalInterface, decorator: Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2LogicalInterface::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig'
          property :network_template, as: 'networkTemplate'
          property :os_image, as: 'osImage'
          property :private_network, as: 'privateNetwork', class: Google::Apis::BaremetalsolutionV2::NetworkAddress, decorator: Google::Apis::BaremetalsolutionV2::NetworkAddress::Representation
      
          property :user_note, as: 'userNote'
        end
      end
      
      class InstanceQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_machine_count, as: 'availableMachineCount'
          property :gcp_service, as: 'gcpService'
          property :instance_type, as: 'instanceType'
          property :location, as: 'location'
          property :name, as: 'name'
        end
      end
      
      class IntakeVlanAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :pairing_key, as: 'pairingKey'
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
      
      class ListNetworkUsageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV2::NetworkUsage, decorator: Google::Apis::BaremetalsolutionV2::NetworkUsage::Representation
      
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
      
      class ListNfsSharesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :nfs_shares, as: 'nfsShares', class: Google::Apis::BaremetalsolutionV2::NfsShare, decorator: Google::Apis::BaremetalsolutionV2::NfsShare::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListProvisioningQuotasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :provisioning_quotas, as: 'provisioningQuotas', class: Google::Apis::BaremetalsolutionV2::ProvisioningQuota, decorator: Google::Apis::BaremetalsolutionV2::ProvisioningQuota::Representation
      
        end
      end
      
      class ListSshKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :ssh_keys, as: 'sshKeys', class: Google::Apis::BaremetalsolutionV2::SshKey, decorator: Google::Apis::BaremetalsolutionV2::SshKey::Representation
      
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
      
      class LogicalNetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_gateway, as: 'defaultGateway'
          property :id, as: 'id'
          property :ip_address, as: 'ipAddress'
          property :network, as: 'network'
          property :network_type, as: 'networkType'
        end
      end
      
      class Lun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_lun, as: 'bootLun'
          property :id, as: 'id'
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
      
      class LunRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity, as: 'quantity'
          property :size_gb, as: 'sizeGb'
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr, as: 'cidr'
          property :gateway_ip, as: 'gatewayIp'
          property :id, as: 'id'
          property :ip_address, as: 'ipAddress'
          property :jumbo_frames_enabled, as: 'jumboFramesEnabled'
          hash :labels, as: 'labels'
          collection :mac_address, as: 'macAddress'
          collection :mount_points, as: 'mountPoints', class: Google::Apis::BaremetalsolutionV2::NetworkMountPoint, decorator: Google::Apis::BaremetalsolutionV2::NetworkMountPoint::Representation
      
          property :name, as: 'name'
          property :pod, as: 'pod'
          collection :reservations, as: 'reservations', class: Google::Apis::BaremetalsolutionV2::NetworkAddressReservation, decorator: Google::Apis::BaremetalsolutionV2::NetworkAddressReservation::Representation
      
          property :services_cidr, as: 'servicesCidr'
          property :state, as: 'state'
          property :type, as: 'type'
          property :vlan_id, as: 'vlanId'
          property :vrf, as: 'vrf', class: Google::Apis::BaremetalsolutionV2::Vrf, decorator: Google::Apis::BaremetalsolutionV2::Vrf::Representation
      
        end
      end
      
      class NetworkAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :existing_network_id, as: 'existingNetworkId'
          property :network_id, as: 'networkId'
        end
      end
      
      class NetworkAddressReservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_address, as: 'endAddress'
          property :note, as: 'note'
          property :start_address, as: 'startAddress'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth, as: 'bandwidth'
          property :cidr, as: 'cidr'
          property :gcp_service, as: 'gcpService'
          property :id, as: 'id'
          property :jumbo_frames_enabled, as: 'jumboFramesEnabled'
          property :name, as: 'name'
          property :service_cidr, as: 'serviceCidr'
          property :type, as: 'type'
          property :user_note, as: 'userNote'
          collection :vlan_attachments, as: 'vlanAttachments', class: Google::Apis::BaremetalsolutionV2::IntakeVlanAttachment, decorator: Google::Apis::BaremetalsolutionV2::IntakeVlanAttachment::Representation
      
          property :vlan_same_project, as: 'vlanSameProject'
        end
      end
      
      class NetworkMountPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_gateway, as: 'defaultGateway'
          property :instance, as: 'instance'
          property :ip_address, as: 'ipAddress'
          property :logical_interface, as: 'logicalInterface'
        end
      end
      
      class NetworkUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network', class: Google::Apis::BaremetalsolutionV2::Network, decorator: Google::Apis::BaremetalsolutionV2::Network::Representation
      
          collection :used_ips, as: 'usedIps'
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
      
      class NfsShare
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_clients, as: 'allowedClients', class: Google::Apis::BaremetalsolutionV2::AllowedClient, decorator: Google::Apis::BaremetalsolutionV2::AllowedClient::Representation
      
          property :id, as: 'id'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :nfs_share_id, as: 'nfsShareId'
          property :requested_size_gib, :numeric_string => true, as: 'requestedSizeGib'
          property :state, as: 'state'
          property :storage_type, as: 'storageType'
          property :volume, as: 'volume'
        end
      end
      
      class OsImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_instance_types, as: 'applicableInstanceTypes'
          property :code, as: 'code'
          property :description, as: 'description'
          property :name, as: 'name'
          collection :supported_network_templates, as: 'supportedNetworkTemplates', class: Google::Apis::BaremetalsolutionV2::ServerNetworkTemplate, decorator: Google::Apis::BaremetalsolutionV2::ServerNetworkTemplate::Representation
      
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
      
      class ProvisioningConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_console_uri, as: 'cloudConsoleUri'
          property :custom_id, as: 'customId'
          property :email, as: 'email'
          property :handover_service_account, as: 'handoverServiceAccount'
          collection :instances, as: 'instances', class: Google::Apis::BaremetalsolutionV2::InstanceConfig, decorator: Google::Apis::BaremetalsolutionV2::InstanceConfig::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::BaremetalsolutionV2::NetworkConfig, decorator: Google::Apis::BaremetalsolutionV2::NetworkConfig::Representation
      
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          property :ticket_id, as: 'ticketId'
          property :update_time, as: 'updateTime'
          collection :volumes, as: 'volumes', class: Google::Apis::BaremetalsolutionV2::VolumeConfig, decorator: Google::Apis::BaremetalsolutionV2::VolumeConfig::Representation
      
          property :vpc_sc_enabled, as: 'vpcScEnabled'
        end
      end
      
      class ProvisioningQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_type, as: 'assetType'
          property :available_count, as: 'availableCount'
          property :gcp_service, as: 'gcpService'
          property :instance_quota, as: 'instanceQuota', class: Google::Apis::BaremetalsolutionV2::InstanceQuota, decorator: Google::Apis::BaremetalsolutionV2::InstanceQuota::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          property :network_bandwidth, :numeric_string => true, as: 'networkBandwidth'
          property :server_count, :numeric_string => true, as: 'serverCount'
          property :storage_gib, :numeric_string => true, as: 'storageGib'
        end
      end
      
      class QosPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth_gbps, as: 'bandwidthGbps'
        end
      end
      
      class ResetInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResizeVolumeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gib, :numeric_string => true, as: 'sizeGib'
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
      
      class ServerNetworkTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_instance_types, as: 'applicableInstanceTypes'
          collection :logical_interfaces, as: 'logicalInterfaces', class: Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface, decorator: Google::Apis::BaremetalsolutionV2::GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface::Representation
      
          property :name, as: 'name'
        end
      end
      
      class SnapshotReservationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reserved_space_gib, :numeric_string => true, as: 'reservedSpaceGib'
          property :reserved_space_percent, as: 'reservedSpacePercent'
          property :reserved_space_remaining_gib, :numeric_string => true, as: 'reservedSpaceRemainingGib'
          property :reserved_space_used_percent, as: 'reservedSpaceUsedPercent'
        end
      end
      
      class StartInstanceRequest
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
      
      class StopInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SubmitProvisioningConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :provisioning_config, as: 'provisioningConfig', class: Google::Apis::BaremetalsolutionV2::ProvisioningConfig, decorator: Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
      
        end
      end
      
      class SubmitProvisioningConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provisioning_config, as: 'provisioningConfig', class: Google::Apis::BaremetalsolutionV2::ProvisioningConfig, decorator: Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
      
        end
      end
      
      class Vrf
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :qos_policy, as: 'qosPolicy', class: Google::Apis::BaremetalsolutionV2::QosPolicy, decorator: Google::Apis::BaremetalsolutionV2::QosPolicy::Representation
      
          property :state, as: 'state'
          collection :vlan_attachments, as: 'vlanAttachments', class: Google::Apis::BaremetalsolutionV2::VlanAttachment, decorator: Google::Apis::BaremetalsolutionV2::VlanAttachment::Representation
      
        end
      end
      
      class VlanAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :pairing_key, as: 'pairingKey'
          property :peer_ip, as: 'peerIp'
          property :peer_vlan_id, :numeric_string => true, as: 'peerVlanId'
          property :qos_policy, as: 'qosPolicy', class: Google::Apis::BaremetalsolutionV2::QosPolicy, decorator: Google::Apis::BaremetalsolutionV2::QosPolicy::Representation
      
          property :router_ip, as: 'routerIp'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_grown_size_gib, :numeric_string => true, as: 'autoGrownSizeGib'
          property :boot_volume, as: 'bootVolume'
          property :current_size_gib, :numeric_string => true, as: 'currentSizeGib'
          property :emergency_size_gib, :numeric_string => true, as: 'emergencySizeGib'
          property :id, as: 'id'
          hash :labels, as: 'labels'
          property :max_size_gib, :numeric_string => true, as: 'maxSizeGib'
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :originally_requested_size_gib, :numeric_string => true, as: 'originallyRequestedSizeGib'
          property :performance_tier, as: 'performanceTier'
          property :pod, as: 'pod'
          property :protocol, as: 'protocol'
          property :remaining_space_gib, :numeric_string => true, as: 'remainingSpaceGib'
          property :requested_size_gib, :numeric_string => true, as: 'requestedSizeGib'
          property :snapshot_auto_delete_behavior, as: 'snapshotAutoDeleteBehavior'
          property :snapshot_enabled, as: 'snapshotEnabled'
          property :snapshot_reservation_detail, as: 'snapshotReservationDetail', class: Google::Apis::BaremetalsolutionV2::SnapshotReservationDetail, decorator: Google::Apis::BaremetalsolutionV2::SnapshotReservationDetail::Representation
      
          property :snapshot_schedule_policy, as: 'snapshotSchedulePolicy'
          property :state, as: 'state'
          property :storage_type, as: 'storageType'
          property :workload_profile, as: 'workloadProfile'
        end
      end
      
      class VolumeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_service, as: 'gcpService'
          property :id, as: 'id'
          collection :lun_ranges, as: 'lunRanges', class: Google::Apis::BaremetalsolutionV2::LunRange, decorator: Google::Apis::BaremetalsolutionV2::LunRange::Representation
      
          collection :machine_ids, as: 'machineIds'
          property :name, as: 'name'
          collection :nfs_exports, as: 'nfsExports', class: Google::Apis::BaremetalsolutionV2::NfsExport, decorator: Google::Apis::BaremetalsolutionV2::NfsExport::Representation
      
          property :performance_tier, as: 'performanceTier'
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
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :id, as: 'id'
          property :name, as: 'name'
          property :storage_volume, as: 'storageVolume'
          property :type, as: 'type'
        end
      end
    end
  end
end
