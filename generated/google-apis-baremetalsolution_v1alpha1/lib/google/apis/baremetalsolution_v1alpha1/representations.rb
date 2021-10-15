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
      
      class InstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProvisioningQuotasResponse
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
      
      class SubmitProvisioningConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VlanAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
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
      
      class ListProvisioningQuotasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :provisioning_quotas, as: 'provisioningQuotas', class: Google::Apis::BaremetalsolutionV1alpha1::ProvisioningQuota, decorator: Google::Apis::BaremetalsolutionV1alpha1::ProvisioningQuota::Representation
      
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
      
      class SubmitProvisioningConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
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
    end
  end
end
