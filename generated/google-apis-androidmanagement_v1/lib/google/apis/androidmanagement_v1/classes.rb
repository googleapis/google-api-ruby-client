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
      
      # A shell command was issued over ADB via “adb shell command”.
      class AdbShellCommandEvent
        include Google::Apis::Core::Hashable
      
        # Shell command that was issued over ADB via "adb shell command". Redacted to
        # empty string on organization-owned managed profile devices.
        # Corresponds to the JSON property `shellCmd`
        # @return [String]
        attr_accessor :shell_cmd
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shell_cmd = args[:shell_cmd] if args.key?(:shell_cmd)
        end
      end
      
      # An ADB interactive shell was opened via “adb shell”. Intentionally empty.
      class AdbShellInteractiveEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Parameters associated with the ADD_ESIM command to add an eSIM profile to the
      # device.
      class AddEsimParams
        include Google::Apis::Core::Hashable
      
        # Required. The activation code for the eSIM profile.
        # Corresponds to the JSON property `activationCode`
        # @return [String]
        attr_accessor :activation_code
      
        # Required. The activation state of the eSIM profile once it is downloaded.
        # Corresponds to the JSON property `activationState`
        # @return [String]
        attr_accessor :activation_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_code = args[:activation_code] if args.key?(:activation_code)
          @activation_state = args[:activation_state] if args.key?(:activation_state)
        end
      end
      
      # Advanced security settings. In most cases, setting these is not needed.
      class AdvancedSecurityOverrides
        include Google::Apis::Core::Hashable
      
        # Controls Common Criteria Mode—security standards defined in the Common
        # Criteria for Information Technology Security Evaluation (https://www.
        # commoncriteriaportal.org/) (CC). Enabling Common Criteria Mode increases
        # certain security components on a device, see CommonCriteriaMode for details.
        # Warning: Common Criteria Mode enforces a strict security model typically only
        # required for IT products used in national security systems and other highly
        # sensitive organizations. Standard device use may be affected. Only enabled if
        # required. If Common Criteria Mode is turned off after being enabled previously,
        # all user-configured Wi-Fi networks may be lost and any enterprise-configured
        # Wi-Fi networks that require user input may need to be reconfigured.
        # Corresponds to the JSON property `commonCriteriaMode`
        # @return [String]
        attr_accessor :common_criteria_mode
      
        # Optional. Controls whether content protection, which scans for deceptive apps,
        # is enabled. This is supported on Android 15 and above.
        # Corresponds to the JSON property `contentProtectionPolicy`
        # @return [String]
        attr_accessor :content_protection_policy
      
        # Controls access to developer settings: developer options and safe boot.
        # Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed (
        # deprecated).
        # Corresponds to the JSON property `developerSettings`
        # @return [String]
        attr_accessor :developer_settings
      
        # Whether Google Play Protect verification (https://support.google.com/accounts/
        # answer/2812853) is enforced. Replaces ensureVerifyAppsEnabled (deprecated).
        # Corresponds to the JSON property `googlePlayProtectVerifyApps`
        # @return [String]
        attr_accessor :google_play_protect_verify_apps
      
        # Optional. Controls Memory Tagging Extension (MTE) (https://source.android.com/
        # docs/security/test/memory-safety/arm-mte) on the device. The device needs to
        # be rebooted to apply changes to the MTE policy.
        # Corresponds to the JSON property `mtePolicy`
        # @return [String]
        attr_accessor :mte_policy
      
        # Personal apps that can read work profile notifications using a
        # NotificationListenerService (https://developer.android.com/reference/android/
        # service/notification/NotificationListenerService). By default, no personal
        # apps (aside from system apps) can read work notifications. Each value in the
        # list must be a package name.
        # Corresponds to the JSON property `personalAppsThatCanReadWorkNotifications`
        # @return [Array<String>]
        attr_accessor :personal_apps_that_can_read_work_notifications
      
        # The policy for untrusted apps (apps from unknown sources) enforced on the
        # device. Replaces install_unknown_sources_allowed (deprecated).
        # Corresponds to the JSON property `untrustedAppsPolicy`
        # @return [String]
        attr_accessor :untrusted_apps_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_criteria_mode = args[:common_criteria_mode] if args.key?(:common_criteria_mode)
          @content_protection_policy = args[:content_protection_policy] if args.key?(:content_protection_policy)
          @developer_settings = args[:developer_settings] if args.key?(:developer_settings)
          @google_play_protect_verify_apps = args[:google_play_protect_verify_apps] if args.key?(:google_play_protect_verify_apps)
          @mte_policy = args[:mte_policy] if args.key?(:mte_policy)
          @personal_apps_that_can_read_work_notifications = args[:personal_apps_that_can_read_work_notifications] if args.key?(:personal_apps_that_can_read_work_notifications)
          @untrusted_apps_policy = args[:untrusted_apps_policy] if args.key?(:untrusted_apps_policy)
        end
      end
      
      # Configuration for an always-on VPN connection.
      class AlwaysOnVpnPackage
        include Google::Apis::Core::Hashable
      
        # Disallows networking when the VPN is not connected.
        # Corresponds to the JSON property `lockdownEnabled`
        # @return [Boolean]
        attr_accessor :lockdown_enabled
        alias_method :lockdown_enabled?, :lockdown_enabled
      
        # The package name of the VPN app.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lockdown_enabled = args[:lockdown_enabled] if args.key?(:lockdown_enabled)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # A compliance rule condition which is satisfied if the Android Framework API
      # level on the device doesn't meet a minimum requirement. There can only be one
      # rule with this type of condition per policy.
      class ApiLevelCondition
        include Google::Apis::Core::Hashable
      
        # The minimum desired Android Framework API level. If the device doesn't meet
        # the minimum requirement, this condition is satisfied. Must be greater than
        # zero.
        # Corresponds to the JSON property `minApiLevel`
        # @return [Fixnum]
        attr_accessor :min_api_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_api_level = args[:min_api_level] if args.key?(:min_api_level)
        end
      end
      
      # Access Point Name (APN) policy. Configuration for Access Point Names (APNs)
      # which may override any other APNs on the device. See OVERRIDE_APNS_ENABLED and
      # overrideApns for details.
      class ApnPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. APN settings for override APNs. There must not be any conflict
        # between any of APN settings provided, otherwise the policy will be rejected.
        # Two ApnSettings are considered to conflict when all of the following fields
        # match on both: numericOperatorId, apn, proxyAddress, proxyPort,
        # mmsProxyAddress, mmsProxyPort, mmsc, mvnoType, protocol, roamingProtocol. If
        # some of the APN settings result in non-compliance of INVALID_VALUE , they will
        # be ignored. This can be set on fully managed devices on Android 10 and above.
        # This can also be set on work profiles on Android 13 and above and only with
        # ApnSetting's with ENTERPRISE APN type. A NonComplianceDetail with API_LEVEL is
        # reported if the Android version is less than 10. A NonComplianceDetail with
        # MANAGEMENT_MODE is reported for work profiles on Android versions less than 13.
        # Corresponds to the JSON property `apnSettings`
        # @return [Array<Google::Apis::AndroidmanagementV1::ApnSetting>]
        attr_accessor :apn_settings
      
        # Optional. Whether override APNs are disabled or enabled. See
        # DevicePolicyManager.setOverrideApnsEnabled (https://developer.android.com/
        # reference/android/app/admin/DevicePolicyManager#setOverrideApnsEnabled) for
        # more details.
        # Corresponds to the JSON property `overrideApns`
        # @return [String]
        attr_accessor :override_apns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apn_settings = args[:apn_settings] if args.key?(:apn_settings)
          @override_apns = args[:override_apns] if args.key?(:override_apns)
        end
      end
      
      # An Access Point Name (APN) configuration for a carrier data connection. The
      # APN provides configuration to connect a cellular network device to an IP data
      # network. A carrier uses this setting to decide which IP address to assign, any
      # security methods to apply, and how the device might be connected to private
      # networks.
      class ApnSetting
        include Google::Apis::Core::Hashable
      
        # Optional. Whether User Plane resources have to be activated during every
        # transition from CM-IDLE mode to CM-CONNECTED state for this APN. See 3GPP TS
        # 23.501 section 5.6.13.
        # Corresponds to the JSON property `alwaysOnSetting`
        # @return [String]
        attr_accessor :always_on_setting
      
        # Required. Name of the APN. Policy will be rejected if this field is empty.
        # Corresponds to the JSON property `apn`
        # @return [String]
        attr_accessor :apn
      
        # Required. Usage categories for the APN. Policy will be rejected if this field
        # is empty or contains APN_TYPE_UNSPECIFIED or duplicates. Multiple APN types
        # can be set on fully managed devices. ENTERPRISE is the only allowed APN type
        # on work profiles. A NonComplianceDetail with MANAGEMENT_MODE is reported for
        # any other value on work profiles. APN types that are not supported on the
        # device or management mode will be ignored. If this results in the empty list,
        # the APN setting will be ignored, because apnTypes is a required field. A
        # NonComplianceDetail with INVALID_VALUE is reported if none of the APN types
        # are supported on the device or management mode.
        # Corresponds to the JSON property `apnTypes`
        # @return [Array<String>]
        attr_accessor :apn_types
      
        # Optional. Authentication type of the APN.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Optional. Carrier ID for the APN. A value of 0 (default) means not set and
        # negative values are rejected.
        # Corresponds to the JSON property `carrierId`
        # @return [Fixnum]
        attr_accessor :carrier_id
      
        # Required. Human-readable name that describes the APN. Policy will be rejected
        # if this field is empty.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. MMS (Multimedia Messaging Service) proxy address of the APN which
        # can be an IP address or hostname (not a URL).
        # Corresponds to the JSON property `mmsProxyAddress`
        # @return [String]
        attr_accessor :mms_proxy_address
      
        # Optional. MMS (Multimedia Messaging Service) proxy port of the APN. A value of
        # 0 (default) means not set and negative values are rejected.
        # Corresponds to the JSON property `mmsProxyPort`
        # @return [Fixnum]
        attr_accessor :mms_proxy_port
      
        # Optional. MMSC (Multimedia Messaging Service Center) URI of the APN.
        # Corresponds to the JSON property `mmsc`
        # @return [String]
        attr_accessor :mmsc
      
        # Optional. The default MTU (Maximum Transmission Unit) size in bytes of the
        # IPv4 routes brought up by this APN setting. A value of 0 (default) means not
        # set and negative values are rejected. Supported on Android 13 and above. A
        # NonComplianceDetail with API_LEVEL is reported if the Android version is less
        # than 13.
        # Corresponds to the JSON property `mtuV4`
        # @return [Fixnum]
        attr_accessor :mtu_v4
      
        # Optional. The MTU (Maximum Transmission Unit) size of the IPv6 mobile
        # interface to which the APN connected. A value of 0 (default) means not set and
        # negative values are rejected. Supported on Android 13 and above. A
        # NonComplianceDetail with API_LEVEL is reported if the Android version is less
        # than 13.
        # Corresponds to the JSON property `mtuV6`
        # @return [Fixnum]
        attr_accessor :mtu_v6
      
        # Optional. MVNO match type for the APN.
        # Corresponds to the JSON property `mvnoType`
        # @return [String]
        attr_accessor :mvno_type
      
        # Optional. Radio technologies (network types) the APN may use. Policy will be
        # rejected if this field contains NETWORK_TYPE_UNSPECIFIED or duplicates.
        # Corresponds to the JSON property `networkTypes`
        # @return [Array<String>]
        attr_accessor :network_types
      
        # Optional. The numeric operator ID of the APN. Numeric operator ID is defined
        # as MCC (Mobile Country Code) + MNC (Mobile Network Code).
        # Corresponds to the JSON property `numericOperatorId`
        # @return [String]
        attr_accessor :numeric_operator_id
      
        # Optional. APN password of the APN.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. The protocol to use to connect to this APN.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Optional. The proxy address of the APN.
        # Corresponds to the JSON property `proxyAddress`
        # @return [String]
        attr_accessor :proxy_address
      
        # Optional. The proxy port of the APN. A value of 0 (default) means not set and
        # negative values are rejected.
        # Corresponds to the JSON property `proxyPort`
        # @return [Fixnum]
        attr_accessor :proxy_port
      
        # Optional. The protocol to use to connect to this APN while the device is
        # roaming.
        # Corresponds to the JSON property `roamingProtocol`
        # @return [String]
        attr_accessor :roaming_protocol
      
        # Optional. APN username of the APN.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @always_on_setting = args[:always_on_setting] if args.key?(:always_on_setting)
          @apn = args[:apn] if args.key?(:apn)
          @apn_types = args[:apn_types] if args.key?(:apn_types)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @carrier_id = args[:carrier_id] if args.key?(:carrier_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @mms_proxy_address = args[:mms_proxy_address] if args.key?(:mms_proxy_address)
          @mms_proxy_port = args[:mms_proxy_port] if args.key?(:mms_proxy_port)
          @mmsc = args[:mmsc] if args.key?(:mmsc)
          @mtu_v4 = args[:mtu_v4] if args.key?(:mtu_v4)
          @mtu_v6 = args[:mtu_v6] if args.key?(:mtu_v6)
          @mvno_type = args[:mvno_type] if args.key?(:mvno_type)
          @network_types = args[:network_types] if args.key?(:network_types)
          @numeric_operator_id = args[:numeric_operator_id] if args.key?(:numeric_operator_id)
          @password = args[:password] if args.key?(:password)
          @protocol = args[:protocol] if args.key?(:protocol)
          @proxy_address = args[:proxy_address] if args.key?(:proxy_address)
          @proxy_port = args[:proxy_port] if args.key?(:proxy_port)
          @roaming_protocol = args[:roaming_protocol] if args.key?(:roaming_protocol)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Information about a process. It contains process name, start time, app Uid,
      # app Pid, seinfo tag, hash of the base APK.
      class AppProcessInfo
        include Google::Apis::Core::Hashable
      
        # SHA-256 hash of the base APK, in hexadecimal format.
        # Corresponds to the JSON property `apkSha256Hash`
        # @return [String]
        attr_accessor :apk_sha256_hash
      
        # Package names of all packages that are associated with the particular user ID.
        # In most cases, this will be a single package name, the package that has been
        # assigned that user ID. If multiple application share a UID then all packages
        # sharing UID will be included.
        # Corresponds to the JSON property `packageNames`
        # @return [Array<String>]
        attr_accessor :package_names
      
        # Process ID.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # Process name.
        # Corresponds to the JSON property `processName`
        # @return [String]
        attr_accessor :process_name
      
        # SELinux policy info.
        # Corresponds to the JSON property `seinfo`
        # @return [String]
        attr_accessor :seinfo
      
        # Process start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # UID of the package.
        # Corresponds to the JSON property `uid`
        # @return [Fixnum]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apk_sha256_hash = args[:apk_sha256_hash] if args.key?(:apk_sha256_hash)
          @package_names = args[:package_names] if args.key?(:package_names)
          @pid = args[:pid] if args.key?(:pid)
          @process_name = args[:process_name] if args.key?(:process_name)
          @seinfo = args[:seinfo] if args.key?(:seinfo)
          @start_time = args[:start_time] if args.key?(:start_time)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # An app process was started. This is available device-wide on fully managed
      # devices and within the work profile on organization-owned devices with a work
      # profile.
      class AppProcessStartEvent
        include Google::Apis::Core::Hashable
      
        # Information about a process. It contains process name, start time, app Uid,
        # app Pid, seinfo tag, hash of the base APK.
        # Corresponds to the JSON property `processInfo`
        # @return [Google::Apis::AndroidmanagementV1::AppProcessInfo]
        attr_accessor :process_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @process_info = args[:process_info] if args.key?(:process_info)
        end
      end
      
      # Id to name association of a app track.
      class AppTrackInfo
        include Google::Apis::Core::Hashable
      
        # The track name associated with the trackId, set in the Play Console. The name
        # is modifiable from Play Console.
        # Corresponds to the JSON property `trackAlias`
        # @return [String]
        attr_accessor :track_alias
      
        # The unmodifiable unique track identifier, taken from the releaseTrackId in the
        # URL of the Play Console page that displays the app’s track information.
        # Corresponds to the JSON property `trackId`
        # @return [String]
        attr_accessor :track_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @track_alias = args[:track_alias] if args.key?(:track_alias)
          @track_id = args[:track_id] if args.key?(:track_id)
        end
      end
      
      # This represents a single version of the app.
      class AppVersion
        include Google::Apis::Core::Hashable
      
        # If the value is True, it indicates that this version is a production track.
        # Corresponds to the JSON property `production`
        # @return [Boolean]
        attr_accessor :production
        alias_method :production?, :production
      
        # Track identifiers that the app version is published in. This does not include
        # the production track (see production instead).
        # Corresponds to the JSON property `trackIds`
        # @return [Array<String>]
        attr_accessor :track_ids
      
        # Unique increasing identifier for the app version.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        # The string used in the Play store by the app developer to identify the version.
        # The string is not necessarily unique or localized (for example, the string
        # could be "1.4").
        # Corresponds to the JSON property `versionString`
        # @return [String]
        attr_accessor :version_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @production = args[:production] if args.key?(:production)
          @track_ids = args[:track_ids] if args.key?(:track_ids)
          @version_code = args[:version_code] if args.key?(:version_code)
          @version_string = args[:version_string] if args.key?(:version_string)
        end
      end
      
      # Information about an app.
      class Application
        include Google::Apis::Core::Hashable
      
        # Whether this app is free, free with in-app purchases, or paid. If the pricing
        # is unspecified, this means the app is not generally available anymore (even
        # though it might still be available to people who own it).
        # Corresponds to the JSON property `appPricing`
        # @return [String]
        attr_accessor :app_pricing
      
        # Application tracks visible to the enterprise.
        # Corresponds to the JSON property `appTracks`
        # @return [Array<Google::Apis::AndroidmanagementV1::AppTrackInfo>]
        attr_accessor :app_tracks
      
        # Versions currently available for this app.
        # Corresponds to the JSON property `appVersions`
        # @return [Array<Google::Apis::AndroidmanagementV1::AppVersion>]
        attr_accessor :app_versions
      
        # The name of the author of the apps (for example, the app developer).
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # The countries which this app is available in as per ISO 3166-1 alpha-2.
        # Corresponds to the JSON property `availableCountries`
        # @return [Array<String>]
        attr_accessor :available_countries
      
        # The app category (e.g. RACING, SOCIAL, etc.)
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The content rating for this app.
        # Corresponds to the JSON property `contentRating`
        # @return [String]
        attr_accessor :content_rating
      
        # The localized promotional description, if available.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # How and to whom the package is made available.
        # Corresponds to the JSON property `distributionChannel`
        # @return [String]
        attr_accessor :distribution_channel
      
        # Noteworthy features (if any) of this app.
        # Corresponds to the JSON property `features`
        # @return [Array<String>]
        attr_accessor :features
      
        # Full app description, if available.
        # Corresponds to the JSON property `fullDescription`
        # @return [String]
        attr_accessor :full_description
      
        # A link to an image that can be used as an icon for the app. This image is
        # suitable for use up to a pixel size of 512 x 512.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The set of managed properties available to be pre-configured for the app.
        # Corresponds to the JSON property `managedProperties`
        # @return [Array<Google::Apis::AndroidmanagementV1::ManagedProperty>]
        attr_accessor :managed_properties
      
        # The minimum Android SDK necessary to run the app.
        # Corresponds to the JSON property `minAndroidSdkVersion`
        # @return [Fixnum]
        attr_accessor :min_android_sdk_version
      
        # The name of the app in the form enterprises/`enterprise`/applications/`
        # package_name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The permissions required by the app.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::AndroidmanagementV1::ApplicationPermission>]
        attr_accessor :permissions
      
        # A link to the (consumer) Google Play details page for the app.
        # Corresponds to the JSON property `playStoreUrl`
        # @return [String]
        attr_accessor :play_store_url
      
        # A localised description of the recent changes made to the app.
        # Corresponds to the JSON property `recentChanges`
        # @return [String]
        attr_accessor :recent_changes
      
        # A list of screenshot links representing the app.
        # Corresponds to the JSON property `screenshotUrls`
        # @return [Array<String>]
        attr_accessor :screenshot_urls
      
        # A link to a smaller image that can be used as an icon for the app. This image
        # is suitable for use up to a pixel size of 128 x 128.
        # Corresponds to the JSON property `smallIconUrl`
        # @return [String]
        attr_accessor :small_icon_url
      
        # The title of the app. Localized.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. The approximate time (within 7 days) the app was last published.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_pricing = args[:app_pricing] if args.key?(:app_pricing)
          @app_tracks = args[:app_tracks] if args.key?(:app_tracks)
          @app_versions = args[:app_versions] if args.key?(:app_versions)
          @author = args[:author] if args.key?(:author)
          @available_countries = args[:available_countries] if args.key?(:available_countries)
          @category = args[:category] if args.key?(:category)
          @content_rating = args[:content_rating] if args.key?(:content_rating)
          @description = args[:description] if args.key?(:description)
          @distribution_channel = args[:distribution_channel] if args.key?(:distribution_channel)
          @features = args[:features] if args.key?(:features)
          @full_description = args[:full_description] if args.key?(:full_description)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @managed_properties = args[:managed_properties] if args.key?(:managed_properties)
          @min_android_sdk_version = args[:min_android_sdk_version] if args.key?(:min_android_sdk_version)
          @name = args[:name] if args.key?(:name)
          @permissions = args[:permissions] if args.key?(:permissions)
          @play_store_url = args[:play_store_url] if args.key?(:play_store_url)
          @recent_changes = args[:recent_changes] if args.key?(:recent_changes)
          @screenshot_urls = args[:screenshot_urls] if args.key?(:screenshot_urls)
          @small_icon_url = args[:small_icon_url] if args.key?(:small_icon_url)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An app-related event.
      class ApplicationEvent
        include Google::Apis::Core::Hashable
      
        # The creation time of the event.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # App event type.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # A permission required by the app.
      class ApplicationPermission
        include Google::Apis::Core::Hashable
      
        # A longer description of the permission, providing more detail on what it
        # affects. Localized.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name of the permission. Localized.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An opaque string uniquely identifying the permission. Not localized.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @permission_id = args[:permission_id] if args.key?(:permission_id)
        end
      end
      
      # Policy for an individual app. Note: Application availability on a given device
      # cannot be changed using this policy if installAppsDisabled is enabled. The
      # maximum number of applications that you can specify per policy is 3,000.
      class ApplicationPolicy
        include Google::Apis::Core::Hashable
      
        # List of the app’s track IDs that a device belonging to the enterprise can
        # access. If the list contains multiple track IDs, devices receive the latest
        # version among all accessible tracks. If the list contains no track IDs,
        # devices only have access to the app’s production track. More details about
        # each track are available in AppTrackInfo.
        # Corresponds to the JSON property `accessibleTrackIds`
        # @return [Array<String>]
        attr_accessor :accessible_track_ids
      
        # Specifies whether the app is allowed networking when the VPN is not connected
        # and alwaysOnVpnPackage.lockdownEnabled is enabled. If set to
        # VPN_LOCKDOWN_ENFORCED, the app is not allowed networking, and if set to
        # VPN_LOCKDOWN_EXEMPTION, the app is allowed networking. Only supported on
        # devices running Android 10 and above. If this is not supported by the device,
        # the device will contain a NonComplianceDetail with non_compliance_reason set
        # to API_LEVEL and a fieldPath. If this is not applicable to the app, the device
        # will contain a NonComplianceDetail with non_compliance_reason set to
        # UNSUPPORTED and a fieldPath. The fieldPath is set to applications[i].
        # alwaysOnVpnLockdownExemption, where i is the index of the package in the
        # applications policy.
        # Corresponds to the JSON property `alwaysOnVpnLockdownExemption`
        # @return [String]
        attr_accessor :always_on_vpn_lockdown_exemption
      
        # Controls the auto-update mode for the app.
        # Corresponds to the JSON property `autoUpdateMode`
        # @return [String]
        attr_accessor :auto_update_mode
      
        # Controls whether the app can communicate with itself across a device’s work
        # and personal profiles, subject to user consent.
        # Corresponds to the JSON property `connectedWorkAndPersonalApp`
        # @return [String]
        attr_accessor :connected_work_and_personal_app
      
        # Optional. Whether the app is allowed to act as a credential provider on
        # Android 14 and above.
        # Corresponds to the JSON property `credentialProviderPolicy`
        # @return [String]
        attr_accessor :credential_provider_policy
      
        # The default policy for all permissions requested by the app. If specified,
        # this overrides the policy-level default_permission_policy which applies to all
        # apps. It does not override the permission_grants which applies to all apps.
        # Corresponds to the JSON property `defaultPermissionPolicy`
        # @return [String]
        attr_accessor :default_permission_policy
      
        # The scopes delegated to the app from Android Device Policy. These provide
        # additional privileges for the applications they are applied to.
        # Corresponds to the JSON property `delegatedScopes`
        # @return [Array<String>]
        attr_accessor :delegated_scopes
      
        # Whether the app is disabled. When disabled, the app data is still preserved.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Configuration to enable an app as an extension app, with the capability of
        # interacting with Android Device Policy offline. For Android versions 11 and
        # above, extension apps are exempt from battery restrictions so will not be
        # placed into the restricted App Standby Bucket (https://developer.android.com/
        # topic/performance/appstandby#restricted-bucket). Extensions apps are also
        # protected against users clearing their data or force-closing the application,
        # although admins can continue to use the clear app data command on extension
        # apps if needed for Android 11 and above.
        # Corresponds to the JSON property `extensionConfig`
        # @return [Google::Apis::AndroidmanagementV1::ExtensionConfig]
        attr_accessor :extension_config
      
        # Optional. The constraints for installing the app. You can specify a maximum of
        # one InstallConstraint. Multiple constraints are rejected.
        # Corresponds to the JSON property `installConstraint`
        # @return [Array<Google::Apis::AndroidmanagementV1::InstallConstraint>]
        attr_accessor :install_constraint
      
        # Optional. Amongst apps with installType set to: FORCE_INSTALLED
        # PREINSTALLEDthis controls the relative priority of installation. A value of 0 (
        # default) means this app has no priority over other apps. For values between 1
        # and 10,000, a lower value means a higher priority. Values outside of the range
        # 0 to 10,000 inclusive are rejected.
        # Corresponds to the JSON property `installPriority`
        # @return [Fixnum]
        attr_accessor :install_priority
      
        # The type of installation to perform.
        # Corresponds to the JSON property `installType`
        # @return [String]
        attr_accessor :install_type
      
        # Whether the app is allowed to lock itself in full-screen mode. DEPRECATED. Use
        # InstallType KIOSK or kioskCustomLauncherEnabled to configure a dedicated
        # device.
        # Corresponds to the JSON property `lockTaskAllowed`
        # @return [Boolean]
        attr_accessor :lock_task_allowed
        alias_method :lock_task_allowed?, :lock_task_allowed
      
        # Managed configuration applied to the app. The format for the configuration is
        # dictated by the ManagedProperty values supported by the app. Each field name
        # in the managed configuration must match the key field of the ManagedProperty.
        # The field value must be compatible with the type of the ManagedProperty: *type*
        # *JSON value* BOOL true or false STRING string INTEGER number CHOICE string
        # MULTISELECT array of strings HIDDEN string BUNDLE_ARRAY array of objects
        # Corresponds to the JSON property `managedConfiguration`
        # @return [Hash<String,Object>]
        attr_accessor :managed_configuration
      
        # The managed configurations template for the app, saved from the managed
        # configurations iframe.
        # Corresponds to the JSON property `managedConfigurationTemplate`
        # @return [Google::Apis::AndroidmanagementV1::ManagedConfigurationTemplate]
        attr_accessor :managed_configuration_template
      
        # The minimum version of the app that runs on the device. If set, the device
        # attempts to update the app to at least this version code. If the app is not up-
        # to-date, the device will contain a NonComplianceDetail with
        # non_compliance_reason set to APP_NOT_UPDATED. The app must already be
        # published to Google Play with a version code greater than or equal to this
        # value. At most 20 apps may specify a minimum version code per policy.
        # Corresponds to the JSON property `minimumVersionCode`
        # @return [Fixnum]
        attr_accessor :minimum_version_code
      
        # The package name of the app. For example, com.google.android.youtube for the
        # YouTube app.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Explicit permission grants or denials for the app. These values override the
        # default_permission_policy and permission_grants which apply to all apps.
        # Corresponds to the JSON property `permissionGrants`
        # @return [Array<Google::Apis::AndroidmanagementV1::PermissionGrant>]
        attr_accessor :permission_grants
      
        # Optional. ID of the preferential network the application uses. There must be a
        # configuration for the specified network ID in
        # preferentialNetworkServiceConfigs. If set to
        # PREFERENTIAL_NETWORK_ID_UNSPECIFIED, the application will use the default
        # network ID specified in defaultPreferentialNetworkId. See the documentation of
        # defaultPreferentialNetworkId for the list of apps excluded from this
        # defaulting. This applies on both work profiles and fully managed devices on
        # Android 13 and above.
        # Corresponds to the JSON property `preferentialNetworkId`
        # @return [String]
        attr_accessor :preferential_network_id
      
        # Optional. Specifies whether user control is permitted for the app. User
        # control includes user actions like force-stopping and clearing app data.
        # Certain types of apps have special treatment, see
        # USER_CONTROL_SETTINGS_UNSPECIFIED and USER_CONTROL_ALLOWED for more details.
        # Corresponds to the JSON property `userControlSettings`
        # @return [String]
        attr_accessor :user_control_settings
      
        # Specifies whether the app installed in the work profile is allowed to add
        # widgets to the home screen.
        # Corresponds to the JSON property `workProfileWidgets`
        # @return [String]
        attr_accessor :work_profile_widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessible_track_ids = args[:accessible_track_ids] if args.key?(:accessible_track_ids)
          @always_on_vpn_lockdown_exemption = args[:always_on_vpn_lockdown_exemption] if args.key?(:always_on_vpn_lockdown_exemption)
          @auto_update_mode = args[:auto_update_mode] if args.key?(:auto_update_mode)
          @connected_work_and_personal_app = args[:connected_work_and_personal_app] if args.key?(:connected_work_and_personal_app)
          @credential_provider_policy = args[:credential_provider_policy] if args.key?(:credential_provider_policy)
          @default_permission_policy = args[:default_permission_policy] if args.key?(:default_permission_policy)
          @delegated_scopes = args[:delegated_scopes] if args.key?(:delegated_scopes)
          @disabled = args[:disabled] if args.key?(:disabled)
          @extension_config = args[:extension_config] if args.key?(:extension_config)
          @install_constraint = args[:install_constraint] if args.key?(:install_constraint)
          @install_priority = args[:install_priority] if args.key?(:install_priority)
          @install_type = args[:install_type] if args.key?(:install_type)
          @lock_task_allowed = args[:lock_task_allowed] if args.key?(:lock_task_allowed)
          @managed_configuration = args[:managed_configuration] if args.key?(:managed_configuration)
          @managed_configuration_template = args[:managed_configuration_template] if args.key?(:managed_configuration_template)
          @minimum_version_code = args[:minimum_version_code] if args.key?(:minimum_version_code)
          @package_name = args[:package_name] if args.key?(:package_name)
          @permission_grants = args[:permission_grants] if args.key?(:permission_grants)
          @preferential_network_id = args[:preferential_network_id] if args.key?(:preferential_network_id)
          @user_control_settings = args[:user_control_settings] if args.key?(:user_control_settings)
          @work_profile_widgets = args[:work_profile_widgets] if args.key?(:work_profile_widgets)
        end
      end
      
      # A change to be made to a single ApplicationPolicy object.
      class ApplicationPolicyChange
        include Google::Apis::Core::Hashable
      
        # Policy for an individual app. Note: Application availability on a given device
        # cannot be changed using this policy if installAppsDisabled is enabled. The
        # maximum number of applications that you can specify per policy is 3,000.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::AndroidmanagementV1::ApplicationPolicy]
        attr_accessor :application
      
        # The field mask indicating the fields to update. If omitted, all modifiable
        # fields are updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Information reported about an installed app.
      class ApplicationReport
        include Google::Apis::Core::Hashable
      
        # The source of the package.
        # Corresponds to the JSON property `applicationSource`
        # @return [String]
        attr_accessor :application_source
      
        # The display name of the app.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The list of app events which have occurred in the last 30 hours.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AndroidmanagementV1::ApplicationEvent>]
        attr_accessor :events
      
        # The package name of the app that installed this app.
        # Corresponds to the JSON property `installerPackageName`
        # @return [String]
        attr_accessor :installer_package_name
      
        # List of keyed app states reported by the app.
        # Corresponds to the JSON property `keyedAppStates`
        # @return [Array<Google::Apis::AndroidmanagementV1::KeyedAppState>]
        attr_accessor :keyed_app_states
      
        # Package name of the app.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The SHA-256 hash of the app's APK file, which can be used to verify the app
        # hasn't been modified. Each byte of the hash value is represented as a two-
        # digit hexadecimal number.
        # Corresponds to the JSON property `packageSha256Hash`
        # @return [String]
        attr_accessor :package_sha256_hash
      
        # The SHA-1 hash of each android.content.pm.Signature (https://developer.android.
        # com/reference/android/content/pm/Signature.html) associated with the app
        # package. Each byte of each hash value is represented as a two-digit
        # hexadecimal number.
        # Corresponds to the JSON property `signingKeyCertFingerprints`
        # @return [Array<String>]
        attr_accessor :signing_key_cert_fingerprints
      
        # Application state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Whether the app is user facing.
        # Corresponds to the JSON property `userFacingType`
        # @return [String]
        attr_accessor :user_facing_type
      
        # The app version code, which can be used to determine whether one version is
        # more recent than another.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        # The app version as displayed to the user.
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_source = args[:application_source] if args.key?(:application_source)
          @display_name = args[:display_name] if args.key?(:display_name)
          @events = args[:events] if args.key?(:events)
          @installer_package_name = args[:installer_package_name] if args.key?(:installer_package_name)
          @keyed_app_states = args[:keyed_app_states] if args.key?(:keyed_app_states)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_sha256_hash = args[:package_sha256_hash] if args.key?(:package_sha256_hash)
          @signing_key_cert_fingerprints = args[:signing_key_cert_fingerprints] if args.key?(:signing_key_cert_fingerprints)
          @state = args[:state] if args.key?(:state)
          @user_facing_type = args[:user_facing_type] if args.key?(:user_facing_type)
          @version_code = args[:version_code] if args.key?(:version_code)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # Settings controlling the behavior of application reports.
      class ApplicationReportingSettings
        include Google::Apis::Core::Hashable
      
        # Whether removed apps are included in application reports.
        # Corresponds to the JSON property `includeRemovedApps`
        # @return [Boolean]
        attr_accessor :include_removed_apps
        alias_method :include_removed_apps?, :include_removed_apps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_removed_apps = args[:include_removed_apps] if args.key?(:include_removed_apps)
        end
      end
      
      # An admin has enabled or disabled backup service.
      class BackupServiceToggledEvent
        include Google::Apis::Core::Hashable
      
        # Package name of the admin app requesting the change.
        # Corresponds to the JSON property `adminPackageName`
        # @return [String]
        attr_accessor :admin_package_name
      
        # User ID of the admin app from the which the change was requested.
        # Corresponds to the JSON property `adminUserId`
        # @return [Fixnum]
        attr_accessor :admin_user_id
      
        # Whether the backup service is enabled
        # Corresponds to the JSON property `backupServiceState`
        # @return [String]
        attr_accessor :backup_service_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_package_name = args[:admin_package_name] if args.key?(:admin_package_name)
          @admin_user_id = args[:admin_user_id] if args.key?(:admin_user_id)
          @backup_service_state = args[:backup_service_state] if args.key?(:backup_service_state)
        end
      end
      
      # Batched event logs of events from the device.
      class BatchUsageLogEvents
        include Google::Apis::Core::Hashable
      
        # If present, the name of the device in the form ‘enterprises/`enterpriseId`/
        # devices/`deviceId`’
        # Corresponds to the JSON property `device`
        # @return [String]
        attr_accessor :device
      
        # The device timestamp when the batch of events were collected from the device.
        # Corresponds to the JSON property `retrievalTime`
        # @return [String]
        attr_accessor :retrieval_time
      
        # The list of UsageLogEvent that were reported by the device, sorted
        # chronologically by the event time.
        # Corresponds to the JSON property `usageLogEvents`
        # @return [Array<Google::Apis::AndroidmanagementV1::UsageLogEvent>]
        attr_accessor :usage_log_events
      
        # If present, the resource name of the user that owns this device in the form ‘
        # enterprises/`enterpriseId`/users/`userId`’.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
          @retrieval_time = args[:retrieval_time] if args.key?(:retrieval_time)
          @usage_log_events = args[:usage_log_events] if args.key?(:usage_log_events)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # An action to block access to apps and data on a fully managed device or in a
      # work profile. This action also triggers a device or work profile to displays a
      # user-facing notification with information (where possible) on how to correct
      # the compliance issue. Note: wipeAction must also be specified.
      class BlockAction
        include Google::Apis::Core::Hashable
      
        # Number of days the policy is non-compliant before the device or work profile
        # is blocked. To block access immediately, set to 0. blockAfterDays must be less
        # than wipeAfterDays.
        # Corresponds to the JSON property `blockAfterDays`
        # @return [Fixnum]
        attr_accessor :block_after_days
      
        # Specifies the scope of this BlockAction. Only applicable to devices that are
        # company-owned.
        # Corresponds to the JSON property `blockScope`
        # @return [String]
        attr_accessor :block_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_after_days = args[:block_after_days] if args.key?(:block_after_days)
          @block_scope = args[:block_scope] if args.key?(:block_scope)
        end
      end
      
      # A new root certificate was installed into the system's trusted credential
      # storage. This is available device-wide on fully managed devices and within the
      # work profile on organization-owned devices with a work profile.
      class CertAuthorityInstalledEvent
        include Google::Apis::Core::Hashable
      
        # Subject of the certificate.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # Whether the installation event succeeded.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        # The user in which the certificate install event happened. Only available for
        # devices running Android 11 and above.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @success = args[:success] if args.key?(:success)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # A root certificate was removed from the system's trusted credential storage.
      # This is available device-wide on fully managed devices and within the work
      # profile on organization-owned devices with a work profile.
      class CertAuthorityRemovedEvent
        include Google::Apis::Core::Hashable
      
        # Subject of the certificate.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # Whether the removal succeeded.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        # The user in which the certificate removal event occurred. Only available for
        # devices running Android 11 and above.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @success = args[:success] if args.key?(:success)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # An X.509v3 certificate failed to validate, currently this validation is
      # performed on the Wi-FI access point and failure may be due to a mismatch upon
      # server certificate validation. However it may in the future include other
      # validation events of an X.509v3 certificate.
      class CertValidationFailureEvent
        include Google::Apis::Core::Hashable
      
        # The reason why certification validation failed.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
        end
      end
      
      # Controls apps' access to private keys. The rule determines which private key,
      # if any, Android Device Policy grants to the specified app. Access is granted
      # either when the app calls KeyChain.choosePrivateKeyAlias (https://developer.
      # android.com/reference/android/security/KeyChain#choosePrivateKeyAlias%
      # 28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.
      # String[],%20java.security.Principal[],%20java.lang.String,%20int,%20java.lang.
      # String%29) (or any overloads) to request a private key alias for a given URL,
      # or for rules that are not URL-specific (that is, if urlPattern is not set, or
      # set to the empty string or .*) on Android 11 and above, directly so that the
      # app can call KeyChain.getPrivateKey (https://developer.android.com/reference/
      # android/security/KeyChain#getPrivateKey%28android.content.Context,%20java.lang.
      # String%29), without first having to call KeyChain.choosePrivateKeyAlias.When
      # an app calls KeyChain.choosePrivateKeyAlias if more than one
      # choosePrivateKeyRules matches, the last matching rule defines which key alias
      # to return.
      class ChoosePrivateKeyRule
        include Google::Apis::Core::Hashable
      
        # The package names to which this rule applies. The hash of the signing
        # certificate for each app is verified against the hash provided by Play. If no
        # package names are specified, then the alias is provided to all apps that call
        # KeyChain.choosePrivateKeyAlias (https://developer.android.com/reference/
        # android/security/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%
        # 20android.security.KeyChainAliasCallback,%20java.lang.String[],%20java.
        # security.Principal[],%20java.lang.String,%20int,%20java.lang.String%29) or any
        # overloads (but not without calling KeyChain.choosePrivateKeyAlias, even on
        # Android 11 and above). Any app with the same Android UID as a package
        # specified here will have access when they call KeyChain.choosePrivateKeyAlias.
        # Corresponds to the JSON property `packageNames`
        # @return [Array<String>]
        attr_accessor :package_names
      
        # The alias of the private key to be used.
        # Corresponds to the JSON property `privateKeyAlias`
        # @return [String]
        attr_accessor :private_key_alias
      
        # The URL pattern to match against the URL of the request. If not set or empty,
        # it matches all URLs. This uses the regular expression syntax of java.util.
        # regex.Pattern.
        # Corresponds to the JSON property `urlPattern`
        # @return [String]
        attr_accessor :url_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_names = args[:package_names] if args.key?(:package_names)
          @private_key_alias = args[:private_key_alias] if args.key?(:private_key_alias)
          @url_pattern = args[:url_pattern] if args.key?(:url_pattern)
        end
      end
      
      # Parameters associated with the CLEAR_APP_DATA command to clear the data of
      # specified apps from the device.
      class ClearAppsDataParams
        include Google::Apis::Core::Hashable
      
        # The package names of the apps whose data will be cleared when the command is
        # executed.
        # Corresponds to the JSON property `packageNames`
        # @return [Array<String>]
        attr_accessor :package_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_names = args[:package_names] if args.key?(:package_names)
        end
      end
      
      # Status of the CLEAR_APP_DATA command to clear the data of specified apps from
      # the device.
      class ClearAppsDataStatus
        include Google::Apis::Core::Hashable
      
        # The per-app results, a mapping from package names to the respective clearing
        # result.
        # Corresponds to the JSON property `results`
        # @return [Hash<String,Google::Apis::AndroidmanagementV1::PerAppResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # A command.
      class Command
        include Google::Apis::Core::Hashable
      
        # Parameters associated with the ADD_ESIM command to add an eSIM profile to the
        # device.
        # Corresponds to the JSON property `addEsimParams`
        # @return [Google::Apis::AndroidmanagementV1::AddEsimParams]
        attr_accessor :add_esim_params
      
        # Parameters associated with the CLEAR_APP_DATA command to clear the data of
        # specified apps from the device.
        # Corresponds to the JSON property `clearAppsDataParams`
        # @return [Google::Apis::AndroidmanagementV1::ClearAppsDataParams]
        attr_accessor :clear_apps_data_params
      
        # Status of the CLEAR_APP_DATA command to clear the data of specified apps from
        # the device.
        # Corresponds to the JSON property `clearAppsDataStatus`
        # @return [Google::Apis::AndroidmanagementV1::ClearAppsDataStatus]
        attr_accessor :clear_apps_data_status
      
        # The timestamp at which the command was created. The timestamp is automatically
        # generated by the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The duration for which the command is valid. The command will expire if not
        # executed by the device during this time. The default duration if unspecified
        # is ten minutes. There is no maximum duration.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # If the command failed, an error code explaining the failure. This is not set
        # when the command is cancelled by the caller. For reasoning about command
        # errors, prefer fields in the following order (most preferred first): 1.
        # Command-specific fields like clearAppsDataStatus, startLostModeStatus, or
        # similar, if they exist. 2. This field, if set. 3. The generic error field in
        # the Operation that wraps the command.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Status and error details (if present) of an ADD_ESIM or REMOVE_ESIM command.
        # Corresponds to the JSON property `esimStatus`
        # @return [Google::Apis::AndroidmanagementV1::EsimCommandStatus]
        attr_accessor :esim_status
      
        # For commands of type RESET_PASSWORD, optionally specifies the new password.
        # Note: The new password must be at least 6 characters long if it is numeric in
        # case of Android 14 devices. Else the command will fail with INVALID_VALUE.
        # Corresponds to the JSON property `newPassword`
        # @return [String]
        attr_accessor :new_password
      
        # Parameters associated with the REMOVE_ESIM command to remove an eSIM profile
        # from the device.
        # Corresponds to the JSON property `removeEsimParams`
        # @return [Google::Apis::AndroidmanagementV1::RemoveEsimParams]
        attr_accessor :remove_esim_params
      
        # Parameters associated with the REQUEST_DEVICE_INFO command to get device
        # related information.
        # Corresponds to the JSON property `requestDeviceInfoParams`
        # @return [Google::Apis::AndroidmanagementV1::RequestDeviceInfoParams]
        attr_accessor :request_device_info_params
      
        # Status of the REQUEST_DEVICE_INFO command.
        # Corresponds to the JSON property `requestDeviceInfoStatus`
        # @return [Google::Apis::AndroidmanagementV1::RequestDeviceInfoStatus]
        attr_accessor :request_device_info_status
      
        # For commands of type RESET_PASSWORD, optionally specifies flags.
        # Corresponds to the JSON property `resetPasswordFlags`
        # @return [Array<String>]
        attr_accessor :reset_password_flags
      
        # Parameters associated with the START_LOST_MODE command to put the device into
        # lost mode. At least one of the parameters, not including the organization name,
        # must be provided in order for the device to be put into lost mode.
        # Corresponds to the JSON property `startLostModeParams`
        # @return [Google::Apis::AndroidmanagementV1::StartLostModeParams]
        attr_accessor :start_lost_mode_params
      
        # Status of the START_LOST_MODE command to put the device into lost mode.
        # Corresponds to the JSON property `startLostModeStatus`
        # @return [Google::Apis::AndroidmanagementV1::StartLostModeStatus]
        attr_accessor :start_lost_mode_status
      
        # Parameters associated with the STOP_LOST_MODE command to take the device out
        # of lost mode.
        # Corresponds to the JSON property `stopLostModeParams`
        # @return [Google::Apis::AndroidmanagementV1::StopLostModeParams]
        attr_accessor :stop_lost_mode_params
      
        # Status of the STOP_LOST_MODE command to take the device out of lost mode.
        # Corresponds to the JSON property `stopLostModeStatus`
        # @return [Google::Apis::AndroidmanagementV1::StopLostModeStatus]
        attr_accessor :stop_lost_mode_status
      
        # The type of the command.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The resource name of the user that owns the device in the form enterprises/`
        # enterpriseId`/users/`userId`. This is automatically generated by the server
        # based on the device the command is sent to.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        # Parameters associated with the WIPE command to wipe the device.
        # Corresponds to the JSON property `wipeParams`
        # @return [Google::Apis::AndroidmanagementV1::WipeParams]
        attr_accessor :wipe_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_esim_params = args[:add_esim_params] if args.key?(:add_esim_params)
          @clear_apps_data_params = args[:clear_apps_data_params] if args.key?(:clear_apps_data_params)
          @clear_apps_data_status = args[:clear_apps_data_status] if args.key?(:clear_apps_data_status)
          @create_time = args[:create_time] if args.key?(:create_time)
          @duration = args[:duration] if args.key?(:duration)
          @error_code = args[:error_code] if args.key?(:error_code)
          @esim_status = args[:esim_status] if args.key?(:esim_status)
          @new_password = args[:new_password] if args.key?(:new_password)
          @remove_esim_params = args[:remove_esim_params] if args.key?(:remove_esim_params)
          @request_device_info_params = args[:request_device_info_params] if args.key?(:request_device_info_params)
          @request_device_info_status = args[:request_device_info_status] if args.key?(:request_device_info_status)
          @reset_password_flags = args[:reset_password_flags] if args.key?(:reset_password_flags)
          @start_lost_mode_params = args[:start_lost_mode_params] if args.key?(:start_lost_mode_params)
          @start_lost_mode_status = args[:start_lost_mode_status] if args.key?(:start_lost_mode_status)
          @stop_lost_mode_params = args[:stop_lost_mode_params] if args.key?(:stop_lost_mode_params)
          @stop_lost_mode_status = args[:stop_lost_mode_status] if args.key?(:stop_lost_mode_status)
          @type = args[:type] if args.key?(:type)
          @user_name = args[:user_name] if args.key?(:user_name)
          @wipe_params = args[:wipe_params] if args.key?(:wipe_params)
        end
      end
      
      # Information about Common Criteria Mode—security standards defined in the
      # Common Criteria for Information Technology Security Evaluation (https://www.
      # commoncriteriaportal.org/) (CC).This information is only available if
      # statusReportingSettings.commonCriteriaModeEnabled is true in the device's
      # policy.
      class CommonCriteriaModeInfo
        include Google::Apis::Core::Hashable
      
        # Whether Common Criteria Mode is enabled.
        # Corresponds to the JSON property `commonCriteriaModeStatus`
        # @return [String]
        attr_accessor :common_criteria_mode_status
      
        # Output only. The status of policy signature verification.
        # Corresponds to the JSON property `policySignatureVerificationStatus`
        # @return [String]
        attr_accessor :policy_signature_verification_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_criteria_mode_status = args[:common_criteria_mode_status] if args.key?(:common_criteria_mode_status)
          @policy_signature_verification_status = args[:policy_signature_verification_status] if args.key?(:policy_signature_verification_status)
        end
      end
      
      # A rule declaring which mitigating actions to take when a device is not
      # compliant with its policy. For every rule, there is always an implicit
      # mitigating action to set policy_compliant to false for the Device resource,
      # and display a message on the device indicating that the device is not
      # compliant with its policy. Other mitigating actions may optionally be taken as
      # well, depending on the field values in the rule.
      class ComplianceRule
        include Google::Apis::Core::Hashable
      
        # A compliance rule condition which is satisfied if the Android Framework API
        # level on the device doesn't meet a minimum requirement. There can only be one
        # rule with this type of condition per policy.
        # Corresponds to the JSON property `apiLevelCondition`
        # @return [Google::Apis::AndroidmanagementV1::ApiLevelCondition]
        attr_accessor :api_level_condition
      
        # If set to true, the rule includes a mitigating action to disable apps so that
        # the device is effectively disabled, but app data is preserved. If the device
        # is running an app in locked task mode, the app will be closed and a UI showing
        # the reason for non-compliance will be displayed.
        # Corresponds to the JSON property `disableApps`
        # @return [Boolean]
        attr_accessor :disable_apps
        alias_method :disable_apps?, :disable_apps
      
        # A compliance rule condition which is satisfied if there exists any matching
        # NonComplianceDetail for the device. A NonComplianceDetail matches a
        # NonComplianceDetailCondition if all the fields which are set within the
        # NonComplianceDetailCondition match the corresponding NonComplianceDetail
        # fields.
        # Corresponds to the JSON property `nonComplianceDetailCondition`
        # @return [Google::Apis::AndroidmanagementV1::NonComplianceDetailCondition]
        attr_accessor :non_compliance_detail_condition
      
        # If set, the rule includes a mitigating action to disable apps specified in the
        # list, but app data is preserved.
        # Corresponds to the JSON property `packageNamesToDisable`
        # @return [Array<String>]
        attr_accessor :package_names_to_disable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_level_condition = args[:api_level_condition] if args.key?(:api_level_condition)
          @disable_apps = args[:disable_apps] if args.key?(:disable_apps)
          @non_compliance_detail_condition = args[:non_compliance_detail_condition] if args.key?(:non_compliance_detail_condition)
          @package_names_to_disable = args[:package_names_to_disable] if args.key?(:package_names_to_disable)
        end
      end
      
      # A TCP connect event was initiated through the standard network stack.
      class ConnectEvent
        include Google::Apis::Core::Hashable
      
        # The destination IP address of the connect call.
        # Corresponds to the JSON property `destinationIpAddress`
        # @return [String]
        attr_accessor :destination_ip_address
      
        # The destination port of the connect call.
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # The package name of the UID that performed the connect call.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_ip_address = args[:destination_ip_address] if args.key?(:destination_ip_address)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Contact details for managed Google Play enterprises.
      class ContactInfo
        include Google::Apis::Core::Hashable
      
        # Email address for a point of contact, which will be used to send important
        # announcements related to managed Google Play.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # The email of the data protection officer. The email is validated but not
        # verified.
        # Corresponds to the JSON property `dataProtectionOfficerEmail`
        # @return [String]
        attr_accessor :data_protection_officer_email
      
        # The name of the data protection officer.
        # Corresponds to the JSON property `dataProtectionOfficerName`
        # @return [String]
        attr_accessor :data_protection_officer_name
      
        # The phone number of the data protection officer The phone number is validated
        # but not verified.
        # Corresponds to the JSON property `dataProtectionOfficerPhone`
        # @return [String]
        attr_accessor :data_protection_officer_phone
      
        # The email of the EU representative. The email is validated but not verified.
        # Corresponds to the JSON property `euRepresentativeEmail`
        # @return [String]
        attr_accessor :eu_representative_email
      
        # The name of the EU representative.
        # Corresponds to the JSON property `euRepresentativeName`
        # @return [String]
        attr_accessor :eu_representative_name
      
        # The phone number of the EU representative. The phone number is validated but
        # not verified.
        # Corresponds to the JSON property `euRepresentativePhone`
        # @return [String]
        attr_accessor :eu_representative_phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @data_protection_officer_email = args[:data_protection_officer_email] if args.key?(:data_protection_officer_email)
          @data_protection_officer_name = args[:data_protection_officer_name] if args.key?(:data_protection_officer_name)
          @data_protection_officer_phone = args[:data_protection_officer_phone] if args.key?(:data_protection_officer_phone)
          @eu_representative_email = args[:eu_representative_email] if args.key?(:eu_representative_email)
          @eu_representative_name = args[:eu_representative_name] if args.key?(:eu_representative_name)
          @eu_representative_phone = args[:eu_representative_phone] if args.key?(:eu_representative_phone)
        end
      end
      
      # This feature is not generally available.
      class ContentProviderEndpoint
        include Google::Apis::Core::Hashable
      
        # This feature is not generally available.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Required. This feature is not generally available.
        # Corresponds to the JSON property `signingCertsSha256`
        # @return [Array<String>]
        attr_accessor :signing_certs_sha256
      
        # This feature is not generally available.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_name = args[:package_name] if args.key?(:package_name)
          @signing_certs_sha256 = args[:signing_certs_sha256] if args.key?(:signing_certs_sha256)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Controls the data from the work profile that can be accessed from the personal
      # profile and vice versa. A NonComplianceDetail with MANAGEMENT_MODE is reported
      # if the device does not have a work profile.
      class CrossProfilePolicies
        include Google::Apis::Core::Hashable
      
        # Optional. Controls whether personal profile apps can invoke app functions
        # exposed by apps in the work profile.
        # Corresponds to the JSON property `crossProfileAppFunctions`
        # @return [String]
        attr_accessor :cross_profile_app_functions
      
        # Whether text copied from one profile (personal or work) can be pasted in the
        # other profile.
        # Corresponds to the JSON property `crossProfileCopyPaste`
        # @return [String]
        attr_accessor :cross_profile_copy_paste
      
        # Whether data from one profile (personal or work) can be shared with apps in
        # the other profile. Specifically controls simple data sharing via intents.
        # Management of other cross-profile communication channels, such as contact
        # search, copy/paste, or connected work & personal apps, are configured
        # separately.
        # Corresponds to the JSON property `crossProfileDataSharing`
        # @return [String]
        attr_accessor :cross_profile_data_sharing
      
        # A list of package names.
        # Corresponds to the JSON property `exemptionsToShowWorkContactsInPersonalProfile`
        # @return [Google::Apis::AndroidmanagementV1::PackageNameList]
        attr_accessor :exemptions_to_show_work_contacts_in_personal_profile
      
        # Whether personal apps can access contacts stored in the work profile.See also
        # exemptions_to_show_work_contacts_in_personal_profile.
        # Corresponds to the JSON property `showWorkContactsInPersonalProfile`
        # @return [String]
        attr_accessor :show_work_contacts_in_personal_profile
      
        # Specifies the default behaviour for work profile widgets. If the policy does
        # not specify work_profile_widgets for a specific application, it will behave
        # according to the value specified here.
        # Corresponds to the JSON property `workProfileWidgetsDefault`
        # @return [String]
        attr_accessor :work_profile_widgets_default
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cross_profile_app_functions = args[:cross_profile_app_functions] if args.key?(:cross_profile_app_functions)
          @cross_profile_copy_paste = args[:cross_profile_copy_paste] if args.key?(:cross_profile_copy_paste)
          @cross_profile_data_sharing = args[:cross_profile_data_sharing] if args.key?(:cross_profile_data_sharing)
          @exemptions_to_show_work_contacts_in_personal_profile = args[:exemptions_to_show_work_contacts_in_personal_profile] if args.key?(:exemptions_to_show_work_contacts_in_personal_profile)
          @show_work_contacts_in_personal_profile = args[:show_work_contacts_in_personal_profile] if args.key?(:show_work_contacts_in_personal_profile)
          @work_profile_widgets_default = args[:work_profile_widgets_default] if args.key?(:work_profile_widgets_default)
        end
      end
      
      # Validates whether Android’s built-in cryptographic library (BoringSSL) is
      # valid. Should always succeed on device boot, if it fails, the device should be
      # considered untrusted.
      class CryptoSelfTestCompletedEvent
        include Google::Apis::Core::Hashable
      
        # Whether the test succeeded.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: A full date, with non-zero year, month, and day values. A month and
      # day, with a zero year (for example, an anniversary). A year on its own, with a
      # zero month and a zero day. A year and month, with a zero day (for example, a
      # credit card expiration date).Related types: google.type.TimeOfDay google.type.
      # DateTime google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A device owned by an enterprise. Unless otherwise noted, all fields are read-
      # only and can't be modified by enterprises.devices.patch.
      class Device
        include Google::Apis::Core::Hashable
      
        # The API level of the Android platform version running on the device.
        # Corresponds to the JSON property `apiLevel`
        # @return [Fixnum]
        attr_accessor :api_level
      
        # Reports for apps installed on the device. This information is only available
        # when application_reports_enabled is true in the device's policy.
        # Corresponds to the JSON property `applicationReports`
        # @return [Array<Google::Apis::AndroidmanagementV1::ApplicationReport>]
        attr_accessor :application_reports
      
        # The password requirements currently applied to the device. The applied
        # requirements may be slightly different from those specified in
        # passwordPolicies in some cases. fieldPath is set based on passwordPolicies.
        # Corresponds to the JSON property `appliedPasswordPolicies`
        # @return [Array<Google::Apis::AndroidmanagementV1::PasswordRequirements>]
        attr_accessor :applied_password_policies
      
        # The name of the policy currently applied to the device.
        # Corresponds to the JSON property `appliedPolicyName`
        # @return [String]
        attr_accessor :applied_policy_name
      
        # The version of the policy currently applied to the device.
        # Corresponds to the JSON property `appliedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :applied_policy_version
      
        # The state currently applied to the device.
        # Corresponds to the JSON property `appliedState`
        # @return [String]
        attr_accessor :applied_state
      
        # Information about Common Criteria Mode—security standards defined in the
        # Common Criteria for Information Technology Security Evaluation (https://www.
        # commoncriteriaportal.org/) (CC).This information is only available if
        # statusReportingSettings.commonCriteriaModeEnabled is true in the device's
        # policy.
        # Corresponds to the JSON property `commonCriteriaModeInfo`
        # @return [Google::Apis::AndroidmanagementV1::CommonCriteriaModeInfo]
        attr_accessor :common_criteria_mode_info
      
        # Information about security related device settings on device.
        # Corresponds to the JSON property `deviceSettings`
        # @return [Google::Apis::AndroidmanagementV1::DeviceSettings]
        attr_accessor :device_settings
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `disabledReason`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :disabled_reason
      
        # Detailed information about displays on the device. This information is only
        # available if displayInfoEnabled is true in the device's policy.
        # Corresponds to the JSON property `displays`
        # @return [Array<Google::Apis::AndroidmanagementV1::DisplayProp>]
        attr_accessor :displays
      
        # Information related to whether this device was migrated from being managed by
        # another Device Policy Controller (DPC).
        # Corresponds to the JSON property `dpcMigrationInfo`
        # @return [Google::Apis::AndroidmanagementV1::DpcMigrationInfo]
        attr_accessor :dpc_migration_info
      
        # The time of device enrollment.
        # Corresponds to the JSON property `enrollmentTime`
        # @return [String]
        attr_accessor :enrollment_time
      
        # If the device was enrolled with an enrollment token with additional data
        # provided, this field contains that data.
        # Corresponds to the JSON property `enrollmentTokenData`
        # @return [String]
        attr_accessor :enrollment_token_data
      
        # If the device was enrolled with an enrollment token, this field contains the
        # name of the token.
        # Corresponds to the JSON property `enrollmentTokenName`
        # @return [String]
        attr_accessor :enrollment_token_name
      
        # Information about device hardware. The fields related to temperature
        # thresholds are only available if hardwareStatusEnabled is true in the device's
        # policy.
        # Corresponds to the JSON property `hardwareInfo`
        # @return [Google::Apis::AndroidmanagementV1::HardwareInfo]
        attr_accessor :hardware_info
      
        # Hardware status samples in chronological order. This information is only
        # available if hardwareStatusEnabled is true in the device's policy.
        # Corresponds to the JSON property `hardwareStatusSamples`
        # @return [Array<Google::Apis::AndroidmanagementV1::HardwareStatus>]
        attr_accessor :hardware_status_samples
      
        # Deprecated.
        # Corresponds to the JSON property `lastPolicyComplianceReportTime`
        # @return [String]
        attr_accessor :last_policy_compliance_report_time
      
        # The last time the device fetched its policy.
        # Corresponds to the JSON property `lastPolicySyncTime`
        # @return [String]
        attr_accessor :last_policy_sync_time
      
        # The last time the device sent a status report.
        # Corresponds to the JSON property `lastStatusReportTime`
        # @return [String]
        attr_accessor :last_status_report_time
      
        # The type of management mode Android Device Policy takes on the device. This
        # influences which policy settings are supported.
        # Corresponds to the JSON property `managementMode`
        # @return [String]
        attr_accessor :management_mode
      
        # Events related to memory and storage measurements in chronological order. This
        # information is only available if memoryInfoEnabled is true in the device's
        # policy.Events are retained for a certain period of time and old events are
        # deleted.
        # Corresponds to the JSON property `memoryEvents`
        # @return [Array<Google::Apis::AndroidmanagementV1::MemoryEvent>]
        attr_accessor :memory_events
      
        # Information about device memory and storage.
        # Corresponds to the JSON property `memoryInfo`
        # @return [Google::Apis::AndroidmanagementV1::MemoryInfo]
        attr_accessor :memory_info
      
        # The name of the device in the form enterprises/`enterpriseId`/devices/`
        # deviceId`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Device network info.
        # Corresponds to the JSON property `networkInfo`
        # @return [Google::Apis::AndroidmanagementV1::NetworkInfo]
        attr_accessor :network_info
      
        # Details about policy settings that the device is not compliant with.
        # Corresponds to the JSON property `nonComplianceDetails`
        # @return [Array<Google::Apis::AndroidmanagementV1::NonComplianceDetail>]
        attr_accessor :non_compliance_details
      
        # Ownership of the managed device.
        # Corresponds to the JSON property `ownership`
        # @return [String]
        attr_accessor :ownership
      
        # Whether the device is compliant with its policy.
        # Corresponds to the JSON property `policyCompliant`
        # @return [Boolean]
        attr_accessor :policy_compliant
        alias_method :policy_compliant?, :policy_compliant
      
        # The name of the policy applied to the device, in the form enterprises/`
        # enterpriseId`/policies/`policyId`. If not specified, the policy_name for the
        # device's user is applied. This field can be modified by a patch request. You
        # can specify only the policyId when calling enterprises.devices.patch, as long
        # as the policyId doesn’t contain any slashes. The rest of the policy name is
        # inferred.
        # Corresponds to the JSON property `policyName`
        # @return [String]
        attr_accessor :policy_name
      
        # Power management events on the device in chronological order. This information
        # is only available if powerManagementEventsEnabled is true in the device's
        # policy.
        # Corresponds to the JSON property `powerManagementEvents`
        # @return [Array<Google::Apis::AndroidmanagementV1::PowerManagementEvent>]
        attr_accessor :power_management_events
      
        # If the same physical device has been enrolled multiple times, this field
        # contains its previous device names. The serial number is used as the unique
        # identifier to determine if the same physical device has enrolled previously.
        # The names are in chronological order.
        # Corresponds to the JSON property `previousDeviceNames`
        # @return [Array<String>]
        attr_accessor :previous_device_names
      
        # The security posture of the device, as determined by the current device state
        # and the policies applied.
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::AndroidmanagementV1::SecurityPosture]
        attr_accessor :security_posture
      
        # Information about device software.
        # Corresponds to the JSON property `softwareInfo`
        # @return [Google::Apis::AndroidmanagementV1::SoftwareInfo]
        attr_accessor :software_info
      
        # The state to be applied to the device. This field can be modified by a patch
        # request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED
        # are the only allowable values. To enter the device into a DELETED state, call
        # enterprises.devices.delete.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Map of selected system properties name and value related to the device. This
        # information is only available if systemPropertiesEnabled is true in the device'
        # s policy.
        # Corresponds to the JSON property `systemProperties`
        # @return [Hash<String,String>]
        attr_accessor :system_properties
      
        # A user belonging to an enterprise.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::AndroidmanagementV1::User]
        attr_accessor :user
      
        # The resource name of the user that owns this device in the form enterprises/`
        # enterpriseId`/users/`userId`.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_level = args[:api_level] if args.key?(:api_level)
          @application_reports = args[:application_reports] if args.key?(:application_reports)
          @applied_password_policies = args[:applied_password_policies] if args.key?(:applied_password_policies)
          @applied_policy_name = args[:applied_policy_name] if args.key?(:applied_policy_name)
          @applied_policy_version = args[:applied_policy_version] if args.key?(:applied_policy_version)
          @applied_state = args[:applied_state] if args.key?(:applied_state)
          @common_criteria_mode_info = args[:common_criteria_mode_info] if args.key?(:common_criteria_mode_info)
          @device_settings = args[:device_settings] if args.key?(:device_settings)
          @disabled_reason = args[:disabled_reason] if args.key?(:disabled_reason)
          @displays = args[:displays] if args.key?(:displays)
          @dpc_migration_info = args[:dpc_migration_info] if args.key?(:dpc_migration_info)
          @enrollment_time = args[:enrollment_time] if args.key?(:enrollment_time)
          @enrollment_token_data = args[:enrollment_token_data] if args.key?(:enrollment_token_data)
          @enrollment_token_name = args[:enrollment_token_name] if args.key?(:enrollment_token_name)
          @hardware_info = args[:hardware_info] if args.key?(:hardware_info)
          @hardware_status_samples = args[:hardware_status_samples] if args.key?(:hardware_status_samples)
          @last_policy_compliance_report_time = args[:last_policy_compliance_report_time] if args.key?(:last_policy_compliance_report_time)
          @last_policy_sync_time = args[:last_policy_sync_time] if args.key?(:last_policy_sync_time)
          @last_status_report_time = args[:last_status_report_time] if args.key?(:last_status_report_time)
          @management_mode = args[:management_mode] if args.key?(:management_mode)
          @memory_events = args[:memory_events] if args.key?(:memory_events)
          @memory_info = args[:memory_info] if args.key?(:memory_info)
          @name = args[:name] if args.key?(:name)
          @network_info = args[:network_info] if args.key?(:network_info)
          @non_compliance_details = args[:non_compliance_details] if args.key?(:non_compliance_details)
          @ownership = args[:ownership] if args.key?(:ownership)
          @policy_compliant = args[:policy_compliant] if args.key?(:policy_compliant)
          @policy_name = args[:policy_name] if args.key?(:policy_name)
          @power_management_events = args[:power_management_events] if args.key?(:power_management_events)
          @previous_device_names = args[:previous_device_names] if args.key?(:previous_device_names)
          @security_posture = args[:security_posture] if args.key?(:security_posture)
          @software_info = args[:software_info] if args.key?(:software_info)
          @state = args[:state] if args.key?(:state)
          @system_properties = args[:system_properties] if args.key?(:system_properties)
          @user = args[:user] if args.key?(:user)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # Covers controls for device connectivity such as Wi-Fi, USB data access,
      # keyboard/mouse connections, and more.
      class DeviceConnectivityManagement
        include Google::Apis::Core::Hashable
      
        # Access Point Name (APN) policy. Configuration for Access Point Names (APNs)
        # which may override any other APNs on the device. See OVERRIDE_APNS_ENABLED and
        # overrideApns for details.
        # Corresponds to the JSON property `apnPolicy`
        # @return [Google::Apis::AndroidmanagementV1::ApnPolicy]
        attr_accessor :apn_policy
      
        # Optional. Controls whether Bluetooth sharing is allowed.
        # Corresponds to the JSON property `bluetoothSharing`
        # @return [String]
        attr_accessor :bluetooth_sharing
      
        # Controls Wi-Fi configuring privileges. Based on the option set, user will have
        # either full or limited or no control in configuring Wi-Fi networks.
        # Corresponds to the JSON property `configureWifi`
        # @return [String]
        attr_accessor :configure_wifi
      
        # Preferential network service settings.
        # Corresponds to the JSON property `preferentialNetworkServiceSettings`
        # @return [Google::Apis::AndroidmanagementV1::PreferentialNetworkServiceSettings]
        attr_accessor :preferential_network_service_settings
      
        # Controls tethering settings. Based on the value set, the user is partially or
        # fully disallowed from using different forms of tethering.
        # Corresponds to the JSON property `tetheringSettings`
        # @return [String]
        attr_accessor :tethering_settings
      
        # Controls what files and/or data can be transferred via USB. Supported only on
        # company-owned devices.
        # Corresponds to the JSON property `usbDataAccess`
        # @return [String]
        attr_accessor :usb_data_access
      
        # Controls configuring and using Wi-Fi direct settings. Supported on company-
        # owned devices running Android 13 and above.
        # Corresponds to the JSON property `wifiDirectSettings`
        # @return [String]
        attr_accessor :wifi_direct_settings
      
        # Wi-Fi roaming policy.
        # Corresponds to the JSON property `wifiRoamingPolicy`
        # @return [Google::Apis::AndroidmanagementV1::WifiRoamingPolicy]
        attr_accessor :wifi_roaming_policy
      
        # Restrictions on which Wi-Fi SSIDs the device can connect to. Note that this
        # does not affect which networks can be configured on the device. Supported on
        # company-owned devices running Android 13 and above.
        # Corresponds to the JSON property `wifiSsidPolicy`
        # @return [Google::Apis::AndroidmanagementV1::WifiSsidPolicy]
        attr_accessor :wifi_ssid_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apn_policy = args[:apn_policy] if args.key?(:apn_policy)
          @bluetooth_sharing = args[:bluetooth_sharing] if args.key?(:bluetooth_sharing)
          @configure_wifi = args[:configure_wifi] if args.key?(:configure_wifi)
          @preferential_network_service_settings = args[:preferential_network_service_settings] if args.key?(:preferential_network_service_settings)
          @tethering_settings = args[:tethering_settings] if args.key?(:tethering_settings)
          @usb_data_access = args[:usb_data_access] if args.key?(:usb_data_access)
          @wifi_direct_settings = args[:wifi_direct_settings] if args.key?(:wifi_direct_settings)
          @wifi_roaming_policy = args[:wifi_roaming_policy] if args.key?(:wifi_roaming_policy)
          @wifi_ssid_policy = args[:wifi_ssid_policy] if args.key?(:wifi_ssid_policy)
        end
      end
      
      # Controls for device radio settings.
      class DeviceRadioState
        include Google::Apis::Core::Hashable
      
        # Controls whether airplane mode can be toggled by the user or not.
        # Corresponds to the JSON property `airplaneModeState`
        # @return [String]
        attr_accessor :airplane_mode_state
      
        # Controls whether cellular 2G setting can be toggled by the user or not.
        # Corresponds to the JSON property `cellularTwoGState`
        # @return [String]
        attr_accessor :cellular_two_g_state
      
        # The minimum required security level of Wi-Fi networks that the device can
        # connect to.
        # Corresponds to the JSON property `minimumWifiSecurityLevel`
        # @return [String]
        attr_accessor :minimum_wifi_security_level
      
        # Controls the state of the ultra wideband setting and whether the user can
        # toggle it on or off.
        # Corresponds to the JSON property `ultraWidebandState`
        # @return [String]
        attr_accessor :ultra_wideband_state
      
        # Controls current state of Wi-Fi and if user can change its state.
        # Corresponds to the JSON property `wifiState`
        # @return [String]
        attr_accessor :wifi_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airplane_mode_state = args[:airplane_mode_state] if args.key?(:airplane_mode_state)
          @cellular_two_g_state = args[:cellular_two_g_state] if args.key?(:cellular_two_g_state)
          @minimum_wifi_security_level = args[:minimum_wifi_security_level] if args.key?(:minimum_wifi_security_level)
          @ultra_wideband_state = args[:ultra_wideband_state] if args.key?(:ultra_wideband_state)
          @wifi_state = args[:wifi_state] if args.key?(:wifi_state)
        end
      end
      
      # Information about security related device settings on device.
      class DeviceSettings
        include Google::Apis::Core::Hashable
      
        # Whether ADB (https://developer.android.com/studio/command-line/adb.html) is
        # enabled on the device.
        # Corresponds to the JSON property `adbEnabled`
        # @return [Boolean]
        attr_accessor :adb_enabled
        alias_method :adb_enabled?, :adb_enabled
      
        # Whether developer mode is enabled on the device.
        # Corresponds to the JSON property `developmentSettingsEnabled`
        # @return [Boolean]
        attr_accessor :development_settings_enabled
        alias_method :development_settings_enabled?, :development_settings_enabled
      
        # Encryption status from DevicePolicyManager.
        # Corresponds to the JSON property `encryptionStatus`
        # @return [String]
        attr_accessor :encryption_status
      
        # Whether the device is secured with PIN/password.
        # Corresponds to the JSON property `isDeviceSecure`
        # @return [Boolean]
        attr_accessor :is_device_secure
        alias_method :is_device_secure?, :is_device_secure
      
        # Whether the storage encryption is enabled.
        # Corresponds to the JSON property `isEncrypted`
        # @return [Boolean]
        attr_accessor :is_encrypted
        alias_method :is_encrypted?, :is_encrypted
      
        # Whether installing apps from unknown sources is enabled.
        # Corresponds to the JSON property `unknownSourcesEnabled`
        # @return [Boolean]
        attr_accessor :unknown_sources_enabled
        alias_method :unknown_sources_enabled?, :unknown_sources_enabled
      
        # Whether Google Play Protect verification (https://support.google.com/accounts/
        # answer/2812853) is enforced on the device.
        # Corresponds to the JSON property `verifyAppsEnabled`
        # @return [Boolean]
        attr_accessor :verify_apps_enabled
        alias_method :verify_apps_enabled?, :verify_apps_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adb_enabled = args[:adb_enabled] if args.key?(:adb_enabled)
          @development_settings_enabled = args[:development_settings_enabled] if args.key?(:development_settings_enabled)
          @encryption_status = args[:encryption_status] if args.key?(:encryption_status)
          @is_device_secure = args[:is_device_secure] if args.key?(:is_device_secure)
          @is_encrypted = args[:is_encrypted] if args.key?(:is_encrypted)
          @unknown_sources_enabled = args[:unknown_sources_enabled] if args.key?(:unknown_sources_enabled)
          @verify_apps_enabled = args[:verify_apps_enabled] if args.key?(:verify_apps_enabled)
        end
      end
      
      # Device display information.
      class DisplayProp
        include Google::Apis::Core::Hashable
      
        # Display density expressed as dots-per-inch.
        # Corresponds to the JSON property `density`
        # @return [Fixnum]
        attr_accessor :density
      
        # Unique display id.
        # Corresponds to the JSON property `displayId`
        # @return [Fixnum]
        attr_accessor :display_id
      
        # Display height in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Name of the display.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Refresh rate of the display in frames per second.
        # Corresponds to the JSON property `refreshRate`
        # @return [Fixnum]
        attr_accessor :refresh_rate
      
        # State of the display.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Display width in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @density = args[:density] if args.key?(:density)
          @display_id = args[:display_id] if args.key?(:display_id)
          @height = args[:height] if args.key?(:height)
          @name = args[:name] if args.key?(:name)
          @refresh_rate = args[:refresh_rate] if args.key?(:refresh_rate)
          @state = args[:state] if args.key?(:state)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Controls for the display settings.
      class DisplaySettings
        include Google::Apis::Core::Hashable
      
        # Controls for the screen brightness settings.
        # Corresponds to the JSON property `screenBrightnessSettings`
        # @return [Google::Apis::AndroidmanagementV1::ScreenBrightnessSettings]
        attr_accessor :screen_brightness_settings
      
        # Controls the screen timeout settings.
        # Corresponds to the JSON property `screenTimeoutSettings`
        # @return [Google::Apis::AndroidmanagementV1::ScreenTimeoutSettings]
        attr_accessor :screen_timeout_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @screen_brightness_settings = args[:screen_brightness_settings] if args.key?(:screen_brightness_settings)
          @screen_timeout_settings = args[:screen_timeout_settings] if args.key?(:screen_timeout_settings)
        end
      end
      
      # A DNS lookup event was initiated through the standard network stack.
      class DnsEvent
        include Google::Apis::Core::Hashable
      
        # The hostname that was looked up.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # The (possibly truncated) list of the IP addresses returned for DNS lookup (max
        # 10 IPv4 or IPv6 addresses).
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # The package name of the UID that performed the DNS lookup.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The number of IP addresses returned from the DNS lookup event. May be higher
        # than the amount of ip_addresses if there were too many addresses to log.
        # Corresponds to the JSON property `totalIpAddressesReturned`
        # @return [Fixnum]
        attr_accessor :total_ip_addresses_returned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @package_name = args[:package_name] if args.key?(:package_name)
          @total_ip_addresses_returned = args[:total_ip_addresses_returned] if args.key?(:total_ip_addresses_returned)
        end
      end
      
      # Information related to whether this device was migrated from being managed by
      # another Device Policy Controller (DPC).
      class DpcMigrationInfo
        include Google::Apis::Core::Hashable
      
        # Output only. If this device was migrated from another DPC, the additionalData
        # field of the migration token is populated here.
        # Corresponds to the JSON property `additionalData`
        # @return [String]
        attr_accessor :additional_data
      
        # Output only. If this device was migrated from another DPC, this is its package
        # name. Not populated otherwise.
        # Corresponds to the JSON property `previousDpc`
        # @return [String]
        attr_accessor :previous_dpc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_data = args[:additional_data] if args.key?(:additional_data)
          @previous_dpc = args[:previous_dpc] if args.key?(:previous_dpc)
        end
      end
      
      # EID information for each eUICC chip.
      class Eid
        include Google::Apis::Core::Hashable
      
        # Output only. The EID
        # Corresponds to the JSON property `eid`
        # @return [String]
        attr_accessor :eid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eid = args[:eid] if args.key?(:eid)
        end
      end
      
      # Information related to the EIDs of the device.
      class EidInfo
        include Google::Apis::Core::Hashable
      
        # Output only. EID information for each eUICC chip.
        # Corresponds to the JSON property `eids`
        # @return [Array<Google::Apis::AndroidmanagementV1::Eid>]
        attr_accessor :eids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eids = args[:eids] if args.key?(:eids)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents that the device has completed enrollment. User should be in the
      # launcher at this point, device at this point will be compliant and all setup
      # steps have been completed. Intentionally empty.
      class EnrollmentCompleteEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An enrollment token.
      class EnrollmentToken
        include Google::Apis::Core::Hashable
      
        # Optional, arbitrary data associated with the enrollment token. This could
        # contain, for example, the ID of an org unit the device is assigned to after
        # enrollment. After a device enrolls with the token, this data will be exposed
        # in the enrollment_token_data field of the Device resource. The data must be
        # 1024 characters or less; otherwise, the creation request will fail.
        # Corresponds to the JSON property `additionalData`
        # @return [String]
        attr_accessor :additional_data
      
        # Controls whether personal usage is allowed on a device provisioned with this
        # enrollment token.For company-owned devices: Enabling personal usage allows the
        # user to set up a work profile on the device. Disabling personal usage requires
        # the user provision the device as a fully managed device.For personally-owned
        # devices: Enabling personal usage allows the user to set up a work profile on
        # the device. Disabling personal usage will prevent the device from provisioning.
        # Personal usage cannot be disabled on personally-owned device.
        # Corresponds to the JSON property `allowPersonalUsage`
        # @return [String]
        attr_accessor :allow_personal_usage
      
        # The length of time the enrollment token is valid, ranging from 1 minute to
        # Durations.MAX_VALUE (https://developers.google.com/protocol-buffers/docs/
        # reference/java/com/google/protobuf/util/Durations.html#MAX_VALUE),
        # approximately 10,000 years. If not specified, the default duration is 1 hour.
        # Please note that if requested duration causes the resulting
        # expiration_timestamp to exceed Timestamps.MAX_VALUE (https://developers.google.
        # com/protocol-buffers/docs/reference/java/com/google/protobuf/util/Timestamps.
        # html#MAX_VALUE), then expiration_timestamp is coerced to Timestamps.MAX_VALUE.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The expiration time of the token. This is a read-only field generated by the
        # server.
        # Corresponds to the JSON property `expirationTimestamp`
        # @return [String]
        attr_accessor :expiration_timestamp
      
        # The name of the enrollment token, which is generated by the server during
        # creation, in the form enterprises/`enterpriseId`/enrollmentTokens/`
        # enrollmentTokenId`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the enrollment token is for one time use only. If the flag is set to
        # true, only one device can use it for registration.
        # Corresponds to the JSON property `oneTimeOnly`
        # @return [Boolean]
        attr_accessor :one_time_only
        alias_method :one_time_only?, :one_time_only
      
        # The name of the policy initially applied to the enrolled device, in the form
        # enterprises/`enterpriseId`/policies/`policyId`. If not specified, the
        # policy_name for the device’s user is applied. If user_name is also not
        # specified, enterprises/`enterpriseId`/policies/default is applied by default.
        # When updating this field, you can specify only the policyId as long as the
        # policyId doesn’t contain any slashes. The rest of the policy name will be
        # inferred.
        # Corresponds to the JSON property `policyName`
        # @return [String]
        attr_accessor :policy_name
      
        # A JSON string whose UTF-8 representation can be used to generate a QR code to
        # enroll a device with this enrollment token. To enroll a device using NFC, the
        # NFC record must contain a serialized java.util.Properties representation of
        # the properties in the JSON.
        # Corresponds to the JSON property `qrCode`
        # @return [String]
        attr_accessor :qr_code
      
        # A user belonging to an enterprise.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::AndroidmanagementV1::User]
        attr_accessor :user
      
        # The token value that's passed to the device and authorizes the device to
        # enroll. This is a read-only field generated by the server.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_data = args[:additional_data] if args.key?(:additional_data)
          @allow_personal_usage = args[:allow_personal_usage] if args.key?(:allow_personal_usage)
          @duration = args[:duration] if args.key?(:duration)
          @expiration_timestamp = args[:expiration_timestamp] if args.key?(:expiration_timestamp)
          @name = args[:name] if args.key?(:name)
          @one_time_only = args[:one_time_only] if args.key?(:one_time_only)
          @policy_name = args[:policy_name] if args.key?(:policy_name)
          @qr_code = args[:qr_code] if args.key?(:qr_code)
          @user = args[:user] if args.key?(:user)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The configuration applied to an enterprise.
      class Enterprise
        include Google::Apis::Core::Hashable
      
        # Deprecated and unused.
        # Corresponds to the JSON property `appAutoApprovalEnabled`
        # @return [Boolean]
        attr_accessor :app_auto_approval_enabled
        alias_method :app_auto_approval_enabled?, :app_auto_approval_enabled
      
        # Contact details for managed Google Play enterprises.
        # Corresponds to the JSON property `contactInfo`
        # @return [Google::Apis::AndroidmanagementV1::ContactInfo]
        attr_accessor :contact_info
      
        # The types of Google Pub/Sub notifications enabled for the enterprise.
        # Corresponds to the JSON property `enabledNotificationTypes`
        # @return [Array<String>]
        attr_accessor :enabled_notification_types
      
        # The name of the enterprise displayed to users. This field has a maximum length
        # of 100 characters.
        # Corresponds to the JSON property `enterpriseDisplayName`
        # @return [String]
        attr_accessor :enterprise_display_name
      
        # Output only. The type of the enterprise.
        # Corresponds to the JSON property `enterpriseType`
        # @return [String]
        attr_accessor :enterprise_type
      
        # Contains settings for Google-provided user authentication.
        # Corresponds to the JSON property `googleAuthenticationSettings`
        # @return [Google::Apis::AndroidmanagementV1::GoogleAuthenticationSettings]
        attr_accessor :google_authentication_settings
      
        # Data hosted at an external location. The data is to be downloaded by Android
        # Device Policy and verified against the hash.
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::AndroidmanagementV1::ExternalData]
        attr_accessor :logo
      
        # Output only. The type of managed Google domain.
        # Corresponds to the JSON property `managedGoogleDomainType`
        # @return [String]
        attr_accessor :managed_google_domain_type
      
        # Output only. The type of a managed Google Play Accounts enterprise.
        # Corresponds to the JSON property `managedGooglePlayAccountsEnterpriseType`
        # @return [String]
        attr_accessor :managed_google_play_accounts_enterprise_type
      
        # The name of the enterprise which is generated by the server during creation,
        # in the form enterprises/`enterpriseId`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A color in RGB format that indicates the predominant color to display in the
        # device management app UI. The color components are stored as follows: (red <<
        # 16) | (green << 8) | blue, where the value of each component is between 0 and
        # 255, inclusive.
        # Corresponds to the JSON property `primaryColor`
        # @return [Fixnum]
        attr_accessor :primary_color
      
        # The topic which Pub/Sub notifications are published to, in the form projects/`
        # project`/topics/`topic`. This field is only required if Pub/Sub notifications
        # are enabled.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # Sign-in details of the enterprise.
        # Corresponds to the JSON property `signinDetails`
        # @return [Array<Google::Apis::AndroidmanagementV1::SigninDetail>]
        attr_accessor :signin_details
      
        # Terms and conditions that must be accepted when provisioning a device for this
        # enterprise. A page of terms is generated for each value in this list.
        # Corresponds to the JSON property `termsAndConditions`
        # @return [Array<Google::Apis::AndroidmanagementV1::TermsAndConditions>]
        attr_accessor :terms_and_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_auto_approval_enabled = args[:app_auto_approval_enabled] if args.key?(:app_auto_approval_enabled)
          @contact_info = args[:contact_info] if args.key?(:contact_info)
          @enabled_notification_types = args[:enabled_notification_types] if args.key?(:enabled_notification_types)
          @enterprise_display_name = args[:enterprise_display_name] if args.key?(:enterprise_display_name)
          @enterprise_type = args[:enterprise_type] if args.key?(:enterprise_type)
          @google_authentication_settings = args[:google_authentication_settings] if args.key?(:google_authentication_settings)
          @logo = args[:logo] if args.key?(:logo)
          @managed_google_domain_type = args[:managed_google_domain_type] if args.key?(:managed_google_domain_type)
          @managed_google_play_accounts_enterprise_type = args[:managed_google_play_accounts_enterprise_type] if args.key?(:managed_google_play_accounts_enterprise_type)
          @name = args[:name] if args.key?(:name)
          @primary_color = args[:primary_color] if args.key?(:primary_color)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @signin_details = args[:signin_details] if args.key?(:signin_details)
          @terms_and_conditions = args[:terms_and_conditions] if args.key?(:terms_and_conditions)
        end
      end
      
      # An event sent for an enterprise upgrade. An enterprise upgrade is a process
      # that upgrades a managed Google Play Accounts enterprise to a managed Google
      # domain.
      class EnterpriseUpgradeEvent
        include Google::Apis::Core::Hashable
      
        # The name of upgraded enterprise in the format "enterprises/`enterprise`"
        # Corresponds to the JSON property `enterprise`
        # @return [String]
        attr_accessor :enterprise
      
        # Output only. The upgrade state of the enterprise.
        # Corresponds to the JSON property `upgradeState`
        # @return [String]
        attr_accessor :upgrade_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enterprise = args[:enterprise] if args.key?(:enterprise)
          @upgrade_state = args[:upgrade_state] if args.key?(:upgrade_state)
        end
      end
      
      # Status and error details (if present) of an ADD_ESIM or REMOVE_ESIM command.
      class EsimCommandStatus
        include Google::Apis::Core::Hashable
      
        # Details of the eSIM added or removed.
        # Corresponds to the JSON property `esimInfo`
        # @return [Google::Apis::AndroidmanagementV1::EsimInfo]
        attr_accessor :esim_info
      
        # Internal error details if present for the ADD_ESIM or REMOVE_ESIM command.
        # Corresponds to the JSON property `internalErrorDetails`
        # @return [Google::Apis::AndroidmanagementV1::InternalErrorDetails]
        attr_accessor :internal_error_details
      
        # Output only. Status of an ADD_ESIM or REMOVE_ESIM command.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @esim_info = args[:esim_info] if args.key?(:esim_info)
          @internal_error_details = args[:internal_error_details] if args.key?(:internal_error_details)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Details of the eSIM added or removed.
      class EsimInfo
        include Google::Apis::Core::Hashable
      
        # Output only. ICC ID of the eSIM.
        # Corresponds to the JSON property `iccId`
        # @return [String]
        attr_accessor :icc_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icc_id = args[:icc_id] if args.key?(:icc_id)
        end
      end
      
      # Information related to the eUICC chip.
      class EuiccChipInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The Embedded Identity Document (EID) that identifies the eUICC
        # chip for each eUICC chip on the device. This is available on company owned
        # devices running Android 13 and above.
        # Corresponds to the JSON property `eid`
        # @return [String]
        attr_accessor :eid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eid = args[:eid] if args.key?(:eid)
        end
      end
      
      # Configuration to enable an app as an extension app, with the capability of
      # interacting with Android Device Policy offline. For Android versions 11 and
      # above, extension apps are exempt from battery restrictions so will not be
      # placed into the restricted App Standby Bucket (https://developer.android.com/
      # topic/performance/appstandby#restricted-bucket). Extensions apps are also
      # protected against users clearing their data or force-closing the application,
      # although admins can continue to use the clear app data command on extension
      # apps if needed for Android 11 and above.
      class ExtensionConfig
        include Google::Apis::Core::Hashable
      
        # Fully qualified class name of the receiver service class for Android Device
        # Policy to notify the extension app of any local command status updates. The
        # service must be exported in the extension app's AndroidManifest.xml and extend
        # NotificationReceiverService (https://developers.google.com/android/management/
        # reference/amapi/com/google/android/managementapi/notification/
        # NotificationReceiverService) (see Integrate with the AMAPI SDK (https://
        # developers.google.com/android/management/sdk-integration) guide for more
        # details).
        # Corresponds to the JSON property `notificationReceiver`
        # @return [String]
        attr_accessor :notification_receiver
      
        # Hex-encoded SHA-256 hashes of the signing key certificates of the extension
        # app. Only hexadecimal string representations of 64 characters are valid.The
        # signing key certificate fingerprints are always obtained from the Play Store
        # and this field is used to provide additional signing key certificate
        # fingerprints. However, if the application is not available on the Play Store,
        # this field needs to be set. A NonComplianceDetail with INVALID_VALUE is
        # reported if this field is not set when the application is not available on the
        # Play Store.The signing key certificate fingerprint of the extension app on the
        # device must match one of the signing key certificate fingerprints obtained
        # from the Play Store or the ones provided in this field for the app to be able
        # to communicate with Android Device Policy.In production use cases, it is
        # recommended to leave this empty.
        # Corresponds to the JSON property `signingKeyFingerprintsSha256`
        # @return [Array<String>]
        attr_accessor :signing_key_fingerprints_sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notification_receiver = args[:notification_receiver] if args.key?(:notification_receiver)
          @signing_key_fingerprints_sha256 = args[:signing_key_fingerprints_sha256] if args.key?(:signing_key_fingerprints_sha256)
        end
      end
      
      # Data hosted at an external location. The data is to be downloaded by Android
      # Device Policy and verified against the hash.
      class ExternalData
        include Google::Apis::Core::Hashable
      
        # The base-64 encoded SHA-256 hash of the content hosted at url. If the content
        # doesn't match this hash, Android Device Policy won't use the data.
        # Corresponds to the JSON property `sha256Hash`
        # @return [String]
        attr_accessor :sha256_hash
      
        # The absolute URL to the data, which must use either the http or https scheme.
        # Android Device Policy doesn't provide any credentials in the GET request, so
        # the URL must be publicly accessible. Including a long, random component in the
        # URL may be used to prevent attackers from discovering the URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A file was downloaded from the device.
      class FilePulledEvent
        include Google::Apis::Core::Hashable
      
        # The path of the file being pulled.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
        end
      end
      
      # A file was uploaded onto the device.
      class FilePushedEvent
        include Google::Apis::Core::Hashable
      
        # The path of the file being pushed.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
        end
      end
      
      # A system freeze period. When a device’s clock is within the freeze period, all
      # incoming system updates (including security patches) are blocked and won’t be
      # installed.When the device is outside any set freeze periods, the normal policy
      # behavior (automatic, windowed, or postponed) applies.Leap years are ignored in
      # freeze period calculations, in particular: If Feb. 29th is set as the start or
      # end date of a freeze period, the freeze period will start or end on Feb. 28th
      # instead. When a device’s system clock reads Feb. 29th, it’s treated as Feb.
      # 28th. When calculating the number of days in a freeze period or the time
      # between two freeze periods, Feb. 29th is ignored and not counted as a day.Note:
      # For Freeze Periods to take effect, SystemUpdateType cannot be specified as
      # SYSTEM_UPDATE_TYPE_UNSPECIFIED, because freeze periods require a defined
      # policy to be specified.
      class FreezePeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: A full date, with non-zero year, month, and day values. A month and
        # day, with a zero year (for example, an anniversary). A year on its own, with a
        # zero month and a zero day. A year and month, with a zero day (for example, a
        # credit card expiration date).Related types: google.type.TimeOfDay google.type.
        # DateTime google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::AndroidmanagementV1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: A full date, with non-zero year, month, and day values. A month and
        # day, with a zero year (for example, an anniversary). A year on its own, with a
        # zero month and a zero day. A year and month, with a zero day (for example, a
        # credit card expiration date).Related types: google.type.TimeOfDay google.type.
        # DateTime google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::AndroidmanagementV1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Request message for generating a URL to upgrade an existing managed Google
      # Play Accounts enterprise to a managed Google domain.Note: This feature is not
      # generally available.
      class GenerateEnterpriseUpgradeUrlRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Email address used to prefill the admin field of the enterprise
        # signup form as part of the upgrade process. This value is a hint only and can
        # be altered by the user. Personal email addresses are not allowed. If
        # allowedDomains is non-empty then this must belong to one of the allowedDomains.
        # Corresponds to the JSON property `adminEmail`
        # @return [String]
        attr_accessor :admin_email
      
        # Optional. A list of domains that are permitted for the admin email. The IT
        # admin cannot enter an email address with a domain name that is not in this
        # list. Subdomains of domains in this list are not allowed but can be allowed by
        # adding a second entry which has *. prefixed to the domain name (e.g. *.example.
        # com). If the field is not present or is an empty list then the IT admin is
        # free to use any valid domain name. Personal email domains are not allowed.
        # Corresponds to the JSON property `allowedDomains`
        # @return [Array<String>]
        attr_accessor :allowed_domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_email = args[:admin_email] if args.key?(:admin_email)
          @allowed_domains = args[:allowed_domains] if args.key?(:allowed_domains)
        end
      end
      
      # Response message for generating a URL to upgrade an existing managed Google
      # Play Accounts enterprise to a managed Google domain.Note: This feature is not
      # generally available.
      class GenerateEnterpriseUpgradeUrlResponse
        include Google::Apis::Core::Hashable
      
        # A URL for an enterprise admin to upgrade their enterprise. The page can't be
        # rendered in an iframe.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Contains settings for Google-provided user authentication.
      class GoogleAuthenticationSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Whether users need to be authenticated by Google during the
        # enrollment process. IT admin can specify if Google authentication is enabled
        # for the enterprise for knowledge worker devices. This value can be set only
        # via the Google Admin Console. Google authentication can be used with
        # signin_url In the case where Google authentication is required and a
        # signin_url is specified, Google authentication will be launched before
        # signin_url.
        # Corresponds to the JSON property `googleAuthenticationRequired`
        # @return [String]
        attr_accessor :google_authentication_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_authentication_required = args[:google_authentication_required] if args.key?(:google_authentication_required)
        end
      end
      
      # Information about device hardware. The fields related to temperature
      # thresholds are only available if hardwareStatusEnabled is true in the device's
      # policy.
      class HardwareInfo
        include Google::Apis::Core::Hashable
      
        # Battery shutdown temperature thresholds in Celsius for each battery on the
        # device.
        # Corresponds to the JSON property `batteryShutdownTemperatures`
        # @return [Array<Float>]
        attr_accessor :battery_shutdown_temperatures
      
        # Battery throttling temperature thresholds in Celsius for each battery on the
        # device.
        # Corresponds to the JSON property `batteryThrottlingTemperatures`
        # @return [Array<Float>]
        attr_accessor :battery_throttling_temperatures
      
        # Brand of the device. For example, Google.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # CPU shutdown temperature thresholds in Celsius for each CPU on the device.
        # Corresponds to the JSON property `cpuShutdownTemperatures`
        # @return [Array<Float>]
        attr_accessor :cpu_shutdown_temperatures
      
        # CPU throttling temperature thresholds in Celsius for each CPU on the device.
        # Corresponds to the JSON property `cpuThrottlingTemperatures`
        # @return [Array<Float>]
        attr_accessor :cpu_throttling_temperatures
      
        # Baseband version. For example, MDM9625_104662.22.05.34p.
        # Corresponds to the JSON property `deviceBasebandVersion`
        # @return [String]
        attr_accessor :device_baseband_version
      
        # Output only. ID that uniquely identifies a personally-owned device in a
        # particular organization. On the same physical device when enrolled with the
        # same organization, this ID persists across setups and even factory resets.
        # This ID is available on personally-owned devices with a work profile on
        # devices running Android 12 and above.
        # Corresponds to the JSON property `enterpriseSpecificId`
        # @return [String]
        attr_accessor :enterprise_specific_id
      
        # Output only. Information related to the eUICC chip.
        # Corresponds to the JSON property `euiccChipInfo`
        # @return [Array<Google::Apis::AndroidmanagementV1::EuiccChipInfo>]
        attr_accessor :euicc_chip_info
      
        # GPU shutdown temperature thresholds in Celsius for each GPU on the device.
        # Corresponds to the JSON property `gpuShutdownTemperatures`
        # @return [Array<Float>]
        attr_accessor :gpu_shutdown_temperatures
      
        # GPU throttling temperature thresholds in Celsius for each GPU on the device.
        # Corresponds to the JSON property `gpuThrottlingTemperatures`
        # @return [Array<Float>]
        attr_accessor :gpu_throttling_temperatures
      
        # Name of the hardware. For example, Angler.
        # Corresponds to the JSON property `hardware`
        # @return [String]
        attr_accessor :hardware
      
        # Manufacturer. For example, Motorola.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # The model of the device. For example, Asus Nexus 7.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # The device serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Device skin shutdown temperature thresholds in Celsius.
        # Corresponds to the JSON property `skinShutdownTemperatures`
        # @return [Array<Float>]
        attr_accessor :skin_shutdown_temperatures
      
        # Device skin throttling temperature thresholds in Celsius.
        # Corresponds to the JSON property `skinThrottlingTemperatures`
        # @return [Array<Float>]
        attr_accessor :skin_throttling_temperatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @battery_shutdown_temperatures = args[:battery_shutdown_temperatures] if args.key?(:battery_shutdown_temperatures)
          @battery_throttling_temperatures = args[:battery_throttling_temperatures] if args.key?(:battery_throttling_temperatures)
          @brand = args[:brand] if args.key?(:brand)
          @cpu_shutdown_temperatures = args[:cpu_shutdown_temperatures] if args.key?(:cpu_shutdown_temperatures)
          @cpu_throttling_temperatures = args[:cpu_throttling_temperatures] if args.key?(:cpu_throttling_temperatures)
          @device_baseband_version = args[:device_baseband_version] if args.key?(:device_baseband_version)
          @enterprise_specific_id = args[:enterprise_specific_id] if args.key?(:enterprise_specific_id)
          @euicc_chip_info = args[:euicc_chip_info] if args.key?(:euicc_chip_info)
          @gpu_shutdown_temperatures = args[:gpu_shutdown_temperatures] if args.key?(:gpu_shutdown_temperatures)
          @gpu_throttling_temperatures = args[:gpu_throttling_temperatures] if args.key?(:gpu_throttling_temperatures)
          @hardware = args[:hardware] if args.key?(:hardware)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @model = args[:model] if args.key?(:model)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @skin_shutdown_temperatures = args[:skin_shutdown_temperatures] if args.key?(:skin_shutdown_temperatures)
          @skin_throttling_temperatures = args[:skin_throttling_temperatures] if args.key?(:skin_throttling_temperatures)
        end
      end
      
      # Hardware status. Temperatures may be compared to the temperature thresholds
      # available in hardwareInfo to determine hardware health.
      class HardwareStatus
        include Google::Apis::Core::Hashable
      
        # Current battery temperatures in Celsius for each battery on the device.
        # Corresponds to the JSON property `batteryTemperatures`
        # @return [Array<Float>]
        attr_accessor :battery_temperatures
      
        # Current CPU temperatures in Celsius for each CPU on the device.
        # Corresponds to the JSON property `cpuTemperatures`
        # @return [Array<Float>]
        attr_accessor :cpu_temperatures
      
        # CPU usages in percentage for each core available on the device. Usage is 0 for
        # each unplugged core. Empty array implies that CPU usage is not supported in
        # the system.
        # Corresponds to the JSON property `cpuUsages`
        # @return [Array<Float>]
        attr_accessor :cpu_usages
      
        # The time the measurements were taken.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Fan speeds in RPM for each fan on the device. Empty array means that there are
        # no fans or fan speed is not supported on the system.
        # Corresponds to the JSON property `fanSpeeds`
        # @return [Array<Float>]
        attr_accessor :fan_speeds
      
        # Current GPU temperatures in Celsius for each GPU on the device.
        # Corresponds to the JSON property `gpuTemperatures`
        # @return [Array<Float>]
        attr_accessor :gpu_temperatures
      
        # Current device skin temperatures in Celsius.
        # Corresponds to the JSON property `skinTemperatures`
        # @return [Array<Float>]
        attr_accessor :skin_temperatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @battery_temperatures = args[:battery_temperatures] if args.key?(:battery_temperatures)
          @cpu_temperatures = args[:cpu_temperatures] if args.key?(:cpu_temperatures)
          @cpu_usages = args[:cpu_usages] if args.key?(:cpu_usages)
          @create_time = args[:create_time] if args.key?(:create_time)
          @fan_speeds = args[:fan_speeds] if args.key?(:fan_speeds)
          @gpu_temperatures = args[:gpu_temperatures] if args.key?(:gpu_temperatures)
          @skin_temperatures = args[:skin_temperatures] if args.key?(:skin_temperatures)
        end
      end
      
      # Amongst apps with InstallType set to: FORCE_INSTALLED PREINSTALLEDthis defines
      # a set of restrictions for the app installation. At least one of the fields
      # must be set. When multiple fields are set, then all the constraints need to be
      # satisfied for the app to be installed.
      class InstallConstraint
        include Google::Apis::Core::Hashable
      
        # Optional. Charging constraint.
        # Corresponds to the JSON property `chargingConstraint`
        # @return [String]
        attr_accessor :charging_constraint
      
        # Optional. Device idle constraint.
        # Corresponds to the JSON property `deviceIdleConstraint`
        # @return [String]
        attr_accessor :device_idle_constraint
      
        # Optional. Network type constraint.
        # Corresponds to the JSON property `networkTypeConstraint`
        # @return [String]
        attr_accessor :network_type_constraint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charging_constraint = args[:charging_constraint] if args.key?(:charging_constraint)
          @device_idle_constraint = args[:device_idle_constraint] if args.key?(:device_idle_constraint)
          @network_type_constraint = args[:network_type_constraint] if args.key?(:network_type_constraint)
        end
      end
      
      # Internal error details if present for the ADD_ESIM or REMOVE_ESIM command.
      class InternalErrorDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Integer representation of the error code as specified here (https:
        # //developer.android.com/reference/android/telephony/euicc/EuiccManager#
        # EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE). See also,
        # OPERATION_SMDX_SUBJECT_REASON_CODE. See error_code_detail for more details.
        # Corresponds to the JSON property `errorCode`
        # @return [Fixnum]
        attr_accessor :error_code
      
        # Output only. The error code detail corresponding to the error_code.
        # Corresponds to the JSON property `errorCodeDetail`
        # @return [String]
        attr_accessor :error_code_detail
      
        # Output only. Integer representation of the operation code as specified here (
        # https://developer.android.com/reference/android/telephony/euicc/EuiccManager#
        # EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE). See operation_code_detail for more
        # details.
        # Corresponds to the JSON property `operationCode`
        # @return [Fixnum]
        attr_accessor :operation_code
      
        # Output only. The operation code detail corresponding to the operation_code.
        # Corresponds to the JSON property `operationCodeDetail`
        # @return [String]
        attr_accessor :operation_code_detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_code_detail = args[:error_code_detail] if args.key?(:error_code_detail)
          @operation_code = args[:operation_code] if args.key?(:operation_code)
          @operation_code_detail = args[:operation_code_detail] if args.key?(:operation_code_detail)
        end
      end
      
      # Response on issuing a command. This is currently empty as a placeholder.
      class IssueCommandResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A cryptographic key including user installed, admin installed and system
      # maintained private key is removed from the device either by the user or
      # management. This is available device-wide on fully managed devices and within
      # the work profile on organization-owned devices with a work profile.
      class KeyDestructionEvent
        include Google::Apis::Core::Hashable
      
        # UID of the application which owns the key.
        # Corresponds to the JSON property `applicationUid`
        # @return [Fixnum]
        attr_accessor :application_uid
      
        # Alias of the key.
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # Whether the operation was successful.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_uid = args[:application_uid] if args.key?(:application_uid)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # A cryptographic key including user installed, admin installed and system
      # maintained private key is installed on the device either by the user or
      # management.This is available device-wide on fully managed devices and within
      # the work profile on organization-owned devices with a work profile.
      class KeyGeneratedEvent
        include Google::Apis::Core::Hashable
      
        # UID of the application which generated the key.
        # Corresponds to the JSON property `applicationUid`
        # @return [Fixnum]
        attr_accessor :application_uid
      
        # Alias of the key.
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # Whether the operation was successful.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_uid = args[:application_uid] if args.key?(:application_uid)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # A cryptographic key including user installed, admin installed and system
      # maintained private key is imported on the device either by the user or
      # management. This is available device-wide on fully managed devices and within
      # the work profile on organization-owned devices with a work profile.
      class KeyImportEvent
        include Google::Apis::Core::Hashable
      
        # UID of the application which imported the key
        # Corresponds to the JSON property `applicationUid`
        # @return [Fixnum]
        attr_accessor :application_uid
      
        # Alias of the key.
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # Whether the operation was successful.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_uid = args[:application_uid] if args.key?(:application_uid)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # A cryptographic key including user installed, admin installed and system
      # maintained private key is determined to be corrupted due to storage corruption,
      # hardware failure or some OS issue. This is available device-wide on fully
      # managed devices and within the work profile on organization-owned devices with
      # a work profile.
      class KeyIntegrityViolationEvent
        include Google::Apis::Core::Hashable
      
        # UID of the application which owns the key
        # Corresponds to the JSON property `applicationUid`
        # @return [Fixnum]
        attr_accessor :application_uid
      
        # Alias of the key.
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_uid = args[:application_uid] if args.key?(:application_uid)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
        end
      end
      
      # Keyed app state reported by the app.
      class KeyedAppState
        include Google::Apis::Core::Hashable
      
        # The creation time of the app state on the device.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optionally, a machine-readable value to be read by the EMM. For example,
        # setting values that the admin can choose to query against in the EMM console (
        # e.g. “notify me if the battery_warning data < 10”).
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # The key for the app state. Acts as a point of reference for what the app is
        # providing state for. For example, when providing managed configuration
        # feedback, this key could be the managed configuration key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The time the app state was most recently updated.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Optionally, a free-form message string to explain the app state. If the state
        # was triggered by a particular value (e.g. a managed configuration value), it
        # should be included in the message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The severity of the app state.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data = args[:data] if args.key?(:data)
          @key = args[:key] if args.key?(:key)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # An attempt was made to unlock the device.
      class KeyguardDismissAuthAttemptEvent
        include Google::Apis::Core::Hashable
      
        # Whether a strong form of authentication (password, PIN, or pattern) was used
        # to unlock device.
        # Corresponds to the JSON property `strongAuthMethodUsed`
        # @return [Boolean]
        attr_accessor :strong_auth_method_used
        alias_method :strong_auth_method_used?, :strong_auth_method_used
      
        # Whether the unlock attempt was successful.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @strong_auth_method_used = args[:strong_auth_method_used] if args.key?(:strong_auth_method_used)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # The keyguard was dismissed. Intentionally empty.
      class KeyguardDismissedEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The device was locked either by user or timeout. Intentionally empty.
      class KeyguardSecuredEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Settings controlling the behavior of a device in kiosk mode. To enable kiosk
      # mode, set kioskCustomLauncherEnabled to true or specify an app in the policy
      # with installType KIOSK.
      class KioskCustomization
        include Google::Apis::Core::Hashable
      
        # Specifies whether the Settings app is allowed in kiosk mode.
        # Corresponds to the JSON property `deviceSettings`
        # @return [String]
        attr_accessor :device_settings
      
        # Sets the behavior of a device in kiosk mode when a user presses and holds (
        # long-presses) the Power button.
        # Corresponds to the JSON property `powerButtonActions`
        # @return [String]
        attr_accessor :power_button_actions
      
        # Specifies whether system info and notifications are disabled in kiosk mode.
        # Corresponds to the JSON property `statusBar`
        # @return [String]
        attr_accessor :status_bar
      
        # Specifies whether system error dialogs for crashed or unresponsive apps are
        # blocked in kiosk mode. When blocked, the system will force-stop the app as if
        # the user chooses the "close app" option on the UI.
        # Corresponds to the JSON property `systemErrorWarnings`
        # @return [String]
        attr_accessor :system_error_warnings
      
        # Specifies which navigation features are enabled (e.g. Home, Overview buttons)
        # in kiosk mode.
        # Corresponds to the JSON property `systemNavigation`
        # @return [String]
        attr_accessor :system_navigation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_settings = args[:device_settings] if args.key?(:device_settings)
          @power_button_actions = args[:power_button_actions] if args.key?(:power_button_actions)
          @status_bar = args[:status_bar] if args.key?(:status_bar)
          @system_error_warnings = args[:system_error_warnings] if args.key?(:system_error_warnings)
          @system_navigation = args[:system_navigation] if args.key?(:system_navigation)
        end
      end
      
      # An action to launch an app.
      class LaunchAppAction
        include Google::Apis::Core::Hashable
      
        # Package name of app to be launched
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Response to a request to list devices for a given enterprise.
      class ListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The list of devices.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::AndroidmanagementV1::Device>]
        attr_accessor :devices
      
        # If there are more results, a token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to a request to list enrollment tokens for a given enterprise.
      class ListEnrollmentTokensResponse
        include Google::Apis::Core::Hashable
      
        # The list of enrollment tokens.
        # Corresponds to the JSON property `enrollmentTokens`
        # @return [Array<Google::Apis::AndroidmanagementV1::EnrollmentToken>]
        attr_accessor :enrollment_tokens
      
        # If there are more results, a token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enrollment_tokens = args[:enrollment_tokens] if args.key?(:enrollment_tokens)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to a request to list enterprises.
      class ListEnterprisesResponse
        include Google::Apis::Core::Hashable
      
        # The list of enterprises.
        # Corresponds to the JSON property `enterprises`
        # @return [Array<Google::Apis::AndroidmanagementV1::Enterprise>]
        attr_accessor :enterprises
      
        # If there are more results, a token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enterprises = args[:enterprises] if args.key?(:enterprises)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to a request to list migration tokens for a given enterprise.
      class ListMigrationTokensResponse
        include Google::Apis::Core::Hashable
      
        # The migration tokens from the specified enterprise.
        # Corresponds to the JSON property `migrationTokens`
        # @return [Array<Google::Apis::AndroidmanagementV1::MigrationToken>]
        attr_accessor :migration_tokens
      
        # A token, which can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_tokens = args[:migration_tokens] if args.key?(:migration_tokens)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AndroidmanagementV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Response to a request to list policies for a given enterprise.
      class ListPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results, a token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of policies.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::AndroidmanagementV1::Policy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # Response to a request to list web apps for a given enterprise.
      class ListWebAppsResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results, a token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of web apps.
        # Corresponds to the JSON property `webApps`
        # @return [Array<Google::Apis::AndroidmanagementV1::WebApp>]
        attr_accessor :web_apps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @web_apps = args[:web_apps] if args.key?(:web_apps)
        end
      end
      
      # The device location containing the latitude and longitude.
      class Location
        include Google::Apis::Core::Hashable
      
        # The latitude position of the location
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude position of the location
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # The usageLog buffer on the device has reached 90% of its capacity, therefore
      # older events may be dropped. Intentionally empty.
      class LogBufferSizeCriticalEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # usageLog policy has been enabled. Intentionally empty.
      class LoggingStartedEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # usageLog policy has been disabled. Intentionally empty.
      class LoggingStoppedEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A lost mode event containing the device location and battery level as a
      # percentage.
      class LostModeLocationEvent
        include Google::Apis::Core::Hashable
      
        # The battery level as a number between 0 and 100 inclusive
        # Corresponds to the JSON property `batteryLevel`
        # @return [Fixnum]
        attr_accessor :battery_level
      
        # The device location containing the latitude and longitude.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::AndroidmanagementV1::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @battery_level = args[:battery_level] if args.key?(:battery_level)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # An event indicating an outgoing phone call has been made when a device is in
      # lost mode. Intentionally empty.
      class LostModeOutgoingPhoneCallEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The managed configurations template for the app, saved from the managed
      # configurations iframe.
      class ManagedConfigurationTemplate
        include Google::Apis::Core::Hashable
      
        # Optional, a map containing configuration variables defined for the
        # configuration.
        # Corresponds to the JSON property `configurationVariables`
        # @return [Hash<String,String>]
        attr_accessor :configuration_variables
      
        # The ID of the managed configurations template.
        # Corresponds to the JSON property `templateId`
        # @return [String]
        attr_accessor :template_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration_variables = args[:configuration_variables] if args.key?(:configuration_variables)
          @template_id = args[:template_id] if args.key?(:template_id)
        end
      end
      
      # Managed property.
      class ManagedProperty
        include Google::Apis::Core::Hashable
      
        # The default value of the property. BUNDLE_ARRAY properties don't have a
        # default value.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A longer description of the property, providing more detail of what it affects.
        # Localized.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # For CHOICE or MULTISELECT properties, the list of possible entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::AndroidmanagementV1::ManagedPropertyEntry>]
        attr_accessor :entries
      
        # The unique key that the app uses to identify the property, e.g. "com.google.
        # android.gm.fieldname".
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # For BUNDLE_ARRAY properties, the list of nested properties. A BUNDLE_ARRAY
        # property is at most two levels deep.
        # Corresponds to the JSON property `nestedProperties`
        # @return [Array<Google::Apis::AndroidmanagementV1::ManagedProperty>]
        attr_accessor :nested_properties
      
        # The name of the property. Localized.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The type of the property.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @entries = args[:entries] if args.key?(:entries)
          @key = args[:key] if args.key?(:key)
          @nested_properties = args[:nested_properties] if args.key?(:nested_properties)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An entry of a managed property.
      class ManagedPropertyEntry
        include Google::Apis::Core::Hashable
      
        # The human-readable name of the value. Localized.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The machine-readable value of the entry, which should be used in the
        # configuration. Not localized.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Removable media was mounted.
      class MediaMountEvent
        include Google::Apis::Core::Hashable
      
        # Mount point.
        # Corresponds to the JSON property `mountPoint`
        # @return [String]
        attr_accessor :mount_point
      
        # Volume label. Redacted to empty string on organization-owned managed profile
        # devices.
        # Corresponds to the JSON property `volumeLabel`
        # @return [String]
        attr_accessor :volume_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_point = args[:mount_point] if args.key?(:mount_point)
          @volume_label = args[:volume_label] if args.key?(:volume_label)
        end
      end
      
      # Removable media was unmounted.
      class MediaUnmountEvent
        include Google::Apis::Core::Hashable
      
        # Mount point.
        # Corresponds to the JSON property `mountPoint`
        # @return [String]
        attr_accessor :mount_point
      
        # Volume label. Redacted to empty string on organization-owned managed profile
        # devices.
        # Corresponds to the JSON property `volumeLabel`
        # @return [String]
        attr_accessor :volume_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_point = args[:mount_point] if args.key?(:mount_point)
          @volume_label = args[:volume_label] if args.key?(:volume_label)
        end
      end
      
      # An event related to memory and storage measurements.To distinguish between new
      # and old events, we recommend using the createTime field.
      class MemoryEvent
        include Google::Apis::Core::Hashable
      
        # The number of free bytes in the medium, or for EXTERNAL_STORAGE_DETECTED, the
        # total capacity in bytes of the storage medium.
        # Corresponds to the JSON property `byteCount`
        # @return [Fixnum]
        attr_accessor :byte_count
      
        # The creation time of the event.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Event type.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_count = args[:byte_count] if args.key?(:byte_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # Information about device memory and storage.
      class MemoryInfo
        include Google::Apis::Core::Hashable
      
        # Total internal storage on device in bytes.
        # Corresponds to the JSON property `totalInternalStorage`
        # @return [Fixnum]
        attr_accessor :total_internal_storage
      
        # Total RAM on device in bytes.
        # Corresponds to the JSON property `totalRam`
        # @return [Fixnum]
        attr_accessor :total_ram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_internal_storage = args[:total_internal_storage] if args.key?(:total_internal_storage)
          @total_ram = args[:total_ram] if args.key?(:total_ram)
        end
      end
      
      # A token to initiate the migration of a device from being managed by a third-
      # party DPC to being managed by Android Management API. A migration token is
      # valid only for a single device. See the guide (https://developers.google.com/
      # android/management/dpc-migration) for more details.
      class MigrationToken
        include Google::Apis::Core::Hashable
      
        # Immutable. Optional EMM-specified additional data. Once the device is migrated
        # this will be populated in the migrationAdditionalData field of the Device
        # resource. This must be at most 1024 characters.
        # Corresponds to the JSON property `additionalData`
        # @return [String]
        attr_accessor :additional_data
      
        # Output only. Time when this migration token was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Once this migration token is used to migrate a device, the name
        # of the resulting Device resource will be populated here, in the form
        # enterprises/`enterprise`/devices/`device`.
        # Corresponds to the JSON property `device`
        # @return [String]
        attr_accessor :device
      
        # Required. Immutable. The id of the device, as in the Play EMM API. This
        # corresponds to the deviceId parameter in Play EMM API's Devices.get (https://
        # developers.google.com/android/work/play/emm-api/v1/devices/get#parameters)
        # call.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Immutable. The time when this migration token expires. This can be at most
        # seven days from the time of creation. The migration token is deleted seven
        # days after it expires.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Required. Immutable. The management mode of the device or profile being
        # migrated.
        # Corresponds to the JSON property `managementMode`
        # @return [String]
        attr_accessor :management_mode
      
        # Output only. The name of the migration token, which is generated by the server
        # during creation, in the form enterprises/`enterprise`/migrationTokens/`
        # migration_token`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The name of the policy initially applied to the enrolled
        # device, in the form enterprises/`enterprise`/policies/`policy`.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # Input only. The time that this migration token is valid for. This is input-
        # only, and for returning a migration token the server will populate the
        # expireTime field. This can be at most seven days. The default is seven days.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Required. Immutable. The user id of the Managed Google Play account on the
        # device, as in the Play EMM API. This corresponds to the userId parameter in
        # Play EMM API's Devices.get (https://developers.google.com/android/work/play/
        # emm-api/v1/devices/get#parameters) call.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Output only. The value of the migration token.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_data = args[:additional_data] if args.key?(:additional_data)
          @create_time = args[:create_time] if args.key?(:create_time)
          @device = args[:device] if args.key?(:device)
          @device_id = args[:device_id] if args.key?(:device_id)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @management_mode = args[:management_mode] if args.key?(:management_mode)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @ttl = args[:ttl] if args.key?(:ttl)
          @user_id = args[:user_id] if args.key?(:user_id)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request to update or create ApplicationPolicy objects in the given Policy.
      class ModifyPolicyApplicationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The changes to be made to the ApplicationPolicy objects. There must
        # be at least one ApplicationPolicyChange.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::AndroidmanagementV1::ApplicationPolicyChange>]
        attr_accessor :changes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changes = args[:changes] if args.key?(:changes)
        end
      end
      
      # Response to a request to update or create ApplicationPolicy objects in the
      # given policy.
      class ModifyPolicyApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # A policy resource represents a group of settings that govern the behavior of a
        # managed device and the apps installed on it.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::AndroidmanagementV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Device network info.
      class NetworkInfo
        include Google::Apis::Core::Hashable
      
        # IMEI number of the GSM device. For example, A1000031212.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # MEID number of the CDMA device. For example, A00000292788E1.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Alphabetic name of current registered operator. For example, Vodafone.
        # Corresponds to the JSON property `networkOperatorName`
        # @return [String]
        attr_accessor :network_operator_name
      
        # Provides telephony information associated with each SIM card on the device.
        # Only supported on fully managed devices starting from Android API level 23.
        # Corresponds to the JSON property `telephonyInfos`
        # @return [Array<Google::Apis::AndroidmanagementV1::TelephonyInfo>]
        attr_accessor :telephony_infos
      
        # Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11.
        # Corresponds to the JSON property `wifiMacAddress`
        # @return [String]
        attr_accessor :wifi_mac_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @imei = args[:imei] if args.key?(:imei)
          @meid = args[:meid] if args.key?(:meid)
          @network_operator_name = args[:network_operator_name] if args.key?(:network_operator_name)
          @telephony_infos = args[:telephony_infos] if args.key?(:telephony_infos)
          @wifi_mac_address = args[:wifi_mac_address] if args.key?(:wifi_mac_address)
        end
      end
      
      # Provides detail about non-compliance with a policy setting.
      class NonComplianceDetail
        include Google::Apis::Core::Hashable
      
        # If the policy setting could not be applied, the current value of the setting
        # on the device.
        # Corresponds to the JSON property `currentValue`
        # @return [Object]
        attr_accessor :current_value
      
        # For settings with nested fields, if a particular nested field is out of
        # compliance, this specifies the full path to the offending field. The path is
        # formatted in the same way the policy JSON field would be referenced in
        # JavaScript, that is: 1) For object-typed fields, the field name is followed by
        # a dot then by a subfield name. 2) For array-typed fields, the field name is
        # followed by the array index enclosed in brackets. For example, to indicate a
        # problem with the url field in the externalData field in the 3rd application,
        # the path would be applications[2].externalData.url
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # If package_name is set and the non-compliance reason is APP_NOT_INSTALLED or
        # APP_NOT_UPDATED, the detailed reason the app can't be installed or updated.
        # Corresponds to the JSON property `installationFailureReason`
        # @return [String]
        attr_accessor :installation_failure_reason
      
        # The reason the device is not in compliance with the setting.
        # Corresponds to the JSON property `nonComplianceReason`
        # @return [String]
        attr_accessor :non_compliance_reason
      
        # The package name indicating which app is out of compliance, if applicable.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The name of the policy setting. This is the JSON field name of a top-level
        # Policy field.
        # Corresponds to the JSON property `settingName`
        # @return [String]
        attr_accessor :setting_name
      
        # Additional context for SpecificNonComplianceReason.
        # Corresponds to the JSON property `specificNonComplianceContext`
        # @return [Google::Apis::AndroidmanagementV1::SpecificNonComplianceContext]
        attr_accessor :specific_non_compliance_context
      
        # The policy-specific reason the device is not in compliance with the setting.
        # Corresponds to the JSON property `specificNonComplianceReason`
        # @return [String]
        attr_accessor :specific_non_compliance_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_value = args[:current_value] if args.key?(:current_value)
          @field_path = args[:field_path] if args.key?(:field_path)
          @installation_failure_reason = args[:installation_failure_reason] if args.key?(:installation_failure_reason)
          @non_compliance_reason = args[:non_compliance_reason] if args.key?(:non_compliance_reason)
          @package_name = args[:package_name] if args.key?(:package_name)
          @setting_name = args[:setting_name] if args.key?(:setting_name)
          @specific_non_compliance_context = args[:specific_non_compliance_context] if args.key?(:specific_non_compliance_context)
          @specific_non_compliance_reason = args[:specific_non_compliance_reason] if args.key?(:specific_non_compliance_reason)
        end
      end
      
      # A compliance rule condition which is satisfied if there exists any matching
      # NonComplianceDetail for the device. A NonComplianceDetail matches a
      # NonComplianceDetailCondition if all the fields which are set within the
      # NonComplianceDetailCondition match the corresponding NonComplianceDetail
      # fields.
      class NonComplianceDetailCondition
        include Google::Apis::Core::Hashable
      
        # The reason the device is not in compliance with the setting. If not set, then
        # this condition matches any reason.
        # Corresponds to the JSON property `nonComplianceReason`
        # @return [String]
        attr_accessor :non_compliance_reason
      
        # The package name of the app that's out of compliance. If not set, then this
        # condition matches any package name.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The name of the policy setting. This is the JSON field name of a top-level
        # Policy field. If not set, then this condition matches any setting name.
        # Corresponds to the JSON property `settingName`
        # @return [String]
        attr_accessor :setting_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @non_compliance_reason = args[:non_compliance_reason] if args.key?(:non_compliance_reason)
          @package_name = args[:package_name] if args.key?(:package_name)
          @setting_name = args[:setting_name] if args.key?(:setting_name)
        end
      end
      
      # This feature is not generally available.
      class OncCertificateProvider
        include Google::Apis::Core::Hashable
      
        # This feature is not generally available.
        # Corresponds to the JSON property `certificateReferences`
        # @return [Array<String>]
        attr_accessor :certificate_references
      
        # This feature is not generally available.
        # Corresponds to the JSON property `contentProviderEndpoint`
        # @return [Google::Apis::AndroidmanagementV1::ContentProviderEndpoint]
        attr_accessor :content_provider_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_references = args[:certificate_references] if args.key?(:certificate_references)
          @content_provider_endpoint = args[:content_provider_endpoint] if args.key?(:content_provider_endpoint)
        end
      end
      
      # Additional context for non-compliance related to Wi-Fi configuration.
      class OncWifiContext
        include Google::Apis::Core::Hashable
      
        # The GUID of non-compliant Wi-Fi configuration.
        # Corresponds to the JSON property `wifiGuid`
        # @return [String]
        attr_accessor :wifi_guid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wifi_guid = args[:wifi_guid] if args.key?(:wifi_guid)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is false, it means the operation is still in progress. If true,
        # the operation is completed, and either error or response is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AndroidmanagementV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the name should be
        # a resource name ending with operations/`unique_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as Delete, the response is google.protobuf.
        # Empty. If the original method is standard Get/Create/Update, the response
        # should be the resource. For other methods, the response should have the type
        # XxxResponse, where Xxx is the original method name. For example, if the
        # original method name is TakeSnapshot(), the inferred response type is
        # TakeSnapshotResponse.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Device was shutdown. Intentionally empty.
      class OsShutdownEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Device was started.
      class OsStartupEvent
        include Google::Apis::Core::Hashable
      
        # Verified Boot state.
        # Corresponds to the JSON property `verifiedBootState`
        # @return [String]
        attr_accessor :verified_boot_state
      
        # dm-verity mode.
        # Corresponds to the JSON property `verityMode`
        # @return [String]
        attr_accessor :verity_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verified_boot_state = args[:verified_boot_state] if args.key?(:verified_boot_state)
          @verity_mode = args[:verity_mode] if args.key?(:verity_mode)
        end
      end
      
      # A list of package names.
      class PackageNameList
        include Google::Apis::Core::Hashable
      
        # A list of package names.
        # Corresponds to the JSON property `packageNames`
        # @return [Array<String>]
        attr_accessor :package_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_names = args[:package_names] if args.key?(:package_names)
        end
      end
      
      # Additional context for non-compliance related to password policies.
      class PasswordPoliciesContext
        include Google::Apis::Core::Hashable
      
        # The scope of non-compliant password.
        # Corresponds to the JSON property `passwordPolicyScope`
        # @return [String]
        attr_accessor :password_policy_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password_policy_scope = args[:password_policy_scope] if args.key?(:password_policy_scope)
        end
      end
      
      # Requirements for the password used to unlock a device.
      class PasswordRequirements
        include Google::Apis::Core::Hashable
      
        # Number of incorrect device-unlock passwords that can be entered before a
        # device is wiped. A value of 0 means there is no restriction.
        # Corresponds to the JSON property `maximumFailedPasswordsForWipe`
        # @return [Fixnum]
        attr_accessor :maximum_failed_passwords_for_wipe
      
        # Password expiration timeout.
        # Corresponds to the JSON property `passwordExpirationTimeout`
        # @return [String]
        attr_accessor :password_expiration_timeout
      
        # The length of the password history. After setting this field, the user won't
        # be able to enter a new password that is the same as any password in the
        # history. A value of 0 means there is no restriction.
        # Corresponds to the JSON property `passwordHistoryLength`
        # @return [Fixnum]
        attr_accessor :password_history_length
      
        # The minimum allowed password length. A value of 0 means there is no
        # restriction. Only enforced when password_quality is NUMERIC, NUMERIC_COMPLEX,
        # ALPHABETIC, ALPHANUMERIC, or COMPLEX.
        # Corresponds to the JSON property `passwordMinimumLength`
        # @return [Fixnum]
        attr_accessor :password_minimum_length
      
        # Minimum number of letters required in the password. Only enforced when
        # password_quality is COMPLEX.
        # Corresponds to the JSON property `passwordMinimumLetters`
        # @return [Fixnum]
        attr_accessor :password_minimum_letters
      
        # Minimum number of lower case letters required in the password. Only enforced
        # when password_quality is COMPLEX.
        # Corresponds to the JSON property `passwordMinimumLowerCase`
        # @return [Fixnum]
        attr_accessor :password_minimum_lower_case
      
        # Minimum number of non-letter characters (numerical digits or symbols) required
        # in the password. Only enforced when password_quality is COMPLEX.
        # Corresponds to the JSON property `passwordMinimumNonLetter`
        # @return [Fixnum]
        attr_accessor :password_minimum_non_letter
      
        # Minimum number of numerical digits required in the password. Only enforced
        # when password_quality is COMPLEX.
        # Corresponds to the JSON property `passwordMinimumNumeric`
        # @return [Fixnum]
        attr_accessor :password_minimum_numeric
      
        # Minimum number of symbols required in the password. Only enforced when
        # password_quality is COMPLEX.
        # Corresponds to the JSON property `passwordMinimumSymbols`
        # @return [Fixnum]
        attr_accessor :password_minimum_symbols
      
        # Minimum number of upper case letters required in the password. Only enforced
        # when password_quality is COMPLEX.
        # Corresponds to the JSON property `passwordMinimumUpperCase`
        # @return [Fixnum]
        attr_accessor :password_minimum_upper_case
      
        # The required password quality.
        # Corresponds to the JSON property `passwordQuality`
        # @return [String]
        attr_accessor :password_quality
      
        # The scope that the password requirement applies to.
        # Corresponds to the JSON property `passwordScope`
        # @return [String]
        attr_accessor :password_scope
      
        # The length of time after a device or work profile is unlocked using a strong
        # form of authentication (password, PIN, pattern) that it can be unlocked using
        # any other authentication method (e.g. fingerprint, trust agents, face). After
        # the specified time period elapses, only strong forms of authentication can be
        # used to unlock the device or work profile.
        # Corresponds to the JSON property `requirePasswordUnlock`
        # @return [String]
        attr_accessor :require_password_unlock
      
        # Controls whether a unified lock is allowed for the device and the work profile,
        # on devices running Android 9 and above with a work profile. This can be set
        # only if password_scope is set to SCOPE_PROFILE, the policy will be rejected
        # otherwise. If user has not set a separate work lock and this field is set to
        # REQUIRE_SEPARATE_WORK_LOCK, a NonComplianceDetail is reported with
        # nonComplianceReason set to USER_ACTION.
        # Corresponds to the JSON property `unifiedLockSettings`
        # @return [String]
        attr_accessor :unified_lock_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum_failed_passwords_for_wipe = args[:maximum_failed_passwords_for_wipe] if args.key?(:maximum_failed_passwords_for_wipe)
          @password_expiration_timeout = args[:password_expiration_timeout] if args.key?(:password_expiration_timeout)
          @password_history_length = args[:password_history_length] if args.key?(:password_history_length)
          @password_minimum_length = args[:password_minimum_length] if args.key?(:password_minimum_length)
          @password_minimum_letters = args[:password_minimum_letters] if args.key?(:password_minimum_letters)
          @password_minimum_lower_case = args[:password_minimum_lower_case] if args.key?(:password_minimum_lower_case)
          @password_minimum_non_letter = args[:password_minimum_non_letter] if args.key?(:password_minimum_non_letter)
          @password_minimum_numeric = args[:password_minimum_numeric] if args.key?(:password_minimum_numeric)
          @password_minimum_symbols = args[:password_minimum_symbols] if args.key?(:password_minimum_symbols)
          @password_minimum_upper_case = args[:password_minimum_upper_case] if args.key?(:password_minimum_upper_case)
          @password_quality = args[:password_quality] if args.key?(:password_quality)
          @password_scope = args[:password_scope] if args.key?(:password_scope)
          @require_password_unlock = args[:require_password_unlock] if args.key?(:require_password_unlock)
          @unified_lock_settings = args[:unified_lock_settings] if args.key?(:unified_lock_settings)
        end
      end
      
      # The result of an attempt to clear the data of a single app.
      class PerAppResult
        include Google::Apis::Core::Hashable
      
        # The result of an attempt to clear the data of a single app.
        # Corresponds to the JSON property `clearingResult`
        # @return [String]
        attr_accessor :clearing_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clearing_result = args[:clearing_result] if args.key?(:clearing_result)
        end
      end
      
      # Configuration for an Android permission and its grant state.
      class PermissionGrant
        include Google::Apis::Core::Hashable
      
        # The Android permission or group, e.g. android.permission.READ_CALENDAR or
        # android.permission_group.CALENDAR.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # The policy for granting the permission.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] if args.key?(:permission)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A default activity for handling intents that match a particular intent filter.
      # Note: To set up a kiosk, use InstallType to KIOSK rather than use persistent
      # preferred activities.
      class PersistentPreferredActivity
        include Google::Apis::Core::Hashable
      
        # The intent actions to match in the filter. If any actions are included in the
        # filter, then an intent's action must be one of those values for it to match.
        # If no actions are included, the intent action is ignored.
        # Corresponds to the JSON property `actions`
        # @return [Array<String>]
        attr_accessor :actions
      
        # The intent categories to match in the filter. An intent includes the
        # categories that it requires, all of which must be included in the filter in
        # order to match. In other words, adding a category to the filter has no impact
        # on matching unless that category is specified in the intent.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # The activity that should be the default intent handler. This should be an
        # Android component name, e.g. com.android.enterprise.app/.MainActivity.
        # Alternatively, the value may be the package name of an app, which causes
        # Android Device Policy to choose an appropriate activity from the app to handle
        # the intent.
        # Corresponds to the JSON property `receiverActivity`
        # @return [String]
        attr_accessor :receiver_activity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @categories = args[:categories] if args.key?(:categories)
          @receiver_activity = args[:receiver_activity] if args.key?(:receiver_activity)
        end
      end
      
      # Policies for apps in the personal profile of a company-owned device with a
      # work profile.
      class PersonalApplicationPolicy
        include Google::Apis::Core::Hashable
      
        # The type of installation to perform.
        # Corresponds to the JSON property `installType`
        # @return [String]
        attr_accessor :install_type
      
        # The package name of the application.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @install_type = args[:install_type] if args.key?(:install_type)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Policies controlling personal usage on a company-owned device with a work
      # profile.
      class PersonalUsagePolicies
        include Google::Apis::Core::Hashable
      
        # Account types that can't be managed by the user.
        # Corresponds to the JSON property `accountTypesWithManagementDisabled`
        # @return [Array<String>]
        attr_accessor :account_types_with_management_disabled
      
        # Optional. Whether bluetooth sharing is allowed.
        # Corresponds to the JSON property `bluetoothSharing`
        # @return [String]
        attr_accessor :bluetooth_sharing
      
        # If true, the camera is disabled on the personal profile.
        # Corresponds to the JSON property `cameraDisabled`
        # @return [Boolean]
        attr_accessor :camera_disabled
        alias_method :camera_disabled?, :camera_disabled
      
        # Controls how long the work profile can stay off. The minimum duration must be
        # at least 3 days. Other details are as follows: - If the duration is set to 0,
        # the feature is turned off. - If the duration is set to a value smaller than
        # the minimum duration, the feature returns an error. *Note:* If you want to
        # avoid personal profiles being suspended during long periods of off-time, you
        # can temporarily set a large value for this parameter.
        # Corresponds to the JSON property `maxDaysWithWorkOff`
        # @return [Fixnum]
        attr_accessor :max_days_with_work_off
      
        # Policy applied to applications in the personal profile.
        # Corresponds to the JSON property `personalApplications`
        # @return [Array<Google::Apis::AndroidmanagementV1::PersonalApplicationPolicy>]
        attr_accessor :personal_applications
      
        # Used together with personalApplications to control how apps in the personal
        # profile are allowed or blocked.
        # Corresponds to the JSON property `personalPlayStoreMode`
        # @return [String]
        attr_accessor :personal_play_store_mode
      
        # Optional. Controls whether a private space is allowed on the device.
        # Corresponds to the JSON property `privateSpacePolicy`
        # @return [String]
        attr_accessor :private_space_policy
      
        # If true, screen capture is disabled for all users.
        # Corresponds to the JSON property `screenCaptureDisabled`
        # @return [Boolean]
        attr_accessor :screen_capture_disabled
        alias_method :screen_capture_disabled?, :screen_capture_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_types_with_management_disabled = args[:account_types_with_management_disabled] if args.key?(:account_types_with_management_disabled)
          @bluetooth_sharing = args[:bluetooth_sharing] if args.key?(:bluetooth_sharing)
          @camera_disabled = args[:camera_disabled] if args.key?(:camera_disabled)
          @max_days_with_work_off = args[:max_days_with_work_off] if args.key?(:max_days_with_work_off)
          @personal_applications = args[:personal_applications] if args.key?(:personal_applications)
          @personal_play_store_mode = args[:personal_play_store_mode] if args.key?(:personal_play_store_mode)
          @private_space_policy = args[:private_space_policy] if args.key?(:private_space_policy)
          @screen_capture_disabled = args[:screen_capture_disabled] if args.key?(:screen_capture_disabled)
        end
      end
      
      # A policy resource represents a group of settings that govern the behavior of a
      # managed device and the apps installed on it.
      class Policy
        include Google::Apis::Core::Hashable
      
        # Account types that can't be managed by the user.
        # Corresponds to the JSON property `accountTypesWithManagementDisabled`
        # @return [Array<String>]
        attr_accessor :account_types_with_management_disabled
      
        # Whether adding new users and profiles is disabled. For devices where
        # managementMode is DEVICE_OWNER this field is ignored and the user is never
        # allowed to add or remove users.
        # Corresponds to the JSON property `addUserDisabled`
        # @return [Boolean]
        attr_accessor :add_user_disabled
        alias_method :add_user_disabled?, :add_user_disabled
      
        # Whether adjusting the master volume is disabled. Also mutes the device. The
        # setting has effect only on fully managed devices.
        # Corresponds to the JSON property `adjustVolumeDisabled`
        # @return [Boolean]
        attr_accessor :adjust_volume_disabled
        alias_method :adjust_volume_disabled?, :adjust_volume_disabled
      
        # Advanced security settings. In most cases, setting these is not needed.
        # Corresponds to the JSON property `advancedSecurityOverrides`
        # @return [Google::Apis::AndroidmanagementV1::AdvancedSecurityOverrides]
        attr_accessor :advanced_security_overrides
      
        # Configuration for an always-on VPN connection.
        # Corresponds to the JSON property `alwaysOnVpnPackage`
        # @return [Google::Apis::AndroidmanagementV1::AlwaysOnVpnPackage]
        attr_accessor :always_on_vpn_package
      
        # This setting is not supported. Any value is ignored.
        # Corresponds to the JSON property `androidDevicePolicyTracks`
        # @return [Array<String>]
        attr_accessor :android_device_policy_tracks
      
        # Recommended alternative: autoUpdateMode which is set per app, provides greater
        # flexibility around update frequency.When autoUpdateMode is set to
        # AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no effect.
        # The app auto update policy, which controls when automatic app updates can be
        # applied.
        # Corresponds to the JSON property `appAutoUpdatePolicy`
        # @return [String]
        attr_accessor :app_auto_update_policy
      
        # Optional. Controls whether apps on the device for fully managed devices or in
        # the work profile for devices with work profiles are allowed to expose app
        # functions.
        # Corresponds to the JSON property `appFunctions`
        # @return [String]
        attr_accessor :app_functions
      
        # Policy applied to apps. This can have at most 3,000 elements.
        # Corresponds to the JSON property `applications`
        # @return [Array<Google::Apis::AndroidmanagementV1::ApplicationPolicy>]
        attr_accessor :applications
      
        # Optional. Controls whether AssistContent (https://developer.android.com/
        # reference/android/app/assist/AssistContent) is allowed to be sent to a
        # privileged app such as an assistant app. AssistContent includes screenshots
        # and information about an app, such as package name. This is supported on
        # Android 15 and above.
        # Corresponds to the JSON property `assistContentPolicy`
        # @return [String]
        attr_accessor :assist_content_policy
      
        # Whether auto date, time, and time zone are enabled on a company-owned device.
        # If this is set, then autoTimeRequired is ignored.
        # Corresponds to the JSON property `autoDateAndTimeZone`
        # @return [String]
        attr_accessor :auto_date_and_time_zone
      
        # Whether auto time is required, which prevents the user from manually setting
        # the date and time. If autoDateAndTimeZone is set, this field is ignored.
        # Corresponds to the JSON property `autoTimeRequired`
        # @return [Boolean]
        attr_accessor :auto_time_required
        alias_method :auto_time_required?, :auto_time_required
      
        # Whether applications other than the ones configured in applications are
        # blocked from being installed. When set, applications that were installed under
        # a previous policy but no longer appear in the policy are automatically
        # uninstalled.
        # Corresponds to the JSON property `blockApplicationsEnabled`
        # @return [Boolean]
        attr_accessor :block_applications_enabled
        alias_method :block_applications_enabled?, :block_applications_enabled
      
        # Whether configuring bluetooth is disabled.
        # Corresponds to the JSON property `bluetoothConfigDisabled`
        # @return [Boolean]
        attr_accessor :bluetooth_config_disabled
        alias_method :bluetooth_config_disabled?, :bluetooth_config_disabled
      
        # Whether bluetooth contact sharing is disabled.
        # Corresponds to the JSON property `bluetoothContactSharingDisabled`
        # @return [Boolean]
        attr_accessor :bluetooth_contact_sharing_disabled
        alias_method :bluetooth_contact_sharing_disabled?, :bluetooth_contact_sharing_disabled
      
        # Whether bluetooth is disabled. Prefer this setting over
        # bluetooth_config_disabled because bluetooth_config_disabled can be bypassed by
        # the user.
        # Corresponds to the JSON property `bluetoothDisabled`
        # @return [Boolean]
        attr_accessor :bluetooth_disabled
        alias_method :bluetooth_disabled?, :bluetooth_disabled
      
        # Controls the use of the camera and whether the user has access to the camera
        # access toggle.
        # Corresponds to the JSON property `cameraAccess`
        # @return [String]
        attr_accessor :camera_access
      
        # If camera_access is set to any value other than CAMERA_ACCESS_UNSPECIFIED,
        # this has no effect. Otherwise this field controls whether cameras are disabled:
        # If true, all cameras are disabled, otherwise they are available. For fully
        # managed devices this field applies for all apps on the device. For work
        # profiles, this field applies only to apps in the work profile, and the camera
        # access of apps outside the work profile is unaffected.
        # Corresponds to the JSON property `cameraDisabled`
        # @return [Boolean]
        attr_accessor :camera_disabled
        alias_method :camera_disabled?, :camera_disabled
      
        # Whether configuring cell broadcast is disabled.
        # Corresponds to the JSON property `cellBroadcastsConfigDisabled`
        # @return [Boolean]
        attr_accessor :cell_broadcasts_config_disabled
        alias_method :cell_broadcasts_config_disabled?, :cell_broadcasts_config_disabled
      
        # Rules for determining apps' access to private keys. See ChoosePrivateKeyRule
        # for details. This must be empty if any application has CERT_SELECTION
        # delegation scope.
        # Corresponds to the JSON property `choosePrivateKeyRules`
        # @return [Array<Google::Apis::AndroidmanagementV1::ChoosePrivateKeyRule>]
        attr_accessor :choose_private_key_rules
      
        # Rules declaring which mitigating actions to take when a device is not
        # compliant with its policy. When the conditions for multiple rules are
        # satisfied, all of the mitigating actions for the rules are taken. There is a
        # maximum limit of 100 rules. Use policy enforcement rules instead.
        # Corresponds to the JSON property `complianceRules`
        # @return [Array<Google::Apis::AndroidmanagementV1::ComplianceRule>]
        attr_accessor :compliance_rules
      
        # Whether creating windows besides app windows is disabled.
        # Corresponds to the JSON property `createWindowsDisabled`
        # @return [Boolean]
        attr_accessor :create_windows_disabled
        alias_method :create_windows_disabled?, :create_windows_disabled
      
        # Controls which apps are allowed to act as credential providers on Android 14
        # and above. These apps store credentials, see this (https://developer.android.
        # com/training/sign-in/passkeys) and this (https://developer.android.com/
        # reference/androidx/credentials/CredentialManager) for details. See also
        # credentialProviderPolicy.
        # Corresponds to the JSON property `credentialProviderPolicyDefault`
        # @return [String]
        attr_accessor :credential_provider_policy_default
      
        # Whether configuring user credentials is disabled.
        # Corresponds to the JSON property `credentialsConfigDisabled`
        # @return [Boolean]
        attr_accessor :credentials_config_disabled
        alias_method :credentials_config_disabled?, :credentials_config_disabled
      
        # Controls the data from the work profile that can be accessed from the personal
        # profile and vice versa. A NonComplianceDetail with MANAGEMENT_MODE is reported
        # if the device does not have a work profile.
        # Corresponds to the JSON property `crossProfilePolicies`
        # @return [Google::Apis::AndroidmanagementV1::CrossProfilePolicies]
        attr_accessor :cross_profile_policies
      
        # Whether roaming data services are disabled.
        # Corresponds to the JSON property `dataRoamingDisabled`
        # @return [Boolean]
        attr_accessor :data_roaming_disabled
        alias_method :data_roaming_disabled?, :data_roaming_disabled
      
        # Whether the user is allowed to enable debugging features.
        # Corresponds to the JSON property `debuggingFeaturesAllowed`
        # @return [Boolean]
        attr_accessor :debugging_features_allowed
        alias_method :debugging_features_allowed?, :debugging_features_allowed
      
        # The default permission policy for runtime permission requests.
        # Corresponds to the JSON property `defaultPermissionPolicy`
        # @return [String]
        attr_accessor :default_permission_policy
      
        # Covers controls for device connectivity such as Wi-Fi, USB data access,
        # keyboard/mouse connections, and more.
        # Corresponds to the JSON property `deviceConnectivityManagement`
        # @return [Google::Apis::AndroidmanagementV1::DeviceConnectivityManagement]
        attr_accessor :device_connectivity_management
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `deviceOwnerLockScreenInfo`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :device_owner_lock_screen_info
      
        # Controls for device radio settings.
        # Corresponds to the JSON property `deviceRadioState`
        # @return [Google::Apis::AndroidmanagementV1::DeviceRadioState]
        attr_accessor :device_radio_state
      
        # Controls for the display settings.
        # Corresponds to the JSON property `displaySettings`
        # @return [Google::Apis::AndroidmanagementV1::DisplaySettings]
        attr_accessor :display_settings
      
        # Whether encryption is enabled
        # Corresponds to the JSON property `encryptionPolicy`
        # @return [String]
        attr_accessor :encryption_policy
      
        # Whether app verification is force-enabled.
        # Corresponds to the JSON property `ensureVerifyAppsEnabled`
        # @return [Boolean]
        attr_accessor :ensure_verify_apps_enabled
        alias_method :ensure_verify_apps_enabled?, :ensure_verify_apps_enabled
      
        # Optional. Controls whether the enterpriseDisplayName is visible on the device (
        # e.g. lock screen message on company-owned devices).
        # Corresponds to the JSON property `enterpriseDisplayNameVisibility`
        # @return [String]
        attr_accessor :enterprise_display_name_visibility
      
        # Whether factory resetting from settings is disabled.
        # Corresponds to the JSON property `factoryResetDisabled`
        # @return [Boolean]
        attr_accessor :factory_reset_disabled
        alias_method :factory_reset_disabled?, :factory_reset_disabled
      
        # Email addresses of device administrators for factory reset protection. When
        # the device is factory reset, it will require one of these admins to log in
        # with the Google account email and password to unlock the device. If no admins
        # are specified, the device won't provide factory reset protection.
        # Corresponds to the JSON property `frpAdminEmails`
        # @return [Array<String>]
        attr_accessor :frp_admin_emails
      
        # Whether the user is allowed to have fun. Controls whether the Easter egg game
        # in Settings is disabled.
        # Corresponds to the JSON property `funDisabled`
        # @return [Boolean]
        attr_accessor :fun_disabled
        alias_method :fun_disabled?, :fun_disabled
      
        # Whether user installation of apps is disabled.
        # Corresponds to the JSON property `installAppsDisabled`
        # @return [Boolean]
        attr_accessor :install_apps_disabled
        alias_method :install_apps_disabled?, :install_apps_disabled
      
        # This field has no effect.
        # Corresponds to the JSON property `installUnknownSourcesAllowed`
        # @return [Boolean]
        attr_accessor :install_unknown_sources_allowed
        alias_method :install_unknown_sources_allowed?, :install_unknown_sources_allowed
      
        # If true, this disables the Lock Screen (https://source.android.com/docs/core/
        # display/multi_display/lock-screen) for primary and/or secondary displays. This
        # policy is supported only in dedicated device management mode.
        # Corresponds to the JSON property `keyguardDisabled`
        # @return [Boolean]
        attr_accessor :keyguard_disabled
        alias_method :keyguard_disabled?, :keyguard_disabled
      
        # Disabled keyguard customizations, such as widgets.
        # Corresponds to the JSON property `keyguardDisabledFeatures`
        # @return [Array<String>]
        attr_accessor :keyguard_disabled_features
      
        # Whether the kiosk custom launcher is enabled. This replaces the home screen
        # with a launcher that locks down the device to the apps installed via the
        # applications setting. Apps appear on a single page in alphabetical order. Use
        # kioskCustomization to further configure the kiosk device behavior.
        # Corresponds to the JSON property `kioskCustomLauncherEnabled`
        # @return [Boolean]
        attr_accessor :kiosk_custom_launcher_enabled
        alias_method :kiosk_custom_launcher_enabled?, :kiosk_custom_launcher_enabled
      
        # Settings controlling the behavior of a device in kiosk mode. To enable kiosk
        # mode, set kioskCustomLauncherEnabled to true or specify an app in the policy
        # with installType KIOSK.
        # Corresponds to the JSON property `kioskCustomization`
        # @return [Google::Apis::AndroidmanagementV1::KioskCustomization]
        attr_accessor :kiosk_customization
      
        # The degree of location detection enabled.
        # Corresponds to the JSON property `locationMode`
        # @return [String]
        attr_accessor :location_mode
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `longSupportMessage`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :long_support_message
      
        # Maximum time in milliseconds for user activity until the device locks. A value
        # of 0 means there is no restriction.
        # Corresponds to the JSON property `maximumTimeToLock`
        # @return [Fixnum]
        attr_accessor :maximum_time_to_lock
      
        # Controls the use of the microphone and whether the user has access to the
        # microphone access toggle. This applies only on fully managed devices.
        # Corresponds to the JSON property `microphoneAccess`
        # @return [String]
        attr_accessor :microphone_access
      
        # The minimum allowed Android API level.
        # Corresponds to the JSON property `minimumApiLevel`
        # @return [Fixnum]
        attr_accessor :minimum_api_level
      
        # Whether configuring mobile networks is disabled.
        # Corresponds to the JSON property `mobileNetworksConfigDisabled`
        # @return [Boolean]
        attr_accessor :mobile_networks_config_disabled
        alias_method :mobile_networks_config_disabled?, :mobile_networks_config_disabled
      
        # Whether adding or removing accounts is disabled.
        # Corresponds to the JSON property `modifyAccountsDisabled`
        # @return [Boolean]
        attr_accessor :modify_accounts_disabled
        alias_method :modify_accounts_disabled?, :modify_accounts_disabled
      
        # Whether the user mounting physical external media is disabled.
        # Corresponds to the JSON property `mountPhysicalMediaDisabled`
        # @return [Boolean]
        attr_accessor :mount_physical_media_disabled
        alias_method :mount_physical_media_disabled?, :mount_physical_media_disabled
      
        # The name of the policy in the form enterprises/`enterpriseId`/policies/`
        # policyId`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the network escape hatch is enabled. If a network connection can't be
        # made at boot time, the escape hatch prompts the user to temporarily connect to
        # a network in order to refresh the device policy. After applying policy, the
        # temporary network will be forgotten and the device will continue booting. This
        # prevents being unable to connect to a network if there is no suitable network
        # in the last policy and the device boots into an app in lock task mode, or the
        # user is otherwise unable to reach device settings.Note: Setting
        # wifiConfigDisabled to true will override this setting under specific
        # circumstances. Please see wifiConfigDisabled for further details. Setting
        # configureWifi to DISALLOW_CONFIGURING_WIFI will override this setting under
        # specific circumstances. Please see DISALLOW_CONFIGURING_WIFI for further
        # details.
        # Corresponds to the JSON property `networkEscapeHatchEnabled`
        # @return [Boolean]
        attr_accessor :network_escape_hatch_enabled
        alias_method :network_escape_hatch_enabled?, :network_escape_hatch_enabled
      
        # Whether resetting network settings is disabled.
        # Corresponds to the JSON property `networkResetDisabled`
        # @return [Boolean]
        attr_accessor :network_reset_disabled
        alias_method :network_reset_disabled?, :network_reset_disabled
      
        # This feature is not generally available.
        # Corresponds to the JSON property `oncCertificateProviders`
        # @return [Array<Google::Apis::AndroidmanagementV1::OncCertificateProvider>]
        attr_accessor :onc_certificate_providers
      
        # Network configuration for the device. See configure networks for more
        # information.
        # Corresponds to the JSON property `openNetworkConfiguration`
        # @return [Hash<String,Object>]
        attr_accessor :open_network_configuration
      
        # Whether using NFC to beam data from apps is disabled.
        # Corresponds to the JSON property `outgoingBeamDisabled`
        # @return [Boolean]
        attr_accessor :outgoing_beam_disabled
        alias_method :outgoing_beam_disabled?, :outgoing_beam_disabled
      
        # Whether outgoing calls are disabled.
        # Corresponds to the JSON property `outgoingCallsDisabled`
        # @return [Boolean]
        attr_accessor :outgoing_calls_disabled
        alias_method :outgoing_calls_disabled?, :outgoing_calls_disabled
      
        # Password requirement policies. Different policies can be set for work profile
        # or fully managed devices by setting the password_scope field in the policy.
        # Corresponds to the JSON property `passwordPolicies`
        # @return [Array<Google::Apis::AndroidmanagementV1::PasswordRequirements>]
        attr_accessor :password_policies
      
        # Requirements for the password used to unlock a device.
        # Corresponds to the JSON property `passwordRequirements`
        # @return [Google::Apis::AndroidmanagementV1::PasswordRequirements]
        attr_accessor :password_requirements
      
        # Explicit permission or group grants or denials for all apps. These values
        # override the default_permission_policy.
        # Corresponds to the JSON property `permissionGrants`
        # @return [Array<Google::Apis::AndroidmanagementV1::PermissionGrant>]
        attr_accessor :permission_grants
      
        # A list of package names.
        # Corresponds to the JSON property `permittedAccessibilityServices`
        # @return [Google::Apis::AndroidmanagementV1::PackageNameList]
        attr_accessor :permitted_accessibility_services
      
        # A list of package names.
        # Corresponds to the JSON property `permittedInputMethods`
        # @return [Google::Apis::AndroidmanagementV1::PackageNameList]
        attr_accessor :permitted_input_methods
      
        # Default intent handler activities.
        # Corresponds to the JSON property `persistentPreferredActivities`
        # @return [Array<Google::Apis::AndroidmanagementV1::PersistentPreferredActivity>]
        attr_accessor :persistent_preferred_activities
      
        # Policies controlling personal usage on a company-owned device with a work
        # profile.
        # Corresponds to the JSON property `personalUsagePolicies`
        # @return [Google::Apis::AndroidmanagementV1::PersonalUsagePolicies]
        attr_accessor :personal_usage_policies
      
        # This mode controls which apps are available to the user in the Play Store and
        # the behavior on the device when apps are removed from the policy.
        # Corresponds to the JSON property `playStoreMode`
        # @return [String]
        attr_accessor :play_store_mode
      
        # Rules that define the behavior when a particular policy can not be applied on
        # device
        # Corresponds to the JSON property `policyEnforcementRules`
        # @return [Array<Google::Apis::AndroidmanagementV1::PolicyEnforcementRule>]
        attr_accessor :policy_enforcement_rules
      
        # Controls whether preferential network service is enabled on the work profile
        # or on fully managed devices. For example, an organization may have an
        # agreement with a carrier that all of the work data from its employees' devices
        # will be sent via a network service dedicated for enterprise use. An example of
        # a supported preferential network service is the enterprise slice on 5G
        # networks. This policy has no effect if preferentialNetworkServiceSettings or
        # ApplicationPolicy.preferentialNetworkId is set on devices running Android 13
        # or above.
        # Corresponds to the JSON property `preferentialNetworkService`
        # @return [String]
        attr_accessor :preferential_network_service
      
        # Optional. Controls whether printing is allowed. This is supported on devices
        # running Android 9 and above. .
        # Corresponds to the JSON property `printingPolicy`
        # @return [String]
        attr_accessor :printing_policy
      
        # Allows showing UI on a device for a user to choose a private key alias if
        # there are no matching rules in ChoosePrivateKeyRules. For devices below
        # Android P, setting this may leave enterprise keys vulnerable. This value will
        # have no effect if any application has CERT_SELECTION delegation scope.
        # Corresponds to the JSON property `privateKeySelectionEnabled`
        # @return [Boolean]
        attr_accessor :private_key_selection_enabled
        alias_method :private_key_selection_enabled?, :private_key_selection_enabled
      
        # Configuration info for an HTTP proxy. For a direct proxy, set the host, port,
        # and excluded_hosts fields. For a PAC script proxy, set the pac_uri field.
        # Corresponds to the JSON property `recommendedGlobalProxy`
        # @return [Google::Apis::AndroidmanagementV1::ProxyInfo]
        attr_accessor :recommended_global_proxy
      
        # Whether removing other users is disabled.
        # Corresponds to the JSON property `removeUserDisabled`
        # @return [Boolean]
        attr_accessor :remove_user_disabled
        alias_method :remove_user_disabled?, :remove_user_disabled
      
        # Whether rebooting the device into safe boot is disabled.
        # Corresponds to the JSON property `safeBootDisabled`
        # @return [Boolean]
        attr_accessor :safe_boot_disabled
        alias_method :safe_boot_disabled?, :safe_boot_disabled
      
        # Whether screen capture is disabled.
        # Corresponds to the JSON property `screenCaptureDisabled`
        # @return [Boolean]
        attr_accessor :screen_capture_disabled
        alias_method :screen_capture_disabled?, :screen_capture_disabled
      
        # Whether changing the user icon is disabled. The setting has effect only on
        # fully managed devices.
        # Corresponds to the JSON property `setUserIconDisabled`
        # @return [Boolean]
        attr_accessor :set_user_icon_disabled
        alias_method :set_user_icon_disabled?, :set_user_icon_disabled
      
        # Whether changing the wallpaper is disabled.
        # Corresponds to the JSON property `setWallpaperDisabled`
        # @return [Boolean]
        attr_accessor :set_wallpaper_disabled
        alias_method :set_wallpaper_disabled?, :set_wallpaper_disabled
      
        # Action to take during the setup process. At most one action may be specified.
        # Corresponds to the JSON property `setupActions`
        # @return [Array<Google::Apis::AndroidmanagementV1::SetupAction>]
        attr_accessor :setup_actions
      
        # Whether location sharing is disabled. share_location_disabled is supported for
        # both fully managed devices and personally owned work profiles.
        # Corresponds to the JSON property `shareLocationDisabled`
        # @return [Boolean]
        attr_accessor :share_location_disabled
        alias_method :share_location_disabled?, :share_location_disabled
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `shortSupportMessage`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :short_support_message
      
        # Flag to skip hints on the first use. Enterprise admin can enable the system
        # recommendation for apps to skip their user tutorial and other introductory
        # hints on first start-up.
        # Corresponds to the JSON property `skipFirstUseHintsEnabled`
        # @return [Boolean]
        attr_accessor :skip_first_use_hints_enabled
        alias_method :skip_first_use_hints_enabled?, :skip_first_use_hints_enabled
      
        # Whether sending and receiving SMS messages is disabled.
        # Corresponds to the JSON property `smsDisabled`
        # @return [Boolean]
        attr_accessor :sms_disabled
        alias_method :sms_disabled?, :sms_disabled
      
        # Whether the status bar is disabled. This disables notifications, quick
        # settings, and other screen overlays that allow escape from full-screen mode.
        # DEPRECATED. To disable the status bar on a kiosk device, use InstallType KIOSK
        # or kioskCustomLauncherEnabled.
        # Corresponds to the JSON property `statusBarDisabled`
        # @return [Boolean]
        attr_accessor :status_bar_disabled
        alias_method :status_bar_disabled?, :status_bar_disabled
      
        # Settings controlling the behavior of status reports.
        # Corresponds to the JSON property `statusReportingSettings`
        # @return [Google::Apis::AndroidmanagementV1::StatusReportingSettings]
        attr_accessor :status_reporting_settings
      
        # The battery plugged in modes for which the device stays on. When using this
        # setting, it is recommended to clear maximum_time_to_lock so that the device
        # doesn't lock itself while it stays on.
        # Corresponds to the JSON property `stayOnPluggedModes`
        # @return [Array<String>]
        attr_accessor :stay_on_plugged_modes
      
        # Configuration for managing system updatesNote: Google Play system updates (
        # https://source.android.com/docs/core/ota/modular-system) (also called Mainline
        # updates) are automatically downloaded but require a device reboot to be
        # installed. Refer to the mainline section in Manage system updates (https://
        # developer.android.com/work/dpc/system-updates#mainline) for further details.
        # Corresponds to the JSON property `systemUpdate`
        # @return [Google::Apis::AndroidmanagementV1::SystemUpdate]
        attr_accessor :system_update
      
        # Whether configuring tethering and portable hotspots is disabled. If
        # tetheringSettings is set to anything other than TETHERING_SETTINGS_UNSPECIFIED,
        # this setting is ignored.
        # Corresponds to the JSON property `tetheringConfigDisabled`
        # @return [Boolean]
        attr_accessor :tethering_config_disabled
        alias_method :tethering_config_disabled?, :tethering_config_disabled
      
        # Whether user uninstallation of applications is disabled. This prevents apps
        # from being uninstalled, even those removed using applications
        # Corresponds to the JSON property `uninstallAppsDisabled`
        # @return [Boolean]
        attr_accessor :uninstall_apps_disabled
        alias_method :uninstall_apps_disabled?, :uninstall_apps_disabled
      
        # If microphone_access is set to any value other than
        # MICROPHONE_ACCESS_UNSPECIFIED, this has no effect. Otherwise this field
        # controls whether microphones are disabled: If true, all microphones are
        # disabled, otherwise they are available. This is available only on fully
        # managed devices.
        # Corresponds to the JSON property `unmuteMicrophoneDisabled`
        # @return [Boolean]
        attr_accessor :unmute_microphone_disabled
        alias_method :unmute_microphone_disabled?, :unmute_microphone_disabled
      
        # Controls types of device activity logs collected from the device and reported
        # via Pub/Sub notification (https://developers.google.com/android/management/
        # notifications).
        # Corresponds to the JSON property `usageLog`
        # @return [Google::Apis::AndroidmanagementV1::UsageLog]
        attr_accessor :usage_log
      
        # Whether transferring files over USB is disabled. This is supported only on
        # company-owned devices.
        # Corresponds to the JSON property `usbFileTransferDisabled`
        # @return [Boolean]
        attr_accessor :usb_file_transfer_disabled
        alias_method :usb_file_transfer_disabled?, :usb_file_transfer_disabled
      
        # Whether USB storage is enabled. Deprecated.
        # Corresponds to the JSON property `usbMassStorageEnabled`
        # @return [Boolean]
        attr_accessor :usb_mass_storage_enabled
        alias_method :usb_mass_storage_enabled?, :usb_mass_storage_enabled
      
        # The version of the policy. This is a read-only field. The version is
        # incremented each time the policy is updated.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Whether configuring VPN is disabled.
        # Corresponds to the JSON property `vpnConfigDisabled`
        # @return [Boolean]
        attr_accessor :vpn_config_disabled
        alias_method :vpn_config_disabled?, :vpn_config_disabled
      
        # Whether configuring Wi-Fi networks is disabled. Supported on fully managed
        # devices and work profiles on company-owned devices. For fully managed devices,
        # setting this to true removes all configured networks and retains only the
        # networks configured using openNetworkConfiguration. For work profiles on
        # company-owned devices, existing configured networks are not affected and the
        # user is not allowed to add, remove, or modify Wi-Fi networks. If configureWifi
        # is set to anything other than CONFIGURE_WIFI_UNSPECIFIED, this setting is
        # ignored. Note: If a network connection can't be made at boot time and
        # configuring Wi-Fi is disabled then network escape hatch will be shown in order
        # to refresh the device policy (see networkEscapeHatchEnabled).
        # Corresponds to the JSON property `wifiConfigDisabled`
        # @return [Boolean]
        attr_accessor :wifi_config_disabled
        alias_method :wifi_config_disabled?, :wifi_config_disabled
      
        # This is deprecated.
        # Corresponds to the JSON property `wifiConfigsLockdownEnabled`
        # @return [Boolean]
        attr_accessor :wifi_configs_lockdown_enabled
        alias_method :wifi_configs_lockdown_enabled?, :wifi_configs_lockdown_enabled
      
        # Optional. Wipe flags to indicate what data is wiped when a device or profile
        # wipe is triggered due to any reason (for example, non-compliance). This does
        # not apply to the enterprises.devices.delete method. . This list must not have
        # duplicates.
        # Corresponds to the JSON property `wipeDataFlags`
        # @return [Array<String>]
        attr_accessor :wipe_data_flags
      
        # Controls the work account setup configuration, such as details of whether a
        # Google authenticated account is required.
        # Corresponds to the JSON property `workAccountSetupConfig`
        # @return [Google::Apis::AndroidmanagementV1::WorkAccountSetupConfig]
        attr_accessor :work_account_setup_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_types_with_management_disabled = args[:account_types_with_management_disabled] if args.key?(:account_types_with_management_disabled)
          @add_user_disabled = args[:add_user_disabled] if args.key?(:add_user_disabled)
          @adjust_volume_disabled = args[:adjust_volume_disabled] if args.key?(:adjust_volume_disabled)
          @advanced_security_overrides = args[:advanced_security_overrides] if args.key?(:advanced_security_overrides)
          @always_on_vpn_package = args[:always_on_vpn_package] if args.key?(:always_on_vpn_package)
          @android_device_policy_tracks = args[:android_device_policy_tracks] if args.key?(:android_device_policy_tracks)
          @app_auto_update_policy = args[:app_auto_update_policy] if args.key?(:app_auto_update_policy)
          @app_functions = args[:app_functions] if args.key?(:app_functions)
          @applications = args[:applications] if args.key?(:applications)
          @assist_content_policy = args[:assist_content_policy] if args.key?(:assist_content_policy)
          @auto_date_and_time_zone = args[:auto_date_and_time_zone] if args.key?(:auto_date_and_time_zone)
          @auto_time_required = args[:auto_time_required] if args.key?(:auto_time_required)
          @block_applications_enabled = args[:block_applications_enabled] if args.key?(:block_applications_enabled)
          @bluetooth_config_disabled = args[:bluetooth_config_disabled] if args.key?(:bluetooth_config_disabled)
          @bluetooth_contact_sharing_disabled = args[:bluetooth_contact_sharing_disabled] if args.key?(:bluetooth_contact_sharing_disabled)
          @bluetooth_disabled = args[:bluetooth_disabled] if args.key?(:bluetooth_disabled)
          @camera_access = args[:camera_access] if args.key?(:camera_access)
          @camera_disabled = args[:camera_disabled] if args.key?(:camera_disabled)
          @cell_broadcasts_config_disabled = args[:cell_broadcasts_config_disabled] if args.key?(:cell_broadcasts_config_disabled)
          @choose_private_key_rules = args[:choose_private_key_rules] if args.key?(:choose_private_key_rules)
          @compliance_rules = args[:compliance_rules] if args.key?(:compliance_rules)
          @create_windows_disabled = args[:create_windows_disabled] if args.key?(:create_windows_disabled)
          @credential_provider_policy_default = args[:credential_provider_policy_default] if args.key?(:credential_provider_policy_default)
          @credentials_config_disabled = args[:credentials_config_disabled] if args.key?(:credentials_config_disabled)
          @cross_profile_policies = args[:cross_profile_policies] if args.key?(:cross_profile_policies)
          @data_roaming_disabled = args[:data_roaming_disabled] if args.key?(:data_roaming_disabled)
          @debugging_features_allowed = args[:debugging_features_allowed] if args.key?(:debugging_features_allowed)
          @default_permission_policy = args[:default_permission_policy] if args.key?(:default_permission_policy)
          @device_connectivity_management = args[:device_connectivity_management] if args.key?(:device_connectivity_management)
          @device_owner_lock_screen_info = args[:device_owner_lock_screen_info] if args.key?(:device_owner_lock_screen_info)
          @device_radio_state = args[:device_radio_state] if args.key?(:device_radio_state)
          @display_settings = args[:display_settings] if args.key?(:display_settings)
          @encryption_policy = args[:encryption_policy] if args.key?(:encryption_policy)
          @ensure_verify_apps_enabled = args[:ensure_verify_apps_enabled] if args.key?(:ensure_verify_apps_enabled)
          @enterprise_display_name_visibility = args[:enterprise_display_name_visibility] if args.key?(:enterprise_display_name_visibility)
          @factory_reset_disabled = args[:factory_reset_disabled] if args.key?(:factory_reset_disabled)
          @frp_admin_emails = args[:frp_admin_emails] if args.key?(:frp_admin_emails)
          @fun_disabled = args[:fun_disabled] if args.key?(:fun_disabled)
          @install_apps_disabled = args[:install_apps_disabled] if args.key?(:install_apps_disabled)
          @install_unknown_sources_allowed = args[:install_unknown_sources_allowed] if args.key?(:install_unknown_sources_allowed)
          @keyguard_disabled = args[:keyguard_disabled] if args.key?(:keyguard_disabled)
          @keyguard_disabled_features = args[:keyguard_disabled_features] if args.key?(:keyguard_disabled_features)
          @kiosk_custom_launcher_enabled = args[:kiosk_custom_launcher_enabled] if args.key?(:kiosk_custom_launcher_enabled)
          @kiosk_customization = args[:kiosk_customization] if args.key?(:kiosk_customization)
          @location_mode = args[:location_mode] if args.key?(:location_mode)
          @long_support_message = args[:long_support_message] if args.key?(:long_support_message)
          @maximum_time_to_lock = args[:maximum_time_to_lock] if args.key?(:maximum_time_to_lock)
          @microphone_access = args[:microphone_access] if args.key?(:microphone_access)
          @minimum_api_level = args[:minimum_api_level] if args.key?(:minimum_api_level)
          @mobile_networks_config_disabled = args[:mobile_networks_config_disabled] if args.key?(:mobile_networks_config_disabled)
          @modify_accounts_disabled = args[:modify_accounts_disabled] if args.key?(:modify_accounts_disabled)
          @mount_physical_media_disabled = args[:mount_physical_media_disabled] if args.key?(:mount_physical_media_disabled)
          @name = args[:name] if args.key?(:name)
          @network_escape_hatch_enabled = args[:network_escape_hatch_enabled] if args.key?(:network_escape_hatch_enabled)
          @network_reset_disabled = args[:network_reset_disabled] if args.key?(:network_reset_disabled)
          @onc_certificate_providers = args[:onc_certificate_providers] if args.key?(:onc_certificate_providers)
          @open_network_configuration = args[:open_network_configuration] if args.key?(:open_network_configuration)
          @outgoing_beam_disabled = args[:outgoing_beam_disabled] if args.key?(:outgoing_beam_disabled)
          @outgoing_calls_disabled = args[:outgoing_calls_disabled] if args.key?(:outgoing_calls_disabled)
          @password_policies = args[:password_policies] if args.key?(:password_policies)
          @password_requirements = args[:password_requirements] if args.key?(:password_requirements)
          @permission_grants = args[:permission_grants] if args.key?(:permission_grants)
          @permitted_accessibility_services = args[:permitted_accessibility_services] if args.key?(:permitted_accessibility_services)
          @permitted_input_methods = args[:permitted_input_methods] if args.key?(:permitted_input_methods)
          @persistent_preferred_activities = args[:persistent_preferred_activities] if args.key?(:persistent_preferred_activities)
          @personal_usage_policies = args[:personal_usage_policies] if args.key?(:personal_usage_policies)
          @play_store_mode = args[:play_store_mode] if args.key?(:play_store_mode)
          @policy_enforcement_rules = args[:policy_enforcement_rules] if args.key?(:policy_enforcement_rules)
          @preferential_network_service = args[:preferential_network_service] if args.key?(:preferential_network_service)
          @printing_policy = args[:printing_policy] if args.key?(:printing_policy)
          @private_key_selection_enabled = args[:private_key_selection_enabled] if args.key?(:private_key_selection_enabled)
          @recommended_global_proxy = args[:recommended_global_proxy] if args.key?(:recommended_global_proxy)
          @remove_user_disabled = args[:remove_user_disabled] if args.key?(:remove_user_disabled)
          @safe_boot_disabled = args[:safe_boot_disabled] if args.key?(:safe_boot_disabled)
          @screen_capture_disabled = args[:screen_capture_disabled] if args.key?(:screen_capture_disabled)
          @set_user_icon_disabled = args[:set_user_icon_disabled] if args.key?(:set_user_icon_disabled)
          @set_wallpaper_disabled = args[:set_wallpaper_disabled] if args.key?(:set_wallpaper_disabled)
          @setup_actions = args[:setup_actions] if args.key?(:setup_actions)
          @share_location_disabled = args[:share_location_disabled] if args.key?(:share_location_disabled)
          @short_support_message = args[:short_support_message] if args.key?(:short_support_message)
          @skip_first_use_hints_enabled = args[:skip_first_use_hints_enabled] if args.key?(:skip_first_use_hints_enabled)
          @sms_disabled = args[:sms_disabled] if args.key?(:sms_disabled)
          @status_bar_disabled = args[:status_bar_disabled] if args.key?(:status_bar_disabled)
          @status_reporting_settings = args[:status_reporting_settings] if args.key?(:status_reporting_settings)
          @stay_on_plugged_modes = args[:stay_on_plugged_modes] if args.key?(:stay_on_plugged_modes)
          @system_update = args[:system_update] if args.key?(:system_update)
          @tethering_config_disabled = args[:tethering_config_disabled] if args.key?(:tethering_config_disabled)
          @uninstall_apps_disabled = args[:uninstall_apps_disabled] if args.key?(:uninstall_apps_disabled)
          @unmute_microphone_disabled = args[:unmute_microphone_disabled] if args.key?(:unmute_microphone_disabled)
          @usage_log = args[:usage_log] if args.key?(:usage_log)
          @usb_file_transfer_disabled = args[:usb_file_transfer_disabled] if args.key?(:usb_file_transfer_disabled)
          @usb_mass_storage_enabled = args[:usb_mass_storage_enabled] if args.key?(:usb_mass_storage_enabled)
          @version = args[:version] if args.key?(:version)
          @vpn_config_disabled = args[:vpn_config_disabled] if args.key?(:vpn_config_disabled)
          @wifi_config_disabled = args[:wifi_config_disabled] if args.key?(:wifi_config_disabled)
          @wifi_configs_lockdown_enabled = args[:wifi_configs_lockdown_enabled] if args.key?(:wifi_configs_lockdown_enabled)
          @wipe_data_flags = args[:wipe_data_flags] if args.key?(:wipe_data_flags)
          @work_account_setup_config = args[:work_account_setup_config] if args.key?(:work_account_setup_config)
        end
      end
      
      # A rule that defines the actions to take if a device or work profile is not
      # compliant with the policy specified in settingName. In the case of multiple
      # matching or multiple triggered enforcement rules, a merge will occur with the
      # most severe action being taken. However, all triggered rules are still kept
      # track of: this includes initial trigger time and all associated non-compliance
      # details. In the situation where the most severe enforcement rule is satisfied,
      # the next most appropriate action is applied.
      class PolicyEnforcementRule
        include Google::Apis::Core::Hashable
      
        # An action to block access to apps and data on a fully managed device or in a
        # work profile. This action also triggers a device or work profile to displays a
        # user-facing notification with information (where possible) on how to correct
        # the compliance issue. Note: wipeAction must also be specified.
        # Corresponds to the JSON property `blockAction`
        # @return [Google::Apis::AndroidmanagementV1::BlockAction]
        attr_accessor :block_action
      
        # The top-level policy to enforce. For example, applications or passwordPolicies.
        # Corresponds to the JSON property `settingName`
        # @return [String]
        attr_accessor :setting_name
      
        # An action to reset a company owned device or delete a work profile. Note:
        # blockAction must also be specified.
        # Corresponds to the JSON property `wipeAction`
        # @return [Google::Apis::AndroidmanagementV1::WipeAction]
        attr_accessor :wipe_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_action = args[:block_action] if args.key?(:block_action)
          @setting_name = args[:setting_name] if args.key?(:setting_name)
          @wipe_action = args[:wipe_action] if args.key?(:wipe_action)
        end
      end
      
      # Additional details regarding the security posture of the device.
      class PostureDetail
        include Google::Apis::Core::Hashable
      
        # Corresponding admin-facing advice to mitigate this security risk and improve
        # the security posture of the device.
        # Corresponds to the JSON property `advice`
        # @return [Array<Google::Apis::AndroidmanagementV1::UserFacingMessage>]
        attr_accessor :advice
      
        # A specific security risk that negatively affects the security posture of the
        # device.
        # Corresponds to the JSON property `securityRisk`
        # @return [String]
        attr_accessor :security_risk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advice = args[:advice] if args.key?(:advice)
          @security_risk = args[:security_risk] if args.key?(:security_risk)
        end
      end
      
      # A power management event.
      class PowerManagementEvent
        include Google::Apis::Core::Hashable
      
        # For BATTERY_LEVEL_COLLECTED events, the battery level as a percentage.
        # Corresponds to the JSON property `batteryLevel`
        # @return [Float]
        attr_accessor :battery_level
      
        # The creation time of the event.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Event type.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @battery_level = args[:battery_level] if args.key?(:battery_level)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # Individual preferential network service configuration.
      class PreferentialNetworkServiceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether fallback to the device-wide default network is allowed. If
        # this is set to FALLBACK_TO_DEFAULT_CONNECTION_ALLOWED, then
        # nonMatchingNetworks must not be set to NON_MATCHING_NETWORKS_DISALLOWED, the
        # policy will be rejected otherwise. Note: If this is set to
        # FALLBACK_TO_DEFAULT_CONNECTION_DISALLOWED, applications are not able to access
        # the internet if the 5G slice is not available.
        # Corresponds to the JSON property `fallbackToDefaultConnection`
        # @return [String]
        attr_accessor :fallback_to_default_connection
      
        # Optional. Whether apps this configuration applies to are blocked from using
        # networks other than the preferential service. If this is set to
        # NON_MATCHING_NETWORKS_DISALLOWED, then fallbackToDefaultConnection must be set
        # to FALLBACK_TO_DEFAULT_CONNECTION_DISALLOWED.
        # Corresponds to the JSON property `nonMatchingNetworks`
        # @return [String]
        attr_accessor :non_matching_networks
      
        # Required. Preferential network identifier. This must not be set to
        # NO_PREFERENTIAL_NETWORK or PREFERENTIAL_NETWORK_ID_UNSPECIFIED, the policy
        # will be rejected otherwise.
        # Corresponds to the JSON property `preferentialNetworkId`
        # @return [String]
        attr_accessor :preferential_network_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fallback_to_default_connection = args[:fallback_to_default_connection] if args.key?(:fallback_to_default_connection)
          @non_matching_networks = args[:non_matching_networks] if args.key?(:non_matching_networks)
          @preferential_network_id = args[:preferential_network_id] if args.key?(:preferential_network_id)
        end
      end
      
      # Preferential network service settings.
      class PreferentialNetworkServiceSettings
        include Google::Apis::Core::Hashable
      
        # Required. Default preferential network ID for the applications that are not in
        # applications or if ApplicationPolicy.preferentialNetworkId is set to
        # PREFERENTIAL_NETWORK_ID_UNSPECIFIED. There must be a configuration for the
        # specified network ID in preferentialNetworkServiceConfigs, unless this is set
        # to NO_PREFERENTIAL_NETWORK. If set to PREFERENTIAL_NETWORK_ID_UNSPECIFIED or
        # unset, this defaults to NO_PREFERENTIAL_NETWORK. Note: If the default
        # preferential network is misconfigured, applications with no ApplicationPolicy.
        # preferentialNetworkId set are not able to access the internet. This setting
        # does not apply to the following critical apps: com.google.android.apps.work.
        # clouddpc com.google.android.gmsApplicationPolicy.preferentialNetworkId can
        # still be used to configure the preferential network for them.
        # Corresponds to the JSON property `defaultPreferentialNetworkId`
        # @return [String]
        attr_accessor :default_preferential_network_id
      
        # Required. Preferential network service configurations which enables having
        # multiple enterprise slices. There must not be multiple configurations with the
        # same preferentialNetworkId. If a configuration is not referenced by any
        # application by setting ApplicationPolicy.preferentialNetworkId or by setting
        # defaultPreferentialNetworkId, it will be ignored. For devices on 4G networks,
        # enterprise APN needs to be configured additionally to set up data call for
        # preferential network service. These APNs can be added using apnPolicy.
        # Corresponds to the JSON property `preferentialNetworkServiceConfigs`
        # @return [Array<Google::Apis::AndroidmanagementV1::PreferentialNetworkServiceConfig>]
        attr_accessor :preferential_network_service_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_preferential_network_id = args[:default_preferential_network_id] if args.key?(:default_preferential_network_id)
          @preferential_network_service_configs = args[:preferential_network_service_configs] if args.key?(:preferential_network_service_configs)
        end
      end
      
      # Information about a device that is available during setup.
      class ProvisioningInfo
        include Google::Apis::Core::Hashable
      
        # The API level of the Android platform version running on the device.
        # Corresponds to the JSON property `apiLevel`
        # @return [Fixnum]
        attr_accessor :api_level
      
        # The email address of the authenticated user (only present for Google Account
        # provisioning method).
        # Corresponds to the JSON property `authenticatedUserEmail`
        # @return [String]
        attr_accessor :authenticated_user_email
      
        # The brand of the device. For example, Google.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The name of the enterprise in the form enterprises/`enterprise`.
        # Corresponds to the JSON property `enterprise`
        # @return [String]
        attr_accessor :enterprise
      
        # For corporate-owned devices, IMEI number of the GSM device. For example,
        # A1000031212.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # The management mode of the device or profile.
        # Corresponds to the JSON property `managementMode`
        # @return [String]
        attr_accessor :management_mode
      
        # For corporate-owned devices, MEID number of the CDMA device. For example,
        # A00000292788E1.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # The model of the device. For example, Asus Nexus 7.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # The name of this resource in the form provisioningInfo/`provisioning_info`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Ownership of the managed device.
        # Corresponds to the JSON property `ownership`
        # @return [String]
        attr_accessor :ownership
      
        # For corporate-owned devices, The device serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_level = args[:api_level] if args.key?(:api_level)
          @authenticated_user_email = args[:authenticated_user_email] if args.key?(:authenticated_user_email)
          @brand = args[:brand] if args.key?(:brand)
          @enterprise = args[:enterprise] if args.key?(:enterprise)
          @imei = args[:imei] if args.key?(:imei)
          @management_mode = args[:management_mode] if args.key?(:management_mode)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @name = args[:name] if args.key?(:name)
          @ownership = args[:ownership] if args.key?(:ownership)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Configuration info for an HTTP proxy. For a direct proxy, set the host, port,
      # and excluded_hosts fields. For a PAC script proxy, set the pac_uri field.
      class ProxyInfo
        include Google::Apis::Core::Hashable
      
        # For a direct proxy, the hosts for which the proxy is bypassed. The host names
        # may contain wildcards such as *.example.com.
        # Corresponds to the JSON property `excludedHosts`
        # @return [Array<String>]
        attr_accessor :excluded_hosts
      
        # The host of the direct proxy.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The URI of the PAC script used to configure the proxy.
        # Corresponds to the JSON property `pacUri`
        # @return [String]
        attr_accessor :pac_uri
      
        # The port of the direct proxy.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_hosts = args[:excluded_hosts] if args.key?(:excluded_hosts)
          @host = args[:host] if args.key?(:host)
          @pac_uri = args[:pac_uri] if args.key?(:pac_uri)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # The device or profile has been remotely locked via the LOCK command.
      class RemoteLockEvent
        include Google::Apis::Core::Hashable
      
        # Package name of the admin app requesting the change.
        # Corresponds to the JSON property `adminPackageName`
        # @return [String]
        attr_accessor :admin_package_name
      
        # User ID of the admin app from the which the change was requested.
        # Corresponds to the JSON property `adminUserId`
        # @return [Fixnum]
        attr_accessor :admin_user_id
      
        # User ID in which the change was requested in.
        # Corresponds to the JSON property `targetUserId`
        # @return [Fixnum]
        attr_accessor :target_user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_package_name = args[:admin_package_name] if args.key?(:admin_package_name)
          @admin_user_id = args[:admin_user_id] if args.key?(:admin_user_id)
          @target_user_id = args[:target_user_id] if args.key?(:target_user_id)
        end
      end
      
      # Parameters associated with the REMOVE_ESIM command to remove an eSIM profile
      # from the device.
      class RemoveEsimParams
        include Google::Apis::Core::Hashable
      
        # Required. ICC ID of the eSIM profile to be deleted.
        # Corresponds to the JSON property `iccId`
        # @return [String]
        attr_accessor :icc_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icc_id = args[:icc_id] if args.key?(:icc_id)
        end
      end
      
      # Request to remove ApplicationPolicy objects in the given policy.
      class RemovePolicyApplicationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Package names to be removed. Entries that are not found are ignored.
        # There must be at least one entry in package_names.
        # Corresponds to the JSON property `packageNames`
        # @return [Array<String>]
        attr_accessor :package_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_names = args[:package_names] if args.key?(:package_names)
        end
      end
      
      # Response to a request to remove ApplicationPolicy objects in the given policy.
      class RemovePolicyApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # A policy resource represents a group of settings that govern the behavior of a
        # managed device and the apps installed on it.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::AndroidmanagementV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Parameters associated with the REQUEST_DEVICE_INFO command to get device
      # related information.
      class RequestDeviceInfoParams
        include Google::Apis::Core::Hashable
      
        # Required. Type of device information to be requested.
        # Corresponds to the JSON property `deviceInfo`
        # @return [String]
        attr_accessor :device_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_info = args[:device_info] if args.key?(:device_info)
        end
      end
      
      # Status of the REQUEST_DEVICE_INFO command.
      class RequestDeviceInfoStatus
        include Google::Apis::Core::Hashable
      
        # Information related to the EIDs of the device.
        # Corresponds to the JSON property `eidInfo`
        # @return [Google::Apis::AndroidmanagementV1::EidInfo]
        attr_accessor :eid_info
      
        # Output only. Status of a REQUEST_DEVICE_INFO command.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eid_info = args[:eid_info] if args.key?(:eid_info)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Controls for the screen brightness settings.
      class ScreenBrightnessSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The screen brightness between 1 and 255 where 1 is the lowest and
        # 255 is the highest brightness. A value of 0 (default) means no screen
        # brightness set. Any other value is rejected. screenBrightnessMode must be
        # either BRIGHTNESS_AUTOMATIC or BRIGHTNESS_FIXED to set this. Supported on
        # Android 9 and above on fully managed devices. A NonComplianceDetail with
        # API_LEVEL is reported if the Android version is less than 9. Supported on work
        # profiles on company-owned devices on Android 15 and above.
        # Corresponds to the JSON property `screenBrightness`
        # @return [Fixnum]
        attr_accessor :screen_brightness
      
        # Optional. Controls the screen brightness mode.
        # Corresponds to the JSON property `screenBrightnessMode`
        # @return [String]
        attr_accessor :screen_brightness_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @screen_brightness = args[:screen_brightness] if args.key?(:screen_brightness)
          @screen_brightness_mode = args[:screen_brightness_mode] if args.key?(:screen_brightness_mode)
        end
      end
      
      # Controls the screen timeout settings.
      class ScreenTimeoutSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Controls the screen timeout duration. The screen timeout duration
        # must be greater than 0, otherwise it is rejected. Additionally, it should not
        # be greater than maximumTimeToLock, otherwise the screen timeout is set to
        # maximumTimeToLock and a NonComplianceDetail with INVALID_VALUE reason and
        # SCREEN_TIMEOUT_GREATER_THAN_MAXIMUM_TIME_TO_LOCK specific reason is reported.
        # If the screen timeout is less than a certain lower bound, it is set to the
        # lower bound. The lower bound may vary across devices. If this is set,
        # screenTimeoutMode must be SCREEN_TIMEOUT_ENFORCED. Supported on Android 9 and
        # above on fully managed devices. A NonComplianceDetail with API_LEVEL is
        # reported if the Android version is less than 9. Supported on work profiles on
        # company-owned devices on Android 15 and above.
        # Corresponds to the JSON property `screenTimeout`
        # @return [String]
        attr_accessor :screen_timeout
      
        # Optional. Controls whether the user is allowed to configure the screen timeout.
        # Corresponds to the JSON property `screenTimeoutMode`
        # @return [String]
        attr_accessor :screen_timeout_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @screen_timeout = args[:screen_timeout] if args.key?(:screen_timeout)
          @screen_timeout_mode = args[:screen_timeout_mode] if args.key?(:screen_timeout_mode)
        end
      end
      
      # The security posture of the device, as determined by the current device state
      # and the policies applied.
      class SecurityPosture
        include Google::Apis::Core::Hashable
      
        # Device's security posture value.
        # Corresponds to the JSON property `devicePosture`
        # @return [String]
        attr_accessor :device_posture
      
        # Additional details regarding the security posture of the device.
        # Corresponds to the JSON property `postureDetails`
        # @return [Array<Google::Apis::AndroidmanagementV1::PostureDetail>]
        attr_accessor :posture_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_posture = args[:device_posture] if args.key?(:device_posture)
          @posture_details = args[:posture_details] if args.key?(:posture_details)
        end
      end
      
      # An action executed during setup.
      class SetupAction
        include Google::Apis::Core::Hashable
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `description`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :description
      
        # An action to launch an app.
        # Corresponds to the JSON property `launchApp`
        # @return [Google::Apis::AndroidmanagementV1::LaunchAppAction]
        attr_accessor :launch_app
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `title`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @launch_app = args[:launch_app] if args.key?(:launch_app)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A resource containing sign in details for an enterprise. Use enterprises to
      # manage SigninDetails for a given enterprise.For an enterprise, we can have any
      # number of SigninDetails that is uniquely identified by combination of the
      # following three fields (signin_url, allow_personal_usage, token_tag). One
      # cannot create two SigninDetails with the same (signin_url,
      # allow_personal_usage, token_tag). (token_tag is an optional field).Patch: The
      # operation updates the current list of SigninDetails with the new list of
      # SigninDetails. If the stored SigninDetail configuration is passed, it returns
      # the same signin_enrollment_token and qr_code. If we pass multiple identical
      # SigninDetail configurations that are not stored, it will store the first one
      # amongst those SigninDetail configurations. if the configuration already exists
      # we cannot request it more than once in a particular patch API call, otherwise
      # it will give a duplicate key error and the whole operation will fail. If we
      # remove certain SigninDetail configuration from the request then it will get
      # removed from the storage. We can then request another signin_enrollment_token
      # and qr_code for the same SigninDetail configuration.
      class SigninDetail
        include Google::Apis::Core::Hashable
      
        # Controls whether personal usage is allowed on a device provisioned with this
        # enrollment token.For company-owned devices: Enabling personal usage allows the
        # user to set up a work profile on the device. Disabling personal usage requires
        # the user provision the device as a fully managed device.For personally-owned
        # devices: Enabling personal usage allows the user to set up a work profile on
        # the device. Disabling personal usage will prevent the device from provisioning.
        # Personal usage cannot be disabled on personally-owned device.
        # Corresponds to the JSON property `allowPersonalUsage`
        # @return [String]
        attr_accessor :allow_personal_usage
      
        # Optional. Whether the sign-in URL should be used by default for the enterprise.
        # The SigninDetail with defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT is used
        # for Google account enrollment method. Only one of an enterprise's
        # signinDetails can have defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT. If an
        # Enterprise has at least one signinDetails and none of them have defaultStatus
        # set to SIGNIN_DETAIL_IS_DEFAULT then the first one from the list is selected
        # and has set defaultStatus to SIGNIN_DETAIL_IS_DEFAULT. If no signinDetails
        # specified for the Enterprise then the Google Account device enrollment will
        # fail.
        # Corresponds to the JSON property `defaultStatus`
        # @return [String]
        attr_accessor :default_status
      
        # A JSON string whose UTF-8 representation can be used to generate a QR code to
        # enroll a device with this enrollment token. To enroll a device using NFC, the
        # NFC record must contain a serialized java.util.Properties representation of
        # the properties in the JSON. This is a read-only field generated by the server.
        # Corresponds to the JSON property `qrCode`
        # @return [String]
        attr_accessor :qr_code
      
        # An enterprise wide enrollment token used to trigger custom sign-in flow. This
        # is a read-only field generated by the server.
        # Corresponds to the JSON property `signinEnrollmentToken`
        # @return [String]
        attr_accessor :signin_enrollment_token
      
        # Sign-in URL for authentication when device is provisioned with a sign-in
        # enrollment token. The sign-in endpoint should finish authentication flow with
        # a URL in the form of https://enterprise.google.com/android/enroll?et= for a
        # successful login, or https://enterprise.google.com/android/enroll/invalid for
        # a failed login.
        # Corresponds to the JSON property `signinUrl`
        # @return [String]
        attr_accessor :signin_url
      
        # An EMM-specified metadata to distinguish between instances of SigninDetail.
        # Corresponds to the JSON property `tokenTag`
        # @return [String]
        attr_accessor :token_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_personal_usage = args[:allow_personal_usage] if args.key?(:allow_personal_usage)
          @default_status = args[:default_status] if args.key?(:default_status)
          @qr_code = args[:qr_code] if args.key?(:qr_code)
          @signin_enrollment_token = args[:signin_enrollment_token] if args.key?(:signin_enrollment_token)
          @signin_url = args[:signin_url] if args.key?(:signin_url)
          @token_tag = args[:token_tag] if args.key?(:token_tag)
        end
      end
      
      # An enterprise signup URL.
      class SignupUrl
        include Google::Apis::Core::Hashable
      
        # The name of the resource. Use this value in the signupUrl field when calling
        # enterprises.create to complete the enterprise signup flow.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A URL where an enterprise admin can register their enterprise. The page can't
        # be rendered in an iframe.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Information about device software.
      class SoftwareInfo
        include Google::Apis::Core::Hashable
      
        # Android build ID string meant for displaying to the user. For example, shamu-
        # userdebug 6.0.1 MOB30I 2756745 dev-keys.
        # Corresponds to the JSON property `androidBuildNumber`
        # @return [String]
        attr_accessor :android_build_number
      
        # Build time.
        # Corresponds to the JSON property `androidBuildTime`
        # @return [String]
        attr_accessor :android_build_time
      
        # The Android Device Policy app version code.
        # Corresponds to the JSON property `androidDevicePolicyVersionCode`
        # @return [Fixnum]
        attr_accessor :android_device_policy_version_code
      
        # The Android Device Policy app version as displayed to the user.
        # Corresponds to the JSON property `androidDevicePolicyVersionName`
        # @return [String]
        attr_accessor :android_device_policy_version_name
      
        # The user-visible Android version string. For example, 6.0.1.
        # Corresponds to the JSON property `androidVersion`
        # @return [String]
        attr_accessor :android_version
      
        # The system bootloader version number, e.g. 0.6.7.
        # Corresponds to the JSON property `bootloaderVersion`
        # @return [String]
        attr_accessor :bootloader_version
      
        # SHA-256 hash of android.content.pm.Signature (https://developer.android.com/
        # reference/android/content/pm/Signature.html) associated with the system
        # package, which can be used to verify that the system build hasn't been
        # modified.
        # Corresponds to the JSON property `deviceBuildSignature`
        # @return [String]
        attr_accessor :device_build_signature
      
        # Kernel version, for example, 2.6.32.9-g103d848.
        # Corresponds to the JSON property `deviceKernelVersion`
        # @return [String]
        attr_accessor :device_kernel_version
      
        # An IETF BCP 47 language code for the primary locale on the device.
        # Corresponds to the JSON property `primaryLanguageCode`
        # @return [String]
        attr_accessor :primary_language_code
      
        # Security patch level, e.g. 2016-05-01.
        # Corresponds to the JSON property `securityPatchLevel`
        # @return [String]
        attr_accessor :security_patch_level
      
        # Information about a potential pending system update.
        # Corresponds to the JSON property `systemUpdateInfo`
        # @return [Google::Apis::AndroidmanagementV1::SystemUpdateInfo]
        attr_accessor :system_update_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_build_number = args[:android_build_number] if args.key?(:android_build_number)
          @android_build_time = args[:android_build_time] if args.key?(:android_build_time)
          @android_device_policy_version_code = args[:android_device_policy_version_code] if args.key?(:android_device_policy_version_code)
          @android_device_policy_version_name = args[:android_device_policy_version_name] if args.key?(:android_device_policy_version_name)
          @android_version = args[:android_version] if args.key?(:android_version)
          @bootloader_version = args[:bootloader_version] if args.key?(:bootloader_version)
          @device_build_signature = args[:device_build_signature] if args.key?(:device_build_signature)
          @device_kernel_version = args[:device_kernel_version] if args.key?(:device_kernel_version)
          @primary_language_code = args[:primary_language_code] if args.key?(:primary_language_code)
          @security_patch_level = args[:security_patch_level] if args.key?(:security_patch_level)
          @system_update_info = args[:system_update_info] if args.key?(:system_update_info)
        end
      end
      
      # Additional context for SpecificNonComplianceReason.
      class SpecificNonComplianceContext
        include Google::Apis::Core::Hashable
      
        # Additional context for non-compliance related to Wi-Fi configuration.
        # Corresponds to the JSON property `oncWifiContext`
        # @return [Google::Apis::AndroidmanagementV1::OncWifiContext]
        attr_accessor :onc_wifi_context
      
        # Additional context for non-compliance related to password policies.
        # Corresponds to the JSON property `passwordPoliciesContext`
        # @return [Google::Apis::AndroidmanagementV1::PasswordPoliciesContext]
        attr_accessor :password_policies_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @onc_wifi_context = args[:onc_wifi_context] if args.key?(:onc_wifi_context)
          @password_policies_context = args[:password_policies_context] if args.key?(:password_policies_context)
        end
      end
      
      # Parameters associated with the START_LOST_MODE command to put the device into
      # lost mode. At least one of the parameters, not including the organization name,
      # must be provided in order for the device to be put into lost mode.
      class StartLostModeParams
        include Google::Apis::Core::Hashable
      
        # The email address displayed to the user when the device is in lost mode.
        # Corresponds to the JSON property `lostEmailAddress`
        # @return [String]
        attr_accessor :lost_email_address
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `lostMessage`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :lost_message
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `lostOrganization`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :lost_organization
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `lostPhoneNumber`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :lost_phone_number
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `lostStreetAddress`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :lost_street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lost_email_address = args[:lost_email_address] if args.key?(:lost_email_address)
          @lost_message = args[:lost_message] if args.key?(:lost_message)
          @lost_organization = args[:lost_organization] if args.key?(:lost_organization)
          @lost_phone_number = args[:lost_phone_number] if args.key?(:lost_phone_number)
          @lost_street_address = args[:lost_street_address] if args.key?(:lost_street_address)
        end
      end
      
      # Status of the START_LOST_MODE command to put the device into lost mode.
      class StartLostModeStatus
        include Google::Apis::Core::Hashable
      
        # The status. See StartLostModeStatus.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Settings controlling the behavior of status reports.
      class StatusReportingSettings
        include Google::Apis::Core::Hashable
      
        # Settings controlling the behavior of application reports.
        # Corresponds to the JSON property `applicationReportingSettings`
        # @return [Google::Apis::AndroidmanagementV1::ApplicationReportingSettings]
        attr_accessor :application_reporting_settings
      
        # Whether app reports are enabled.
        # Corresponds to the JSON property `applicationReportsEnabled`
        # @return [Boolean]
        attr_accessor :application_reports_enabled
        alias_method :application_reports_enabled?, :application_reports_enabled
      
        # Whether Common Criteria Mode reporting is enabled. This is supported only on
        # company-owned devices.
        # Corresponds to the JSON property `commonCriteriaModeEnabled`
        # @return [Boolean]
        attr_accessor :common_criteria_mode_enabled
        alias_method :common_criteria_mode_enabled?, :common_criteria_mode_enabled
      
        # Whether device settings reporting is enabled.
        # Corresponds to the JSON property `deviceSettingsEnabled`
        # @return [Boolean]
        attr_accessor :device_settings_enabled
        alias_method :device_settings_enabled?, :device_settings_enabled
      
        # Whether displays reporting is enabled. Report data is not available for
        # personally owned devices with work profiles.
        # Corresponds to the JSON property `displayInfoEnabled`
        # @return [Boolean]
        attr_accessor :display_info_enabled
        alias_method :display_info_enabled?, :display_info_enabled
      
        # Whether hardware status reporting is enabled. Report data is not available for
        # personally owned devices with work profiles.
        # Corresponds to the JSON property `hardwareStatusEnabled`
        # @return [Boolean]
        attr_accessor :hardware_status_enabled
        alias_method :hardware_status_enabled?, :hardware_status_enabled
      
        # Whether memory event reporting is enabled.
        # Corresponds to the JSON property `memoryInfoEnabled`
        # @return [Boolean]
        attr_accessor :memory_info_enabled
        alias_method :memory_info_enabled?, :memory_info_enabled
      
        # Whether network info reporting is enabled.
        # Corresponds to the JSON property `networkInfoEnabled`
        # @return [Boolean]
        attr_accessor :network_info_enabled
        alias_method :network_info_enabled?, :network_info_enabled
      
        # Whether power management event reporting is enabled. Report data is not
        # available for personally owned devices with work profiles.
        # Corresponds to the JSON property `powerManagementEventsEnabled`
        # @return [Boolean]
        attr_accessor :power_management_events_enabled
        alias_method :power_management_events_enabled?, :power_management_events_enabled
      
        # Whether software info reporting is enabled.
        # Corresponds to the JSON property `softwareInfoEnabled`
        # @return [Boolean]
        attr_accessor :software_info_enabled
        alias_method :software_info_enabled?, :software_info_enabled
      
        # Whether system properties reporting is enabled.
        # Corresponds to the JSON property `systemPropertiesEnabled`
        # @return [Boolean]
        attr_accessor :system_properties_enabled
        alias_method :system_properties_enabled?, :system_properties_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_reporting_settings = args[:application_reporting_settings] if args.key?(:application_reporting_settings)
          @application_reports_enabled = args[:application_reports_enabled] if args.key?(:application_reports_enabled)
          @common_criteria_mode_enabled = args[:common_criteria_mode_enabled] if args.key?(:common_criteria_mode_enabled)
          @device_settings_enabled = args[:device_settings_enabled] if args.key?(:device_settings_enabled)
          @display_info_enabled = args[:display_info_enabled] if args.key?(:display_info_enabled)
          @hardware_status_enabled = args[:hardware_status_enabled] if args.key?(:hardware_status_enabled)
          @memory_info_enabled = args[:memory_info_enabled] if args.key?(:memory_info_enabled)
          @network_info_enabled = args[:network_info_enabled] if args.key?(:network_info_enabled)
          @power_management_events_enabled = args[:power_management_events_enabled] if args.key?(:power_management_events_enabled)
          @software_info_enabled = args[:software_info_enabled] if args.key?(:software_info_enabled)
          @system_properties_enabled = args[:system_properties_enabled] if args.key?(:system_properties_enabled)
        end
      end
      
      # Parameters associated with the STOP_LOST_MODE command to take the device out
      # of lost mode.
      class StopLostModeParams
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Status of the STOP_LOST_MODE command to take the device out of lost mode.
      class StopLostModeStatus
        include Google::Apis::Core::Hashable
      
        # The status. See StopLostModeStatus.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A lost mode event indicating the user has attempted to stop lost mode.
      class StopLostModeUserAttemptEvent
        include Google::Apis::Core::Hashable
      
        # The status of the attempt to stop lost mode.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Configuration for managing system updatesNote: Google Play system updates (
      # https://source.android.com/docs/core/ota/modular-system) (also called Mainline
      # updates) are automatically downloaded but require a device reboot to be
      # installed. Refer to the mainline section in Manage system updates (https://
      # developer.android.com/work/dpc/system-updates#mainline) for further details.
      class SystemUpdate
        include Google::Apis::Core::Hashable
      
        # If the type is WINDOWED, the end of the maintenance window, measured as the
        # number of minutes after midnight in device's local time. This value must be
        # between 0 and 1439, inclusive. If this value is less than start_minutes, then
        # the maintenance window spans midnight. If the maintenance window specified is
        # smaller than 30 minutes, the actual window is extended to 30 minutes beyond
        # the start time.
        # Corresponds to the JSON property `endMinutes`
        # @return [Fixnum]
        attr_accessor :end_minutes
      
        # An annually repeating time period in which over-the-air (OTA) system updates
        # are postponed to freeze the OS version running on a device. To prevent
        # freezing the device indefinitely, each freeze period must be separated by at
        # least 60 days.
        # Corresponds to the JSON property `freezePeriods`
        # @return [Array<Google::Apis::AndroidmanagementV1::FreezePeriod>]
        attr_accessor :freeze_periods
      
        # If the type is WINDOWED, the start of the maintenance window, measured as the
        # number of minutes after midnight in the device's local time. This value must
        # be between 0 and 1439, inclusive.
        # Corresponds to the JSON property `startMinutes`
        # @return [Fixnum]
        attr_accessor :start_minutes
      
        # The type of system update to configure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_minutes = args[:end_minutes] if args.key?(:end_minutes)
          @freeze_periods = args[:freeze_periods] if args.key?(:freeze_periods)
          @start_minutes = args[:start_minutes] if args.key?(:start_minutes)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information about a potential pending system update.
      class SystemUpdateInfo
        include Google::Apis::Core::Hashable
      
        # The time when the update was first available. A zero value indicates that this
        # field is not set. This field is set only if an update is available (that is,
        # updateStatus is neither UPDATE_STATUS_UNKNOWN nor UP_TO_DATE).
        # Corresponds to the JSON property `updateReceivedTime`
        # @return [String]
        attr_accessor :update_received_time
      
        # The status of an update: whether an update exists and what type it is.
        # Corresponds to the JSON property `updateStatus`
        # @return [String]
        attr_accessor :update_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_received_time = args[:update_received_time] if args.key?(:update_received_time)
          @update_status = args[:update_status] if args.key?(:update_status)
        end
      end
      
      # Telephony information associated with a given SIM card on the device. Only
      # supported on fully managed devices starting from Android API level 23.
      class TelephonyInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Activation state of the SIM card on the device. This is
        # applicable for eSIMs only. This is supported on all devices for API level 35
        # and above. This is always ACTIVATION_STATE_UNSPECIFIED for physical SIMs and
        # for devices below API level 35.
        # Corresponds to the JSON property `activationState`
        # @return [String]
        attr_accessor :activation_state
      
        # The carrier name associated with this SIM card.
        # Corresponds to the JSON property `carrierName`
        # @return [String]
        attr_accessor :carrier_name
      
        # Output only. The configuration mode of the SIM card on the device. This is
        # applicable for eSIMs only. This is supported on all devices for API level 35
        # and above. This is always CONFIG_MODE_UNSPECIFIED for physical SIMs and for
        # devices below API level 35.
        # Corresponds to the JSON property `configMode`
        # @return [String]
        attr_accessor :config_mode
      
        # Output only. The ICCID associated with this SIM card.
        # Corresponds to the JSON property `iccId`
        # @return [String]
        attr_accessor :icc_id
      
        # The phone number associated with this SIM card.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_state = args[:activation_state] if args.key?(:activation_state)
          @carrier_name = args[:carrier_name] if args.key?(:carrier_name)
          @config_mode = args[:config_mode] if args.key?(:config_mode)
          @icc_id = args[:icc_id] if args.key?(:icc_id)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # A terms and conditions page to be accepted during provisioning.
      class TermsAndConditions
        include Google::Apis::Core::Hashable
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :content
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @header = args[:header] if args.key?(:header)
        end
      end
      
      # Controls types of device activity logs collected from the device and reported
      # via Pub/Sub notification (https://developers.google.com/android/management/
      # notifications).
      class UsageLog
        include Google::Apis::Core::Hashable
      
        # Specifies which log types are enabled. Note that users will receive on-device
        # messaging when usage logging is enabled.
        # Corresponds to the JSON property `enabledLogTypes`
        # @return [Array<String>]
        attr_accessor :enabled_log_types
      
        # Specifies which of the enabled log types can be uploaded over mobile data. By
        # default logs are queued for upload when the device connects to WiFi.
        # Corresponds to the JSON property `uploadOnCellularAllowed`
        # @return [Array<String>]
        attr_accessor :upload_on_cellular_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_log_types = args[:enabled_log_types] if args.key?(:enabled_log_types)
          @upload_on_cellular_allowed = args[:upload_on_cellular_allowed] if args.key?(:upload_on_cellular_allowed)
        end
      end
      
      # An event logged on the device.
      class UsageLogEvent
        include Google::Apis::Core::Hashable
      
        # A shell command was issued over ADB via “adb shell command”.
        # Corresponds to the JSON property `adbShellCommandEvent`
        # @return [Google::Apis::AndroidmanagementV1::AdbShellCommandEvent]
        attr_accessor :adb_shell_command_event
      
        # An ADB interactive shell was opened via “adb shell”. Intentionally empty.
        # Corresponds to the JSON property `adbShellInteractiveEvent`
        # @return [Google::Apis::AndroidmanagementV1::AdbShellInteractiveEvent]
        attr_accessor :adb_shell_interactive_event
      
        # An app process was started. This is available device-wide on fully managed
        # devices and within the work profile on organization-owned devices with a work
        # profile.
        # Corresponds to the JSON property `appProcessStartEvent`
        # @return [Google::Apis::AndroidmanagementV1::AppProcessStartEvent]
        attr_accessor :app_process_start_event
      
        # An admin has enabled or disabled backup service.
        # Corresponds to the JSON property `backupServiceToggledEvent`
        # @return [Google::Apis::AndroidmanagementV1::BackupServiceToggledEvent]
        attr_accessor :backup_service_toggled_event
      
        # A new root certificate was installed into the system's trusted credential
        # storage. This is available device-wide on fully managed devices and within the
        # work profile on organization-owned devices with a work profile.
        # Corresponds to the JSON property `certAuthorityInstalledEvent`
        # @return [Google::Apis::AndroidmanagementV1::CertAuthorityInstalledEvent]
        attr_accessor :cert_authority_installed_event
      
        # A root certificate was removed from the system's trusted credential storage.
        # This is available device-wide on fully managed devices and within the work
        # profile on organization-owned devices with a work profile.
        # Corresponds to the JSON property `certAuthorityRemovedEvent`
        # @return [Google::Apis::AndroidmanagementV1::CertAuthorityRemovedEvent]
        attr_accessor :cert_authority_removed_event
      
        # An X.509v3 certificate failed to validate, currently this validation is
        # performed on the Wi-FI access point and failure may be due to a mismatch upon
        # server certificate validation. However it may in the future include other
        # validation events of an X.509v3 certificate.
        # Corresponds to the JSON property `certValidationFailureEvent`
        # @return [Google::Apis::AndroidmanagementV1::CertValidationFailureEvent]
        attr_accessor :cert_validation_failure_event
      
        # A TCP connect event was initiated through the standard network stack.
        # Corresponds to the JSON property `connectEvent`
        # @return [Google::Apis::AndroidmanagementV1::ConnectEvent]
        attr_accessor :connect_event
      
        # Validates whether Android’s built-in cryptographic library (BoringSSL) is
        # valid. Should always succeed on device boot, if it fails, the device should be
        # considered untrusted.
        # Corresponds to the JSON property `cryptoSelfTestCompletedEvent`
        # @return [Google::Apis::AndroidmanagementV1::CryptoSelfTestCompletedEvent]
        attr_accessor :crypto_self_test_completed_event
      
        # A DNS lookup event was initiated through the standard network stack.
        # Corresponds to the JSON property `dnsEvent`
        # @return [Google::Apis::AndroidmanagementV1::DnsEvent]
        attr_accessor :dns_event
      
        # Represents that the device has completed enrollment. User should be in the
        # launcher at this point, device at this point will be compliant and all setup
        # steps have been completed. Intentionally empty.
        # Corresponds to the JSON property `enrollmentCompleteEvent`
        # @return [Google::Apis::AndroidmanagementV1::EnrollmentCompleteEvent]
        attr_accessor :enrollment_complete_event
      
        # Unique id of the event.
        # Corresponds to the JSON property `eventId`
        # @return [Fixnum]
        attr_accessor :event_id
      
        # Device timestamp when the event was logged.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The particular usage log event type that was reported on the device. Use this
        # to determine which event field to access.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # A file was downloaded from the device.
        # Corresponds to the JSON property `filePulledEvent`
        # @return [Google::Apis::AndroidmanagementV1::FilePulledEvent]
        attr_accessor :file_pulled_event
      
        # A file was uploaded onto the device.
        # Corresponds to the JSON property `filePushedEvent`
        # @return [Google::Apis::AndroidmanagementV1::FilePushedEvent]
        attr_accessor :file_pushed_event
      
        # A cryptographic key including user installed, admin installed and system
        # maintained private key is removed from the device either by the user or
        # management. This is available device-wide on fully managed devices and within
        # the work profile on organization-owned devices with a work profile.
        # Corresponds to the JSON property `keyDestructionEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyDestructionEvent]
        attr_accessor :key_destruction_event
      
        # A cryptographic key including user installed, admin installed and system
        # maintained private key is installed on the device either by the user or
        # management.This is available device-wide on fully managed devices and within
        # the work profile on organization-owned devices with a work profile.
        # Corresponds to the JSON property `keyGeneratedEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyGeneratedEvent]
        attr_accessor :key_generated_event
      
        # A cryptographic key including user installed, admin installed and system
        # maintained private key is imported on the device either by the user or
        # management. This is available device-wide on fully managed devices and within
        # the work profile on organization-owned devices with a work profile.
        # Corresponds to the JSON property `keyImportEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyImportEvent]
        attr_accessor :key_import_event
      
        # A cryptographic key including user installed, admin installed and system
        # maintained private key is determined to be corrupted due to storage corruption,
        # hardware failure or some OS issue. This is available device-wide on fully
        # managed devices and within the work profile on organization-owned devices with
        # a work profile.
        # Corresponds to the JSON property `keyIntegrityViolationEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyIntegrityViolationEvent]
        attr_accessor :key_integrity_violation_event
      
        # An attempt was made to unlock the device.
        # Corresponds to the JSON property `keyguardDismissAuthAttemptEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyguardDismissAuthAttemptEvent]
        attr_accessor :keyguard_dismiss_auth_attempt_event
      
        # The keyguard was dismissed. Intentionally empty.
        # Corresponds to the JSON property `keyguardDismissedEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyguardDismissedEvent]
        attr_accessor :keyguard_dismissed_event
      
        # The device was locked either by user or timeout. Intentionally empty.
        # Corresponds to the JSON property `keyguardSecuredEvent`
        # @return [Google::Apis::AndroidmanagementV1::KeyguardSecuredEvent]
        attr_accessor :keyguard_secured_event
      
        # The usageLog buffer on the device has reached 90% of its capacity, therefore
        # older events may be dropped. Intentionally empty.
        # Corresponds to the JSON property `logBufferSizeCriticalEvent`
        # @return [Google::Apis::AndroidmanagementV1::LogBufferSizeCriticalEvent]
        attr_accessor :log_buffer_size_critical_event
      
        # usageLog policy has been enabled. Intentionally empty.
        # Corresponds to the JSON property `loggingStartedEvent`
        # @return [Google::Apis::AndroidmanagementV1::LoggingStartedEvent]
        attr_accessor :logging_started_event
      
        # usageLog policy has been disabled. Intentionally empty.
        # Corresponds to the JSON property `loggingStoppedEvent`
        # @return [Google::Apis::AndroidmanagementV1::LoggingStoppedEvent]
        attr_accessor :logging_stopped_event
      
        # A lost mode event containing the device location and battery level as a
        # percentage.
        # Corresponds to the JSON property `lostModeLocationEvent`
        # @return [Google::Apis::AndroidmanagementV1::LostModeLocationEvent]
        attr_accessor :lost_mode_location_event
      
        # An event indicating an outgoing phone call has been made when a device is in
        # lost mode. Intentionally empty.
        # Corresponds to the JSON property `lostModeOutgoingPhoneCallEvent`
        # @return [Google::Apis::AndroidmanagementV1::LostModeOutgoingPhoneCallEvent]
        attr_accessor :lost_mode_outgoing_phone_call_event
      
        # Removable media was mounted.
        # Corresponds to the JSON property `mediaMountEvent`
        # @return [Google::Apis::AndroidmanagementV1::MediaMountEvent]
        attr_accessor :media_mount_event
      
        # Removable media was unmounted.
        # Corresponds to the JSON property `mediaUnmountEvent`
        # @return [Google::Apis::AndroidmanagementV1::MediaUnmountEvent]
        attr_accessor :media_unmount_event
      
        # Device was shutdown. Intentionally empty.
        # Corresponds to the JSON property `osShutdownEvent`
        # @return [Google::Apis::AndroidmanagementV1::OsShutdownEvent]
        attr_accessor :os_shutdown_event
      
        # Device was started.
        # Corresponds to the JSON property `osStartupEvent`
        # @return [Google::Apis::AndroidmanagementV1::OsStartupEvent]
        attr_accessor :os_startup_event
      
        # The device or profile has been remotely locked via the LOCK command.
        # Corresponds to the JSON property `remoteLockEvent`
        # @return [Google::Apis::AndroidmanagementV1::RemoteLockEvent]
        attr_accessor :remote_lock_event
      
        # A lost mode event indicating the user has attempted to stop lost mode.
        # Corresponds to the JSON property `stopLostModeUserAttemptEvent`
        # @return [Google::Apis::AndroidmanagementV1::StopLostModeUserAttemptEvent]
        attr_accessor :stop_lost_mode_user_attempt_event
      
        # The work profile or company-owned device failed to wipe when requested. This
        # could be user initiated or admin initiated e.g. delete was received.
        # Intentionally empty.
        # Corresponds to the JSON property `wipeFailureEvent`
        # @return [Google::Apis::AndroidmanagementV1::WipeFailureEvent]
        attr_accessor :wipe_failure_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adb_shell_command_event = args[:adb_shell_command_event] if args.key?(:adb_shell_command_event)
          @adb_shell_interactive_event = args[:adb_shell_interactive_event] if args.key?(:adb_shell_interactive_event)
          @app_process_start_event = args[:app_process_start_event] if args.key?(:app_process_start_event)
          @backup_service_toggled_event = args[:backup_service_toggled_event] if args.key?(:backup_service_toggled_event)
          @cert_authority_installed_event = args[:cert_authority_installed_event] if args.key?(:cert_authority_installed_event)
          @cert_authority_removed_event = args[:cert_authority_removed_event] if args.key?(:cert_authority_removed_event)
          @cert_validation_failure_event = args[:cert_validation_failure_event] if args.key?(:cert_validation_failure_event)
          @connect_event = args[:connect_event] if args.key?(:connect_event)
          @crypto_self_test_completed_event = args[:crypto_self_test_completed_event] if args.key?(:crypto_self_test_completed_event)
          @dns_event = args[:dns_event] if args.key?(:dns_event)
          @enrollment_complete_event = args[:enrollment_complete_event] if args.key?(:enrollment_complete_event)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @file_pulled_event = args[:file_pulled_event] if args.key?(:file_pulled_event)
          @file_pushed_event = args[:file_pushed_event] if args.key?(:file_pushed_event)
          @key_destruction_event = args[:key_destruction_event] if args.key?(:key_destruction_event)
          @key_generated_event = args[:key_generated_event] if args.key?(:key_generated_event)
          @key_import_event = args[:key_import_event] if args.key?(:key_import_event)
          @key_integrity_violation_event = args[:key_integrity_violation_event] if args.key?(:key_integrity_violation_event)
          @keyguard_dismiss_auth_attempt_event = args[:keyguard_dismiss_auth_attempt_event] if args.key?(:keyguard_dismiss_auth_attempt_event)
          @keyguard_dismissed_event = args[:keyguard_dismissed_event] if args.key?(:keyguard_dismissed_event)
          @keyguard_secured_event = args[:keyguard_secured_event] if args.key?(:keyguard_secured_event)
          @log_buffer_size_critical_event = args[:log_buffer_size_critical_event] if args.key?(:log_buffer_size_critical_event)
          @logging_started_event = args[:logging_started_event] if args.key?(:logging_started_event)
          @logging_stopped_event = args[:logging_stopped_event] if args.key?(:logging_stopped_event)
          @lost_mode_location_event = args[:lost_mode_location_event] if args.key?(:lost_mode_location_event)
          @lost_mode_outgoing_phone_call_event = args[:lost_mode_outgoing_phone_call_event] if args.key?(:lost_mode_outgoing_phone_call_event)
          @media_mount_event = args[:media_mount_event] if args.key?(:media_mount_event)
          @media_unmount_event = args[:media_unmount_event] if args.key?(:media_unmount_event)
          @os_shutdown_event = args[:os_shutdown_event] if args.key?(:os_shutdown_event)
          @os_startup_event = args[:os_startup_event] if args.key?(:os_startup_event)
          @remote_lock_event = args[:remote_lock_event] if args.key?(:remote_lock_event)
          @stop_lost_mode_user_attempt_event = args[:stop_lost_mode_user_attempt_event] if args.key?(:stop_lost_mode_user_attempt_event)
          @wipe_failure_event = args[:wipe_failure_event] if args.key?(:wipe_failure_event)
        end
      end
      
      # A user belonging to an enterprise.
      class User
        include Google::Apis::Core::Hashable
      
        # A unique identifier you create for this user, such as user342 or asset#44418.
        # This field must be set when the user is created and can't be updated. This
        # field must not contain personally identifiable information (PII). This
        # identifier must be 1024 characters or less; otherwise, the update policy
        # request will fail.
        # Corresponds to the JSON property `accountIdentifier`
        # @return [String]
        attr_accessor :account_identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_identifier = args[:account_identifier] if args.key?(:account_identifier)
        end
      end
      
      # Provides a user-facing message with locale info. The maximum message length is
      # 4096 characters.
      class UserFacingMessage
        include Google::Apis::Core::Hashable
      
        # The default message displayed if no localized message is specified or the user'
        # s locale doesn't match with any of the localized messages. A default message
        # must be provided if any localized messages are provided.
        # Corresponds to the JSON property `defaultMessage`
        # @return [String]
        attr_accessor :default_message
      
        # A map containing pairs, where locale is a well-formed BCP 47 language (https://
        # www.w3.org/International/articles/language-tags/) code, such as en-US, es-ES,
        # or fr.
        # Corresponds to the JSON property `localizedMessages`
        # @return [Hash<String,String>]
        attr_accessor :localized_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_message = args[:default_message] if args.key?(:default_message)
          @localized_messages = args[:localized_messages] if args.key?(:localized_messages)
        end
      end
      
      # A web app.
      class WebApp
        include Google::Apis::Core::Hashable
      
        # The display mode of the web app.
        # Corresponds to the JSON property `displayMode`
        # @return [String]
        attr_accessor :display_mode
      
        # A list of icons for the web app. Must have at least one element.
        # Corresponds to the JSON property `icons`
        # @return [Array<Google::Apis::AndroidmanagementV1::WebAppIcon>]
        attr_accessor :icons
      
        # The name of the web app, which is generated by the server during creation in
        # the form enterprises/`enterpriseId`/webApps/`packageName`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The start URL, i.e. the URL that should load when the user opens the
        # application.
        # Corresponds to the JSON property `startUrl`
        # @return [String]
        attr_accessor :start_url
      
        # The title of the web app as displayed to the user (e.g., amongst a list of
        # other applications, or as a label for an icon).
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The current version of the app.Note that the version can automatically
        # increase during the lifetime of the web app, while Google does internal
        # housekeeping to keep the web app up-to-date.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_mode = args[:display_mode] if args.key?(:display_mode)
          @icons = args[:icons] if args.key?(:icons)
          @name = args[:name] if args.key?(:name)
          @start_url = args[:start_url] if args.key?(:start_url)
          @title = args[:title] if args.key?(:title)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
      
      # An icon for a web app. Supported formats are: png, jpg and webp.
      class WebAppIcon
        include Google::Apis::Core::Hashable
      
        # The actual bytes of the image in a base64url encoded string (c.f. RFC4648,
        # section 5 "Base 64 Encoding with URL and Filename Safe Alphabet"). - The image
        # type can be png or jpg. - The image should ideally be square. - The image
        # should ideally have a size of 512x512.
        # Corresponds to the JSON property `imageData`
        # @return [String]
        attr_accessor :image_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_data = args[:image_data] if args.key?(:image_data)
        end
      end
      
      # A web token used to access the managed Google Play iframe.
      class WebToken
        include Google::Apis::Core::Hashable
      
        # The features to enable. Use this if you want to control exactly which feature(
        # s) will be activated; leave empty to allow all features.Restrictions / things
        # to note: - If no features are listed here, all features are enabled — this is
        # the default behavior where you give access to all features to your admins. -
        # This must not contain any FEATURE_UNSPECIFIED values. - Repeated values are
        # ignored
        # Corresponds to the JSON property `enabledFeatures`
        # @return [Array<String>]
        attr_accessor :enabled_features
      
        # The name of the web token, which is generated by the server during creation in
        # the form enterprises/`enterpriseId`/webTokens/`webTokenId`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URL of the parent frame hosting the iframe with the embedded UI. To
        # prevent XSS, the iframe may not be hosted at other URLs. The URL must use the
        # https scheme.
        # Corresponds to the JSON property `parentFrameUrl`
        # @return [String]
        attr_accessor :parent_frame_url
      
        # Permissions available to an admin in the embedded UI. An admin must have all
        # of these permissions in order to view the UI. This field is deprecated.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # The token value which is used in the hosting page to generate the iframe with
        # the embedded UI. This is a read-only field generated by the server.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_features = args[:enabled_features] if args.key?(:enabled_features)
          @name = args[:name] if args.key?(:name)
          @parent_frame_url = args[:parent_frame_url] if args.key?(:parent_frame_url)
          @permissions = args[:permissions] if args.key?(:permissions)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Wi-Fi roaming policy.
      class WifiRoamingPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Wi-Fi roaming settings. SSIDs provided in this list must be unique,
        # the policy will be rejected otherwise.
        # Corresponds to the JSON property `wifiRoamingSettings`
        # @return [Array<Google::Apis::AndroidmanagementV1::WifiRoamingSetting>]
        attr_accessor :wifi_roaming_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wifi_roaming_settings = args[:wifi_roaming_settings] if args.key?(:wifi_roaming_settings)
        end
      end
      
      # Wi-Fi roaming setting.
      class WifiRoamingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Wi-Fi roaming mode for the specified SSID.
        # Corresponds to the JSON property `wifiRoamingMode`
        # @return [String]
        attr_accessor :wifi_roaming_mode
      
        # Required. SSID of the Wi-Fi network.
        # Corresponds to the JSON property `wifiSsid`
        # @return [String]
        attr_accessor :wifi_ssid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wifi_roaming_mode = args[:wifi_roaming_mode] if args.key?(:wifi_roaming_mode)
          @wifi_ssid = args[:wifi_ssid] if args.key?(:wifi_ssid)
        end
      end
      
      # Represents a Wi-Fi SSID.
      class WifiSsid
        include Google::Apis::Core::Hashable
      
        # Required. Wi-Fi SSID represented as a string.
        # Corresponds to the JSON property `wifiSsid`
        # @return [String]
        attr_accessor :wifi_ssid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wifi_ssid = args[:wifi_ssid] if args.key?(:wifi_ssid)
        end
      end
      
      # Restrictions on which Wi-Fi SSIDs the device can connect to. Note that this
      # does not affect which networks can be configured on the device. Supported on
      # company-owned devices running Android 13 and above.
      class WifiSsidPolicy
        include Google::Apis::Core::Hashable
      
        # Type of the Wi-Fi SSID policy to be applied.
        # Corresponds to the JSON property `wifiSsidPolicyType`
        # @return [String]
        attr_accessor :wifi_ssid_policy_type
      
        # Optional. List of Wi-Fi SSIDs that should be applied in the policy. This field
        # must be non-empty when WifiSsidPolicyType is set to WIFI_SSID_ALLOWLIST. If
        # this is set to a non-empty list, then a NonComplianceDetail detail with
        # API_LEVEL is reported if the Android version is less than 13 and a
        # NonComplianceDetail with MANAGEMENT_MODE is reported for non-company-owned
        # devices.
        # Corresponds to the JSON property `wifiSsids`
        # @return [Array<Google::Apis::AndroidmanagementV1::WifiSsid>]
        attr_accessor :wifi_ssids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wifi_ssid_policy_type = args[:wifi_ssid_policy_type] if args.key?(:wifi_ssid_policy_type)
          @wifi_ssids = args[:wifi_ssids] if args.key?(:wifi_ssids)
        end
      end
      
      # An action to reset a company owned device or delete a work profile. Note:
      # blockAction must also be specified.
      class WipeAction
        include Google::Apis::Core::Hashable
      
        # Whether the factory-reset protection data is preserved on the device. This
        # setting doesn’t apply to work profiles.
        # Corresponds to the JSON property `preserveFrp`
        # @return [Boolean]
        attr_accessor :preserve_frp
        alias_method :preserve_frp?, :preserve_frp
      
        # Number of days the policy is non-compliant before the device or work profile
        # is wiped. wipeAfterDays must be greater than blockAfterDays.
        # Corresponds to the JSON property `wipeAfterDays`
        # @return [Fixnum]
        attr_accessor :wipe_after_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @preserve_frp = args[:preserve_frp] if args.key?(:preserve_frp)
          @wipe_after_days = args[:wipe_after_days] if args.key?(:wipe_after_days)
        end
      end
      
      # The work profile or company-owned device failed to wipe when requested. This
      # could be user initiated or admin initiated e.g. delete was received.
      # Intentionally empty.
      class WipeFailureEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Parameters associated with the WIPE command to wipe the device.
      class WipeParams
        include Google::Apis::Core::Hashable
      
        # Optional. Flags to determine what data to wipe.
        # Corresponds to the JSON property `wipeDataFlags`
        # @return [Array<String>]
        attr_accessor :wipe_data_flags
      
        # Provides a user-facing message with locale info. The maximum message length is
        # 4096 characters.
        # Corresponds to the JSON property `wipeReason`
        # @return [Google::Apis::AndroidmanagementV1::UserFacingMessage]
        attr_accessor :wipe_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wipe_data_flags = args[:wipe_data_flags] if args.key?(:wipe_data_flags)
          @wipe_reason = args[:wipe_reason] if args.key?(:wipe_reason)
        end
      end
      
      # Controls the work account setup configuration, such as details of whether a
      # Google authenticated account is required.
      class WorkAccountSetupConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The authentication type of the user on the device.
        # Corresponds to the JSON property `authenticationType`
        # @return [String]
        attr_accessor :authentication_type
      
        # Optional. The specific google work account email address to be added. This
        # field is only relevant if authenticationType is GOOGLE_AUTHENTICATED. This
        # must be an enterprise account and not a consumer account. Once set and a
        # Google authenticated account is added to the device, changing this field will
        # have no effect, and thus recommended to be set only once.
        # Corresponds to the JSON property `requiredAccountEmail`
        # @return [String]
        attr_accessor :required_account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_type = args[:authentication_type] if args.key?(:authentication_type)
          @required_account_email = args[:required_account_email] if args.key?(:required_account_email)
        end
      end
    end
  end
end
