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
    module DevicerunV1alpha
      
      class AllocationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidBugreportDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidDumpsysDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidInstallPackagesDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidInstallable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidInstrumentationTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidInstrumentationTestSmartSharding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidInstrumentationTestUniformSharding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidLogcatDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidMockLocationDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidNativeBinary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidOrientationDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidPullFilesDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidPushFilesDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidPushFilesDeviceActionFileConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidRecordVideoDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidSwitchLocaleDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSessionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class DeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceRequirement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsPath
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
      
      class InputFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosAppPrivacyReportDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosInstallPackagesDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosPullFilesDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosPullFilesDeviceActionPathConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosPushFilesDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosPushFilesDeviceActionFileConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosRecordVideoDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosSwitchLocaleDeviceAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosXcTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutputFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultCause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrySettingsFlakyTestRetryStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionConfigSessionNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionConfigSessionOutputFileDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Warning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_configs, as: 'deviceConfigs', class: Google::Apis::DevicerunV1alpha::DeviceConfig, decorator: Google::Apis::DevicerunV1alpha::DeviceConfig::Representation
      
        end
      end
      
      class AndroidBugreportDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collect_on_pass, as: 'collectOnPass'
        end
      end
      
      class AndroidDumpsysDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collect_on_pass, as: 'collectOnPass'
        end
      end
      
      class AndroidInstallPackagesDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :installables, as: 'installables', class: Google::Apis::DevicerunV1alpha::AndroidInstallable, decorator: Google::Apis::DevicerunV1alpha::AndroidInstallable::Representation
      
          collection :post_target_app_installables, as: 'postTargetAppInstallables', class: Google::Apis::DevicerunV1alpha::AndroidInstallable, decorator: Google::Apis::DevicerunV1alpha::AndroidInstallable::Representation
      
          collection :pre_target_app_installables, as: 'preTargetAppInstallables', class: Google::Apis::DevicerunV1alpha::AndroidInstallable, decorator: Google::Apis::DevicerunV1alpha::AndroidInstallable::Representation
      
          property :target_app, as: 'targetApp', class: Google::Apis::DevicerunV1alpha::AndroidInstallable, decorator: Google::Apis::DevicerunV1alpha::AndroidInstallable::Representation
      
        end
      end
      
      class AndroidInstallable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :files, as: 'files', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
        end
      end
      
      class AndroidInstrumentationTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_test_options, as: 'additionalTestOptions'
          property :enable_code_coverage, as: 'enableCodeCoverage'
          property :instrumentation_timeout, as: 'instrumentationTimeout'
          property :orchestrator_version, as: 'orchestratorVersion'
          property :smart_sharding, as: 'smartSharding', class: Google::Apis::DevicerunV1alpha::AndroidInstrumentationTestSmartSharding, decorator: Google::Apis::DevicerunV1alpha::AndroidInstrumentationTestSmartSharding::Representation
      
          property :test_installable, as: 'testInstallable', class: Google::Apis::DevicerunV1alpha::AndroidInstallable, decorator: Google::Apis::DevicerunV1alpha::AndroidInstallable::Representation
      
          property :test_runner_class, as: 'testRunnerClass'
          collection :test_targets, as: 'testTargets'
          property :uniform_sharding, as: 'uniformSharding', class: Google::Apis::DevicerunV1alpha::AndroidInstrumentationTestUniformSharding, decorator: Google::Apis::DevicerunV1alpha::AndroidInstrumentationTestUniformSharding::Representation
      
        end
      end
      
      class AndroidInstrumentationTestSmartSharding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_shard_count, as: 'maxShardCount'
          property :targeted_shard_duration, as: 'targetedShardDuration'
          property :timing_record, as: 'timingRecord', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
        end
      end
      
      class AndroidInstrumentationTestUniformSharding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, as: 'shardCount'
        end
      end
      
      class AndroidLogcatDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AndroidMockLocationDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::DevicerunV1alpha::LatLng, decorator: Google::Apis::DevicerunV1alpha::LatLng::Representation
      
        end
      end
      
      class AndroidNativeBinary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_native_binary, as: 'androidNativeBinary', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
          collection :args, as: 'args'
          hash :env_vars, as: 'envVars'
          property :execution_timeout, as: 'executionTimeout'
        end
      end
      
      class AndroidOrientationDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :orientation, as: 'orientation'
        end
      end
      
      class AndroidPullFilesDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
        end
      end
      
      class AndroidPushFilesDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_configs, as: 'fileConfigs', class: Google::Apis::DevicerunV1alpha::AndroidPushFilesDeviceActionFileConfig, decorator: Google::Apis::DevicerunV1alpha::AndroidPushFilesDeviceActionFileConfig::Representation
      
        end
      end
      
      class AndroidPushFilesDeviceActionFileConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_path, as: 'destinationPath'
          property :source_file, as: 'sourceFile', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
        end
      end
      
      class AndroidRecordVideoDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discard_on_pass, as: 'discardOnPass'
        end
      end
      
      class AndroidSwitchLocaleDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale_code, as: 'localeCode'
        end
      end
      
      class CancelSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelSessionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_result, as: 'cancelResult'
        end
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
          property :android_details, as: 'androidDetails', class: Google::Apis::DevicerunV1alpha::CatalogAndroidDeviceDetails, decorator: Google::Apis::DevicerunV1alpha::CatalogAndroidDeviceDetails::Representation
      
          property :availability, as: 'availability', class: Google::Apis::DevicerunV1alpha::CatalogDeviceAvailability, decorator: Google::Apis::DevicerunV1alpha::CatalogDeviceAvailability::Representation
      
          property :display_name, as: 'displayName'
          property :form_factor, as: 'formFactor'
          property :hardware_type, as: 'hardwareType'
          property :ios_details, as: 'iosDetails', class: Google::Apis::DevicerunV1alpha::CatalogIosDeviceDetails, decorator: Google::Apis::DevicerunV1alpha::CatalogIosDeviceDetails::Representation
      
          property :lab_info, as: 'labInfo', class: Google::Apis::DevicerunV1alpha::CatalogLabInfo, decorator: Google::Apis::DevicerunV1alpha::CatalogLabInfo::Representation
      
          hash :labels, as: 'labels'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DevicerunV1alpha::CatalogLifecycle, decorator: Google::Apis::DevicerunV1alpha::CatalogLifecycle::Representation
      
          property :manufacturer, as: 'manufacturer'
          property :model_code, as: 'modelCode'
          property :name, as: 'name'
          property :os_version, as: 'osVersion'
          property :platform, as: 'platform'
          property :primary_screen, as: 'primaryScreen', class: Google::Apis::DevicerunV1alpha::CatalogScreenMetrics, decorator: Google::Apis::DevicerunV1alpha::CatalogScreenMetrics::Representation
      
          collection :supported_products, as: 'supportedProducts', class: Google::Apis::DevicerunV1alpha::CatalogSupportedProduct, decorator: Google::Apis::DevicerunV1alpha::CatalogSupportedProduct::Representation
      
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
          property :removal_date, as: 'removalDate', class: Google::Apis::DevicerunV1alpha::Date, decorator: Google::Apis::DevicerunV1alpha::Date::Representation
      
          property :state, as: 'state'
        end
      end
      
      class CatalogListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::DevicerunV1alpha::CatalogDevice, decorator: Google::Apis::DevicerunV1alpha::CatalogDevice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CatalogListSoftwareVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :software_versions, as: 'softwareVersions', class: Google::Apis::DevicerunV1alpha::CatalogSoftwareVersion, decorator: Google::Apis::DevicerunV1alpha::CatalogSoftwareVersion::Representation
      
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
          property :androidx_test_orchestrator_details, as: 'androidxTestOrchestratorDetails', class: Google::Apis::DevicerunV1alpha::CatalogAndroidxTestOrchestratorDetails, decorator: Google::Apis::DevicerunV1alpha::CatalogAndroidxTestOrchestratorDetails::Representation
      
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DevicerunV1alpha::CatalogLifecycle, decorator: Google::Apis::DevicerunV1alpha::CatalogLifecycle::Representation
      
          property :name, as: 'name'
          property :software_type, as: 'softwareType'
          property :version, as: 'version'
          property :xcode_details, as: 'xcodeDetails', class: Google::Apis::DevicerunV1alpha::CatalogXcodeDetails, decorator: Google::Apis::DevicerunV1alpha::CatalogXcodeDetails::Representation
      
        end
      end
      
      class CatalogSupportedProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automation, as: 'automation', class: Google::Apis::DevicerunV1alpha::CatalogAutomationSupport, decorator: Google::Apis::DevicerunV1alpha::CatalogAutomationSupport::Representation
      
          property :device_streaming, as: 'deviceStreaming', class: Google::Apis::DevicerunV1alpha::CatalogDeviceStreamingSupport, decorator: Google::Apis::DevicerunV1alpha::CatalogDeviceStreamingSupport::Representation
      
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
      
      class DeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_bugreport, as: 'androidBugreport', class: Google::Apis::DevicerunV1alpha::AndroidBugreportDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidBugreportDeviceAction::Representation
      
          property :android_dumpsys, as: 'androidDumpsys', class: Google::Apis::DevicerunV1alpha::AndroidDumpsysDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidDumpsysDeviceAction::Representation
      
          property :android_install_packages, as: 'androidInstallPackages', class: Google::Apis::DevicerunV1alpha::AndroidInstallPackagesDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidInstallPackagesDeviceAction::Representation
      
          property :android_logcat, as: 'androidLogcat', class: Google::Apis::DevicerunV1alpha::AndroidLogcatDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidLogcatDeviceAction::Representation
      
          property :android_mock_location, as: 'androidMockLocation', class: Google::Apis::DevicerunV1alpha::AndroidMockLocationDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidMockLocationDeviceAction::Representation
      
          property :android_orientation, as: 'androidOrientation', class: Google::Apis::DevicerunV1alpha::AndroidOrientationDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidOrientationDeviceAction::Representation
      
          property :android_pull_files, as: 'androidPullFiles', class: Google::Apis::DevicerunV1alpha::AndroidPullFilesDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidPullFilesDeviceAction::Representation
      
          property :android_push_files, as: 'androidPushFiles', class: Google::Apis::DevicerunV1alpha::AndroidPushFilesDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidPushFilesDeviceAction::Representation
      
          property :android_record_video, as: 'androidRecordVideo', class: Google::Apis::DevicerunV1alpha::AndroidRecordVideoDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidRecordVideoDeviceAction::Representation
      
          property :android_switch_locale, as: 'androidSwitchLocale', class: Google::Apis::DevicerunV1alpha::AndroidSwitchLocaleDeviceAction, decorator: Google::Apis::DevicerunV1alpha::AndroidSwitchLocaleDeviceAction::Representation
      
          property :ios_app_privacy_report, as: 'iosAppPrivacyReport', class: Google::Apis::DevicerunV1alpha::IosAppPrivacyReportDeviceAction, decorator: Google::Apis::DevicerunV1alpha::IosAppPrivacyReportDeviceAction::Representation
      
          property :ios_install_packages, as: 'iosInstallPackages', class: Google::Apis::DevicerunV1alpha::IosInstallPackagesDeviceAction, decorator: Google::Apis::DevicerunV1alpha::IosInstallPackagesDeviceAction::Representation
      
          property :ios_pull_files, as: 'iosPullFiles', class: Google::Apis::DevicerunV1alpha::IosPullFilesDeviceAction, decorator: Google::Apis::DevicerunV1alpha::IosPullFilesDeviceAction::Representation
      
          property :ios_push_files, as: 'iosPushFiles', class: Google::Apis::DevicerunV1alpha::IosPushFilesDeviceAction, decorator: Google::Apis::DevicerunV1alpha::IosPushFilesDeviceAction::Representation
      
          property :ios_record_video, as: 'iosRecordVideo', class: Google::Apis::DevicerunV1alpha::IosRecordVideoDeviceAction, decorator: Google::Apis::DevicerunV1alpha::IosRecordVideoDeviceAction::Representation
      
          property :ios_switch_locale, as: 'iosSwitchLocale', class: Google::Apis::DevicerunV1alpha::IosSwitchLocaleDeviceAction, decorator: Google::Apis::DevicerunV1alpha::IosSwitchLocaleDeviceAction::Representation
      
        end
      end
      
      class DeviceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DevicerunV1alpha::DeviceAction, decorator: Google::Apis::DevicerunV1alpha::DeviceAction::Representation
      
          property :requirement, as: 'requirement', class: Google::Apis::DevicerunV1alpha::DeviceRequirement, decorator: Google::Apis::DevicerunV1alpha::DeviceRequirement::Representation
      
        end
      end
      
      class DeviceRequirement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExecutionReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :id, as: 'id'
          collection :output_files, as: 'outputFiles', class: Google::Apis::DevicerunV1alpha::OutputFile, decorator: Google::Apis::DevicerunV1alpha::OutputFile::Representation
      
          property :result, as: 'result', class: Google::Apis::DevicerunV1alpha::Result, decorator: Google::Apis::DevicerunV1alpha::Result::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status', class: Google::Apis::DevicerunV1alpha::Status, decorator: Google::Apis::DevicerunV1alpha::Status::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::DevicerunV1alpha::Warning, decorator: Google::Apis::DevicerunV1alpha::Warning::Representation
      
        end
      end
      
      class GcsPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
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
          collection :operations, as: 'operations', class: Google::Apis::DevicerunV1alpha::GoogleLongrunningOperation, decorator: Google::Apis::DevicerunV1alpha::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DevicerunV1alpha::GoogleRpcStatus, decorator: Google::Apis::DevicerunV1alpha::GoogleRpcStatus::Representation
      
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
      
      class InputFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_input_file, as: 'gcsInputFile', class: Google::Apis::DevicerunV1alpha::GcsPath, decorator: Google::Apis::DevicerunV1alpha::GcsPath::Representation
      
        end
      end
      
      class IosAppPrivacyReportDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class IosInstallPackagesDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ipas, as: 'ipas', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
        end
      end
      
      class IosPullFilesDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths', class: Google::Apis::DevicerunV1alpha::IosPullFilesDeviceActionPathConfig, decorator: Google::Apis::DevicerunV1alpha::IosPullFilesDeviceActionPathConfig::Representation
      
        end
      end
      
      class IosPullFilesDeviceActionPathConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :device_path, as: 'devicePath'
        end
      end
      
      class IosPushFilesDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_configs, as: 'fileConfigs', class: Google::Apis::DevicerunV1alpha::IosPushFilesDeviceActionFileConfig, decorator: Google::Apis::DevicerunV1alpha::IosPushFilesDeviceActionFileConfig::Representation
      
        end
      end
      
      class IosPushFilesDeviceActionFileConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :destination_path, as: 'destinationPath'
          property :source_file, as: 'sourceFile', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
        end
      end
      
      class IosRecordVideoDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discard_on_pass, as: 'discardOnPass'
        end
      end
      
      class IosSwitchLocaleDeviceAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale_code, as: 'localeCode'
        end
      end
      
      class IosXcTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tests_zip, as: 'testsZip', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
          property :xc_test_timeout, as: 'xcTestTimeout'
          property :xcode_version, as: 'xcodeVersion'
          property :xctestrun, as: 'xctestrun', class: Google::Apis::DevicerunV1alpha::InputFile, decorator: Google::Apis::DevicerunV1alpha::InputFile::Representation
      
        end
      end
      
      class IssueSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :type, as: 'type'
        end
      end
      
      class JobAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_instrumentation_test, as: 'androidInstrumentationTest', class: Google::Apis::DevicerunV1alpha::AndroidInstrumentationTest, decorator: Google::Apis::DevicerunV1alpha::AndroidInstrumentationTest::Representation
      
          property :android_native_binary, as: 'androidNativeBinary', class: Google::Apis::DevicerunV1alpha::AndroidNativeBinary, decorator: Google::Apis::DevicerunV1alpha::AndroidNativeBinary::Representation
      
          property :ios_xc_test, as: 'iosXcTest', class: Google::Apis::DevicerunV1alpha::IosXcTest, decorator: Google::Apis::DevicerunV1alpha::IosXcTest::Representation
      
        end
      end
      
      class JobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::DevicerunV1alpha::JobAction, decorator: Google::Apis::DevicerunV1alpha::JobAction::Representation
      
          property :allocation_config, as: 'allocationConfig', class: Google::Apis::DevicerunV1alpha::AllocationConfig, decorator: Google::Apis::DevicerunV1alpha::AllocationConfig::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :settings, as: 'settings', class: Google::Apis::DevicerunV1alpha::JobSettings, decorator: Google::Apis::DevicerunV1alpha::JobSettings::Representation
      
        end
      end
      
      class JobReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          collection :execution_reports, as: 'executionReports', class: Google::Apis::DevicerunV1alpha::ExecutionReport, decorator: Google::Apis::DevicerunV1alpha::ExecutionReport::Representation
      
          property :id, as: 'id'
          hash :labels, as: 'labels'
          collection :output_files, as: 'outputFiles', class: Google::Apis::DevicerunV1alpha::OutputFile, decorator: Google::Apis::DevicerunV1alpha::OutputFile::Representation
      
          property :result, as: 'result', class: Google::Apis::DevicerunV1alpha::Result, decorator: Google::Apis::DevicerunV1alpha::Result::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status', class: Google::Apis::DevicerunV1alpha::Status, decorator: Google::Apis::DevicerunV1alpha::Status::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::DevicerunV1alpha::Warning, decorator: Google::Apis::DevicerunV1alpha::Warning::Representation
      
        end
      end
      
      class JobSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retry_settings, as: 'retrySettings', class: Google::Apis::DevicerunV1alpha::RetrySettings, decorator: Google::Apis::DevicerunV1alpha::RetrySettings::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DevicerunV1alpha::Location, decorator: Google::Apis::DevicerunV1alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DevicerunV1alpha::Session, decorator: Google::Apis::DevicerunV1alpha::Session::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class OutputFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_output_file, as: 'gcsOutputFile', class: Google::Apis::DevicerunV1alpha::GcsPath, decorator: Google::Apis::DevicerunV1alpha::GcsPath::Representation
      
        end
      end
      
      class Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause', class: Google::Apis::DevicerunV1alpha::ResultCause, decorator: Google::Apis::DevicerunV1alpha::ResultCause::Representation
      
          property :result_type, as: 'resultType'
        end
      end
      
      class ResultCause
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary, as: 'summary', class: Google::Apis::DevicerunV1alpha::IssueSummary, decorator: Google::Apis::DevicerunV1alpha::IssueSummary::Representation
      
        end
      end
      
      class RetrySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flaky_test_retry_strategy, as: 'flakyTestRetryStrategy', class: Google::Apis::DevicerunV1alpha::RetrySettingsFlakyTestRetryStrategy, decorator: Google::Apis::DevicerunV1alpha::RetrySettingsFlakyTestRetryStrategy::Representation
      
        end
      end
      
      class RetrySettingsFlakyTestRetryStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flaky_test_attempts, as: 'flakyTestAttempts'
          property :parallel_retry, as: 'parallelRetry'
          property :test_reduction_mode, as: 'testReductionMode'
        end
      end
      
      class Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :session_config, as: 'sessionConfig', class: Google::Apis::DevicerunV1alpha::SessionConfig, decorator: Google::Apis::DevicerunV1alpha::SessionConfig::Representation
      
          property :session_report, as: 'sessionReport', class: Google::Apis::DevicerunV1alpha::SessionReport, decorator: Google::Apis::DevicerunV1alpha::SessionReport::Representation
      
        end
      end
      
      class SessionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :job_configs, as: 'jobConfigs', class: Google::Apis::DevicerunV1alpha::JobConfig, decorator: Google::Apis::DevicerunV1alpha::JobConfig::Representation
      
          property :notification_config, as: 'notificationConfig', class: Google::Apis::DevicerunV1alpha::SessionConfigSessionNotificationConfig, decorator: Google::Apis::DevicerunV1alpha::SessionConfigSessionNotificationConfig::Representation
      
          property :output_directory_config, as: 'outputDirectoryConfig', class: Google::Apis::DevicerunV1alpha::SessionConfigSessionOutputFileDirectoryConfig, decorator: Google::Apis::DevicerunV1alpha::SessionConfigSessionOutputFileDirectoryConfig::Representation
      
        end
      end
      
      class SessionConfigSessionNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class SessionConfigSessionOutputFileDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flat_directory_structure, as: 'flatDirectoryStructure'
          property :gcs_output_directory, as: 'gcsOutputDirectory', class: Google::Apis::DevicerunV1alpha::GcsPath, decorator: Google::Apis::DevicerunV1alpha::GcsPath::Representation
      
        end
      end
      
      class SessionReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :id, as: 'id'
          collection :job_reports, as: 'jobReports', class: Google::Apis::DevicerunV1alpha::JobReport, decorator: Google::Apis::DevicerunV1alpha::JobReport::Representation
      
          property :result, as: 'result', class: Google::Apis::DevicerunV1alpha::Result, decorator: Google::Apis::DevicerunV1alpha::Result::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status', class: Google::Apis::DevicerunV1alpha::Status, decorator: Google::Apis::DevicerunV1alpha::Status::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :progress_messages, as: 'progressMessages'
          property :status_type, as: 'statusType'
        end
      end
      
      class Warning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary, as: 'summary', class: Google::Apis::DevicerunV1alpha::IssueSummary, decorator: Google::Apis::DevicerunV1alpha::IssueSummary::Representation
      
        end
      end
    end
  end
end
