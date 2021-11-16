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
    module ChromemanagementV1
      
      class GoogleChromeManagementV1AndroidAppInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1AndroidAppPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1AppDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1BatteryInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1BatterySampleReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1BatteryStatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1BrowserVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ChromeAppInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ChromeAppPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ChromeAppRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ChromeAppSiteAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountChromeAppRequestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountChromeVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountInstalledAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CpuInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CpuStatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CpuTemperatureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1DiskInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1DisplayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1FindInstalledAppDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1GraphicsAdapterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1GraphicsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1GraphicsStatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1InstalledApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ListTelemetryDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1MemoryInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1MemoryStatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1NetworkStatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1OsUpdateStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1StorageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1StorageInfoDiskVolume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1StorageStatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1AndroidAppInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AndroidAppPermission, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AndroidAppPermission::Representation
      
        end
      end
      
      class GoogleChromeManagementV1AndroidAppPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleChromeManagementV1AppDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_app_info, as: 'androidAppInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AndroidAppInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AndroidAppInfo::Representation
      
          property :app_id, as: 'appId'
          property :chrome_app_info, as: 'chromeAppInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppInfo::Representation
      
          property :description, as: 'description'
          property :detail_uri, as: 'detailUri'
          property :display_name, as: 'displayName'
          property :first_publish_time, as: 'firstPublishTime'
          property :homepage_uri, as: 'homepageUri'
          property :icon_uri, as: 'iconUri'
          property :is_paid_app, as: 'isPaidApp'
          property :latest_publish_time, as: 'latestPublishTime'
          property :name, as: 'name'
          property :privacy_policy_uri, as: 'privacyPolicyUri'
          property :publisher, as: 'publisher'
          property :review_number, :numeric_string => true, as: 'reviewNumber'
          property :review_rating, as: 'reviewRating'
          property :revision_id, as: 'revisionId'
          property :service_error, as: 'serviceError', class: Google::Apis::ChromemanagementV1::GoogleRpcStatus, decorator: Google::Apis::ChromemanagementV1::GoogleRpcStatus::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleChromeManagementV1BatteryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :design_capacity, :numeric_string => true, as: 'designCapacity'
          property :design_min_voltage, as: 'designMinVoltage'
          property :manufacture_date, as: 'manufactureDate', class: Google::Apis::ChromemanagementV1::GoogleTypeDate, decorator: Google::Apis::ChromemanagementV1::GoogleTypeDate::Representation
      
          property :manufacturer, as: 'manufacturer'
          property :serial_number, as: 'serialNumber'
          property :technology, as: 'technology'
        end
      end
      
      class GoogleChromeManagementV1BatterySampleReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :charge_rate, as: 'chargeRate'
          property :current, :numeric_string => true, as: 'current'
          property :discharge_rate, as: 'dischargeRate'
          property :remaining_capacity, :numeric_string => true, as: 'remainingCapacity'
          property :report_time, as: 'reportTime'
          property :status, as: 'status'
          property :temperature, as: 'temperature'
          property :voltage, :numeric_string => true, as: 'voltage'
        end
      end
      
      class GoogleChromeManagementV1BatteryStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :battery_health, as: 'batteryHealth'
          property :cycle_count, as: 'cycleCount'
          property :full_charge_capacity, :numeric_string => true, as: 'fullChargeCapacity'
          property :report_time, as: 'reportTime'
          collection :sample, as: 'sample', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatterySampleReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatterySampleReport::Representation
      
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleChromeManagementV1BrowserVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :count, :numeric_string => true, as: 'count'
          property :device_os_version, as: 'deviceOsVersion'
          property :system, as: 'system'
          property :version, as: 'version'
        end
      end
      
      class GoogleChromeManagementV1ChromeAppInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_owned, as: 'googleOwned'
          property :is_cws_hosted, as: 'isCwsHosted'
          property :is_theme, as: 'isTheme'
          property :min_user_count, as: 'minUserCount'
          collection :permissions, as: 'permissions', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission::Representation
      
          collection :site_access, as: 'siteAccess', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess::Representation
      
          property :support_enabled, as: 'supportEnabled'
        end
      end
      
      class GoogleChromeManagementV1ChromeAppPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_user_data, as: 'accessUserData'
          property :documentation_uri, as: 'documentationUri'
          property :type, as: 'type'
        end
      end
      
      class GoogleChromeManagementV1ChromeAppRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_details, as: 'appDetails'
          property :app_id, as: 'appId'
          property :detail_uri, as: 'detailUri'
          property :display_name, as: 'displayName'
          property :icon_uri, as: 'iconUri'
          property :latest_request_time, as: 'latestRequestTime'
          property :request_count, :numeric_string => true, as: 'requestCount'
        end
      end
      
      class GoogleChromeManagementV1ChromeAppSiteAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_match, as: 'hostMatch'
        end
      end
      
      class GoogleChromeManagementV1CountChromeAppRequestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :requested_apps, as: 'requestedApps', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppRequest, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppRequest::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1CountChromeVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :browser_versions, as: 'browserVersions', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BrowserVersion, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BrowserVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1CountInstalledAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :installed_apps, as: 'installedApps', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1InstalledApp, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1InstalledApp::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1CpuInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :max_clock_speed, as: 'maxClockSpeed'
          property :model, as: 'model'
        end
      end
      
      class GoogleChromeManagementV1CpuStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cpu_temperature_info, as: 'cpuTemperatureInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuTemperatureInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuTemperatureInfo::Representation
      
          property :cpu_utilization_pct, as: 'cpuUtilizationPct'
          property :report_time, as: 'reportTime'
          property :sample_frequency, as: 'sampleFrequency'
        end
      end
      
      class GoogleChromeManagementV1CpuTemperatureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :temperature_celsius, as: 'temperatureCelsius'
        end
      end
      
      class GoogleChromeManagementV1Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :machine, as: 'machine'
        end
      end
      
      class GoogleChromeManagementV1DiskInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_read_this_session, :numeric_string => true, as: 'bytesReadThisSession'
          property :bytes_written_this_session, :numeric_string => true, as: 'bytesWrittenThisSession'
          property :discard_time_this_session, as: 'discardTimeThisSession'
          property :health, as: 'health'
          property :io_time_this_session, as: 'ioTimeThisSession'
          property :manufacturer, as: 'manufacturer'
          property :model, as: 'model'
          property :read_time_this_session, as: 'readTimeThisSession'
          property :serial_number, as: 'serialNumber'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :type, as: 'type'
          collection :volume_ids, as: 'volumeIds'
          property :write_time_this_session, as: 'writeTimeThisSession'
        end
      end
      
      class GoogleChromeManagementV1DisplayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, :numeric_string => true, as: 'deviceId'
          property :is_internal, as: 'isInternal'
          property :refresh_rate, as: 'refreshRate'
          property :resolution_height, as: 'resolutionHeight'
          property :resolution_width, as: 'resolutionWidth'
        end
      end
      
      class GoogleChromeManagementV1FindInstalledAppDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1Device, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1GraphicsAdapterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapter, as: 'adapter'
          property :device_id, :numeric_string => true, as: 'deviceId'
          property :driver_version, as: 'driverVersion'
        end
      end
      
      class GoogleChromeManagementV1GraphicsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapter_info, as: 'adapterInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsAdapterInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsAdapterInfo::Representation
      
        end
      end
      
      class GoogleChromeManagementV1GraphicsStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :displays, as: 'displays', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayInfo::Representation
      
          property :report_time, as: 'reportTime'
        end
      end
      
      class GoogleChromeManagementV1InstalledApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_install_type, as: 'appInstallType'
          property :app_source, as: 'appSource'
          property :app_type, as: 'appType'
          property :browser_device_count, :numeric_string => true, as: 'browserDeviceCount'
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :homepage_uri, as: 'homepageUri'
          property :os_user_count, :numeric_string => true, as: 'osUserCount'
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleChromeManagementV1ListTelemetryDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleChromeManagementV1MemoryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_ram_bytes, :numeric_string => true, as: 'availableRamBytes'
          property :total_ram_bytes, :numeric_string => true, as: 'totalRamBytes'
        end
      end
      
      class GoogleChromeManagementV1MemoryStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_faults, as: 'pageFaults'
          property :report_time, as: 'reportTime'
          property :sample_frequency, as: 'sampleFrequency'
          property :system_ram_free_bytes, :numeric_string => true, as: 'systemRamFreeBytes'
        end
      end
      
      class GoogleChromeManagementV1NetworkStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gateway_ip_address, as: 'gatewayIpAddress'
          property :lan_ip_address, as: 'lanIpAddress'
          property :report_time, as: 'reportTime'
          property :sample_frequency, as: 'sampleFrequency'
          property :signal_strength_dbm, as: 'signalStrengthDbm'
        end
      end
      
      class GoogleChromeManagementV1OsUpdateStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_reboot_time, as: 'lastRebootTime'
          property :last_update_check_time, as: 'lastUpdateCheckTime'
          property :last_update_time, as: 'lastUpdateTime'
          property :new_platform_version, as: 'newPlatformVersion'
          property :new_requested_platform_version, as: 'newRequestedPlatformVersion'
          property :update_state, as: 'updateState'
        end
      end
      
      class GoogleChromeManagementV1StorageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_disk_bytes, :numeric_string => true, as: 'availableDiskBytes'
          property :total_disk_bytes, :numeric_string => true, as: 'totalDiskBytes'
          collection :volume, as: 'volume', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfoDiskVolume, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfoDiskVolume::Representation
      
        end
      end
      
      class GoogleChromeManagementV1StorageInfoDiskVolume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_free_bytes, :numeric_string => true, as: 'storageFreeBytes'
          property :storage_total_bytes, :numeric_string => true, as: 'storageTotalBytes'
          property :volume_id, as: 'volumeId'
        end
      end
      
      class GoogleChromeManagementV1StorageStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disk, as: 'disk', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DiskInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DiskInfo::Representation
      
          property :report_time, as: 'reportTime'
        end
      end
      
      class GoogleChromeManagementV1TelemetryDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :battery_info, as: 'batteryInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryInfo::Representation
      
          collection :battery_status_report, as: 'batteryStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryStatusReport::Representation
      
          collection :cpu_info, as: 'cpuInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuInfo::Representation
      
          collection :cpu_status_report, as: 'cpuStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuStatusReport::Representation
      
          property :customer, as: 'customer'
          property :device_id, as: 'deviceId'
          property :graphics_info, as: 'graphicsInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsInfo::Representation
      
          collection :graphics_status_report, as: 'graphicsStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsStatusReport::Representation
      
          property :memory_info, as: 'memoryInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo::Representation
      
          collection :memory_status_report, as: 'memoryStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport::Representation
      
          property :name, as: 'name'
          collection :network_status_report, as: 'networkStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport::Representation
      
          property :org_unit_id, as: 'orgUnitId'
          collection :os_update_status, as: 'osUpdateStatus', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus::Representation
      
          property :serial_number, as: 'serialNumber'
          property :storage_info, as: 'storageInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfo::Representation
      
          collection :storage_status_report, as: 'storageStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageStatusReport::Representation
      
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
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
