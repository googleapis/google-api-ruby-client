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
    module DevicerunV1
      
      class CatalogAndroidDeviceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogAndroidxTestOrchestratorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogAutomationSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogDeviceAvailability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogDeviceStreamingSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogIosDeviceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogLabInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogLifecycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogListSoftwareVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogScreenMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogSoftwareVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogSupportedProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogXcodeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CatalogAndroidDeviceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_type, as: 'buildType'
          collection :supported_abis, as: 'supportedAbis'
        end
      end
      
      class CatalogAndroidxTestOrchestratorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CatalogAutomationSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CatalogDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_denied_reasons, as: 'accessDeniedReasons'
          property :android_details, as: 'androidDetails', class: Google::Apis::DevicerunV1::CatalogAndroidDeviceDetails, decorator: Google::Apis::DevicerunV1::CatalogAndroidDeviceDetails::Representation
      
          property :availability, as: 'availability', class: Google::Apis::DevicerunV1::CatalogDeviceAvailability, decorator: Google::Apis::DevicerunV1::CatalogDeviceAvailability::Representation
      
          property :display_name, as: 'displayName'
          property :form_factor, as: 'formFactor'
          property :hardware_type, as: 'hardwareType'
          property :ios_details, as: 'iosDetails', class: Google::Apis::DevicerunV1::CatalogIosDeviceDetails, decorator: Google::Apis::DevicerunV1::CatalogIosDeviceDetails::Representation
      
          property :lab_info, as: 'labInfo', class: Google::Apis::DevicerunV1::CatalogLabInfo, decorator: Google::Apis::DevicerunV1::CatalogLabInfo::Representation
      
          hash :labels, as: 'labels'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DevicerunV1::CatalogLifecycle, decorator: Google::Apis::DevicerunV1::CatalogLifecycle::Representation
      
          property :manufacturer, as: 'manufacturer'
          property :model_code, as: 'modelCode'
          property :name, as: 'name'
          property :os_version, as: 'osVersion'
          property :platform, as: 'platform'
          property :primary_screen, as: 'primaryScreen', class: Google::Apis::DevicerunV1::CatalogScreenMetrics, decorator: Google::Apis::DevicerunV1::CatalogScreenMetrics::Representation
      
          collection :supported_products, as: 'supportedProducts', class: Google::Apis::DevicerunV1::CatalogSupportedProduct, decorator: Google::Apis::DevicerunV1::CatalogSupportedProduct::Representation
      
        end
      end
      
      class CatalogDeviceAvailability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available, as: 'available'
          property :capacity, as: 'capacity'
        end
      end
      
      class CatalogDeviceStreamingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minimum_android_studio_version, as: 'minimumAndroidStudioVersion'
        end
      end
      
      class CatalogIosDeviceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CatalogLabInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :region_code, as: 'regionCode'
        end
      end
      
      class CatalogLifecycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :removal_date, as: 'removalDate', class: Google::Apis::DevicerunV1::Date, decorator: Google::Apis::DevicerunV1::Date::Representation
      
          property :state, as: 'state'
        end
      end
      
      class CatalogListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::DevicerunV1::CatalogDevice, decorator: Google::Apis::DevicerunV1::CatalogDevice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CatalogListSoftwareVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :software_versions, as: 'softwareVersions', class: Google::Apis::DevicerunV1::CatalogSoftwareVersion, decorator: Google::Apis::DevicerunV1::CatalogSoftwareVersion::Representation
      
        end
      end
      
      class CatalogScreenMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :density_dpi, as: 'densityDpi'
          property :height_px, as: 'heightPx'
          property :width_px, as: 'widthPx'
        end
      end
      
      class CatalogSoftwareVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :androidx_test_orchestrator_details, as: 'androidxTestOrchestratorDetails', class: Google::Apis::DevicerunV1::CatalogAndroidxTestOrchestratorDetails, decorator: Google::Apis::DevicerunV1::CatalogAndroidxTestOrchestratorDetails::Representation
      
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DevicerunV1::CatalogLifecycle, decorator: Google::Apis::DevicerunV1::CatalogLifecycle::Representation
      
          property :name, as: 'name'
          property :software_type, as: 'softwareType'
          property :version, as: 'version'
          property :xcode_details, as: 'xcodeDetails', class: Google::Apis::DevicerunV1::CatalogXcodeDetails, decorator: Google::Apis::DevicerunV1::CatalogXcodeDetails::Representation
      
        end
      end
      
      class CatalogSupportedProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automation, as: 'automation', class: Google::Apis::DevicerunV1::CatalogAutomationSupport, decorator: Google::Apis::DevicerunV1::CatalogAutomationSupport::Representation
      
          property :device_streaming, as: 'deviceStreaming', class: Google::Apis::DevicerunV1::CatalogDeviceStreamingSupport, decorator: Google::Apis::DevicerunV1::CatalogDeviceStreamingSupport::Representation
      
        end
      end
      
      class CatalogXcodeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :supported_ios_versions, as: 'supportedIosVersions'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DevicerunV1::GoogleLongrunningOperation, decorator: Google::Apis::DevicerunV1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DevicerunV1::GoogleRpcStatus, decorator: Google::Apis::DevicerunV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DevicerunV1::Location, decorator: Google::Apis::DevicerunV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
    end
  end
end
