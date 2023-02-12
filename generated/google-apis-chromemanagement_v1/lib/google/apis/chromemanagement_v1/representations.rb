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
      
      class GoogleChromeManagementV1AudioStatusReport
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
      
      class GoogleChromeManagementV1BootPerformanceReport
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
      
      class GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse
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
      
      class GoogleChromeManagementV1DeviceAueCountReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1DeviceHardwareCountReport
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
      
      class GoogleChromeManagementV1HttpsLatencyRoutineData
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
      
      class GoogleChromeManagementV1ListTelemetryEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ListTelemetryUsersResponse
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
      
      class GoogleChromeManagementV1NetworkDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1NetworkDiagnosticsReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1NetworkInfo
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
      
      class GoogleChromeManagementV1PeripheralsReport
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
      
      class GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryDeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryUsbPeripheralsEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryUserDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1ThunderboltInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TotalMemoryEncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1UsbPeripheralReport
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
      
      class GoogleChromeManagementV1AudioStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_device, as: 'inputDevice'
          property :input_gain, as: 'inputGain'
          property :input_mute, as: 'inputMute'
          property :output_device, as: 'outputDevice'
          property :output_mute, as: 'outputMute'
          property :output_volume, as: 'outputVolume'
          property :report_time, as: 'reportTime'
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
      
      class GoogleChromeManagementV1BootPerformanceReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_up_duration, as: 'bootUpDuration'
          property :boot_up_time, as: 'bootUpTime'
          property :report_time, as: 'reportTime'
          property :shutdown_duration, as: 'shutdownDuration'
          property :shutdown_reason, as: 'shutdownReason'
          property :shutdown_time, as: 'shutdownTime'
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
          property :is_extension_policy_supported, as: 'isExtensionPolicySupported'
          property :is_kiosk_only, as: 'isKioskOnly'
          property :is_theme, as: 'isTheme'
          property :kiosk_enabled, as: 'kioskEnabled'
          property :min_user_count, as: 'minUserCount'
          collection :permissions, as: 'permissions', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission::Representation
      
          collection :site_access, as: 'siteAccess', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess::Representation
      
          property :support_enabled, as: 'supportEnabled'
          property :type, as: 'type'
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
      
      class GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_recent_activity_count, :numeric_string => true, as: 'noRecentActivityCount'
          property :pending_browser_update_count, :numeric_string => true, as: 'pendingBrowserUpdateCount'
          property :recently_enrolled_count, :numeric_string => true, as: 'recentlyEnrolledCount'
        end
      end
      
      class GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_aue_count_reports, as: 'deviceAueCountReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceAueCountReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceAueCountReport::Representation
      
        end
      end
      
      class GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_recent_policy_sync_count, :numeric_string => true, as: 'noRecentPolicySyncCount'
          property :no_recent_user_activity_count, :numeric_string => true, as: 'noRecentUserActivityCount'
          property :os_version_not_compliant_count, :numeric_string => true, as: 'osVersionNotCompliantCount'
          property :pending_update, :numeric_string => true, as: 'pendingUpdate'
          property :unsupported_policy_count, :numeric_string => true, as: 'unsupportedPolicyCount'
        end
      end
      
      class GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cpu_reports, as: 'cpuReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport::Representation
      
          collection :memory_reports, as: 'memoryReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport::Representation
      
          collection :model_reports, as: 'modelReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport::Representation
      
          collection :storage_reports, as: 'storageReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport::Representation
      
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
          property :keylocker_configured, as: 'keylockerConfigured'
          property :keylocker_supported, as: 'keylockerSupported'
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
      
      class GoogleChromeManagementV1DeviceAueCountReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aue_month, as: 'aueMonth'
          property :aue_year, :numeric_string => true, as: 'aueYear'
          property :count, :numeric_string => true, as: 'count'
          property :expired, as: 'expired'
          property :model, as: 'model'
        end
      end
      
      class GoogleChromeManagementV1DeviceHardwareCountReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :count, :numeric_string => true, as: 'count'
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
      
      class GoogleChromeManagementV1HttpsLatencyRoutineData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latency, as: 'latency'
          property :problem, as: 'problem'
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
      
      class GoogleChromeManagementV1ListTelemetryEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :telemetry_events, as: 'telemetryEvents', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryEvent::Representation
      
        end
      end
      
      class GoogleChromeManagementV1ListTelemetryUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :telemetry_users, as: 'telemetryUsers', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser::Representation
      
        end
      end
      
      class GoogleChromeManagementV1MemoryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_ram_bytes, :numeric_string => true, as: 'availableRamBytes'
          property :total_memory_encryption, as: 'totalMemoryEncryption', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TotalMemoryEncryptionInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TotalMemoryEncryptionInfo::Representation
      
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
      
      class GoogleChromeManagementV1NetworkDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iccid, as: 'iccid'
          property :imei, as: 'imei'
          property :mac_address, as: 'macAddress'
          property :mdn, as: 'mdn'
          property :meid, as: 'meid'
          property :type, as: 'type'
        end
      end
      
      class GoogleChromeManagementV1NetworkDiagnosticsReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :https_latency_data, as: 'httpsLatencyData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData::Representation
      
          property :report_time, as: 'reportTime'
        end
      end
      
      class GoogleChromeManagementV1NetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_devices, as: 'networkDevices', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDevice::Representation
      
        end
      end
      
      class GoogleChromeManagementV1NetworkStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_state, as: 'connectionState'
          property :connection_type, as: 'connectionType'
          property :encryption_on, as: 'encryptionOn'
          property :gateway_ip_address, as: 'gatewayIpAddress'
          property :guid, as: 'guid'
          property :lan_ip_address, as: 'lanIpAddress'
          property :receiving_bit_rate_mbps, :numeric_string => true, as: 'receivingBitRateMbps'
          property :report_time, as: 'reportTime'
          property :sample_frequency, as: 'sampleFrequency'
          property :signal_strength_dbm, as: 'signalStrengthDbm'
          property :transmission_bit_rate_mbps, :numeric_string => true, as: 'transmissionBitRateMbps'
          property :transmission_power_dbm, as: 'transmissionPowerDbm'
          property :wifi_link_quality, :numeric_string => true, as: 'wifiLinkQuality'
          property :wifi_power_management_enabled, as: 'wifiPowerManagementEnabled'
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
      
      class GoogleChromeManagementV1PeripheralsReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_time, as: 'reportTime'
          collection :usb_peripheral_report, as: 'usbPeripheralReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UsbPeripheralReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UsbPeripheralReport::Representation
      
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
      
      class GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleChromeManagementV1TelemetryDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audio_status_report, as: 'audioStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport::Representation
      
          collection :battery_info, as: 'batteryInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryInfo::Representation
      
          collection :battery_status_report, as: 'batteryStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryStatusReport::Representation
      
          collection :boot_performance_report, as: 'bootPerformanceReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BootPerformanceReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BootPerformanceReport::Representation
      
          collection :cpu_info, as: 'cpuInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuInfo::Representation
      
          collection :cpu_status_report, as: 'cpuStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuStatusReport::Representation
      
          property :customer, as: 'customer'
          property :device_id, as: 'deviceId'
          property :graphics_info, as: 'graphicsInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsInfo::Representation
      
          collection :graphics_status_report, as: 'graphicsStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsStatusReport::Representation
      
          property :memory_info, as: 'memoryInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo::Representation
      
          collection :memory_status_report, as: 'memoryStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport::Representation
      
          property :name, as: 'name'
          collection :network_diagnostics_report, as: 'networkDiagnosticsReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDiagnosticsReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDiagnosticsReport::Representation
      
          property :network_info, as: 'networkInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkInfo::Representation
      
          collection :network_status_report, as: 'networkStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport::Representation
      
          property :org_unit_id, as: 'orgUnitId'
          collection :os_update_status, as: 'osUpdateStatus', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus::Representation
      
          collection :peripherals_report, as: 'peripheralsReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport::Representation
      
          property :serial_number, as: 'serialNumber'
          property :storage_info, as: 'storageInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfo::Representation
      
          collection :storage_status_report, as: 'storageStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageStatusReport::Representation
      
          collection :thunderbolt_info, as: 'thunderboltInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ThunderboltInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ThunderboltInfo::Representation
      
        end
      end
      
      class GoogleChromeManagementV1TelemetryDeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :org_unit_id, as: 'orgUnitId'
        end
      end
      
      class GoogleChromeManagementV1TelemetryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_severe_underrun_event, as: 'audioSevereUnderrunEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent::Representation
      
          property :device, as: 'device', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDeviceInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDeviceInfo::Representation
      
          property :event_type, as: 'eventType'
          property :https_latency_change_event, as: 'httpsLatencyChangeEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent::Representation
      
          property :name, as: 'name'
          property :report_time, as: 'reportTime'
          property :usb_peripherals_event, as: 'usbPeripheralsEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUsbPeripheralsEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUsbPeripheralsEvent::Representation
      
          property :user, as: 'user', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserInfo::Representation
      
        end
      end
      
      class GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :https_latency_routine_data, as: 'httpsLatencyRoutineData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData::Representation
      
          property :https_latency_state, as: 'httpsLatencyState'
        end
      end
      
      class GoogleChromeManagementV1TelemetryUsbPeripheralsEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :usb_peripheral_report, as: 'usbPeripheralReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UsbPeripheralReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UsbPeripheralReport::Representation
      
        end
      end
      
      class GoogleChromeManagementV1TelemetryUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :name, as: 'name'
          property :org_unit_id, as: 'orgUnitId'
          collection :user_device, as: 'userDevice', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserDevice::Representation
      
          property :user_email, as: 'userEmail'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleChromeManagementV1TelemetryUserDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audio_status_report, as: 'audioStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport::Representation
      
          property :device_id, as: 'deviceId'
          collection :peripherals_report, as: 'peripheralsReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport::Representation
      
        end
      end
      
      class GoogleChromeManagementV1TelemetryUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :org_unit_id, as: 'orgUnitId'
        end
      end
      
      class GoogleChromeManagementV1ThunderboltInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_level, as: 'securityLevel'
        end
      end
      
      class GoogleChromeManagementV1TotalMemoryEncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_algorithm, as: 'encryptionAlgorithm'
          property :encryption_state, as: 'encryptionState'
          property :key_length, :numeric_string => true, as: 'keyLength'
          property :max_keys, :numeric_string => true, as: 'maxKeys'
        end
      end
      
      class GoogleChromeManagementV1UsbPeripheralReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          property :class_id, as: 'classId'
          property :firmware_version, as: 'firmwareVersion'
          property :name, as: 'name'
          property :pid, as: 'pid'
          property :subclass_id, as: 'subclassId'
          property :vendor, as: 'vendor'
          property :vid, as: 'vid'
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
