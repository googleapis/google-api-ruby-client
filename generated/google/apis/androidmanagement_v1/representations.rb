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
    module AndroidmanagementV1
      
      class ApiLevelCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Command
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollmentToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Enterprise
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HardwareInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HardwareStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedPropertyEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemoryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemoryInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonComplianceDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonComplianceDetailCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasswordRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PermissionGrant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersistentPreferredActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PowerManagementEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignupUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusReportingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserFacingMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiLevelCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_api_level, as: 'minApiLevel'
        end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :managed_properties, as: 'managedProperties', class: Google::Apis::AndroidmanagementV1::ManagedProperty, decorator: Google::Apis::AndroidmanagementV1::ManagedProperty::Representation
      
          property :name, as: 'name'
          collection :permissions, as: 'permissions', class: Google::Apis::AndroidmanagementV1::ApplicationPermission, decorator: Google::Apis::AndroidmanagementV1::ApplicationPermission::Representation
      
          property :title, as: 'title'
        end
      end
      
      class ApplicationPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :permission_id, as: 'permissionId'
        end
      end
      
      class ApplicationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_permission_policy, as: 'defaultPermissionPolicy'
          property :install_type, as: 'installType'
          property :lock_task_allowed, as: 'lockTaskAllowed'
          hash :managed_configuration, as: 'managedConfiguration'
          property :package_name, as: 'packageName'
          collection :permission_grants, as: 'permissionGrants', class: Google::Apis::AndroidmanagementV1::PermissionGrant, decorator: Google::Apis::AndroidmanagementV1::PermissionGrant::Representation
      
        end
      end
      
      class Command
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :duration, as: 'duration'
          property :new_password, as: 'newPassword'
          collection :reset_password_flags, as: 'resetPasswordFlags'
          property :type, as: 'type'
        end
      end
      
      class ComplianceRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_level_condition, as: 'apiLevelCondition', class: Google::Apis::AndroidmanagementV1::ApiLevelCondition, decorator: Google::Apis::AndroidmanagementV1::ApiLevelCondition::Representation
      
          property :disable_apps, as: 'disableApps'
          property :non_compliance_detail_condition, as: 'nonComplianceDetailCondition', class: Google::Apis::AndroidmanagementV1::NonComplianceDetailCondition, decorator: Google::Apis::AndroidmanagementV1::NonComplianceDetailCondition::Representation
      
        end
      end
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_level, as: 'apiLevel'
          property :applied_policy_name, as: 'appliedPolicyName'
          property :applied_policy_version, :numeric_string => true, as: 'appliedPolicyVersion'
          property :applied_state, as: 'appliedState'
          property :disabled_reason, as: 'disabledReason', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          collection :displays, as: 'displays', class: Google::Apis::AndroidmanagementV1::DisplayProp, decorator: Google::Apis::AndroidmanagementV1::DisplayProp::Representation
      
          property :enrollment_time, as: 'enrollmentTime'
          property :enrollment_token_data, as: 'enrollmentTokenData'
          property :enrollment_token_name, as: 'enrollmentTokenName'
          property :hardware_info, as: 'hardwareInfo', class: Google::Apis::AndroidmanagementV1::HardwareInfo, decorator: Google::Apis::AndroidmanagementV1::HardwareInfo::Representation
      
          collection :hardware_status_samples, as: 'hardwareStatusSamples', class: Google::Apis::AndroidmanagementV1::HardwareStatus, decorator: Google::Apis::AndroidmanagementV1::HardwareStatus::Representation
      
          property :last_policy_compliance_report_time, as: 'lastPolicyComplianceReportTime'
          property :last_policy_sync_time, as: 'lastPolicySyncTime'
          property :last_status_report_time, as: 'lastStatusReportTime'
          collection :memory_events, as: 'memoryEvents', class: Google::Apis::AndroidmanagementV1::MemoryEvent, decorator: Google::Apis::AndroidmanagementV1::MemoryEvent::Representation
      
          property :memory_info, as: 'memoryInfo', class: Google::Apis::AndroidmanagementV1::MemoryInfo, decorator: Google::Apis::AndroidmanagementV1::MemoryInfo::Representation
      
          property :name, as: 'name'
          property :network_info, as: 'networkInfo', class: Google::Apis::AndroidmanagementV1::NetworkInfo, decorator: Google::Apis::AndroidmanagementV1::NetworkInfo::Representation
      
          collection :non_compliance_details, as: 'nonComplianceDetails', class: Google::Apis::AndroidmanagementV1::NonComplianceDetail, decorator: Google::Apis::AndroidmanagementV1::NonComplianceDetail::Representation
      
          property :policy_compliant, as: 'policyCompliant'
          property :policy_name, as: 'policyName'
          collection :power_management_events, as: 'powerManagementEvents', class: Google::Apis::AndroidmanagementV1::PowerManagementEvent, decorator: Google::Apis::AndroidmanagementV1::PowerManagementEvent::Representation
      
          collection :previous_device_names, as: 'previousDeviceNames'
          property :software_info, as: 'softwareInfo', class: Google::Apis::AndroidmanagementV1::SoftwareInfo, decorator: Google::Apis::AndroidmanagementV1::SoftwareInfo::Representation
      
          property :state, as: 'state'
          property :user_name, as: 'userName'
        end
      end
      
      class DisplayProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :density, as: 'density'
          property :display_id, as: 'displayId'
          property :height, as: 'height'
          property :name, as: 'name'
          property :refresh_rate, as: 'refreshRate'
          property :state, as: 'state'
          property :width, as: 'width'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnrollmentToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_data, as: 'additionalData'
          property :duration, as: 'duration'
          property :expiration_timestamp, as: 'expirationTimestamp'
          property :name, as: 'name'
          property :policy_name, as: 'policyName'
          property :qr_code, as: 'qrCode'
          property :value, as: 'value'
        end
      end
      
      class Enterprise
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_auto_approval_enabled, as: 'appAutoApprovalEnabled'
          collection :enabled_notification_types, as: 'enabledNotificationTypes'
          property :enterprise_display_name, as: 'enterpriseDisplayName'
          property :logo, as: 'logo', class: Google::Apis::AndroidmanagementV1::ExternalData, decorator: Google::Apis::AndroidmanagementV1::ExternalData::Representation
      
          property :name, as: 'name'
          property :primary_color, as: 'primaryColor'
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class ExternalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_hash, as: 'sha256Hash'
          property :url, as: 'url'
        end
      end
      
      class HardwareInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :battery_shutdown_temperatures, as: 'batteryShutdownTemperatures'
          collection :battery_throttling_temperatures, as: 'batteryThrottlingTemperatures'
          property :brand, as: 'brand'
          collection :cpu_shutdown_temperatures, as: 'cpuShutdownTemperatures'
          collection :cpu_throttling_temperatures, as: 'cpuThrottlingTemperatures'
          property :device_baseband_version, as: 'deviceBasebandVersion'
          collection :gpu_shutdown_temperatures, as: 'gpuShutdownTemperatures'
          collection :gpu_throttling_temperatures, as: 'gpuThrottlingTemperatures'
          property :hardware, as: 'hardware'
          property :manufacturer, as: 'manufacturer'
          property :model, as: 'model'
          property :serial_number, as: 'serialNumber'
          collection :skin_shutdown_temperatures, as: 'skinShutdownTemperatures'
          collection :skin_throttling_temperatures, as: 'skinThrottlingTemperatures'
        end
      end
      
      class HardwareStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :battery_temperatures, as: 'batteryTemperatures'
          collection :cpu_temperatures, as: 'cpuTemperatures'
          collection :cpu_usages, as: 'cpuUsages'
          property :create_time, as: 'createTime'
          collection :fan_speeds, as: 'fanSpeeds'
          collection :gpu_temperatures, as: 'gpuTemperatures'
          collection :skin_temperatures, as: 'skinTemperatures'
        end
      end
      
      class ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::AndroidmanagementV1::Device, decorator: Google::Apis::AndroidmanagementV1::Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AndroidmanagementV1::Operation, decorator: Google::Apis::AndroidmanagementV1::Operation::Representation
      
        end
      end
      
      class ListPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policies, as: 'policies', class: Google::Apis::AndroidmanagementV1::Policy, decorator: Google::Apis::AndroidmanagementV1::Policy::Representation
      
        end
      end
      
      class ManagedProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          collection :entries, as: 'entries', class: Google::Apis::AndroidmanagementV1::ManagedPropertyEntry, decorator: Google::Apis::AndroidmanagementV1::ManagedPropertyEntry::Representation
      
          property :key, as: 'key'
          collection :nested_properties, as: 'nestedProperties', class: Google::Apis::AndroidmanagementV1::ManagedProperty, decorator: Google::Apis::AndroidmanagementV1::ManagedProperty::Representation
      
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class ManagedPropertyEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class MemoryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_count, :numeric_string => true, as: 'byteCount'
          property :create_time, as: 'createTime'
          property :event_type, as: 'eventType'
        end
      end
      
      class MemoryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_internal_storage, :numeric_string => true, as: 'totalInternalStorage'
          property :total_ram, :numeric_string => true, as: 'totalRam'
        end
      end
      
      class NetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imei, as: 'imei'
          property :meid, as: 'meid'
          property :wifi_mac_address, as: 'wifiMacAddress'
        end
      end
      
      class NonComplianceDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_value, as: 'currentValue'
          property :field_path, as: 'fieldPath'
          property :installation_failure_reason, as: 'installationFailureReason'
          property :non_compliance_reason, as: 'nonComplianceReason'
          property :package_name, as: 'packageName'
          property :setting_name, as: 'settingName'
        end
      end
      
      class NonComplianceDetailCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :non_compliance_reason, as: 'nonComplianceReason'
          property :package_name, as: 'packageName'
          property :setting_name, as: 'settingName'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AndroidmanagementV1::Status, decorator: Google::Apis::AndroidmanagementV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PasswordRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum_failed_passwords_for_wipe, as: 'maximumFailedPasswordsForWipe'
          property :password_expiration_timeout, as: 'passwordExpirationTimeout'
          property :password_history_length, as: 'passwordHistoryLength'
          property :password_minimum_length, as: 'passwordMinimumLength'
          property :password_minimum_letters, as: 'passwordMinimumLetters'
          property :password_minimum_lower_case, as: 'passwordMinimumLowerCase'
          property :password_minimum_non_letter, as: 'passwordMinimumNonLetter'
          property :password_minimum_numeric, as: 'passwordMinimumNumeric'
          property :password_minimum_symbols, as: 'passwordMinimumSymbols'
          property :password_minimum_upper_case, as: 'passwordMinimumUpperCase'
          property :password_quality, as: 'passwordQuality'
        end
      end
      
      class PermissionGrant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission, as: 'permission'
          property :policy, as: 'policy'
        end
      end
      
      class PersistentPreferredActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions'
          collection :categories, as: 'categories'
          property :receiver_activity, as: 'receiverActivity'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_user_disabled, as: 'addUserDisabled'
          property :adjust_volume_disabled, as: 'adjustVolumeDisabled'
          collection :applications, as: 'applications', class: Google::Apis::AndroidmanagementV1::ApplicationPolicy, decorator: Google::Apis::AndroidmanagementV1::ApplicationPolicy::Representation
      
          property :auto_time_required, as: 'autoTimeRequired'
          property :block_applications_enabled, as: 'blockApplicationsEnabled'
          property :camera_disabled, as: 'cameraDisabled'
          collection :compliance_rules, as: 'complianceRules', class: Google::Apis::AndroidmanagementV1::ComplianceRule, decorator: Google::Apis::AndroidmanagementV1::ComplianceRule::Representation
      
          property :debugging_features_allowed, as: 'debuggingFeaturesAllowed'
          property :default_permission_policy, as: 'defaultPermissionPolicy'
          property :factory_reset_disabled, as: 'factoryResetDisabled'
          collection :frp_admin_emails, as: 'frpAdminEmails'
          property :fun_disabled, as: 'funDisabled'
          property :install_unknown_sources_allowed, as: 'installUnknownSourcesAllowed'
          property :keyguard_disabled, as: 'keyguardDisabled'
          property :maximum_time_to_lock, :numeric_string => true, as: 'maximumTimeToLock'
          property :modify_accounts_disabled, as: 'modifyAccountsDisabled'
          property :name, as: 'name'
          property :network_escape_hatch_enabled, as: 'networkEscapeHatchEnabled'
          hash :open_network_configuration, as: 'openNetworkConfiguration'
          property :password_requirements, as: 'passwordRequirements', class: Google::Apis::AndroidmanagementV1::PasswordRequirements, decorator: Google::Apis::AndroidmanagementV1::PasswordRequirements::Representation
      
          collection :persistent_preferred_activities, as: 'persistentPreferredActivities', class: Google::Apis::AndroidmanagementV1::PersistentPreferredActivity, decorator: Google::Apis::AndroidmanagementV1::PersistentPreferredActivity::Representation
      
          property :remove_user_disabled, as: 'removeUserDisabled'
          property :safe_boot_disabled, as: 'safeBootDisabled'
          property :screen_capture_disabled, as: 'screenCaptureDisabled'
          property :status_bar_disabled, as: 'statusBarDisabled'
          property :status_reporting_settings, as: 'statusReportingSettings', class: Google::Apis::AndroidmanagementV1::StatusReportingSettings, decorator: Google::Apis::AndroidmanagementV1::StatusReportingSettings::Representation
      
          collection :stay_on_plugged_modes, as: 'stayOnPluggedModes'
          property :system_update, as: 'systemUpdate', class: Google::Apis::AndroidmanagementV1::SystemUpdate, decorator: Google::Apis::AndroidmanagementV1::SystemUpdate::Representation
      
          property :unmute_microphone_disabled, as: 'unmuteMicrophoneDisabled'
          property :version, :numeric_string => true, as: 'version'
          property :wifi_config_disabled, as: 'wifiConfigDisabled'
          property :wifi_configs_lockdown_enabled, as: 'wifiConfigsLockdownEnabled'
        end
      end
      
      class PowerManagementEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :battery_level, as: 'batteryLevel'
          property :create_time, as: 'createTime'
          property :event_type, as: 'eventType'
        end
      end
      
      class SignupUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class SoftwareInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_build_number, as: 'androidBuildNumber'
          property :android_build_time, as: 'androidBuildTime'
          property :android_version, as: 'androidVersion'
          property :bootloader_version, as: 'bootloaderVersion'
          property :device_kernel_version, as: 'deviceKernelVersion'
          property :security_patch_level, as: 'securityPatchLevel'
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
      
      class StatusReportingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_info_enabled, as: 'displayInfoEnabled'
          property :hardware_status_enabled, as: 'hardwareStatusEnabled'
          property :memory_info_enabled, as: 'memoryInfoEnabled'
          property :network_info_enabled, as: 'networkInfoEnabled'
          property :power_management_events_enabled, as: 'powerManagementEventsEnabled'
          property :software_info_enabled, as: 'softwareInfoEnabled'
        end
      end
      
      class SystemUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_minutes, as: 'endMinutes'
          property :start_minutes, as: 'startMinutes'
          property :type, as: 'type'
        end
      end
      
      class UserFacingMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_message, as: 'defaultMessage'
          hash :localized_messages, as: 'localizedMessages'
        end
      end
      
      class WebToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :parent_frame_url, as: 'parentFrameUrl'
          collection :permissions, as: 'permissions'
          property :value, as: 'value'
        end
      end
    end
  end
end
