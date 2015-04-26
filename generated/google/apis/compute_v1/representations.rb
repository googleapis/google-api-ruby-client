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
    module ComputeV1
      
      class AccessConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AddressRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AddressAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AddressListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AddressesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class AttachedDiskRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AttachedDiskInitializeParamsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackendRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackendServiceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackendServiceGroupHealthRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BackendServiceListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeprecationStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskMoveRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskTypeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskTypeAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskTypeListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskTypesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class DisksScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class FirewallRepresentation < Google::Apis::Core::JsonRepresentation
        
        class AllowedRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class FirewallListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ForwardingRuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ForwardingRuleAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ForwardingRuleListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ForwardingRulesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class HealthCheckReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HealthStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HostRuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HttpHealthCheckRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HttpHealthCheckListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImageRepresentation < Google::Apis::Core::JsonRepresentation
        
        class RawDiskRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ImageListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceMoveRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstancePropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceTemplateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceTemplateListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstancesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class LicenseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MachineTypeRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ScratchDiskRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class MachineTypeAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MachineTypeListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MachineTypesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ItemRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class NetworkRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NetworkInterfaceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NetworkListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class OperationAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationsScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class PathMatcherRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PathRuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProjectRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QuotaRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RegionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RegionListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ResourceGroupReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RouteRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class RouteListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SchedulingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SerialPortOutputRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ServiceAccountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SnapshotRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SnapshotListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TagsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetHttpProxyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetHttpProxyListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetInstanceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetInstanceAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetInstanceListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetInstancesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class TargetPoolRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolInstanceHealthRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolsAddHealthCheckRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolsAddInstanceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolsRemoveHealthCheckRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolsRemoveInstanceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetPoolsScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class TargetReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetVpnGatewayRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetVpnGatewayAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetVpnGatewayListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetVpnGatewaysScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class TestFailureRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapTestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapValidationResultRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapsValidateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlMapsValidateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UsageExportLocationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VpnTunnelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VpnTunnelAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VpnTunnelListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VpnTunnelsScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class ZoneRepresentation < Google::Apis::Core::JsonRepresentation
        
        class MaintenanceWindowRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ZoneListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AccessConfigRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :nat_ip, as: 'natIP'
        property :type, as: 'type'
      end

      # @private
      class AddressRepresentation < Google::Apis::Core::JsonRepresentation
        property :address, as: 'address'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        collection :users, as: 'users'
      end

      # @private
      class AddressAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::AddressesScopedList, decorator: Google::Apis::ComputeV1::AddressesScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class AddressListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Address, decorator: Google::Apis::ComputeV1::AddressRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class AddressesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :addresses, as: 'addresses', class: Google::Apis::ComputeV1::Address, decorator: Google::Apis::ComputeV1::AddressRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::AddressesScopedList::Warning, decorator: Google::Apis::ComputeV1::AddressesScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::AddressesScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::AddressesScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class AttachedDiskRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_delete, as: 'autoDelete'
        property :boot, as: 'boot'
        property :device_name, as: 'deviceName'
        property :index, as: 'index'
        property :initialize_params, as: 'initializeParams', class: Google::Apis::ComputeV1::AttachedDiskInitializeParams, decorator: Google::Apis::ComputeV1::AttachedDiskInitializeParamsRepresentation
        
        property :interface, as: 'interface'
        property :kind, as: 'kind'
        collection :licenses, as: 'licenses'
        
        property :mode, as: 'mode'
        property :source, as: 'source'
        property :type, as: 'type'
      end

      # @private
      class AttachedDiskInitializeParamsRepresentation < Google::Apis::Core::JsonRepresentation
        property :disk_name, as: 'diskName'
        property :disk_size_gb, as: 'diskSizeGb'
        property :disk_type, as: 'diskType'
        property :source_image, as: 'sourceImage'
      end

      # @private
      class BackendRepresentation < Google::Apis::Core::JsonRepresentation
        property :balancing_mode, as: 'balancingMode'
        property :capacity_scaler, as: 'capacityScaler'
        property :description, as: 'description'
        property :group, as: 'group'
        property :max_rate, as: 'maxRate'
        property :max_rate_per_instance, as: 'maxRatePerInstance'
        property :max_utilization, as: 'maxUtilization'
      end

      # @private
      class BackendServiceRepresentation < Google::Apis::Core::JsonRepresentation
        collection :backends, as: 'backends', class: Google::Apis::ComputeV1::Backend, decorator: Google::Apis::ComputeV1::BackendRepresentation
        
        
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :fingerprint, :base64 => true, as: 'fingerprint'
        collection :health_checks, as: 'healthChecks'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :port, as: 'port'
        property :port_name, as: 'portName'
        property :protocol, as: 'protocol'
        property :self_link, as: 'selfLink'
        property :timeout_sec, as: 'timeoutSec'
      end

      # @private
      class BackendServiceGroupHealthRepresentation < Google::Apis::Core::JsonRepresentation
        collection :health_status, as: 'healthStatus', class: Google::Apis::ComputeV1::HealthStatus, decorator: Google::Apis::ComputeV1::HealthStatusRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class BackendServiceListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::BackendService, decorator: Google::Apis::ComputeV1::BackendServiceRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DeprecationStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :deleted, as: 'deleted'
        property :deprecated, as: 'deprecated'
        property :obsolete, as: 'obsolete'
        property :replacement, as: 'replacement'
        property :state, as: 'state'
      end

      # @private
      class DiskRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :licenses, as: 'licenses'
        
        property :name, as: 'name'
        property :options, as: 'options'
        property :self_link, as: 'selfLink'
        property :size_gb, as: 'sizeGb'
        property :source_image, as: 'sourceImage'
        property :source_image_id, as: 'sourceImageId'
        property :source_snapshot, as: 'sourceSnapshot'
        property :source_snapshot_id, as: 'sourceSnapshotId'
        property :status, as: 'status'
        property :type, as: 'type'
        property :zone, as: 'zone'
      end

      # @private
      class DiskAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::DisksScopedList, decorator: Google::Apis::ComputeV1::DisksScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DiskListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Disk, decorator: Google::Apis::ComputeV1::DiskRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DiskMoveRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :destination_zone, as: 'destinationZone'
        property :target_disk, as: 'targetDisk'
      end

      # @private
      class DiskTypeRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :default_disk_size_gb, as: 'defaultDiskSizeGb'
        property :deprecated, as: 'deprecated', class: Google::Apis::ComputeV1::DeprecationStatus, decorator: Google::Apis::ComputeV1::DeprecationStatusRepresentation
        
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
        property :valid_disk_size, as: 'validDiskSize'
        property :zone, as: 'zone'
      end

      # @private
      class DiskTypeAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::DiskTypesScopedList, decorator: Google::Apis::ComputeV1::DiskTypesScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DiskTypeListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::DiskType, decorator: Google::Apis::ComputeV1::DiskTypeRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DiskTypesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :disk_types, as: 'diskTypes', class: Google::Apis::ComputeV1::DiskType, decorator: Google::Apis::ComputeV1::DiskTypeRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::DiskTypesScopedList::Warning, decorator: Google::Apis::ComputeV1::DiskTypesScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::DiskTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::DiskTypesScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class DisksScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :disks, as: 'disks', class: Google::Apis::ComputeV1::Disk, decorator: Google::Apis::ComputeV1::DiskRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::DisksScopedList::Warning, decorator: Google::Apis::ComputeV1::DisksScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::DisksScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::DisksScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class FirewallRepresentation < Google::Apis::Core::JsonRepresentation
        class AllowedRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :allowed, as: 'allowed', class: Google::Apis::ComputeV1::Firewall::Allowed, decorator: Google::Apis::ComputeV1::FirewallRepresentation::AllowedRepresentation
        
        
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :network, as: 'network'
        property :self_link, as: 'selfLink'
        collection :source_ranges, as: 'sourceRanges'
        
        collection :source_tags, as: 'sourceTags'
        
        collection :target_tags, as: 'targetTags'
        
        
        # @private
        class AllowedRepresentation < Google::Apis::Core::JsonRepresentation
          property :ip_protocol, as: 'IPProtocol'
          collection :ports, as: 'ports'
        end
      end

      # @private
      class FirewallListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Firewall, decorator: Google::Apis::ComputeV1::FirewallRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ForwardingRuleRepresentation < Google::Apis::Core::JsonRepresentation
        property :ip_address, as: 'IPAddress'
        property :ip_protocol, as: 'IPProtocol'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :port_range, as: 'portRange'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :target, as: 'target'
      end

      # @private
      class ForwardingRuleAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::ForwardingRulesScopedList, decorator: Google::Apis::ComputeV1::ForwardingRulesScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ForwardingRuleListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::ForwardingRule, decorator: Google::Apis::ComputeV1::ForwardingRuleRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ForwardingRulesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :forwarding_rules, as: 'forwardingRules', class: Google::Apis::ComputeV1::ForwardingRule, decorator: Google::Apis::ComputeV1::ForwardingRuleRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning, decorator: Google::Apis::ComputeV1::ForwardingRulesScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::ForwardingRulesScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class HealthCheckReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :health_check, as: 'healthCheck'
      end

      # @private
      class HealthStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :health_state, as: 'healthState'
        property :instance, as: 'instance'
        property :ip_address, as: 'ipAddress'
        property :port, as: 'port'
      end

      # @private
      class HostRuleRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        collection :hosts, as: 'hosts'
        
        property :path_matcher, as: 'pathMatcher'
      end

      # @private
      class HttpHealthCheckRepresentation < Google::Apis::Core::JsonRepresentation
        property :check_interval_sec, as: 'checkIntervalSec'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :healthy_threshold, as: 'healthyThreshold'
        property :host, as: 'host'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :port, as: 'port'
        property :request_path, as: 'requestPath'
        property :self_link, as: 'selfLink'
        property :timeout_sec, as: 'timeoutSec'
        property :unhealthy_threshold, as: 'unhealthyThreshold'
      end

      # @private
      class HttpHealthCheckListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::HttpHealthCheck, decorator: Google::Apis::ComputeV1::HttpHealthCheckRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ImageRepresentation < Google::Apis::Core::JsonRepresentation
        class RawDiskRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :archive_size_bytes, as: 'archiveSizeBytes'
        property :creation_timestamp, as: 'creationTimestamp'
        property :deprecated, as: 'deprecated', class: Google::Apis::ComputeV1::DeprecationStatus, decorator: Google::Apis::ComputeV1::DeprecationStatusRepresentation
        
        property :description, as: 'description'
        property :disk_size_gb, as: 'diskSizeGb'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :licenses, as: 'licenses'
        
        property :name, as: 'name'
        property :raw_disk, as: 'rawDisk', class: Google::Apis::ComputeV1::Image::RawDisk, decorator: Google::Apis::ComputeV1::ImageRepresentation::RawDiskRepresentation
        
        property :self_link, as: 'selfLink'
        property :source_disk, as: 'sourceDisk'
        property :source_disk_id, as: 'sourceDiskId'
        property :source_type, as: 'sourceType'
        property :status, as: 'status'
        
        # @private
        class RawDiskRepresentation < Google::Apis::Core::JsonRepresentation
          property :container_type, as: 'containerType'
          property :sha1_checksum, as: 'sha1Checksum'
          property :source, as: 'source'
        end
      end

      # @private
      class ImageListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Image, decorator: Google::Apis::ComputeV1::ImageRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class InstanceRepresentation < Google::Apis::Core::JsonRepresentation
        property :can_ip_forward, as: 'canIpForward'
        property :cpu_platform, as: 'cpuPlatform'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        collection :disks, as: 'disks', class: Google::Apis::ComputeV1::AttachedDisk, decorator: Google::Apis::ComputeV1::AttachedDiskRepresentation
        
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :machine_type, as: 'machineType'
        property :metadata, as: 'metadata', class: Google::Apis::ComputeV1::Metadata, decorator: Google::Apis::ComputeV1::MetadataRepresentation
        
        property :name, as: 'name'
        collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeV1::NetworkInterface, decorator: Google::Apis::ComputeV1::NetworkInterfaceRepresentation
        
        
        property :scheduling, as: 'scheduling', class: Google::Apis::ComputeV1::Scheduling, decorator: Google::Apis::ComputeV1::SchedulingRepresentation
        
        property :self_link, as: 'selfLink'
        collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeV1::ServiceAccount, decorator: Google::Apis::ComputeV1::ServiceAccountRepresentation
        
        
        property :status, as: 'status'
        property :status_message, as: 'statusMessage'
        property :tags, as: 'tags', class: Google::Apis::ComputeV1::Tags, decorator: Google::Apis::ComputeV1::TagsRepresentation
        
        property :zone, as: 'zone'
      end

      # @private
      class InstanceAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::InstancesScopedList, decorator: Google::Apis::ComputeV1::InstancesScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class InstanceListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Instance, decorator: Google::Apis::ComputeV1::InstanceRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class InstanceMoveRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :destination_zone, as: 'destinationZone'
        property :target_instance, as: 'targetInstance'
      end

      # @private
      class InstancePropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        property :can_ip_forward, as: 'canIpForward'
        property :description, as: 'description'
        collection :disks, as: 'disks', class: Google::Apis::ComputeV1::AttachedDisk, decorator: Google::Apis::ComputeV1::AttachedDiskRepresentation
        
        
        property :machine_type, as: 'machineType'
        property :metadata, as: 'metadata', class: Google::Apis::ComputeV1::Metadata, decorator: Google::Apis::ComputeV1::MetadataRepresentation
        
        collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeV1::NetworkInterface, decorator: Google::Apis::ComputeV1::NetworkInterfaceRepresentation
        
        
        property :scheduling, as: 'scheduling', class: Google::Apis::ComputeV1::Scheduling, decorator: Google::Apis::ComputeV1::SchedulingRepresentation
        
        collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeV1::ServiceAccount, decorator: Google::Apis::ComputeV1::ServiceAccountRepresentation
        
        
        property :tags, as: 'tags', class: Google::Apis::ComputeV1::Tags, decorator: Google::Apis::ComputeV1::TagsRepresentation
      end

      # @private
      class InstanceReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :instance, as: 'instance'
      end

      # @private
      class InstanceTemplateRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :properties, as: 'properties', class: Google::Apis::ComputeV1::InstanceProperties, decorator: Google::Apis::ComputeV1::InstancePropertiesRepresentation
        
        property :self_link, as: 'selfLink'
      end

      # @private
      class InstanceTemplateListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::InstanceTemplate, decorator: Google::Apis::ComputeV1::InstanceTemplateRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class InstancesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :instances, as: 'instances', class: Google::Apis::ComputeV1::Instance, decorator: Google::Apis::ComputeV1::InstanceRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::InstancesScopedList::Warning, decorator: Google::Apis::ComputeV1::InstancesScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::InstancesScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::InstancesScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class LicenseRepresentation < Google::Apis::Core::JsonRepresentation
        property :charges_use_fee, as: 'chargesUseFee'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
      end

      # @private
      class MachineTypeRepresentation < Google::Apis::Core::JsonRepresentation
        class ScratchDiskRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :creation_timestamp, as: 'creationTimestamp'
        property :deprecated, as: 'deprecated', class: Google::Apis::ComputeV1::DeprecationStatus, decorator: Google::Apis::ComputeV1::DeprecationStatusRepresentation
        
        property :description, as: 'description'
        property :guest_cpus, as: 'guestCpus'
        property :id, as: 'id'
        property :image_space_gb, as: 'imageSpaceGb'
        property :kind, as: 'kind'
        property :maximum_persistent_disks, as: 'maximumPersistentDisks'
        property :maximum_persistent_disks_size_gb, as: 'maximumPersistentDisksSizeGb'
        property :memory_mb, as: 'memoryMb'
        property :name, as: 'name'
        collection :scratch_disks, as: 'scratchDisks', class: Google::Apis::ComputeV1::MachineType::ScratchDisk, decorator: Google::Apis::ComputeV1::MachineTypeRepresentation::ScratchDiskRepresentation
        
        
        property :self_link, as: 'selfLink'
        property :zone, as: 'zone'
        
        # @private
        class ScratchDiskRepresentation < Google::Apis::Core::JsonRepresentation
          property :disk_gb, as: 'diskGb'
        end
      end

      # @private
      class MachineTypeAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::MachineTypesScopedList, decorator: Google::Apis::ComputeV1::MachineTypesScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class MachineTypeListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::MachineType, decorator: Google::Apis::ComputeV1::MachineTypeRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class MachineTypesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :machine_types, as: 'machineTypes', class: Google::Apis::ComputeV1::MachineType, decorator: Google::Apis::ComputeV1::MachineTypeRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::MachineTypesScopedList::Warning, decorator: Google::Apis::ComputeV1::MachineTypesScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::MachineTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::MachineTypesScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        class ItemRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :fingerprint, :base64 => true, as: 'fingerprint'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Metadata::Item, decorator: Google::Apis::ComputeV1::MetadataRepresentation::ItemRepresentation
        
        
        property :kind, as: 'kind'
        
        # @private
        class ItemRepresentation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end

      # @private
      class NetworkRepresentation < Google::Apis::Core::JsonRepresentation
        property :i_pv4_range, as: 'IPv4Range'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :gateway_i_pv4, as: 'gatewayIPv4'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
      end

      # @private
      class NetworkInterfaceRepresentation < Google::Apis::Core::JsonRepresentation
        collection :access_configs, as: 'accessConfigs', class: Google::Apis::ComputeV1::AccessConfig, decorator: Google::Apis::ComputeV1::AccessConfigRepresentation
        
        
        property :name, as: 'name'
        property :network, as: 'network'
        property :network_ip, as: 'networkIP'
      end

      # @private
      class NetworkListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Network, decorator: Google::Apis::ComputeV1::NetworkRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :client_operation_id, as: 'clientOperationId'
        property :creation_timestamp, as: 'creationTimestamp'
        property :end_time, as: 'endTime'
        property :error, as: 'error', class: Google::Apis::ComputeV1::Operation::Error, decorator: Google::Apis::ComputeV1::OperationRepresentation::ErrorRepresentation
        
        property :http_error_message, as: 'httpErrorMessage'
        property :http_error_status_code, as: 'httpErrorStatusCode'
        property :id, as: 'id'
        property :insert_time, as: 'insertTime'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :operation_type, as: 'operationType'
        property :progress, as: 'progress'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :start_time, as: 'startTime'
        property :status, as: 'status'
        property :status_message, as: 'statusMessage'
        property :target_id, as: 'targetId'
        property :target_link, as: 'targetLink'
        property :user, as: 'user'
        collection :warnings, as: 'warnings', class: Google::Apis::ComputeV1::Operation::Warning, decorator: Google::Apis::ComputeV1::OperationRepresentation::WarningRepresentation
        
        
        property :zone, as: 'zone'
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :errors, as: 'errors', class: Google::Apis::ComputeV1::Operation::Error::Error, decorator: Google::Apis::ComputeV1::OperationRepresentation::ErrorRepresentation::ErrorRepresentation
          
          
          
          # @private
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::Operation::Warning::Datum, decorator: Google::Apis::ComputeV1::OperationRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class OperationAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::OperationsScopedList, decorator: Google::Apis::ComputeV1::OperationsScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Operation, decorator: Google::Apis::ComputeV1::OperationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class OperationsScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :operations, as: 'operations', class: Google::Apis::ComputeV1::Operation, decorator: Google::Apis::ComputeV1::OperationRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::OperationsScopedList::Warning, decorator: Google::Apis::ComputeV1::OperationsScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::OperationsScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::OperationsScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class PathMatcherRepresentation < Google::Apis::Core::JsonRepresentation
        property :default_service, as: 'defaultService'
        property :description, as: 'description'
        property :name, as: 'name'
        collection :path_rules, as: 'pathRules', class: Google::Apis::ComputeV1::PathRule, decorator: Google::Apis::ComputeV1::PathRuleRepresentation
      end

      # @private
      class PathRuleRepresentation < Google::Apis::Core::JsonRepresentation
        collection :paths, as: 'paths'
        
        property :service, as: 'service'
      end

      # @private
      class ProjectRepresentation < Google::Apis::Core::JsonRepresentation
        property :common_instance_metadata, as: 'commonInstanceMetadata', class: Google::Apis::ComputeV1::Metadata, decorator: Google::Apis::ComputeV1::MetadataRepresentation
        
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :quotas, as: 'quotas', class: Google::Apis::ComputeV1::Quota, decorator: Google::Apis::ComputeV1::QuotaRepresentation
        
        
        property :self_link, as: 'selfLink'
        property :usage_export_location, as: 'usageExportLocation', class: Google::Apis::ComputeV1::UsageExportLocation, decorator: Google::Apis::ComputeV1::UsageExportLocationRepresentation
      end

      # @private
      class QuotaRepresentation < Google::Apis::Core::JsonRepresentation
        property :limit, as: 'limit'
        property :metric, as: 'metric'
        property :usage, as: 'usage'
      end

      # @private
      class RegionRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :deprecated, as: 'deprecated', class: Google::Apis::ComputeV1::DeprecationStatus, decorator: Google::Apis::ComputeV1::DeprecationStatusRepresentation
        
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :quotas, as: 'quotas', class: Google::Apis::ComputeV1::Quota, decorator: Google::Apis::ComputeV1::QuotaRepresentation
        
        
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        collection :zones, as: 'zones'
      end

      # @private
      class RegionListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Region, decorator: Google::Apis::ComputeV1::RegionRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ResourceGroupReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :group, as: 'group'
      end

      # @private
      class RouteRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :dest_range, as: 'destRange'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :network, as: 'network'
        property :next_hop_gateway, as: 'nextHopGateway'
        property :next_hop_instance, as: 'nextHopInstance'
        property :next_hop_ip, as: 'nextHopIp'
        property :next_hop_network, as: 'nextHopNetwork'
        property :next_hop_vpn_tunnel, as: 'nextHopVpnTunnel'
        property :priority, as: 'priority'
        property :self_link, as: 'selfLink'
        collection :tags, as: 'tags'
        
        collection :warnings, as: 'warnings', class: Google::Apis::ComputeV1::Route::Warning, decorator: Google::Apis::ComputeV1::RouteRepresentation::WarningRepresentation
        
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::Route::Warning::Datum, decorator: Google::Apis::ComputeV1::RouteRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class RouteListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Route, decorator: Google::Apis::ComputeV1::RouteRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class SchedulingRepresentation < Google::Apis::Core::JsonRepresentation
        property :automatic_restart, as: 'automaticRestart'
        property :on_host_maintenance, as: 'onHostMaintenance'
      end

      # @private
      class SerialPortOutputRepresentation < Google::Apis::Core::JsonRepresentation
        property :contents, as: 'contents'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ServiceAccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        collection :scopes, as: 'scopes'
      end

      # @private
      class SnapshotRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :disk_size_gb, as: 'diskSizeGb'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :licenses, as: 'licenses'
        
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
        property :source_disk, as: 'sourceDisk'
        property :source_disk_id, as: 'sourceDiskId'
        property :status, as: 'status'
        property :storage_bytes, as: 'storageBytes'
        property :storage_bytes_status, as: 'storageBytesStatus'
      end

      # @private
      class SnapshotListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Snapshot, decorator: Google::Apis::ComputeV1::SnapshotRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TagsRepresentation < Google::Apis::Core::JsonRepresentation
        property :fingerprint, :base64 => true, as: 'fingerprint'
        collection :items, as: 'items'
      end

      # @private
      class TargetHttpProxyRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
        property :url_map, as: 'urlMap'
      end

      # @private
      class TargetHttpProxyListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::TargetHttpProxy, decorator: Google::Apis::ComputeV1::TargetHttpProxyRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetInstanceRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :instance, as: 'instance'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :nat_policy, as: 'natPolicy'
        property :self_link, as: 'selfLink'
        property :zone, as: 'zone'
      end

      # @private
      class TargetInstanceAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::TargetInstancesScopedList, decorator: Google::Apis::ComputeV1::TargetInstancesScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetInstanceListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::TargetInstance, decorator: Google::Apis::ComputeV1::TargetInstanceRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetInstancesScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :target_instances, as: 'targetInstances', class: Google::Apis::ComputeV1::TargetInstance, decorator: Google::Apis::ComputeV1::TargetInstanceRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::TargetInstancesScopedList::Warning, decorator: Google::Apis::ComputeV1::TargetInstancesScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::TargetInstancesScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::TargetInstancesScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class TargetPoolRepresentation < Google::Apis::Core::JsonRepresentation
        property :backup_pool, as: 'backupPool'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :failover_ratio, as: 'failoverRatio'
        collection :health_checks, as: 'healthChecks'
        
        property :id, as: 'id'
        collection :instances, as: 'instances'
        
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :session_affinity, as: 'sessionAffinity'
      end

      # @private
      class TargetPoolAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::TargetPoolsScopedList, decorator: Google::Apis::ComputeV1::TargetPoolsScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetPoolInstanceHealthRepresentation < Google::Apis::Core::JsonRepresentation
        collection :health_status, as: 'healthStatus', class: Google::Apis::ComputeV1::HealthStatus, decorator: Google::Apis::ComputeV1::HealthStatusRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class TargetPoolListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::TargetPool, decorator: Google::Apis::ComputeV1::TargetPoolRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetPoolsAddHealthCheckRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeV1::HealthCheckReference, decorator: Google::Apis::ComputeV1::HealthCheckReferenceRepresentation
      end

      # @private
      class TargetPoolsAddInstanceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :instances, as: 'instances', class: Google::Apis::ComputeV1::InstanceReference, decorator: Google::Apis::ComputeV1::InstanceReferenceRepresentation
      end

      # @private
      class TargetPoolsRemoveHealthCheckRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeV1::HealthCheckReference, decorator: Google::Apis::ComputeV1::HealthCheckReferenceRepresentation
      end

      # @private
      class TargetPoolsRemoveInstanceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :instances, as: 'instances', class: Google::Apis::ComputeV1::InstanceReference, decorator: Google::Apis::ComputeV1::InstanceReferenceRepresentation
      end

      # @private
      class TargetPoolsScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :target_pools, as: 'targetPools', class: Google::Apis::ComputeV1::TargetPool, decorator: Google::Apis::ComputeV1::TargetPoolRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::TargetPoolsScopedList::Warning, decorator: Google::Apis::ComputeV1::TargetPoolsScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::TargetPoolsScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::TargetPoolsScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class TargetReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :target, as: 'target'
      end

      # @private
      class TargetVpnGatewayRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        collection :forwarding_rules, as: 'forwardingRules'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :network, as: 'network'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        collection :tunnels, as: 'tunnels'
      end

      # @private
      class TargetVpnGatewayAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::TargetVpnGatewaysScopedList, decorator: Google::Apis::ComputeV1::TargetVpnGatewaysScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetVpnGatewayListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::TargetVpnGateway, decorator: Google::Apis::ComputeV1::TargetVpnGatewayRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class TargetVpnGatewaysScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :target_vpn_gateways, as: 'targetVpnGateways', class: Google::Apis::ComputeV1::TargetVpnGateway, decorator: Google::Apis::ComputeV1::TargetVpnGatewayRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning, decorator: Google::Apis::ComputeV1::TargetVpnGatewaysScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::TargetVpnGatewaysScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class TestFailureRepresentation < Google::Apis::Core::JsonRepresentation
        property :actual_service, as: 'actualService'
        property :expected_service, as: 'expectedService'
        property :host, as: 'host'
        property :path, as: 'path'
      end

      # @private
      class UrlMapRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :default_service, as: 'defaultService'
        property :description, as: 'description'
        property :fingerprint, :base64 => true, as: 'fingerprint'
        collection :host_rules, as: 'hostRules', class: Google::Apis::ComputeV1::HostRule, decorator: Google::Apis::ComputeV1::HostRuleRepresentation
        
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :path_matchers, as: 'pathMatchers', class: Google::Apis::ComputeV1::PathMatcher, decorator: Google::Apis::ComputeV1::PathMatcherRepresentation
        
        
        property :self_link, as: 'selfLink'
        collection :tests, as: 'tests', class: Google::Apis::ComputeV1::UrlMapTest, decorator: Google::Apis::ComputeV1::UrlMapTestRepresentation
      end

      # @private
      class UrlMapListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::UrlMap, decorator: Google::Apis::ComputeV1::UrlMapRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class UrlMapReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :url_map, as: 'urlMap'
      end

      # @private
      class UrlMapTestRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :host, as: 'host'
        property :path, as: 'path'
        property :service, as: 'service'
      end

      # @private
      class UrlMapValidationResultRepresentation < Google::Apis::Core::JsonRepresentation
        collection :load_errors, as: 'loadErrors'
        
        property :load_succeeded, as: 'loadSucceeded'
        collection :test_failures, as: 'testFailures', class: Google::Apis::ComputeV1::TestFailure, decorator: Google::Apis::ComputeV1::TestFailureRepresentation
        
        
        property :test_passed, as: 'testPassed'
      end

      # @private
      class UrlMapsValidateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource, as: 'resource', class: Google::Apis::ComputeV1::UrlMap, decorator: Google::Apis::ComputeV1::UrlMapRepresentation
      end

      # @private
      class UrlMapsValidateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :result, as: 'result', class: Google::Apis::ComputeV1::UrlMapValidationResult, decorator: Google::Apis::ComputeV1::UrlMapValidationResultRepresentation
      end

      # @private
      class UsageExportLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :bucket_name, as: 'bucketName'
        property :report_name_prefix, as: 'reportNamePrefix'
      end

      # @private
      class VpnTunnelRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :detailed_status, as: 'detailedStatus'
        property :id, as: 'id'
        collection :ike_networks, as: 'ikeNetworks'
        
        property :ike_version, as: 'ikeVersion'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :peer_ip, as: 'peerIp'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :shared_secret, as: 'sharedSecret'
        property :shared_secret_hash, as: 'sharedSecretHash'
        property :status, as: 'status'
        property :target_vpn_gateway, as: 'targetVpnGateway'
      end

      # @private
      class VpnTunnelAggregatedListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        hash :items, as: 'items', class: Google::Apis::ComputeV1::VpnTunnelsScopedList, decorator: Google::Apis::ComputeV1::VpnTunnelsScopedListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class VpnTunnelListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::VpnTunnel, decorator: Google::Apis::ComputeV1::VpnTunnelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class VpnTunnelsScopedListRepresentation < Google::Apis::Core::JsonRepresentation
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :vpn_tunnels, as: 'vpnTunnels', class: Google::Apis::ComputeV1::VpnTunnel, decorator: Google::Apis::ComputeV1::VpnTunnelRepresentation
        
        
        property :warning, as: 'warning', class: Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning, decorator: Google::Apis::ComputeV1::VpnTunnelsScopedListRepresentation::WarningRepresentation
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning::Datum, decorator: Google::Apis::ComputeV1::VpnTunnelsScopedListRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class ZoneRepresentation < Google::Apis::Core::JsonRepresentation
        class MaintenanceWindowRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :creation_timestamp, as: 'creationTimestamp'
        property :deprecated, as: 'deprecated', class: Google::Apis::ComputeV1::DeprecationStatus, decorator: Google::Apis::ComputeV1::DeprecationStatusRepresentation
        
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :maintenance_windows, as: 'maintenanceWindows', class: Google::Apis::ComputeV1::Zone::MaintenanceWindow, decorator: Google::Apis::ComputeV1::ZoneRepresentation::MaintenanceWindowRepresentation
        
        
        property :name, as: 'name'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        
        # @private
        class MaintenanceWindowRepresentation < Google::Apis::Core::JsonRepresentation
          property :begin_time, as: 'beginTime'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
        end
      end

      # @private
      class ZoneListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ComputeV1::Zone, decorator: Google::Apis::ComputeV1::ZoneRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end
    end
  end
end
