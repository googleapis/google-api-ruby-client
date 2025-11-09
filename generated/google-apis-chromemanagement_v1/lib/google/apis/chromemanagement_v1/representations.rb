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
      
      class GoogleChromeManagementV1AppReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1AppUsageData
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
      
      class GoogleChromeManagementV1CountActiveDevicesResponse
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
      
      class GoogleChromeManagementV1CountChromeCrashEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
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
      
      class GoogleChromeManagementV1CountDevicesPerBootTypeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountInstalledAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountPrintJobsByPrinterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1CountPrintJobsByUserResponse
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
      
      class GoogleChromeManagementV1DeviceActivityReport
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
      
      class GoogleChromeManagementV1DeviceRequestingExtensionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1DiskInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1DisplayDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1DisplayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1EnumeratePrintJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1FetchUsersRequestingExtensionResponse
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
      
      class GoogleChromeManagementV1HeartbeatStatusReport
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
      
      class GoogleChromeManagementV1KioskAppStatusReport
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
      
      class GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse
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
      
      class GoogleChromeManagementV1NetworkBandwidthReport
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
      
      class GoogleChromeManagementV1PrintJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1PrinterReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1RiskAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1RiskAssessmentData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1RiskAssessmentEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1RuntimeCountersReport
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
      
      class GoogleChromeManagementV1TelemetryAppInstallEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryAppLaunchEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryAppUninstallEvent
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
      
      class GoogleChromeManagementV1TelemetryEventNotificationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryExternalDisplayData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryExternalDisplayEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryNotificationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TelemetryOsCrashEvent
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
      
      class GoogleChromeManagementV1TouchScreenDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1TouchScreenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1UsbPeripheralReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1UserPrintReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1UserRequestingExtensionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1AttestationCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1CertificateProvisioningProcess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ChromeBrowserProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ChromeOsDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ChromeOsUserSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1DeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1GenericCaConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1GenericProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ReportingData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataExtensionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataPolicyData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ScepCaConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ScepProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1SetFailureRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1SetFailureResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1SignDataMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1SignDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1SignDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1SubjectAltName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1ThirdPartyProfileUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1UploadCertificateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementVersionsV1UploadCertificateResponse
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
      
      class GoogleProtobufEmpty
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
      
      class GoogleChromeManagementV1AppReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_time, as: 'reportTime'
          collection :usage_data, as: 'usageData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppUsageData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppUsageData::Representation
      
        end
      end
      
      class GoogleChromeManagementV1AppUsageData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_instance_id, as: 'appInstanceId'
          property :app_type, as: 'appType'
          property :running_duration, as: 'runningDuration'
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
          property :manifest_version, :numeric_string => true, as: 'manifestVersion'
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
      
      class GoogleChromeManagementV1CountActiveDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :seven_days_count, :numeric_string => true, as: 'sevenDaysCount'
          property :thirty_days_count, :numeric_string => true, as: 'thirtyDaysCount'
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
      
      class GoogleChromeManagementV1CountChromeCrashEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crash_event_counts, as: 'crashEventCounts', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount::Representation
      
        end
      end
      
      class GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browser_version, as: 'browserVersion'
          property :count, :numeric_string => true, as: 'count'
          property :date, as: 'date', class: Google::Apis::ChromemanagementV1::GoogleTypeDate, decorator: Google::Apis::ChromemanagementV1::GoogleTypeDate::Representation
      
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
      
      class GoogleChromeManagementV1CountDevicesPerBootTypeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dev_boot_type_count, :numeric_string => true, as: 'devBootTypeCount'
          property :unreported_boot_type_count, :numeric_string => true, as: 'unreportedBootTypeCount'
          property :verified_boot_type_count, :numeric_string => true, as: 'verifiedBootTypeCount'
        end
      end
      
      class GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beta_channel_count, :numeric_string => true, as: 'betaChannelCount'
          property :canary_channel_count, :numeric_string => true, as: 'canaryChannelCount'
          property :dev_channel_count, :numeric_string => true, as: 'devChannelCount'
          property :ltc_channel_count, :numeric_string => true, as: 'ltcChannelCount'
          property :lts_channel_count, :numeric_string => true, as: 'ltsChannelCount'
          property :stable_channel_count, :numeric_string => true, as: 'stableChannelCount'
          property :unreported_channel_count, :numeric_string => true, as: 'unreportedChannelCount'
          property :unsupported_channel_count, :numeric_string => true, as: 'unsupportedChannelCount'
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
      
      class GoogleChromeManagementV1CountPrintJobsByPrinterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :printer_reports, as: 'printerReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PrinterReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PrinterReport::Representation
      
          property :total_size, :numeric_string => true, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1CountPrintJobsByUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :total_size, :numeric_string => true, as: 'totalSize'
          collection :user_print_reports, as: 'userPrintReports', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UserPrintReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UserPrintReport::Representation
      
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
      
      class GoogleChromeManagementV1DeviceActivityReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_activity_state, as: 'deviceActivityState'
          property :report_time, as: 'reportTime'
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
      
      class GoogleChromeManagementV1DeviceRequestingExtensionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_name, as: 'deviceName'
          property :justification, as: 'justification'
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
      
      class GoogleChromeManagementV1DisplayDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_height_mm, as: 'displayHeightMm'
          property :display_name, as: 'displayName'
          property :display_width_mm, as: 'displayWidthMm'
          property :edid_version, as: 'edidVersion'
          property :internal, as: 'internal'
          property :manufacture_year, as: 'manufactureYear'
          property :manufacturer_id, as: 'manufacturerId'
          property :model_id, as: 'modelId'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleChromeManagementV1DisplayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, :numeric_string => true, as: 'deviceId'
          property :display_name, as: 'displayName'
          property :edid_version, as: 'edidVersion'
          property :is_internal, as: 'isInternal'
          property :refresh_rate, as: 'refreshRate'
          property :resolution_height, as: 'resolutionHeight'
          property :resolution_width, as: 'resolutionWidth'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleChromeManagementV1EnumeratePrintJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :print_jobs, as: 'printJobs', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PrintJob, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PrintJob::Representation
      
          property :total_size, :numeric_string => true, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_details, as: 'deviceDetails', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceRequestingExtensionDetails, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceRequestingExtensionDetails::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementV1FetchUsersRequestingExtensionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
          collection :user_details, as: 'userDetails', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UserRequestingExtensionDetails, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UserRequestingExtensionDetails::Representation
      
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
      
          collection :display_devices, as: 'displayDevices', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayDevice::Representation
      
          property :eprivacy_supported, as: 'eprivacySupported'
          property :touch_screen_info, as: 'touchScreenInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TouchScreenInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TouchScreenInfo::Representation
      
        end
      end
      
      class GoogleChromeManagementV1GraphicsStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :displays, as: 'displays', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayInfo::Representation
      
          property :report_time, as: 'reportTime'
        end
      end
      
      class GoogleChromeManagementV1HeartbeatStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_time, as: 'reportTime'
          property :state, as: 'state'
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
          property :risk_assessment, as: 'riskAssessment', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessmentData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessmentData::Representation
      
        end
      end
      
      class GoogleChromeManagementV1KioskAppStatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_version, as: 'appVersion'
          property :report_time, as: 'reportTime'
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
      
      class GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :telemetry_notification_configs, as: 'telemetryNotificationConfigs', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig::Representation
      
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
      
      class GoogleChromeManagementV1NetworkBandwidthReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_speed_kbps, :numeric_string => true, as: 'downloadSpeedKbps'
          property :report_time, as: 'reportTime'
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
          property :gateway_ipv6_address, as: 'gatewayIpv6Address'
          property :guid, as: 'guid'
          collection :ipv6_address, as: 'ipv6Address'
          property :lan_ip_address, as: 'lanIpAddress'
          property :link_down_speed_kbps, :numeric_string => true, as: 'linkDownSpeedKbps'
          property :metered, as: 'metered'
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
      
      class GoogleChromeManagementV1PrintJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color_mode, as: 'colorMode'
          property :complete_time, as: 'completeTime'
          property :copy_count, as: 'copyCount'
          property :create_time, as: 'createTime'
          property :document_page_count, as: 'documentPageCount'
          property :duplex_mode, as: 'duplexMode'
          property :id, as: 'id'
          property :printer, as: 'printer'
          property :printer_id, as: 'printerId'
          property :state, as: 'state'
          property :title, as: 'title'
          property :user_email, as: 'userEmail'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleChromeManagementV1PrinterReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_count, :numeric_string => true, as: 'deviceCount'
          property :job_count, :numeric_string => true, as: 'jobCount'
          property :printer, as: 'printer'
          property :printer_id, as: 'printerId'
          property :printer_model, as: 'printerModel'
          property :user_count, :numeric_string => true, as: 'userCount'
        end
      end
      
      class GoogleChromeManagementV1RiskAssessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assessment, as: 'assessment'
          property :details_url, as: 'detailsUrl'
          property :version, as: 'version'
        end
      end
      
      class GoogleChromeManagementV1RiskAssessmentData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessmentEntry, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessmentEntry::Representation
      
          property :overall_risk_level, as: 'overallRiskLevel'
        end
      end
      
      class GoogleChromeManagementV1RiskAssessmentEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
          property :risk_assessment, as: 'riskAssessment', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessment, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessment::Representation
      
          property :risk_level, as: 'riskLevel'
        end
      end
      
      class GoogleChromeManagementV1RuntimeCountersReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enter_hibernation_count, :numeric_string => true, as: 'enterHibernationCount'
          property :enter_poweroff_count, :numeric_string => true, as: 'enterPoweroffCount'
          property :enter_sleep_count, :numeric_string => true, as: 'enterSleepCount'
          property :report_time, as: 'reportTime'
          property :uptime_runtime_duration, as: 'uptimeRuntimeDuration'
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
      
      class GoogleChromeManagementV1TelemetryAppInstallEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_install_reason, as: 'appInstallReason'
          property :app_install_source, as: 'appInstallSource'
          property :app_install_time, as: 'appInstallTime'
          property :app_type, as: 'appType'
        end
      end
      
      class GoogleChromeManagementV1TelemetryAppLaunchEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_launch_source, as: 'appLaunchSource'
          property :app_type, as: 'appType'
        end
      end
      
      class GoogleChromeManagementV1TelemetryAppUninstallEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_type, as: 'appType'
          property :app_uninstall_source, as: 'appUninstallSource'
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
          collection :app_report, as: 'appReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppReport::Representation
      
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
      
          collection :heartbeat_status_report, as: 'heartbeatStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HeartbeatStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HeartbeatStatusReport::Representation
      
          collection :kiosk_app_status_report, as: 'kioskAppStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1KioskAppStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1KioskAppStatusReport::Representation
      
          property :memory_info, as: 'memoryInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo::Representation
      
          collection :memory_status_report, as: 'memoryStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport::Representation
      
          property :name, as: 'name'
          collection :network_bandwidth_report, as: 'networkBandwidthReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkBandwidthReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkBandwidthReport::Representation
      
          collection :network_diagnostics_report, as: 'networkDiagnosticsReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDiagnosticsReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDiagnosticsReport::Representation
      
          property :network_info, as: 'networkInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkInfo::Representation
      
          collection :network_status_report, as: 'networkStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport::Representation
      
          property :org_unit_id, as: 'orgUnitId'
          collection :os_update_status, as: 'osUpdateStatus', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus::Representation
      
          collection :peripherals_report, as: 'peripheralsReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport::Representation
      
          collection :runtime_counters_report, as: 'runtimeCountersReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RuntimeCountersReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RuntimeCountersReport::Representation
      
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
          property :app_install_event, as: 'appInstallEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppInstallEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppInstallEvent::Representation
      
          property :app_launch_event, as: 'appLaunchEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppLaunchEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppLaunchEvent::Representation
      
          property :app_uninstall_event, as: 'appUninstallEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppUninstallEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppUninstallEvent::Representation
      
          property :audio_severe_underrun_event, as: 'audioSevereUnderrunEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent::Representation
      
          property :device, as: 'device', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDeviceInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDeviceInfo::Representation
      
          property :event_type, as: 'eventType'
          property :external_displays_event, as: 'externalDisplaysEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryExternalDisplayEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryExternalDisplayEvent::Representation
      
          property :https_latency_change_event, as: 'httpsLatencyChangeEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent::Representation
      
          property :name, as: 'name'
          property :network_state_change_event, as: 'networkStateChangeEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent::Representation
      
          property :os_crash_event, as: 'osCrashEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryOsCrashEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryOsCrashEvent::Representation
      
          property :report_time, as: 'reportTime'
          property :usb_peripherals_event, as: 'usbPeripheralsEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUsbPeripheralsEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUsbPeripheralsEvent::Representation
      
          property :user, as: 'user', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserInfo::Representation
      
          property :vpn_connection_state_change_event, as: 'vpnConnectionStateChangeEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent::Representation
      
          property :wifi_signal_strength_event, as: 'wifiSignalStrengthEvent', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent::Representation
      
        end
      end
      
      class GoogleChromeManagementV1TelemetryEventNotificationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_types, as: 'eventTypes'
        end
      end
      
      class GoogleChromeManagementV1TelemetryExternalDisplayData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :edid_version, as: 'edidVersion'
          property :refresh_rate, :numeric_string => true, as: 'refreshRate'
          property :resolution_horizontal, as: 'resolutionHorizontal'
          property :resolution_vertical, as: 'resolutionVertical'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleChromeManagementV1TelemetryExternalDisplayEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :external_display_data, as: 'externalDisplayData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryExternalDisplayData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryExternalDisplayData::Representation
      
        end
      end
      
      class GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :https_latency_routine_data, as: 'httpsLatencyRoutineData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData::Representation
      
          property :https_latency_state, as: 'httpsLatencyState'
        end
      end
      
      class GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_state, as: 'connectionState'
          property :guid, as: 'guid'
        end
      end
      
      class GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :guid, as: 'guid'
          property :signal_strength_dbm, as: 'signalStrengthDbm'
        end
      end
      
      class GoogleChromeManagementV1TelemetryNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :filter, as: 'filter', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationFilter, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationFilter::Representation
      
          property :google_cloud_pubsub_topic, as: 'googleCloudPubsubTopic'
          property :name, as: 'name'
        end
      end
      
      class GoogleChromeManagementV1TelemetryNotificationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :device_org_unit_id, as: 'deviceOrgUnitId'
          property :telemetry_event_notification_filter, as: 'telemetryEventNotificationFilter', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryEventNotificationFilter, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryEventNotificationFilter::Representation
      
          property :user_email, as: 'userEmail'
          property :user_org_unit_id, as: 'userOrgUnitId'
        end
      end
      
      class GoogleChromeManagementV1TelemetryOsCrashEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crash_id, as: 'crashId'
          property :crash_type, as: 'crashType'
          property :session_type, as: 'sessionType'
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
          collection :app_report, as: 'appReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppReport::Representation
      
          collection :audio_status_report, as: 'audioStatusReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport::Representation
      
          collection :device_activity_report, as: 'deviceActivityReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceActivityReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceActivityReport::Representation
      
          property :device_id, as: 'deviceId'
          collection :network_bandwidth_report, as: 'networkBandwidthReport', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkBandwidthReport, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkBandwidthReport::Representation
      
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
      
      class GoogleChromeManagementV1TouchScreenDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :stylus_capable, as: 'stylusCapable'
          property :touch_point_count, as: 'touchPointCount'
        end
      end
      
      class GoogleChromeManagementV1TouchScreenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TouchScreenDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TouchScreenDevice::Representation
      
          property :touchpad_library, as: 'touchpadLibrary'
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
      
      class GoogleChromeManagementV1UserPrintReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_count, :numeric_string => true, as: 'deviceCount'
          property :job_count, :numeric_string => true, as: 'jobCount'
          property :printer_count, :numeric_string => true, as: 'printerCount'
          property :user_email, as: 'userEmail'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleChromeManagementV1UserRequestingExtensionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :justification, as: 'justification'
        end
      end
      
      class GoogleChromeManagementVersionsV1AttestationCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_rotation_time, as: 'keyRotationTime'
          property :key_trust_level, as: 'keyTrustLevel'
          property :key_type, as: 'keyType'
          property :public_key, :base64 => true, as: 'publicKey'
        end
      end
      
      class GoogleChromeManagementVersionsV1CertificateProvisioningProcess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chrome_os_device, as: 'chromeOsDevice', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsDevice::Representation
      
          property :chrome_os_user_session, as: 'chromeOsUserSession', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsUserSession, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsUserSession::Representation
      
          property :failure_message, as: 'failureMessage'
          property :generic_ca_connection, as: 'genericCaConnection', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1GenericCaConnection, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1GenericCaConnection::Representation
      
          property :generic_profile, as: 'genericProfile', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1GenericProfile, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1GenericProfile::Representation
      
          property :issued_certificate, as: 'issuedCertificate'
          property :name, as: 'name'
          property :provisioning_profile_id, as: 'provisioningProfileId'
          property :scep_ca_connection, as: 'scepCaConnection', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ScepCaConnection, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ScepCaConnection::Representation
      
          property :scep_profile, as: 'scepProfile', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ScepProfile, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ScepProfile::Representation
      
          property :sign_data, :base64 => true, as: 'signData'
          property :signature, :base64 => true, as: 'signature'
          property :signature_algorithm, as: 'signatureAlgorithm'
          property :start_time, as: 'startTime'
          property :subject_public_key_info, :base64 => true, as: 'subjectPublicKeyInfo'
        end
      end
      
      class GoogleChromeManagementVersionsV1ChromeBrowserProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affiliation_state, as: 'affiliationState'
          property :annotated_location, as: 'annotatedLocation'
          property :annotated_user, as: 'annotatedUser'
          property :attestation_credential, as: 'attestationCredential', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1AttestationCredential, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1AttestationCredential::Representation
      
          property :browser_channel, as: 'browserChannel'
          property :browser_version, as: 'browserVersion'
          property :device_info, as: 'deviceInfo', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1DeviceInfo, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1DeviceInfo::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :extension_count, :numeric_string => true, as: 'extensionCount'
          property :first_enrollment_time, as: 'firstEnrollmentTime'
          property :identity_provider, as: 'identityProvider'
          property :last_activity_time, as: 'lastActivityTime'
          property :last_policy_fetch_time, as: 'lastPolicyFetchTime'
          property :last_policy_sync_time, as: 'lastPolicySyncTime'
          property :last_status_report_time, as: 'lastStatusReportTime'
          property :name, as: 'name'
          property :os_platform_type, as: 'osPlatformType'
          property :os_platform_version, as: 'osPlatformVersion'
          property :os_version, as: 'osVersion'
          property :policy_count, :numeric_string => true, as: 'policyCount'
          property :profile_id, as: 'profileId'
          property :profile_permanent_id, as: 'profilePermanentId'
          property :reporting_data, as: 'reportingData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingData::Representation
      
          property :supports_fcm_notifications, as: 'supportsFcmNotifications'
          property :user_email, as: 'userEmail'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command_result, as: 'commandResult', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult::Representation
      
          property :command_state, as: 'commandState'
          property :command_type, as: 'commandType'
          property :issue_time, as: 'issueTime'
          property :name, as: 'name'
          hash :payload, as: 'payload'
          property :valid_duration, as: 'validDuration'
        end
      end
      
      class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_execution_time, as: 'clientExecutionTime'
          property :result_code, as: 'resultCode'
          property :result_type, as: 'resultType'
        end
      end
      
      class GoogleChromeManagementVersionsV1ChromeOsDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_directory_api_id, as: 'deviceDirectoryApiId'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleChromeManagementVersionsV1ChromeOsUserSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chrome_os_device, as: 'chromeOsDevice', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsDevice, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsDevice::Representation
      
          property :user_directory_api_id, as: 'userDirectoryApiId'
          property :user_primary_email, as: 'userPrimaryEmail'
        end
      end
      
      class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caller_instance_id, as: 'callerInstanceId'
        end
      end
      
      class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleChromeManagementVersionsV1DeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affiliated_device_id, as: 'affiliatedDeviceId'
          property :device_type, as: 'deviceType'
          property :hostname, as: 'hostname'
          property :machine, as: 'machine'
        end
      end
      
      class GoogleChromeManagementVersionsV1GenericCaConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_connection_adapter_config_reference, as: 'caConnectionAdapterConfigReference'
        end
      end
      
      class GoogleChromeManagementVersionsV1GenericProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile_adapter_config_reference, as: 'profileAdapterConfigReference'
        end
      end
      
      class GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chrome_browser_profile_commands, as: 'chromeBrowserProfileCommands', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, :numeric_string => true, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chrome_browser_profiles, as: 'chromeBrowserProfiles', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, :numeric_string => true, as: 'totalSize'
        end
      end
      
      class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_org_unit, as: 'destinationOrgUnit'
        end
      end
      
      class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :third_party_profile_user, as: 'thirdPartyProfileUser', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ThirdPartyProfileUser, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ThirdPartyProfileUser::Representation
      
        end
      end
      
      class GoogleChromeManagementVersionsV1ReportingData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browser_executable_path, as: 'browserExecutablePath'
          collection :extension_data, as: 'extensionData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataExtensionData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataExtensionData::Representation
      
          collection :extension_policy_data, as: 'extensionPolicyData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData::Representation
      
          property :installed_browser_version, as: 'installedBrowserVersion'
          collection :policy_data, as: 'policyData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataPolicyData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataPolicyData::Representation
      
          property :profile_path, as: 'profilePath'
        end
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
        end
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataExtensionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :extension_id, as: 'extensionId'
          property :extension_type, as: 'extensionType'
          property :homepage_uri, as: 'homepageUri'
          property :installation_type, as: 'installationType'
          property :is_disabled, as: 'isDisabled'
          property :is_webstore_extension, as: 'isWebstoreExtension'
          property :manifest_version, as: 'manifestVersion'
          property :name, as: 'name'
          collection :permissions, as: 'permissions'
          property :version, as: 'version'
        end
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension_id, as: 'extensionId'
          property :extension_name, as: 'extensionName'
          collection :policy_data, as: 'policyData', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataPolicyData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataPolicyData::Representation
      
        end
      end
      
      class GoogleChromeManagementVersionsV1ReportingDataPolicyData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conflicts, as: 'conflicts', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData::Representation
      
          property :error, as: 'error'
          property :name, as: 'name'
          property :source, as: 'source'
          property :value, as: 'value'
        end
      end
      
      class GoogleChromeManagementVersionsV1ScepCaConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_connection_adapter_config_reference, as: 'caConnectionAdapterConfigReference'
        end
      end
      
      class GoogleChromeManagementVersionsV1ScepProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_template_name, as: 'certificateTemplateName'
          property :country, as: 'country'
          collection :key_usages, as: 'keyUsages'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          collection :organizational_units, as: 'organizationalUnits'
          property :state, as: 'state'
          collection :subject_alt_names, as: 'subjectAltNames', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SubjectAltName, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SubjectAltName::Representation
      
          property :subject_common_name, as: 'subjectCommonName'
        end
      end
      
      class GoogleChromeManagementVersionsV1SetFailureRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
        end
      end
      
      class GoogleChromeManagementVersionsV1SetFailureResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleChromeManagementVersionsV1SignDataMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleChromeManagementVersionsV1SignDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sign_data, :base64 => true, as: 'signData'
          property :signature_algorithm, as: 'signatureAlgorithm'
        end
      end
      
      class GoogleChromeManagementVersionsV1SignDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_provisioning_process, as: 'certificateProvisioningProcess', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess::Representation
      
        end
      end
      
      class GoogleChromeManagementVersionsV1SubjectAltName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class GoogleChromeManagementVersionsV1ThirdPartyProfileUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :org_unit_id, as: 'orgUnitId'
        end
      end
      
      class GoogleChromeManagementVersionsV1UploadCertificateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_pem, as: 'certificatePem'
        end
      end
      
      class GoogleChromeManagementVersionsV1UploadCertificateResponse
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
          collection :operations, as: 'operations', class: Google::Apis::ChromemanagementV1::GoogleLongrunningOperation, decorator: Google::Apis::ChromemanagementV1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ChromemanagementV1::GoogleRpcStatus, decorator: Google::Apis::ChromemanagementV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
