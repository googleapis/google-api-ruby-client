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
    module AndroidmanagementV1
      
      class AdbShellCommandEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdbShellInteractiveEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedSecurityOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlwaysOnVpnPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiLevelCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppProcessInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppProcessStartEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppTrackInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationEvent
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
      
      class ApplicationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationReportingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUsageLogEvents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlockAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertAuthorityInstalledEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertAuthorityRemovedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertValidationFailureEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChoosePrivateKeyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearAppsDataParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearAppsDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Command
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonCriteriaModeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentProviderEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrossProfilePolicies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoSelfTestCompletedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsEvent
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
      
      class ExtensionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilePulledEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilePushedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreezePeriod
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
      
      class IssueCommandResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyDestructionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyGeneratedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyImportEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyIntegrityViolationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyedAppState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyguardDismissAuthAttemptEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyguardDismissedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyguardSecuredEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KioskCustomization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LaunchAppAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEnrollmentTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEnterprisesResponse
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
      
      class ListWebAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogBufferSizeCriticalEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingStartedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingStoppedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedConfigurationTemplate
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
      
      class MediaMountEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaUnmountEvent
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
      
      class OncCertificateProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OncWifiContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsShutdownEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsStartupEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageNameList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasswordPoliciesContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasswordRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerAppResult
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
      
      class PersonalApplicationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonalUsagePolicies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyEnforcementRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostureDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PowerManagementEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProxyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteLockEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPosture
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetupAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SigninDetail
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
      
      class SpecificNonComplianceContext
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
      
      class SystemUpdateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TelephonyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TermsAndConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageLogEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserFacingMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebAppIcon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WipeAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WipeFailureEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdbShellCommandEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shell_cmd, as: 'shellCmd'
        end
      end
      
      class AdbShellInteractiveEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AdvancedSecurityOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_criteria_mode, as: 'commonCriteriaMode'
          property :developer_settings, as: 'developerSettings'
          property :google_play_protect_verify_apps, as: 'googlePlayProtectVerifyApps'
          collection :personal_apps_that_can_read_work_notifications, as: 'personalAppsThatCanReadWorkNotifications'
          property :untrusted_apps_policy, as: 'untrustedAppsPolicy'
        end
      end
      
      class AlwaysOnVpnPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lockdown_enabled, as: 'lockdownEnabled'
          property :package_name, as: 'packageName'
        end
      end
      
      class ApiLevelCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_api_level, as: 'minApiLevel'
        end
      end
      
      class AppProcessInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apk_sha256_hash, as: 'apkSha256Hash'
          collection :package_names, as: 'packageNames'
          property :pid, as: 'pid'
          property :process_name, as: 'processName'
          property :seinfo, as: 'seinfo'
          property :start_time, as: 'startTime'
          property :uid, as: 'uid'
        end
      end
      
      class AppProcessStartEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :process_info, as: 'processInfo', class: Google::Apis::AndroidmanagementV1::AppProcessInfo, decorator: Google::Apis::AndroidmanagementV1::AppProcessInfo::Representation
      
        end
      end
      
      class AppTrackInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :track_alias, as: 'trackAlias'
          property :track_id, as: 'trackId'
        end
      end
      
      class AppVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :production, as: 'production'
          collection :track_ids, as: 'trackIds'
          property :version_code, as: 'versionCode'
          property :version_string, as: 'versionString'
        end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_pricing, as: 'appPricing'
          collection :app_tracks, as: 'appTracks', class: Google::Apis::AndroidmanagementV1::AppTrackInfo, decorator: Google::Apis::AndroidmanagementV1::AppTrackInfo::Representation
      
          collection :app_versions, as: 'appVersions', class: Google::Apis::AndroidmanagementV1::AppVersion, decorator: Google::Apis::AndroidmanagementV1::AppVersion::Representation
      
          property :author, as: 'author'
          collection :available_countries, as: 'availableCountries'
          property :category, as: 'category'
          property :content_rating, as: 'contentRating'
          property :description, as: 'description'
          property :distribution_channel, as: 'distributionChannel'
          collection :features, as: 'features'
          property :full_description, as: 'fullDescription'
          property :icon_url, as: 'iconUrl'
          collection :managed_properties, as: 'managedProperties', class: Google::Apis::AndroidmanagementV1::ManagedProperty, decorator: Google::Apis::AndroidmanagementV1::ManagedProperty::Representation
      
          property :min_android_sdk_version, as: 'minAndroidSdkVersion'
          property :name, as: 'name'
          collection :permissions, as: 'permissions', class: Google::Apis::AndroidmanagementV1::ApplicationPermission, decorator: Google::Apis::AndroidmanagementV1::ApplicationPermission::Representation
      
          property :play_store_url, as: 'playStoreUrl'
          property :recent_changes, as: 'recentChanges'
          collection :screenshot_urls, as: 'screenshotUrls'
          property :small_icon_url, as: 'smallIconUrl'
          property :title, as: 'title'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApplicationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :event_type, as: 'eventType'
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
          collection :accessible_track_ids, as: 'accessibleTrackIds'
          property :always_on_vpn_lockdown_exemption, as: 'alwaysOnVpnLockdownExemption'
          property :auto_update_mode, as: 'autoUpdateMode'
          property :connected_work_and_personal_app, as: 'connectedWorkAndPersonalApp'
          property :default_permission_policy, as: 'defaultPermissionPolicy'
          collection :delegated_scopes, as: 'delegatedScopes'
          property :disabled, as: 'disabled'
          property :extension_config, as: 'extensionConfig', class: Google::Apis::AndroidmanagementV1::ExtensionConfig, decorator: Google::Apis::AndroidmanagementV1::ExtensionConfig::Representation
      
          property :install_type, as: 'installType'
          property :lock_task_allowed, as: 'lockTaskAllowed'
          hash :managed_configuration, as: 'managedConfiguration'
          property :managed_configuration_template, as: 'managedConfigurationTemplate', class: Google::Apis::AndroidmanagementV1::ManagedConfigurationTemplate, decorator: Google::Apis::AndroidmanagementV1::ManagedConfigurationTemplate::Representation
      
          property :minimum_version_code, as: 'minimumVersionCode'
          property :package_name, as: 'packageName'
          collection :permission_grants, as: 'permissionGrants', class: Google::Apis::AndroidmanagementV1::PermissionGrant, decorator: Google::Apis::AndroidmanagementV1::PermissionGrant::Representation
      
          property :work_profile_widgets, as: 'workProfileWidgets'
        end
      end
      
      class ApplicationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_source, as: 'applicationSource'
          property :display_name, as: 'displayName'
          collection :events, as: 'events', class: Google::Apis::AndroidmanagementV1::ApplicationEvent, decorator: Google::Apis::AndroidmanagementV1::ApplicationEvent::Representation
      
          property :installer_package_name, as: 'installerPackageName'
          collection :keyed_app_states, as: 'keyedAppStates', class: Google::Apis::AndroidmanagementV1::KeyedAppState, decorator: Google::Apis::AndroidmanagementV1::KeyedAppState::Representation
      
          property :package_name, as: 'packageName'
          property :package_sha256_hash, as: 'packageSha256Hash'
          collection :signing_key_cert_fingerprints, as: 'signingKeyCertFingerprints'
          property :state, as: 'state'
          property :version_code, as: 'versionCode'
          property :version_name, as: 'versionName'
        end
      end
      
      class ApplicationReportingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_removed_apps, as: 'includeRemovedApps'
        end
      end
      
      class BatchUsageLogEvents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device'
          property :retrieval_time, as: 'retrievalTime'
          collection :usage_log_events, as: 'usageLogEvents', class: Google::Apis::AndroidmanagementV1::UsageLogEvent, decorator: Google::Apis::AndroidmanagementV1::UsageLogEvent::Representation
      
          property :user, as: 'user'
        end
      end
      
      class BlockAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_after_days, as: 'blockAfterDays'
          property :block_scope, as: 'blockScope'
        end
      end
      
      class CertAuthorityInstalledEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate'
          property :success, as: 'success'
          property :user_id, as: 'userId'
        end
      end
      
      class CertAuthorityRemovedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate'
          property :success, as: 'success'
          property :user_id, as: 'userId'
        end
      end
      
      class CertValidationFailureEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason'
        end
      end
      
      class ChoosePrivateKeyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :package_names, as: 'packageNames'
          property :private_key_alias, as: 'privateKeyAlias'
          property :url_pattern, as: 'urlPattern'
        end
      end
      
      class ClearAppsDataParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :package_names, as: 'packageNames'
        end
      end
      
      class ClearAppsDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :results, as: 'results', class: Google::Apis::AndroidmanagementV1::PerAppResult, decorator: Google::Apis::AndroidmanagementV1::PerAppResult::Representation
      
        end
      end
      
      class Command
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clear_apps_data_params, as: 'clearAppsDataParams', class: Google::Apis::AndroidmanagementV1::ClearAppsDataParams, decorator: Google::Apis::AndroidmanagementV1::ClearAppsDataParams::Representation
      
          property :clear_apps_data_status, as: 'clearAppsDataStatus', class: Google::Apis::AndroidmanagementV1::ClearAppsDataStatus, decorator: Google::Apis::AndroidmanagementV1::ClearAppsDataStatus::Representation
      
          property :create_time, as: 'createTime'
          property :duration, as: 'duration'
          property :error_code, as: 'errorCode'
          property :new_password, as: 'newPassword'
          collection :reset_password_flags, as: 'resetPasswordFlags'
          property :type, as: 'type'
          property :user_name, as: 'userName'
        end
      end
      
      class CommonCriteriaModeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_criteria_mode_status, as: 'commonCriteriaModeStatus'
        end
      end
      
      class ComplianceRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_level_condition, as: 'apiLevelCondition', class: Google::Apis::AndroidmanagementV1::ApiLevelCondition, decorator: Google::Apis::AndroidmanagementV1::ApiLevelCondition::Representation
      
          property :disable_apps, as: 'disableApps'
          property :non_compliance_detail_condition, as: 'nonComplianceDetailCondition', class: Google::Apis::AndroidmanagementV1::NonComplianceDetailCondition, decorator: Google::Apis::AndroidmanagementV1::NonComplianceDetailCondition::Representation
      
          collection :package_names_to_disable, as: 'packageNamesToDisable'
        end
      end
      
      class ConnectEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_ip_address, as: 'destinationIpAddress'
          property :destination_port, as: 'destinationPort'
          property :package_name, as: 'packageName'
        end
      end
      
      class ContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_email, as: 'contactEmail'
          property :data_protection_officer_email, as: 'dataProtectionOfficerEmail'
          property :data_protection_officer_name, as: 'dataProtectionOfficerName'
          property :data_protection_officer_phone, as: 'dataProtectionOfficerPhone'
          property :eu_representative_email, as: 'euRepresentativeEmail'
          property :eu_representative_name, as: 'euRepresentativeName'
          property :eu_representative_phone, as: 'euRepresentativePhone'
        end
      end
      
      class ContentProviderEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_name, as: 'packageName'
          collection :signing_certs_sha256, as: 'signingCertsSha256'
          property :uri, as: 'uri'
        end
      end
      
      class CrossProfilePolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cross_profile_copy_paste, as: 'crossProfileCopyPaste'
          property :cross_profile_data_sharing, as: 'crossProfileDataSharing'
          property :show_work_contacts_in_personal_profile, as: 'showWorkContactsInPersonalProfile'
          property :work_profile_widgets_default, as: 'workProfileWidgetsDefault'
        end
      end
      
      class CryptoSelfTestCompletedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :success, as: 'success'
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
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_level, as: 'apiLevel'
          collection :application_reports, as: 'applicationReports', class: Google::Apis::AndroidmanagementV1::ApplicationReport, decorator: Google::Apis::AndroidmanagementV1::ApplicationReport::Representation
      
          collection :applied_password_policies, as: 'appliedPasswordPolicies', class: Google::Apis::AndroidmanagementV1::PasswordRequirements, decorator: Google::Apis::AndroidmanagementV1::PasswordRequirements::Representation
      
          property :applied_policy_name, as: 'appliedPolicyName'
          property :applied_policy_version, :numeric_string => true, as: 'appliedPolicyVersion'
          property :applied_state, as: 'appliedState'
          property :common_criteria_mode_info, as: 'commonCriteriaModeInfo', class: Google::Apis::AndroidmanagementV1::CommonCriteriaModeInfo, decorator: Google::Apis::AndroidmanagementV1::CommonCriteriaModeInfo::Representation
      
          property :device_settings, as: 'deviceSettings', class: Google::Apis::AndroidmanagementV1::DeviceSettings, decorator: Google::Apis::AndroidmanagementV1::DeviceSettings::Representation
      
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
          property :management_mode, as: 'managementMode'
          collection :memory_events, as: 'memoryEvents', class: Google::Apis::AndroidmanagementV1::MemoryEvent, decorator: Google::Apis::AndroidmanagementV1::MemoryEvent::Representation
      
          property :memory_info, as: 'memoryInfo', class: Google::Apis::AndroidmanagementV1::MemoryInfo, decorator: Google::Apis::AndroidmanagementV1::MemoryInfo::Representation
      
          property :name, as: 'name'
          property :network_info, as: 'networkInfo', class: Google::Apis::AndroidmanagementV1::NetworkInfo, decorator: Google::Apis::AndroidmanagementV1::NetworkInfo::Representation
      
          collection :non_compliance_details, as: 'nonComplianceDetails', class: Google::Apis::AndroidmanagementV1::NonComplianceDetail, decorator: Google::Apis::AndroidmanagementV1::NonComplianceDetail::Representation
      
          property :ownership, as: 'ownership'
          property :policy_compliant, as: 'policyCompliant'
          property :policy_name, as: 'policyName'
          collection :power_management_events, as: 'powerManagementEvents', class: Google::Apis::AndroidmanagementV1::PowerManagementEvent, decorator: Google::Apis::AndroidmanagementV1::PowerManagementEvent::Representation
      
          collection :previous_device_names, as: 'previousDeviceNames'
          property :security_posture, as: 'securityPosture', class: Google::Apis::AndroidmanagementV1::SecurityPosture, decorator: Google::Apis::AndroidmanagementV1::SecurityPosture::Representation
      
          property :software_info, as: 'softwareInfo', class: Google::Apis::AndroidmanagementV1::SoftwareInfo, decorator: Google::Apis::AndroidmanagementV1::SoftwareInfo::Representation
      
          property :state, as: 'state'
          hash :system_properties, as: 'systemProperties'
          property :user, as: 'user', class: Google::Apis::AndroidmanagementV1::User, decorator: Google::Apis::AndroidmanagementV1::User::Representation
      
          property :user_name, as: 'userName'
        end
      end
      
      class DeviceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adb_enabled, as: 'adbEnabled'
          property :development_settings_enabled, as: 'developmentSettingsEnabled'
          property :encryption_status, as: 'encryptionStatus'
          property :is_device_secure, as: 'isDeviceSecure'
          property :is_encrypted, as: 'isEncrypted'
          property :unknown_sources_enabled, as: 'unknownSourcesEnabled'
          property :verify_apps_enabled, as: 'verifyAppsEnabled'
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
      
      class DnsEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          collection :ip_addresses, as: 'ipAddresses'
          property :package_name, as: 'packageName'
          property :total_ip_addresses_returned, :numeric_string => true, as: 'totalIpAddressesReturned'
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
          property :allow_personal_usage, as: 'allowPersonalUsage'
          property :duration, as: 'duration'
          property :expiration_timestamp, as: 'expirationTimestamp'
          property :name, as: 'name'
          property :one_time_only, as: 'oneTimeOnly'
          property :policy_name, as: 'policyName'
          property :qr_code, as: 'qrCode'
          property :user, as: 'user', class: Google::Apis::AndroidmanagementV1::User, decorator: Google::Apis::AndroidmanagementV1::User::Representation
      
          property :value, as: 'value'
        end
      end
      
      class Enterprise
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_auto_approval_enabled, as: 'appAutoApprovalEnabled'
          property :contact_info, as: 'contactInfo', class: Google::Apis::AndroidmanagementV1::ContactInfo, decorator: Google::Apis::AndroidmanagementV1::ContactInfo::Representation
      
          collection :enabled_notification_types, as: 'enabledNotificationTypes'
          property :enterprise_display_name, as: 'enterpriseDisplayName'
          property :logo, as: 'logo', class: Google::Apis::AndroidmanagementV1::ExternalData, decorator: Google::Apis::AndroidmanagementV1::ExternalData::Representation
      
          property :name, as: 'name'
          property :primary_color, as: 'primaryColor'
          property :pubsub_topic, as: 'pubsubTopic'
          collection :signin_details, as: 'signinDetails', class: Google::Apis::AndroidmanagementV1::SigninDetail, decorator: Google::Apis::AndroidmanagementV1::SigninDetail::Representation
      
          collection :terms_and_conditions, as: 'termsAndConditions', class: Google::Apis::AndroidmanagementV1::TermsAndConditions, decorator: Google::Apis::AndroidmanagementV1::TermsAndConditions::Representation
      
        end
      end
      
      class ExtensionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notification_receiver, as: 'notificationReceiver'
          collection :signing_key_fingerprints_sha256, as: 'signingKeyFingerprintsSha256'
        end
      end
      
      class ExternalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_hash, as: 'sha256Hash'
          property :url, as: 'url'
        end
      end
      
      class FilePulledEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
        end
      end
      
      class FilePushedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
        end
      end
      
      class FreezePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::AndroidmanagementV1::Date, decorator: Google::Apis::AndroidmanagementV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AndroidmanagementV1::Date, decorator: Google::Apis::AndroidmanagementV1::Date::Representation
      
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
          property :enterprise_specific_id, as: 'enterpriseSpecificId'
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
      
      class IssueCommandResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class KeyDestructionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_uid, as: 'applicationUid'
          property :key_alias, as: 'keyAlias'
          property :success, as: 'success'
        end
      end
      
      class KeyGeneratedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_uid, as: 'applicationUid'
          property :key_alias, as: 'keyAlias'
          property :success, as: 'success'
        end
      end
      
      class KeyImportEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_uid, as: 'applicationUid'
          property :key_alias, as: 'keyAlias'
          property :success, as: 'success'
        end
      end
      
      class KeyIntegrityViolationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_uid, as: 'applicationUid'
          property :key_alias, as: 'keyAlias'
        end
      end
      
      class KeyedAppState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data, as: 'data'
          property :key, as: 'key'
          property :last_update_time, as: 'lastUpdateTime'
          property :message, as: 'message'
          property :severity, as: 'severity'
        end
      end
      
      class KeyguardDismissAuthAttemptEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :strong_auth_method_used, as: 'strongAuthMethodUsed'
          property :success, as: 'success'
        end
      end
      
      class KeyguardDismissedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class KeyguardSecuredEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class KioskCustomization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_settings, as: 'deviceSettings'
          property :power_button_actions, as: 'powerButtonActions'
          property :status_bar, as: 'statusBar'
          property :system_error_warnings, as: 'systemErrorWarnings'
          property :system_navigation, as: 'systemNavigation'
        end
      end
      
      class LaunchAppAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_name, as: 'packageName'
        end
      end
      
      class ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::AndroidmanagementV1::Device, decorator: Google::Apis::AndroidmanagementV1::Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEnrollmentTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enrollment_tokens, as: 'enrollmentTokens', class: Google::Apis::AndroidmanagementV1::EnrollmentToken, decorator: Google::Apis::AndroidmanagementV1::EnrollmentToken::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEnterprisesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enterprises, as: 'enterprises', class: Google::Apis::AndroidmanagementV1::Enterprise, decorator: Google::Apis::AndroidmanagementV1::Enterprise::Representation
      
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
      
      class ListWebAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :web_apps, as: 'webApps', class: Google::Apis::AndroidmanagementV1::WebApp, decorator: Google::Apis::AndroidmanagementV1::WebApp::Representation
      
        end
      end
      
      class LogBufferSizeCriticalEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LoggingStartedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LoggingStoppedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ManagedConfigurationTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :configuration_variables, as: 'configurationVariables'
          property :template_id, as: 'templateId'
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
      
      class MediaMountEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_point, as: 'mountPoint'
          property :volume_label, as: 'volumeLabel'
        end
      end
      
      class MediaUnmountEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_point, as: 'mountPoint'
          property :volume_label, as: 'volumeLabel'
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
          property :network_operator_name, as: 'networkOperatorName'
          collection :telephony_infos, as: 'telephonyInfos', class: Google::Apis::AndroidmanagementV1::TelephonyInfo, decorator: Google::Apis::AndroidmanagementV1::TelephonyInfo::Representation
      
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
          property :specific_non_compliance_context, as: 'specificNonComplianceContext', class: Google::Apis::AndroidmanagementV1::SpecificNonComplianceContext, decorator: Google::Apis::AndroidmanagementV1::SpecificNonComplianceContext::Representation
      
          property :specific_non_compliance_reason, as: 'specificNonComplianceReason'
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
      
      class OncCertificateProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_references, as: 'certificateReferences'
          property :content_provider_endpoint, as: 'contentProviderEndpoint', class: Google::Apis::AndroidmanagementV1::ContentProviderEndpoint, decorator: Google::Apis::AndroidmanagementV1::ContentProviderEndpoint::Representation
      
        end
      end
      
      class OncWifiContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :wifi_guid, as: 'wifiGuid'
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
      
      class OsShutdownEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OsStartupEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verified_boot_state, as: 'verifiedBootState'
          property :verity_mode, as: 'verityMode'
        end
      end
      
      class PackageNameList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :package_names, as: 'packageNames'
        end
      end
      
      class PasswordPoliciesContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password_policy_scope, as: 'passwordPolicyScope'
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
          property :password_scope, as: 'passwordScope'
          property :require_password_unlock, as: 'requirePasswordUnlock'
          property :unified_lock_settings, as: 'unifiedLockSettings'
        end
      end
      
      class PerAppResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clearing_result, as: 'clearingResult'
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
      
      class PersonalApplicationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :install_type, as: 'installType'
          property :package_name, as: 'packageName'
        end
      end
      
      class PersonalUsagePolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_types_with_management_disabled, as: 'accountTypesWithManagementDisabled'
          property :camera_disabled, as: 'cameraDisabled'
          property :max_days_with_work_off, as: 'maxDaysWithWorkOff'
          collection :personal_applications, as: 'personalApplications', class: Google::Apis::AndroidmanagementV1::PersonalApplicationPolicy, decorator: Google::Apis::AndroidmanagementV1::PersonalApplicationPolicy::Representation
      
          property :personal_play_store_mode, as: 'personalPlayStoreMode'
          property :screen_capture_disabled, as: 'screenCaptureDisabled'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_types_with_management_disabled, as: 'accountTypesWithManagementDisabled'
          property :add_user_disabled, as: 'addUserDisabled'
          property :adjust_volume_disabled, as: 'adjustVolumeDisabled'
          property :advanced_security_overrides, as: 'advancedSecurityOverrides', class: Google::Apis::AndroidmanagementV1::AdvancedSecurityOverrides, decorator: Google::Apis::AndroidmanagementV1::AdvancedSecurityOverrides::Representation
      
          property :always_on_vpn_package, as: 'alwaysOnVpnPackage', class: Google::Apis::AndroidmanagementV1::AlwaysOnVpnPackage, decorator: Google::Apis::AndroidmanagementV1::AlwaysOnVpnPackage::Representation
      
          collection :android_device_policy_tracks, as: 'androidDevicePolicyTracks'
          property :app_auto_update_policy, as: 'appAutoUpdatePolicy'
          collection :applications, as: 'applications', class: Google::Apis::AndroidmanagementV1::ApplicationPolicy, decorator: Google::Apis::AndroidmanagementV1::ApplicationPolicy::Representation
      
          property :auto_date_and_time_zone, as: 'autoDateAndTimeZone'
          property :auto_time_required, as: 'autoTimeRequired'
          property :block_applications_enabled, as: 'blockApplicationsEnabled'
          property :bluetooth_config_disabled, as: 'bluetoothConfigDisabled'
          property :bluetooth_contact_sharing_disabled, as: 'bluetoothContactSharingDisabled'
          property :bluetooth_disabled, as: 'bluetoothDisabled'
          property :camera_access, as: 'cameraAccess'
          property :camera_disabled, as: 'cameraDisabled'
          property :cell_broadcasts_config_disabled, as: 'cellBroadcastsConfigDisabled'
          collection :choose_private_key_rules, as: 'choosePrivateKeyRules', class: Google::Apis::AndroidmanagementV1::ChoosePrivateKeyRule, decorator: Google::Apis::AndroidmanagementV1::ChoosePrivateKeyRule::Representation
      
          collection :compliance_rules, as: 'complianceRules', class: Google::Apis::AndroidmanagementV1::ComplianceRule, decorator: Google::Apis::AndroidmanagementV1::ComplianceRule::Representation
      
          property :create_windows_disabled, as: 'createWindowsDisabled'
          property :credentials_config_disabled, as: 'credentialsConfigDisabled'
          property :cross_profile_policies, as: 'crossProfilePolicies', class: Google::Apis::AndroidmanagementV1::CrossProfilePolicies, decorator: Google::Apis::AndroidmanagementV1::CrossProfilePolicies::Representation
      
          property :data_roaming_disabled, as: 'dataRoamingDisabled'
          property :debugging_features_allowed, as: 'debuggingFeaturesAllowed'
          property :default_permission_policy, as: 'defaultPermissionPolicy'
          property :device_owner_lock_screen_info, as: 'deviceOwnerLockScreenInfo', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          property :encryption_policy, as: 'encryptionPolicy'
          property :ensure_verify_apps_enabled, as: 'ensureVerifyAppsEnabled'
          property :factory_reset_disabled, as: 'factoryResetDisabled'
          collection :frp_admin_emails, as: 'frpAdminEmails'
          property :fun_disabled, as: 'funDisabled'
          property :install_apps_disabled, as: 'installAppsDisabled'
          property :install_unknown_sources_allowed, as: 'installUnknownSourcesAllowed'
          property :keyguard_disabled, as: 'keyguardDisabled'
          collection :keyguard_disabled_features, as: 'keyguardDisabledFeatures'
          property :kiosk_custom_launcher_enabled, as: 'kioskCustomLauncherEnabled'
          property :kiosk_customization, as: 'kioskCustomization', class: Google::Apis::AndroidmanagementV1::KioskCustomization, decorator: Google::Apis::AndroidmanagementV1::KioskCustomization::Representation
      
          property :location_mode, as: 'locationMode'
          property :long_support_message, as: 'longSupportMessage', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          property :maximum_time_to_lock, :numeric_string => true, as: 'maximumTimeToLock'
          property :microphone_access, as: 'microphoneAccess'
          property :minimum_api_level, as: 'minimumApiLevel'
          property :mobile_networks_config_disabled, as: 'mobileNetworksConfigDisabled'
          property :modify_accounts_disabled, as: 'modifyAccountsDisabled'
          property :mount_physical_media_disabled, as: 'mountPhysicalMediaDisabled'
          property :name, as: 'name'
          property :network_escape_hatch_enabled, as: 'networkEscapeHatchEnabled'
          property :network_reset_disabled, as: 'networkResetDisabled'
          collection :onc_certificate_providers, as: 'oncCertificateProviders', class: Google::Apis::AndroidmanagementV1::OncCertificateProvider, decorator: Google::Apis::AndroidmanagementV1::OncCertificateProvider::Representation
      
          hash :open_network_configuration, as: 'openNetworkConfiguration'
          property :outgoing_beam_disabled, as: 'outgoingBeamDisabled'
          property :outgoing_calls_disabled, as: 'outgoingCallsDisabled'
          collection :password_policies, as: 'passwordPolicies', class: Google::Apis::AndroidmanagementV1::PasswordRequirements, decorator: Google::Apis::AndroidmanagementV1::PasswordRequirements::Representation
      
          property :password_requirements, as: 'passwordRequirements', class: Google::Apis::AndroidmanagementV1::PasswordRequirements, decorator: Google::Apis::AndroidmanagementV1::PasswordRequirements::Representation
      
          collection :permission_grants, as: 'permissionGrants', class: Google::Apis::AndroidmanagementV1::PermissionGrant, decorator: Google::Apis::AndroidmanagementV1::PermissionGrant::Representation
      
          property :permitted_accessibility_services, as: 'permittedAccessibilityServices', class: Google::Apis::AndroidmanagementV1::PackageNameList, decorator: Google::Apis::AndroidmanagementV1::PackageNameList::Representation
      
          property :permitted_input_methods, as: 'permittedInputMethods', class: Google::Apis::AndroidmanagementV1::PackageNameList, decorator: Google::Apis::AndroidmanagementV1::PackageNameList::Representation
      
          collection :persistent_preferred_activities, as: 'persistentPreferredActivities', class: Google::Apis::AndroidmanagementV1::PersistentPreferredActivity, decorator: Google::Apis::AndroidmanagementV1::PersistentPreferredActivity::Representation
      
          property :personal_usage_policies, as: 'personalUsagePolicies', class: Google::Apis::AndroidmanagementV1::PersonalUsagePolicies, decorator: Google::Apis::AndroidmanagementV1::PersonalUsagePolicies::Representation
      
          property :play_store_mode, as: 'playStoreMode'
          collection :policy_enforcement_rules, as: 'policyEnforcementRules', class: Google::Apis::AndroidmanagementV1::PolicyEnforcementRule, decorator: Google::Apis::AndroidmanagementV1::PolicyEnforcementRule::Representation
      
          property :preferential_network_service, as: 'preferentialNetworkService'
          property :private_key_selection_enabled, as: 'privateKeySelectionEnabled'
          property :recommended_global_proxy, as: 'recommendedGlobalProxy', class: Google::Apis::AndroidmanagementV1::ProxyInfo, decorator: Google::Apis::AndroidmanagementV1::ProxyInfo::Representation
      
          property :remove_user_disabled, as: 'removeUserDisabled'
          property :safe_boot_disabled, as: 'safeBootDisabled'
          property :screen_capture_disabled, as: 'screenCaptureDisabled'
          property :set_user_icon_disabled, as: 'setUserIconDisabled'
          property :set_wallpaper_disabled, as: 'setWallpaperDisabled'
          collection :setup_actions, as: 'setupActions', class: Google::Apis::AndroidmanagementV1::SetupAction, decorator: Google::Apis::AndroidmanagementV1::SetupAction::Representation
      
          property :share_location_disabled, as: 'shareLocationDisabled'
          property :short_support_message, as: 'shortSupportMessage', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          property :skip_first_use_hints_enabled, as: 'skipFirstUseHintsEnabled'
          property :sms_disabled, as: 'smsDisabled'
          property :status_bar_disabled, as: 'statusBarDisabled'
          property :status_reporting_settings, as: 'statusReportingSettings', class: Google::Apis::AndroidmanagementV1::StatusReportingSettings, decorator: Google::Apis::AndroidmanagementV1::StatusReportingSettings::Representation
      
          collection :stay_on_plugged_modes, as: 'stayOnPluggedModes'
          property :system_update, as: 'systemUpdate', class: Google::Apis::AndroidmanagementV1::SystemUpdate, decorator: Google::Apis::AndroidmanagementV1::SystemUpdate::Representation
      
          property :tethering_config_disabled, as: 'tetheringConfigDisabled'
          property :uninstall_apps_disabled, as: 'uninstallAppsDisabled'
          property :unmute_microphone_disabled, as: 'unmuteMicrophoneDisabled'
          property :usage_log, as: 'usageLog', class: Google::Apis::AndroidmanagementV1::UsageLog, decorator: Google::Apis::AndroidmanagementV1::UsageLog::Representation
      
          property :usb_file_transfer_disabled, as: 'usbFileTransferDisabled'
          property :usb_mass_storage_enabled, as: 'usbMassStorageEnabled'
          property :version, :numeric_string => true, as: 'version'
          property :vpn_config_disabled, as: 'vpnConfigDisabled'
          property :wifi_config_disabled, as: 'wifiConfigDisabled'
          property :wifi_configs_lockdown_enabled, as: 'wifiConfigsLockdownEnabled'
        end
      end
      
      class PolicyEnforcementRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_action, as: 'blockAction', class: Google::Apis::AndroidmanagementV1::BlockAction, decorator: Google::Apis::AndroidmanagementV1::BlockAction::Representation
      
          property :setting_name, as: 'settingName'
          property :wipe_action, as: 'wipeAction', class: Google::Apis::AndroidmanagementV1::WipeAction, decorator: Google::Apis::AndroidmanagementV1::WipeAction::Representation
      
        end
      end
      
      class PostureDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advice, as: 'advice', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          property :security_risk, as: 'securityRisk'
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
      
      class ProxyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_hosts, as: 'excludedHosts'
          property :host, as: 'host'
          property :pac_uri, as: 'pacUri'
          property :port, as: 'port'
        end
      end
      
      class RemoteLockEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_package_name, as: 'adminPackageName'
          property :admin_user_id, as: 'adminUserId'
          property :target_user_id, as: 'targetUserId'
        end
      end
      
      class SecurityPosture
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_posture, as: 'devicePosture'
          collection :posture_details, as: 'postureDetails', class: Google::Apis::AndroidmanagementV1::PostureDetail, decorator: Google::Apis::AndroidmanagementV1::PostureDetail::Representation
      
        end
      end
      
      class SetupAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          property :launch_app, as: 'launchApp', class: Google::Apis::AndroidmanagementV1::LaunchAppAction, decorator: Google::Apis::AndroidmanagementV1::LaunchAppAction::Representation
      
          property :title, as: 'title', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
        end
      end
      
      class SigninDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_personal_usage, as: 'allowPersonalUsage'
          property :qr_code, as: 'qrCode'
          property :signin_enrollment_token, as: 'signinEnrollmentToken'
          property :signin_url, as: 'signinUrl'
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
          property :android_device_policy_version_code, as: 'androidDevicePolicyVersionCode'
          property :android_device_policy_version_name, as: 'androidDevicePolicyVersionName'
          property :android_version, as: 'androidVersion'
          property :bootloader_version, as: 'bootloaderVersion'
          property :device_build_signature, as: 'deviceBuildSignature'
          property :device_kernel_version, as: 'deviceKernelVersion'
          property :primary_language_code, as: 'primaryLanguageCode'
          property :security_patch_level, as: 'securityPatchLevel'
          property :system_update_info, as: 'systemUpdateInfo', class: Google::Apis::AndroidmanagementV1::SystemUpdateInfo, decorator: Google::Apis::AndroidmanagementV1::SystemUpdateInfo::Representation
      
        end
      end
      
      class SpecificNonComplianceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :onc_wifi_context, as: 'oncWifiContext', class: Google::Apis::AndroidmanagementV1::OncWifiContext, decorator: Google::Apis::AndroidmanagementV1::OncWifiContext::Representation
      
          property :password_policies_context, as: 'passwordPoliciesContext', class: Google::Apis::AndroidmanagementV1::PasswordPoliciesContext, decorator: Google::Apis::AndroidmanagementV1::PasswordPoliciesContext::Representation
      
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
          property :application_reporting_settings, as: 'applicationReportingSettings', class: Google::Apis::AndroidmanagementV1::ApplicationReportingSettings, decorator: Google::Apis::AndroidmanagementV1::ApplicationReportingSettings::Representation
      
          property :application_reports_enabled, as: 'applicationReportsEnabled'
          property :common_criteria_mode_enabled, as: 'commonCriteriaModeEnabled'
          property :device_settings_enabled, as: 'deviceSettingsEnabled'
          property :display_info_enabled, as: 'displayInfoEnabled'
          property :hardware_status_enabled, as: 'hardwareStatusEnabled'
          property :memory_info_enabled, as: 'memoryInfoEnabled'
          property :network_info_enabled, as: 'networkInfoEnabled'
          property :power_management_events_enabled, as: 'powerManagementEventsEnabled'
          property :software_info_enabled, as: 'softwareInfoEnabled'
          property :system_properties_enabled, as: 'systemPropertiesEnabled'
        end
      end
      
      class SystemUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_minutes, as: 'endMinutes'
          collection :freeze_periods, as: 'freezePeriods', class: Google::Apis::AndroidmanagementV1::FreezePeriod, decorator: Google::Apis::AndroidmanagementV1::FreezePeriod::Representation
      
          property :start_minutes, as: 'startMinutes'
          property :type, as: 'type'
        end
      end
      
      class SystemUpdateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_received_time, as: 'updateReceivedTime'
          property :update_status, as: 'updateStatus'
        end
      end
      
      class TelephonyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_name, as: 'carrierName'
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class TermsAndConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
          property :header, as: 'header', class: Google::Apis::AndroidmanagementV1::UserFacingMessage, decorator: Google::Apis::AndroidmanagementV1::UserFacingMessage::Representation
      
        end
      end
      
      class UsageLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_log_types, as: 'enabledLogTypes'
          collection :upload_on_cellular_allowed, as: 'uploadOnCellularAllowed'
        end
      end
      
      class UsageLogEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adb_shell_command_event, as: 'adbShellCommandEvent', class: Google::Apis::AndroidmanagementV1::AdbShellCommandEvent, decorator: Google::Apis::AndroidmanagementV1::AdbShellCommandEvent::Representation
      
          property :adb_shell_interactive_event, as: 'adbShellInteractiveEvent', class: Google::Apis::AndroidmanagementV1::AdbShellInteractiveEvent, decorator: Google::Apis::AndroidmanagementV1::AdbShellInteractiveEvent::Representation
      
          property :app_process_start_event, as: 'appProcessStartEvent', class: Google::Apis::AndroidmanagementV1::AppProcessStartEvent, decorator: Google::Apis::AndroidmanagementV1::AppProcessStartEvent::Representation
      
          property :cert_authority_installed_event, as: 'certAuthorityInstalledEvent', class: Google::Apis::AndroidmanagementV1::CertAuthorityInstalledEvent, decorator: Google::Apis::AndroidmanagementV1::CertAuthorityInstalledEvent::Representation
      
          property :cert_authority_removed_event, as: 'certAuthorityRemovedEvent', class: Google::Apis::AndroidmanagementV1::CertAuthorityRemovedEvent, decorator: Google::Apis::AndroidmanagementV1::CertAuthorityRemovedEvent::Representation
      
          property :cert_validation_failure_event, as: 'certValidationFailureEvent', class: Google::Apis::AndroidmanagementV1::CertValidationFailureEvent, decorator: Google::Apis::AndroidmanagementV1::CertValidationFailureEvent::Representation
      
          property :connect_event, as: 'connectEvent', class: Google::Apis::AndroidmanagementV1::ConnectEvent, decorator: Google::Apis::AndroidmanagementV1::ConnectEvent::Representation
      
          property :crypto_self_test_completed_event, as: 'cryptoSelfTestCompletedEvent', class: Google::Apis::AndroidmanagementV1::CryptoSelfTestCompletedEvent, decorator: Google::Apis::AndroidmanagementV1::CryptoSelfTestCompletedEvent::Representation
      
          property :dns_event, as: 'dnsEvent', class: Google::Apis::AndroidmanagementV1::DnsEvent, decorator: Google::Apis::AndroidmanagementV1::DnsEvent::Representation
      
          property :event_id, :numeric_string => true, as: 'eventId'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :file_pulled_event, as: 'filePulledEvent', class: Google::Apis::AndroidmanagementV1::FilePulledEvent, decorator: Google::Apis::AndroidmanagementV1::FilePulledEvent::Representation
      
          property :file_pushed_event, as: 'filePushedEvent', class: Google::Apis::AndroidmanagementV1::FilePushedEvent, decorator: Google::Apis::AndroidmanagementV1::FilePushedEvent::Representation
      
          property :key_destruction_event, as: 'keyDestructionEvent', class: Google::Apis::AndroidmanagementV1::KeyDestructionEvent, decorator: Google::Apis::AndroidmanagementV1::KeyDestructionEvent::Representation
      
          property :key_generated_event, as: 'keyGeneratedEvent', class: Google::Apis::AndroidmanagementV1::KeyGeneratedEvent, decorator: Google::Apis::AndroidmanagementV1::KeyGeneratedEvent::Representation
      
          property :key_import_event, as: 'keyImportEvent', class: Google::Apis::AndroidmanagementV1::KeyImportEvent, decorator: Google::Apis::AndroidmanagementV1::KeyImportEvent::Representation
      
          property :key_integrity_violation_event, as: 'keyIntegrityViolationEvent', class: Google::Apis::AndroidmanagementV1::KeyIntegrityViolationEvent, decorator: Google::Apis::AndroidmanagementV1::KeyIntegrityViolationEvent::Representation
      
          property :keyguard_dismiss_auth_attempt_event, as: 'keyguardDismissAuthAttemptEvent', class: Google::Apis::AndroidmanagementV1::KeyguardDismissAuthAttemptEvent, decorator: Google::Apis::AndroidmanagementV1::KeyguardDismissAuthAttemptEvent::Representation
      
          property :keyguard_dismissed_event, as: 'keyguardDismissedEvent', class: Google::Apis::AndroidmanagementV1::KeyguardDismissedEvent, decorator: Google::Apis::AndroidmanagementV1::KeyguardDismissedEvent::Representation
      
          property :keyguard_secured_event, as: 'keyguardSecuredEvent', class: Google::Apis::AndroidmanagementV1::KeyguardSecuredEvent, decorator: Google::Apis::AndroidmanagementV1::KeyguardSecuredEvent::Representation
      
          property :log_buffer_size_critical_event, as: 'logBufferSizeCriticalEvent', class: Google::Apis::AndroidmanagementV1::LogBufferSizeCriticalEvent, decorator: Google::Apis::AndroidmanagementV1::LogBufferSizeCriticalEvent::Representation
      
          property :logging_started_event, as: 'loggingStartedEvent', class: Google::Apis::AndroidmanagementV1::LoggingStartedEvent, decorator: Google::Apis::AndroidmanagementV1::LoggingStartedEvent::Representation
      
          property :logging_stopped_event, as: 'loggingStoppedEvent', class: Google::Apis::AndroidmanagementV1::LoggingStoppedEvent, decorator: Google::Apis::AndroidmanagementV1::LoggingStoppedEvent::Representation
      
          property :media_mount_event, as: 'mediaMountEvent', class: Google::Apis::AndroidmanagementV1::MediaMountEvent, decorator: Google::Apis::AndroidmanagementV1::MediaMountEvent::Representation
      
          property :media_unmount_event, as: 'mediaUnmountEvent', class: Google::Apis::AndroidmanagementV1::MediaUnmountEvent, decorator: Google::Apis::AndroidmanagementV1::MediaUnmountEvent::Representation
      
          property :os_shutdown_event, as: 'osShutdownEvent', class: Google::Apis::AndroidmanagementV1::OsShutdownEvent, decorator: Google::Apis::AndroidmanagementV1::OsShutdownEvent::Representation
      
          property :os_startup_event, as: 'osStartupEvent', class: Google::Apis::AndroidmanagementV1::OsStartupEvent, decorator: Google::Apis::AndroidmanagementV1::OsStartupEvent::Representation
      
          property :remote_lock_event, as: 'remoteLockEvent', class: Google::Apis::AndroidmanagementV1::RemoteLockEvent, decorator: Google::Apis::AndroidmanagementV1::RemoteLockEvent::Representation
      
          property :wipe_failure_event, as: 'wipeFailureEvent', class: Google::Apis::AndroidmanagementV1::WipeFailureEvent, decorator: Google::Apis::AndroidmanagementV1::WipeFailureEvent::Representation
      
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_identifier, as: 'accountIdentifier'
        end
      end
      
      class UserFacingMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_message, as: 'defaultMessage'
          hash :localized_messages, as: 'localizedMessages'
        end
      end
      
      class WebApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_mode, as: 'displayMode'
          collection :icons, as: 'icons', class: Google::Apis::AndroidmanagementV1::WebAppIcon, decorator: Google::Apis::AndroidmanagementV1::WebAppIcon::Representation
      
          property :name, as: 'name'
          property :start_url, as: 'startUrl'
          property :title, as: 'title'
          property :version_code, :numeric_string => true, as: 'versionCode'
        end
      end
      
      class WebAppIcon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_data, as: 'imageData'
        end
      end
      
      class WebToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_features, as: 'enabledFeatures'
          property :name, as: 'name'
          property :parent_frame_url, as: 'parentFrameUrl'
          collection :permissions, as: 'permissions'
          property :value, as: 'value'
        end
      end
      
      class WipeAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preserve_frp, as: 'preserveFrp'
          property :wipe_after_days, as: 'wipeAfterDays'
        end
      end
      
      class WipeFailureEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
