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
    module ProdTtSasportalV1alpha1
      
      class SasPortalAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalBulkCreateDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalBulkCreateDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalCreateSignedDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalCustomer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDeviceAirInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDeviceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDeviceGrant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDeviceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDeviceModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalDpaMoveList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalFrequencyRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalGenerateSecretRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalGenerateSecretResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalGetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalInstallationParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalListCustomersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalListNodesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalMoveDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalMoveDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalMoveNodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalSignDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalTestPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalTestPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalUpdateSignedDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalValidateInstallerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalValidateInstallerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SasPortalAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class SasPortalBulkCreateDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv, as: 'csv'
        end
      end
      
      class SasPortalBulkCreateDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
      
        end
      end
      
      class SasPortalCreateSignedDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_device, :base64 => true, as: 'encodedDevice'
          property :installer_id, as: 'installerId'
        end
      end
      
      class SasPortalCustomer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :sas_user_ids, as: 'sasUserIds'
        end
      end
      
      class SasPortalDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_config, as: 'activeConfig', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceConfig, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceConfig::Representation
      
          property :device_metadata, as: 'deviceMetadata', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceMetadata, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceMetadata::Representation
      
          property :display_name, as: 'displayName'
          property :fcc_id, as: 'fccId'
          collection :grants, as: 'grants', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceGrant, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceGrant::Representation
      
          property :name, as: 'name'
          property :preloaded_config, as: 'preloadedConfig', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceConfig, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceConfig::Representation
      
          property :serial_number, as: 'serialNumber'
          property :state, as: 'state'
        end
      end
      
      class SasPortalDeviceAirInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :radio_technology, as: 'radioTechnology'
          property :supported_spec, as: 'supportedSpec'
        end
      end
      
      class SasPortalDeviceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :air_interface, as: 'airInterface', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceAirInterface, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceAirInterface::Representation
      
          property :call_sign, as: 'callSign'
          property :category, as: 'category'
          property :installation_params, as: 'installationParams', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalInstallationParams, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalInstallationParams::Representation
      
          property :is_signed, as: 'isSigned'
          collection :measurement_capabilities, as: 'measurementCapabilities'
          property :model, as: 'model', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceModel, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceModel::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :user_id, as: 'userId'
        end
      end
      
      class SasPortalDeviceGrant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_type, as: 'channelType'
          property :expire_time, as: 'expireTime'
          property :frequency_range, as: 'frequencyRange', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalFrequencyRange, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalFrequencyRange::Representation
      
          property :grant_id, as: 'grantId'
          property :max_eirp, as: 'maxEirp'
          collection :move_list, as: 'moveList', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDpaMoveList, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDpaMoveList::Representation
      
          property :state, as: 'state'
          collection :suspension_reason, as: 'suspensionReason'
        end
      end
      
      class SasPortalDeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SasPortalDeviceModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firmware_version, as: 'firmwareVersion'
          property :hardware_version, as: 'hardwareVersion'
          property :name, as: 'name'
          property :software_version, as: 'softwareVersion'
          property :vendor, as: 'vendor'
        end
      end
      
      class SasPortalDpaMoveList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dpa_id, as: 'dpaId'
          property :frequency_range, as: 'frequencyRange', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalFrequencyRange, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalFrequencyRange::Representation
      
        end
      end
      
      class SasPortalEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SasPortalFrequencyRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high_frequency_mhz, as: 'highFrequencyMhz'
          property :low_frequency_mhz, as: 'lowFrequencyMhz'
        end
      end
      
      class SasPortalGenerateSecretRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SasPortalGenerateSecretResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret, as: 'secret'
        end
      end
      
      class SasPortalGetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
        end
      end
      
      class SasPortalInstallationParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :antenna_azimuth, as: 'antennaAzimuth'
          property :antenna_beamwidth, as: 'antennaBeamwidth'
          property :antenna_downtilt, as: 'antennaDowntilt'
          property :antenna_gain, as: 'antennaGain'
          property :antenna_model, as: 'antennaModel'
          property :cpe_cbsd_indication, as: 'cpeCbsdIndication'
          property :eirp_capability, as: 'eirpCapability'
          property :height, as: 'height'
          property :height_type, as: 'heightType'
          property :horizontal_accuracy, as: 'horizontalAccuracy'
          property :indoor_deployment, as: 'indoorDeployment'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :vertical_accuracy, as: 'verticalAccuracy'
        end
      end
      
      class SasPortalListCustomersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :customers, as: 'customers', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SasPortalListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SasPortalListNodesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :nodes, as: 'nodes', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
      
        end
      end
      
      class SasPortalMoveDeploymentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
        end
      end
      
      class SasPortalMoveDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
        end
      end
      
      class SasPortalMoveNodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
        end
      end
      
      class SasPortalNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :sas_user_ids, as: 'sasUserIds'
        end
      end
      
      class SasPortalOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalStatus, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class SasPortalPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignments, as: 'assignments', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalAssignment, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalAssignment::Representation
      
          property :etag, :base64 => true, as: 'etag'
        end
      end
      
      class SasPortalSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy::Representation
      
          property :resource, as: 'resource'
        end
      end
      
      class SasPortalSignDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice, decorator: Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
      
        end
      end
      
      class SasPortalStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SasPortalTestPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
          property :resource, as: 'resource'
        end
      end
      
      class SasPortalTestPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class SasPortalUpdateSignedDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_device, :base64 => true, as: 'encodedDevice'
          property :installer_id, as: 'installerId'
        end
      end
      
      class SasPortalValidateInstallerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_secret, as: 'encodedSecret'
          property :installer_id, as: 'installerId'
          property :secret, as: 'secret'
        end
      end
      
      class SasPortalValidateInstallerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
