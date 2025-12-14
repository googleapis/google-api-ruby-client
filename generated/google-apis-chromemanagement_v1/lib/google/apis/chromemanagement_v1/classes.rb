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
      
      # Android app information.
      class GoogleChromeManagementV1AndroidAppInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Permissions requested by an Android app.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AndroidAppPermission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Permission requested by an Android app.
      class GoogleChromeManagementV1AndroidAppPermission
        include Google::Apis::Core::Hashable
      
        # Output only. The type of the permission.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Resource representing app details.
      class GoogleChromeManagementV1AppDetails
        include Google::Apis::Core::Hashable
      
        # Android app information.
        # Corresponds to the JSON property `androidAppInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AndroidAppInfo]
        attr_accessor :android_app_info
      
        # Output only. Unique store identifier for the item. Examples: "
        # gmbmikajjgmnabiglmofipeabaddhgne" for the Save to Google Drive Chrome
        # extension, "com.google.android.apps.docs" for the Google Drive Android app.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Chrome Web Store app information.
        # Corresponds to the JSON property `chromeAppInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppInfo]
        attr_accessor :chrome_app_info
      
        # Output only. App's description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The uri for the detail page of the item.
        # Corresponds to the JSON property `detailUri`
        # @return [String]
        attr_accessor :detail_uri
      
        # Output only. App's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. First published time.
        # Corresponds to the JSON property `firstPublishTime`
        # @return [String]
        attr_accessor :first_publish_time
      
        # Output only. Home page or Website uri.
        # Corresponds to the JSON property `homepageUri`
        # @return [String]
        attr_accessor :homepage_uri
      
        # Output only. A link to an image that can be used as an icon for the product.
        # Corresponds to the JSON property `iconUri`
        # @return [String]
        attr_accessor :icon_uri
      
        # Output only. Indicates if the app has to be paid for OR has paid content.
        # Corresponds to the JSON property `isPaidApp`
        # @return [Boolean]
        attr_accessor :is_paid_app
        alias_method :is_paid_app?, :is_paid_app
      
        # Output only. Latest published time.
        # Corresponds to the JSON property `latestPublishTime`
        # @return [String]
        attr_accessor :latest_publish_time
      
        # Output only. Format: name=customers/`customer_id`/apps/`chrome|android|web`/`
        # app_id`@`version`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The URI pointing to the privacy policy of the app, if it was
        # provided by the developer. Version-specific field that will only be set when
        # the requested app version is found.
        # Corresponds to the JSON property `privacyPolicyUri`
        # @return [String]
        attr_accessor :privacy_policy_uri
      
        # Output only. The publisher of the item.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # Output only. Number of reviews received. Chrome Web Store review information
        # will always be for the latest version of an app.
        # Corresponds to the JSON property `reviewNumber`
        # @return [Fixnum]
        attr_accessor :review_number
      
        # Output only. The rating of the app (on 5 stars). Chrome Web Store review
        # information will always be for the latest version of an app.
        # Corresponds to the JSON property `reviewRating`
        # @return [Float]
        attr_accessor :review_rating
      
        # Output only. App version. A new revision is committed whenever a new version
        # of the app is published.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `serviceError`
        # @return [Google::Apis::ChromemanagementV1::GoogleRpcStatus]
        attr_accessor :service_error
      
        # Output only. App type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_info = args[:android_app_info] if args.key?(:android_app_info)
          @app_id = args[:app_id] if args.key?(:app_id)
          @chrome_app_info = args[:chrome_app_info] if args.key?(:chrome_app_info)
          @description = args[:description] if args.key?(:description)
          @detail_uri = args[:detail_uri] if args.key?(:detail_uri)
          @display_name = args[:display_name] if args.key?(:display_name)
          @first_publish_time = args[:first_publish_time] if args.key?(:first_publish_time)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @icon_uri = args[:icon_uri] if args.key?(:icon_uri)
          @is_paid_app = args[:is_paid_app] if args.key?(:is_paid_app)
          @latest_publish_time = args[:latest_publish_time] if args.key?(:latest_publish_time)
          @name = args[:name] if args.key?(:name)
          @privacy_policy_uri = args[:privacy_policy_uri] if args.key?(:privacy_policy_uri)
          @publisher = args[:publisher] if args.key?(:publisher)
          @review_number = args[:review_number] if args.key?(:review_number)
          @review_rating = args[:review_rating] if args.key?(:review_rating)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @service_error = args[:service_error] if args.key?(:service_error)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # App report.
      class GoogleChromeManagementV1AppReport
        include Google::Apis::Core::Hashable
      
        # Timestamp when the report was collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # App usage data.
        # Corresponds to the JSON property `usageData`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppUsageData>]
        attr_accessor :usage_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_time = args[:report_time] if args.key?(:report_time)
          @usage_data = args[:usage_data] if args.key?(:usage_data)
        end
      end
      
      # App usage data.
      class GoogleChromeManagementV1AppUsageData
        include Google::Apis::Core::Hashable
      
        # App id.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Application instance id. This will be unique per window/instance.
        # Corresponds to the JSON property `appInstanceId`
        # @return [String]
        attr_accessor :app_instance_id
      
        # Type of app.
        # Corresponds to the JSON property `appType`
        # @return [String]
        attr_accessor :app_type
      
        # App foreground running time.
        # Corresponds to the JSON property `runningDuration`
        # @return [String]
        attr_accessor :running_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_instance_id = args[:app_instance_id] if args.key?(:app_instance_id)
          @app_type = args[:app_type] if args.key?(:app_type)
          @running_duration = args[:running_duration] if args.key?(:running_duration)
        end
      end
      
      # Status data for storage. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDeviceAudioStatus](https://chromeenterprise.
      # google/policies/#ReportDeviceAudioStatus) * Data Collection Frequency: 10
      # minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_AUDIO_REPORT
      class GoogleChromeManagementV1AudioStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. Active input device's name.
        # Corresponds to the JSON property `inputDevice`
        # @return [String]
        attr_accessor :input_device
      
        # Output only. Active input device's gain in [0, 100].
        # Corresponds to the JSON property `inputGain`
        # @return [Fixnum]
        attr_accessor :input_gain
      
        # Output only. Is active input device mute or not.
        # Corresponds to the JSON property `inputMute`
        # @return [Boolean]
        attr_accessor :input_mute
        alias_method :input_mute?, :input_mute
      
        # Output only. Active output device's name.
        # Corresponds to the JSON property `outputDevice`
        # @return [String]
        attr_accessor :output_device
      
        # Output only. Is active output device mute or not.
        # Corresponds to the JSON property `outputMute`
        # @return [Boolean]
        attr_accessor :output_mute
        alias_method :output_mute?, :output_mute
      
        # Output only. Active output device's volume in [0, 100].
        # Corresponds to the JSON property `outputVolume`
        # @return [Fixnum]
        attr_accessor :output_volume
      
        # Output only. Timestamp of when the sample was collected on device.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_device = args[:input_device] if args.key?(:input_device)
          @input_gain = args[:input_gain] if args.key?(:input_gain)
          @input_mute = args[:input_mute] if args.key?(:input_mute)
          @output_device = args[:output_device] if args.key?(:output_device)
          @output_mute = args[:output_mute] if args.key?(:output_mute)
          @output_volume = args[:output_volume] if args.key?(:output_volume)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # Information about the battery. * This field provides device information, which
      # is static and will not change over time. * Data for this field is controlled
      # via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/
      # #ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload *
      # Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If
      # the device is offline, the collected data is stored locally, and will be
      # reported when the device is next online: No * Reported for affiliated users
      # only: N/A * Granular permission needed: TELEMETRY_API_BATTERY_INFO
      class GoogleChromeManagementV1BatteryInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Design capacity (mAmpere-hours).
        # Corresponds to the JSON property `designCapacity`
        # @return [Fixnum]
        attr_accessor :design_capacity
      
        # Output only. Designed minimum output voltage (mV)
        # Corresponds to the JSON property `designMinVoltage`
        # @return [Fixnum]
        attr_accessor :design_min_voltage
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `manufactureDate`
        # @return [Google::Apis::ChromemanagementV1::GoogleTypeDate]
        attr_accessor :manufacture_date
      
        # Output only. Battery manufacturer.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Output only. Battery serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Output only. Technology of the battery. Example: Li-ion
        # Corresponds to the JSON property `technology`
        # @return [String]
        attr_accessor :technology
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @design_capacity = args[:design_capacity] if args.key?(:design_capacity)
          @design_min_voltage = args[:design_min_voltage] if args.key?(:design_min_voltage)
          @manufacture_date = args[:manufacture_date] if args.key?(:manufacture_date)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @technology = args[:technology] if args.key?(:technology)
        end
      end
      
      # Sampling data for battery. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.
      # google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at
      # Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A
      class GoogleChromeManagementV1BatterySampleReport
        include Google::Apis::Core::Hashable
      
        # Output only. Battery charge percentage.
        # Corresponds to the JSON property `chargeRate`
        # @return [Fixnum]
        attr_accessor :charge_rate
      
        # Output only. Battery current (mA).
        # Corresponds to the JSON property `current`
        # @return [Fixnum]
        attr_accessor :current
      
        # Output only. The battery discharge rate measured in mW. Positive if the
        # battery is being discharged, negative if it's being charged.
        # Corresponds to the JSON property `dischargeRate`
        # @return [Fixnum]
        attr_accessor :discharge_rate
      
        # Output only. Battery remaining capacity (mAmpere-hours).
        # Corresponds to the JSON property `remainingCapacity`
        # @return [Fixnum]
        attr_accessor :remaining_capacity
      
        # Output only. Timestamp of when the sample was collected on device
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Output only. Battery status read from sysfs. Example: Discharging
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. Temperature in Celsius degrees.
        # Corresponds to the JSON property `temperature`
        # @return [Fixnum]
        attr_accessor :temperature
      
        # Output only. Battery voltage (millivolt).
        # Corresponds to the JSON property `voltage`
        # @return [Fixnum]
        attr_accessor :voltage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charge_rate = args[:charge_rate] if args.key?(:charge_rate)
          @current = args[:current] if args.key?(:current)
          @discharge_rate = args[:discharge_rate] if args.key?(:discharge_rate)
          @remaining_capacity = args[:remaining_capacity] if args.key?(:remaining_capacity)
          @report_time = args[:report_time] if args.key?(:report_time)
          @status = args[:status] if args.key?(:status)
          @temperature = args[:temperature] if args.key?(:temperature)
          @voltage = args[:voltage] if args.key?(:voltage)
        end
      end
      
      # Status data for battery. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.
      # google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at
      # Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_BATTERY_REPORT
      class GoogleChromeManagementV1BatteryStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. Battery health.
        # Corresponds to the JSON property `batteryHealth`
        # @return [String]
        attr_accessor :battery_health
      
        # Output only. Cycle count.
        # Corresponds to the JSON property `cycleCount`
        # @return [Fixnum]
        attr_accessor :cycle_count
      
        # Output only. Full charge capacity (mAmpere-hours).
        # Corresponds to the JSON property `fullChargeCapacity`
        # @return [Fixnum]
        attr_accessor :full_charge_capacity
      
        # Output only. Timestamp of when the sample was collected on device
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Output only. Sampling data for the battery sorted in a decreasing order of
        # report_time.
        # Corresponds to the JSON property `sample`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatterySampleReport>]
        attr_accessor :sample
      
        # Output only. Battery serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @battery_health = args[:battery_health] if args.key?(:battery_health)
          @cycle_count = args[:cycle_count] if args.key?(:cycle_count)
          @full_charge_capacity = args[:full_charge_capacity] if args.key?(:full_charge_capacity)
          @report_time = args[:report_time] if args.key?(:report_time)
          @sample = args[:sample] if args.key?(:sample)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Boot performance report of a device. * This field is telemetry information and
      # this will change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDeviceBootMode](https://chromeenterprise.google/
      # policies/#ReportDeviceBootMode) * Data Collection Frequency: On every boot up
      # event * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: Yes * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_OS_REPORT
      class GoogleChromeManagementV1BootPerformanceReport
        include Google::Apis::Core::Hashable
      
        # Total time to boot up.
        # Corresponds to the JSON property `bootUpDuration`
        # @return [String]
        attr_accessor :boot_up_duration
      
        # The timestamp when power came on.
        # Corresponds to the JSON property `bootUpTime`
        # @return [String]
        attr_accessor :boot_up_time
      
        # Timestamp when the report was collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Total time since shutdown start to power off.
        # Corresponds to the JSON property `shutdownDuration`
        # @return [String]
        attr_accessor :shutdown_duration
      
        # The shutdown reason.
        # Corresponds to the JSON property `shutdownReason`
        # @return [String]
        attr_accessor :shutdown_reason
      
        # The timestamp when shutdown.
        # Corresponds to the JSON property `shutdownTime`
        # @return [String]
        attr_accessor :shutdown_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_up_duration = args[:boot_up_duration] if args.key?(:boot_up_duration)
          @boot_up_time = args[:boot_up_time] if args.key?(:boot_up_time)
          @report_time = args[:report_time] if args.key?(:report_time)
          @shutdown_duration = args[:shutdown_duration] if args.key?(:shutdown_duration)
          @shutdown_reason = args[:shutdown_reason] if args.key?(:shutdown_reason)
          @shutdown_time = args[:shutdown_time] if args.key?(:shutdown_time)
        end
      end
      
      # Describes a browser version and its install count.
      class GoogleChromeManagementV1BrowserVersion
        include Google::Apis::Core::Hashable
      
        # Output only. The release channel of the installed browser.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Output only. Count grouped by device_system and major version
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. Version of the system-specified operating system.
        # Corresponds to the JSON property `deviceOsVersion`
        # @return [String]
        attr_accessor :device_os_version
      
        # Output only. The device operating system.
        # Corresponds to the JSON property `system`
        # @return [String]
        attr_accessor :system
      
        # Output only. The full version of the installed browser.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @count = args[:count] if args.key?(:count)
          @device_os_version = args[:device_os_version] if args.key?(:device_os_version)
          @system = args[:system] if args.key?(:system)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Chrome Web Store app information.
      class GoogleChromeManagementV1ChromeAppInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the app or extension is built and maintained by Google.
        # Version-specific field that will only be set when the requested app version is
        # found.
        # Corresponds to the JSON property `googleOwned`
        # @return [Boolean]
        attr_accessor :google_owned
        alias_method :google_owned?, :google_owned
      
        # Output only. Whether the app or extension is in a published state in the
        # Chrome Web Store.
        # Corresponds to the JSON property `isCwsHosted`
        # @return [Boolean]
        attr_accessor :is_cws_hosted
        alias_method :is_cws_hosted?, :is_cws_hosted
      
        # Output only. Whether an app supports policy for extensions.
        # Corresponds to the JSON property `isExtensionPolicySupported`
        # @return [Boolean]
        attr_accessor :is_extension_policy_supported
        alias_method :is_extension_policy_supported?, :is_extension_policy_supported
      
        # Output only. Whether the app is only for Kiosk mode on ChromeOS devices
        # Corresponds to the JSON property `isKioskOnly`
        # @return [Boolean]
        attr_accessor :is_kiosk_only
        alias_method :is_kiosk_only?, :is_kiosk_only
      
        # Output only. Whether the app or extension is a theme.
        # Corresponds to the JSON property `isTheme`
        # @return [Boolean]
        attr_accessor :is_theme
        alias_method :is_theme?, :is_theme
      
        # Output only. Whether this app is enabled for Kiosk mode on ChromeOS devices
        # Corresponds to the JSON property `kioskEnabled`
        # @return [Boolean]
        attr_accessor :kiosk_enabled
        alias_method :kiosk_enabled?, :kiosk_enabled
      
        # Output only. The version of this extension's manifest.
        # Corresponds to the JSON property `manifestVersion`
        # @return [Fixnum]
        attr_accessor :manifest_version
      
        # Output only. The minimum number of users using this app.
        # Corresponds to the JSON property `minUserCount`
        # @return [Fixnum]
        attr_accessor :min_user_count
      
        # Output only. Every custom permission requested by the app. Version-specific
        # field that will only be set when the requested app version is found.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission>]
        attr_accessor :permissions
      
        # Output only. Every permission giving access to domains or broad host patterns.
        # ( e.g. www.google.com). This includes the matches from content scripts as well
        # as hosts in the permissions node of the manifest. Version-specific field that
        # will only be set when the requested app version is found.
        # Corresponds to the JSON property `siteAccess`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess>]
        attr_accessor :site_access
      
        # Output only. The app developer has enabled support for their app. Version-
        # specific field that will only be set when the requested app version is found.
        # Corresponds to the JSON property `supportEnabled`
        # @return [Boolean]
        attr_accessor :support_enabled
        alias_method :support_enabled?, :support_enabled
      
        # Output only. Types of an item in the Chrome Web Store
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_owned = args[:google_owned] if args.key?(:google_owned)
          @is_cws_hosted = args[:is_cws_hosted] if args.key?(:is_cws_hosted)
          @is_extension_policy_supported = args[:is_extension_policy_supported] if args.key?(:is_extension_policy_supported)
          @is_kiosk_only = args[:is_kiosk_only] if args.key?(:is_kiosk_only)
          @is_theme = args[:is_theme] if args.key?(:is_theme)
          @kiosk_enabled = args[:kiosk_enabled] if args.key?(:kiosk_enabled)
          @manifest_version = args[:manifest_version] if args.key?(:manifest_version)
          @min_user_count = args[:min_user_count] if args.key?(:min_user_count)
          @permissions = args[:permissions] if args.key?(:permissions)
          @site_access = args[:site_access] if args.key?(:site_access)
          @support_enabled = args[:support_enabled] if args.key?(:support_enabled)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Permission requested by a Chrome app or extension.
      class GoogleChromeManagementV1ChromeAppPermission
        include Google::Apis::Core::Hashable
      
        # Output only. If available, whether this permissions grants the app/extension
        # access to user data.
        # Corresponds to the JSON property `accessUserData`
        # @return [Boolean]
        attr_accessor :access_user_data
        alias_method :access_user_data?, :access_user_data
      
        # Output only. If available, a URI to a page that has documentation for the
        # current permission.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # Output only. The type of the permission.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_user_data = args[:access_user_data] if args.key?(:access_user_data)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details of an app installation request.
      class GoogleChromeManagementV1ChromeAppRequest
        include Google::Apis::Core::Hashable
      
        # Output only. Format: app_details=customers/`customer_id`/apps/chrome/`app_id`
        # Corresponds to the JSON property `appDetails`
        # @return [String]
        attr_accessor :app_details
      
        # Output only. Unique store identifier for the app. Example: "
        # gmbmikajjgmnabiglmofipeabaddhgne" for the Save to Google Drive Chrome
        # extension.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Output only. The uri for the detail page of the item.
        # Corresponds to the JSON property `detailUri`
        # @return [String]
        attr_accessor :detail_uri
      
        # Output only. App's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A link to an image that can be used as an icon for the product.
        # Corresponds to the JSON property `iconUri`
        # @return [String]
        attr_accessor :icon_uri
      
        # Output only. The timestamp of the most recently made request for this app.
        # Corresponds to the JSON property `latestRequestTime`
        # @return [String]
        attr_accessor :latest_request_time
      
        # Output only. Total count of requests for this app.
        # Corresponds to the JSON property `requestCount`
        # @return [Fixnum]
        attr_accessor :request_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_details = args[:app_details] if args.key?(:app_details)
          @app_id = args[:app_id] if args.key?(:app_id)
          @detail_uri = args[:detail_uri] if args.key?(:detail_uri)
          @display_name = args[:display_name] if args.key?(:display_name)
          @icon_uri = args[:icon_uri] if args.key?(:icon_uri)
          @latest_request_time = args[:latest_request_time] if args.key?(:latest_request_time)
          @request_count = args[:request_count] if args.key?(:request_count)
        end
      end
      
      # Represent one host permission.
      class GoogleChromeManagementV1ChromeAppSiteAccess
        include Google::Apis::Core::Hashable
      
        # Output only. This can contain very specific hosts, or patterns like "*.com"
        # for instance.
        # Corresponds to the JSON property `hostMatch`
        # @return [String]
        attr_accessor :host_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_match = args[:host_match] if args.key?(:host_match)
        end
      end
      
      # Response containing the number of active devices.
      class GoogleChromeManagementV1CountActiveDevicesResponse
        include Google::Apis::Core::Hashable
      
        # Number of active devices in the 7 days leading up to the date specified in the
        # request.
        # Corresponds to the JSON property `sevenDaysCount`
        # @return [Fixnum]
        attr_accessor :seven_days_count
      
        # Number of active devices in the 30 days leading up to the date specified in
        # the request.
        # Corresponds to the JSON property `thirtyDaysCount`
        # @return [Fixnum]
        attr_accessor :thirty_days_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @seven_days_count = args[:seven_days_count] if args.key?(:seven_days_count)
          @thirty_days_count = args[:thirty_days_count] if args.key?(:thirty_days_count)
        end
      end
      
      # Response containing summary of requested app installations.
      class GoogleChromeManagementV1CountChromeAppRequestsResponse
        include Google::Apis::Core::Hashable
      
        # Token to specify the next page in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Count of requested apps matching request.
        # Corresponds to the JSON property `requestedApps`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppRequest>]
        attr_accessor :requested_apps
      
        # Total number of matching app requests.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @requested_apps = args[:requested_apps] if args.key?(:requested_apps)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response containing counts for browsers that need attention.
      class GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse
        include Google::Apis::Core::Hashable
      
        # Number of browsers that haven’t had any recent activity
        # Corresponds to the JSON property `noRecentActivityCount`
        # @return [Fixnum]
        attr_accessor :no_recent_activity_count
      
        # Number of browsers that are pending an OS update
        # Corresponds to the JSON property `pendingBrowserUpdateCount`
        # @return [Fixnum]
        attr_accessor :pending_browser_update_count
      
        # Number of browsers that have been recently enrolled
        # Corresponds to the JSON property `recentlyEnrolledCount`
        # @return [Fixnum]
        attr_accessor :recently_enrolled_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_recent_activity_count = args[:no_recent_activity_count] if args.key?(:no_recent_activity_count)
          @pending_browser_update_count = args[:pending_browser_update_count] if args.key?(:pending_browser_update_count)
          @recently_enrolled_count = args[:recently_enrolled_count] if args.key?(:recently_enrolled_count)
        end
      end
      
      # Response contains a list of CrashEventCountByVersionPerDay which count the
      # chrome crash at the certain date.
      class GoogleChromeManagementV1CountChromeCrashEventsResponse
        include Google::Apis::Core::Hashable
      
        # Crash event counts grouped by date and browser version.
        # Corresponds to the JSON property `crashEventCounts`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount>]
        attr_accessor :crash_event_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crash_event_counts = args[:crash_event_counts] if args.key?(:crash_event_counts)
        end
      end
      
      # The `count` of the Chrome crash events at the `date`.
      class GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
        include Google::Apis::Core::Hashable
      
        # Browser version this is counting.
        # Corresponds to the JSON property `browserVersion`
        # @return [String]
        attr_accessor :browser_version
      
        # Total count of crash events.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::ChromemanagementV1::GoogleTypeDate]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browser_version = args[:browser_version] if args.key?(:browser_version)
          @count = args[:count] if args.key?(:count)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # Response containing a list of devices expiring in each month of a selected
      # time frame. Counts are grouped by model and Auto Update Expiration date.
      class GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
        include Google::Apis::Core::Hashable
      
        # The list of reports sorted by auto update expiration date in ascending order.
        # Corresponds to the JSON property `deviceAueCountReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceAueCountReport>]
        attr_accessor :device_aue_count_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_aue_count_reports = args[:device_aue_count_reports] if args.key?(:device_aue_count_reports)
        end
      end
      
      # Response containing counts for devices that need attention.
      class GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
        include Google::Apis::Core::Hashable
      
        # Number of ChromeOS devices have not synced policies in the past 28 days.
        # Corresponds to the JSON property `noRecentPolicySyncCount`
        # @return [Fixnum]
        attr_accessor :no_recent_policy_sync_count
      
        # Number of ChromeOS devices that have not seen any user activity in the past 28
        # days.
        # Corresponds to the JSON property `noRecentUserActivityCount`
        # @return [Fixnum]
        attr_accessor :no_recent_user_activity_count
      
        # Number of devices whose OS version is not compliant.
        # Corresponds to the JSON property `osVersionNotCompliantCount`
        # @return [Fixnum]
        attr_accessor :os_version_not_compliant_count
      
        # Number of devices that are pending an OS update.
        # Corresponds to the JSON property `pendingUpdate`
        # @return [Fixnum]
        attr_accessor :pending_update
      
        # Number of devices that are unable to apply a policy due to an OS version
        # mismatch.
        # Corresponds to the JSON property `unsupportedPolicyCount`
        # @return [Fixnum]
        attr_accessor :unsupported_policy_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_recent_policy_sync_count = args[:no_recent_policy_sync_count] if args.key?(:no_recent_policy_sync_count)
          @no_recent_user_activity_count = args[:no_recent_user_activity_count] if args.key?(:no_recent_user_activity_count)
          @os_version_not_compliant_count = args[:os_version_not_compliant_count] if args.key?(:os_version_not_compliant_count)
          @pending_update = args[:pending_update] if args.key?(:pending_update)
          @unsupported_policy_count = args[:unsupported_policy_count] if args.key?(:unsupported_policy_count)
        end
      end
      
      # Response containing a list of devices with a specific type of hardware
      # specification from the requested hardware type.
      class GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The DeviceHardwareCountReport for device cpu type (for example Intel(R) Core(
        # TM) i7-10610U CPU @ 1.80GHz).
        # Corresponds to the JSON property `cpuReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport>]
        attr_accessor :cpu_reports
      
        # The DeviceHardwareCountReport for device memory amount in gigabytes (for
        # example 16).
        # Corresponds to the JSON property `memoryReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport>]
        attr_accessor :memory_reports
      
        # The DeviceHardwareCountReport for device model type (for example Acer C7
        # Chromebook).
        # Corresponds to the JSON property `modelReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport>]
        attr_accessor :model_reports
      
        # The DeviceHardwareCountReport for device storage amount in gigabytes (for
        # example 128).
        # Corresponds to the JSON property `storageReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceHardwareCountReport>]
        attr_accessor :storage_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_reports = args[:cpu_reports] if args.key?(:cpu_reports)
          @memory_reports = args[:memory_reports] if args.key?(:memory_reports)
          @model_reports = args[:model_reports] if args.key?(:model_reports)
          @storage_reports = args[:storage_reports] if args.key?(:storage_reports)
        end
      end
      
      # Response containing requested browser versions details and counts.
      class GoogleChromeManagementV1CountChromeVersionsResponse
        include Google::Apis::Core::Hashable
      
        # List of all browser versions and their install counts.
        # Corresponds to the JSON property `browserVersions`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BrowserVersion>]
        attr_accessor :browser_versions
      
        # Token to specify the next page of the request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total number browser versions matching request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browser_versions = args[:browser_versions] if args.key?(:browser_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response containing the number of devices with the given boot type.
      class GoogleChromeManagementV1CountDevicesPerBootTypeResponse
        include Google::Apis::Core::Hashable
      
        # Number of devices with dev boot type.
        # Corresponds to the JSON property `devBootTypeCount`
        # @return [Fixnum]
        attr_accessor :dev_boot_type_count
      
        # Number of devices with unreported boot type.
        # Corresponds to the JSON property `unreportedBootTypeCount`
        # @return [Fixnum]
        attr_accessor :unreported_boot_type_count
      
        # Number of devices with verified boot type.
        # Corresponds to the JSON property `verifiedBootTypeCount`
        # @return [Fixnum]
        attr_accessor :verified_boot_type_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dev_boot_type_count = args[:dev_boot_type_count] if args.key?(:dev_boot_type_count)
          @unreported_boot_type_count = args[:unreported_boot_type_count] if args.key?(:unreported_boot_type_count)
          @verified_boot_type_count = args[:verified_boot_type_count] if args.key?(:verified_boot_type_count)
        end
      end
      
      # Response containing the number of devices with the given channel.
      class GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse
        include Google::Apis::Core::Hashable
      
        # Number of devices with beta release channel.
        # Corresponds to the JSON property `betaChannelCount`
        # @return [Fixnum]
        attr_accessor :beta_channel_count
      
        # Number of devices with canary release channel.
        # Corresponds to the JSON property `canaryChannelCount`
        # @return [Fixnum]
        attr_accessor :canary_channel_count
      
        # Number of devices with dev release channel.
        # Corresponds to the JSON property `devChannelCount`
        # @return [Fixnum]
        attr_accessor :dev_channel_count
      
        # Number of devices with ltc release channel.
        # Corresponds to the JSON property `ltcChannelCount`
        # @return [Fixnum]
        attr_accessor :ltc_channel_count
      
        # Number of devices with lts release channel.
        # Corresponds to the JSON property `ltsChannelCount`
        # @return [Fixnum]
        attr_accessor :lts_channel_count
      
        # Number of devices with stable release channel.
        # Corresponds to the JSON property `stableChannelCount`
        # @return [Fixnum]
        attr_accessor :stable_channel_count
      
        # Number of devices with an unreported release channel.
        # Corresponds to the JSON property `unreportedChannelCount`
        # @return [Fixnum]
        attr_accessor :unreported_channel_count
      
        # Number of devices with unsupported release channel.
        # Corresponds to the JSON property `unsupportedChannelCount`
        # @return [Fixnum]
        attr_accessor :unsupported_channel_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beta_channel_count = args[:beta_channel_count] if args.key?(:beta_channel_count)
          @canary_channel_count = args[:canary_channel_count] if args.key?(:canary_channel_count)
          @dev_channel_count = args[:dev_channel_count] if args.key?(:dev_channel_count)
          @ltc_channel_count = args[:ltc_channel_count] if args.key?(:ltc_channel_count)
          @lts_channel_count = args[:lts_channel_count] if args.key?(:lts_channel_count)
          @stable_channel_count = args[:stable_channel_count] if args.key?(:stable_channel_count)
          @unreported_channel_count = args[:unreported_channel_count] if args.key?(:unreported_channel_count)
          @unsupported_channel_count = args[:unsupported_channel_count] if args.key?(:unsupported_channel_count)
        end
      end
      
      # Response containing details of queried installed apps.
      class GoogleChromeManagementV1CountInstalledAppsResponse
        include Google::Apis::Core::Hashable
      
        # List of installed apps matching request.
        # Corresponds to the JSON property `installedApps`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1InstalledApp>]
        attr_accessor :installed_apps
      
        # Token to specify the next page of the request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total number of installed apps matching request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @installed_apps = args[:installed_apps] if args.key?(:installed_apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response containing a summary printing report for each printer from the
      # specified organizational unit for the requested time interval.
      class GoogleChromeManagementV1CountPrintJobsByPrinterResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token for requesting the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of PrinterReports matching request.
        # Corresponds to the JSON property `printerReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PrinterReport>]
        attr_accessor :printer_reports
      
        # Total number of printers matching request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @printer_reports = args[:printer_reports] if args.key?(:printer_reports)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response containing a summary printing report for each user that has initiated
      # a print job with a printer from the specified organizational unit during the
      # requested time interval.
      class GoogleChromeManagementV1CountPrintJobsByUserResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token for requesting the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total number of users matching request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # List of UserPrintReports matching request.
        # Corresponds to the JSON property `userPrintReports`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UserPrintReport>]
        attr_accessor :user_print_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @user_print_reports = args[:user_print_reports] if args.key?(:user_print_reports)
        end
      end
      
      # CPU specifications for the device * This field provides device information,
      # which is static and will not change over time. * Data for this field is
      # controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/
      # policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Only at Upload *
      # Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If
      # the device is offline, the collected data is stored locally, and will be
      # reported when the device is next online: No * Reported for affiliated users
      # only: N/A * Granular permission needed: TELEMETRY_API_CPU_INFO
      class GoogleChromeManagementV1CpuInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Architecture type for the CPU. * This field provides device
        # information, which is static and will not change over time. * Data for this
        # field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.
        # google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Only at
        # Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes *
        # Cache: If the device is offline, the collected data is stored locally, and
        # will be reported when the device is next online: No * Reported for affiliated
        # users only: N/A
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. Whether keylocker is configured.`TRUE` = Enabled; `FALSE` =
        # disabled. Only reported if keylockerSupported = `TRUE`.
        # Corresponds to the JSON property `keylockerConfigured`
        # @return [Boolean]
        attr_accessor :keylocker_configured
        alias_method :keylocker_configured?, :keylocker_configured
      
        # Output only. Whether keylocker is supported.
        # Corresponds to the JSON property `keylockerSupported`
        # @return [Boolean]
        attr_accessor :keylocker_supported
        alias_method :keylocker_supported?, :keylocker_supported
      
        # Output only. The max CPU clock speed in kHz.
        # Corresponds to the JSON property `maxClockSpeed`
        # @return [Fixnum]
        attr_accessor :max_clock_speed
      
        # Output only. The CPU model name. Example: Intel(R) Core(TM) i5-8250U CPU @ 1.
        # 60GHz
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @keylocker_configured = args[:keylocker_configured] if args.key?(:keylocker_configured)
          @keylocker_supported = args[:keylocker_supported] if args.key?(:keylocker_supported)
          @max_clock_speed = args[:max_clock_speed] if args.key?(:max_clock_speed)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Provides information about the status of the CPU. * This field is telemetry
      # information and this will change over time as the device is utilized. * Data
      # for this field is controlled via policy: [ReportDeviceCpuInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection
      # Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours -
      # Policy Controlled: Yes * Cache: If the device is offline, the collected data
      # is stored locally, and will be reported when the device is next online: No *
      # Reported for affiliated users only: N/A * Granular permission needed:
      # TELEMETRY_API_CPU_REPORT
      class GoogleChromeManagementV1CpuStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. CPU temperature sample info per CPU core in Celsius
        # Corresponds to the JSON property `cpuTemperatureInfo`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuTemperatureInfo>]
        attr_accessor :cpu_temperature_info
      
        # Output only. Sample of CPU utilization (0-100 percent).
        # Corresponds to the JSON property `cpuUtilizationPct`
        # @return [Fixnum]
        attr_accessor :cpu_utilization_pct
      
        # Output only. The timestamp in milliseconds representing time at which this
        # report was sampled.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Output only. Frequency the report is sampled.
        # Corresponds to the JSON property `sampleFrequency`
        # @return [String]
        attr_accessor :sample_frequency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_temperature_info = args[:cpu_temperature_info] if args.key?(:cpu_temperature_info)
          @cpu_utilization_pct = args[:cpu_utilization_pct] if args.key?(:cpu_utilization_pct)
          @report_time = args[:report_time] if args.key?(:report_time)
          @sample_frequency = args[:sample_frequency] if args.key?(:sample_frequency)
        end
      end
      
      # CPU temperature of a device. Sampled per CPU core in Celsius. * This field is
      # telemetry information and this will change over time as the device is utilized.
      # * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection
      # Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours -
      # Policy Controlled: Yes * Cache: If the device is offline, the collected data
      # is stored locally, and will be reported when the device is next online: No *
      # Reported for affiliated users only: N/A
      class GoogleChromeManagementV1CpuTemperatureInfo
        include Google::Apis::Core::Hashable
      
        # Output only. CPU label. Example: Core 0
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Output only. CPU temperature in Celsius.
        # Corresponds to the JSON property `temperatureCelsius`
        # @return [Fixnum]
        attr_accessor :temperature_celsius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @temperature_celsius = args[:temperature_celsius] if args.key?(:temperature_celsius)
        end
      end
      
      # Describes a device reporting Chrome browser information.
      class GoogleChromeManagementV1Device
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the device that reported this Chrome browser
        # information.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Output only. The name of the machine within its local network.
        # Corresponds to the JSON property `machine`
        # @return [String]
        attr_accessor :machine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @machine = args[:machine] if args.key?(:machine)
        end
      end
      
      # Device activity report. * Granular permission needed:
      # TELEMETRY_API_DEVICE_ACTIVITY_REPORT
      class GoogleChromeManagementV1DeviceActivityReport
        include Google::Apis::Core::Hashable
      
        # Output only. Device activity state.
        # Corresponds to the JSON property `deviceActivityState`
        # @return [String]
        attr_accessor :device_activity_state
      
        # Output only. Timestamp of when the report was collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_activity_state = args[:device_activity_state] if args.key?(:device_activity_state)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # Report for CountChromeDevicesPerAueDateResponse, contains the count of devices
      # of a specific model and auto update expiration range.
      class GoogleChromeManagementV1DeviceAueCountReport
        include Google::Apis::Core::Hashable
      
        # Enum value of month corresponding to the auto update expiration date in UTC
        # time zone. If the device is already expired, this field is empty.
        # Corresponds to the JSON property `aueMonth`
        # @return [String]
        attr_accessor :aue_month
      
        # Int value of year corresponding to the Auto Update Expiration date in UTC time
        # zone. If the device is already expired, this field is empty.
        # Corresponds to the JSON property `aueYear`
        # @return [Fixnum]
        attr_accessor :aue_year
      
        # Count of devices of this model.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Boolean value for whether or not the device has already expired.
        # Corresponds to the JSON property `expired`
        # @return [Boolean]
        attr_accessor :expired
        alias_method :expired?, :expired
      
        # Public model name of the devices.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aue_month = args[:aue_month] if args.key?(:aue_month)
          @aue_year = args[:aue_year] if args.key?(:aue_year)
          @count = args[:count] if args.key?(:count)
          @expired = args[:expired] if args.key?(:expired)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Report for CountChromeDevicesPerHardwareSpecResponse, contains the count of
      # devices with a unique hardware specification.
      class GoogleChromeManagementV1DeviceHardwareCountReport
        include Google::Apis::Core::Hashable
      
        # Public name of the hardware specification.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Count of devices with a unique hardware specification.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # Details of a device requesting an extension, including the name of the device
      # and the justification of the request.
      class GoogleChromeManagementV1DeviceRequestingExtensionDetails
        include Google::Apis::Core::Hashable
      
        # The name of a device that has requested the extension.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Request justification as entered by the user.
        # Corresponds to the JSON property `justification`
        # @return [String]
        attr_accessor :justification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_name = args[:device_name] if args.key?(:device_name)
          @justification = args[:justification] if args.key?(:justification)
        end
      end
      
      # Status of the single storage device.
      class GoogleChromeManagementV1DiskInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Number of bytes read since last boot.
        # Corresponds to the JSON property `bytesReadThisSession`
        # @return [Fixnum]
        attr_accessor :bytes_read_this_session
      
        # Output only. Number of bytes written since last boot.
        # Corresponds to the JSON property `bytesWrittenThisSession`
        # @return [Fixnum]
        attr_accessor :bytes_written_this_session
      
        # Output only. Time spent discarding since last boot. Discarding is writing to
        # clear blocks which are no longer in use. Supported on kernels 4.18+.
        # Corresponds to the JSON property `discardTimeThisSession`
        # @return [String]
        attr_accessor :discard_time_this_session
      
        # Output only. Disk health.
        # Corresponds to the JSON property `health`
        # @return [String]
        attr_accessor :health
      
        # Output only. Counts the time the disk and queue were busy, so unlike the
        # fields above, parallel requests are not counted multiple times.
        # Corresponds to the JSON property `ioTimeThisSession`
        # @return [String]
        attr_accessor :io_time_this_session
      
        # Output only. Disk manufacturer.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Output only. Disk model.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Output only. Time spent reading from disk since last boot.
        # Corresponds to the JSON property `readTimeThisSession`
        # @return [String]
        attr_accessor :read_time_this_session
      
        # Output only. Disk serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Output only. Disk size.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. Disk type: eMMC / NVMe / ATA / SCSI.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Disk volumes.
        # Corresponds to the JSON property `volumeIds`
        # @return [Array<String>]
        attr_accessor :volume_ids
      
        # Output only. Time spent writing to disk since last boot.
        # Corresponds to the JSON property `writeTimeThisSession`
        # @return [String]
        attr_accessor :write_time_this_session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_read_this_session = args[:bytes_read_this_session] if args.key?(:bytes_read_this_session)
          @bytes_written_this_session = args[:bytes_written_this_session] if args.key?(:bytes_written_this_session)
          @discard_time_this_session = args[:discard_time_this_session] if args.key?(:discard_time_this_session)
          @health = args[:health] if args.key?(:health)
          @io_time_this_session = args[:io_time_this_session] if args.key?(:io_time_this_session)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @model = args[:model] if args.key?(:model)
          @read_time_this_session = args[:read_time_this_session] if args.key?(:read_time_this_session)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @type = args[:type] if args.key?(:type)
          @volume_ids = args[:volume_ids] if args.key?(:volume_ids)
          @write_time_this_session = args[:write_time_this_session] if args.key?(:write_time_this_session)
        end
      end
      
      # Information of a display device.
      class GoogleChromeManagementV1DisplayDevice
        include Google::Apis::Core::Hashable
      
        # Output only. Display height in millimeters.
        # Corresponds to the JSON property `displayHeightMm`
        # @return [Fixnum]
        attr_accessor :display_height_mm
      
        # Output only. Display device name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Display width in millimeters.
        # Corresponds to the JSON property `displayWidthMm`
        # @return [Fixnum]
        attr_accessor :display_width_mm
      
        # Output only. EDID version.
        # Corresponds to the JSON property `edidVersion`
        # @return [String]
        attr_accessor :edid_version
      
        # Output only. Is display internal or not.
        # Corresponds to the JSON property `internal`
        # @return [Boolean]
        attr_accessor :internal
        alias_method :internal?, :internal
      
        # Output only. Year of manufacture.
        # Corresponds to the JSON property `manufactureYear`
        # @return [Fixnum]
        attr_accessor :manufacture_year
      
        # Output only. Three letter manufacturer ID.
        # Corresponds to the JSON property `manufacturerId`
        # @return [String]
        attr_accessor :manufacturer_id
      
        # Output only. Manufacturer product code.
        # Corresponds to the JSON property `modelId`
        # @return [Fixnum]
        attr_accessor :model_id
      
        # Output only. Serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [Fixnum]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_height_mm = args[:display_height_mm] if args.key?(:display_height_mm)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_width_mm = args[:display_width_mm] if args.key?(:display_width_mm)
          @edid_version = args[:edid_version] if args.key?(:edid_version)
          @internal = args[:internal] if args.key?(:internal)
          @manufacture_year = args[:manufacture_year] if args.key?(:manufacture_year)
          @manufacturer_id = args[:manufacturer_id] if args.key?(:manufacturer_id)
          @model_id = args[:model_id] if args.key?(:model_id)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Information for a display.
      class GoogleChromeManagementV1DisplayInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Represents the graphics card device id.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Output only. Display device name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. EDID version.
        # Corresponds to the JSON property `edidVersion`
        # @return [String]
        attr_accessor :edid_version
      
        # Output only. Indicates if display is internal or not.
        # Corresponds to the JSON property `isInternal`
        # @return [Boolean]
        attr_accessor :is_internal
        alias_method :is_internal?, :is_internal
      
        # Output only. Refresh rate in Hz.
        # Corresponds to the JSON property `refreshRate`
        # @return [Fixnum]
        attr_accessor :refresh_rate
      
        # Output only. Resolution height in pixels.
        # Corresponds to the JSON property `resolutionHeight`
        # @return [Fixnum]
        attr_accessor :resolution_height
      
        # Output only. Resolution width in pixels.
        # Corresponds to the JSON property `resolutionWidth`
        # @return [Fixnum]
        attr_accessor :resolution_width
      
        # Output only. Serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [Fixnum]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @edid_version = args[:edid_version] if args.key?(:edid_version)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @refresh_rate = args[:refresh_rate] if args.key?(:refresh_rate)
          @resolution_height = args[:resolution_height] if args.key?(:resolution_height)
          @resolution_width = args[:resolution_width] if args.key?(:resolution_width)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Response containing a list of print jobs.
      class GoogleChromeManagementV1EnumeratePrintJobsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be used in a subsequent request to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of requested print jobs.
        # Corresponds to the JSON property `printJobs`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PrintJob>]
        attr_accessor :print_jobs
      
        # Total number of print jobs matching request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @print_jobs = args[:print_jobs] if args.key?(:print_jobs)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response containing a list of devices that have requested the queried
      # extension.
      class GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse
        include Google::Apis::Core::Hashable
      
        # Details of devices that have requested the queried extension.
        # Corresponds to the JSON property `deviceDetails`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceRequestingExtensionDetails>]
        attr_accessor :device_details
      
        # Optional. Token to specify the next page in the list. Token expires after 1
        # day.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. Total number of devices in response.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_details = args[:device_details] if args.key?(:device_details)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response containing a list of users that have requested the queried extension.
      class GoogleChromeManagementV1FetchUsersRequestingExtensionResponse
        include Google::Apis::Core::Hashable
      
        # Token to specify the next page in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total number of users in response.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # Details of users that have requested the queried extension.
        # Corresponds to the JSON property `userDetails`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UserRequestingExtensionDetails>]
        attr_accessor :user_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @user_details = args[:user_details] if args.key?(:user_details)
        end
      end
      
      # Response containing a list of devices with queried app installed.
      class GoogleChromeManagementV1FindInstalledAppDevicesResponse
        include Google::Apis::Core::Hashable
      
        # A list of devices which have the app installed. Sorted in ascending
        # alphabetical order on the Device.machine field.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1Device>]
        attr_accessor :devices
      
        # Token to specify the next page of the request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total number of devices matching request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Information of a graphics adapter (GPU).
      class GoogleChromeManagementV1GraphicsAdapterInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Adapter name. Example: Mesa DRI Intel(R) UHD Graphics 620 (
        # Kabylake GT2).
        # Corresponds to the JSON property `adapter`
        # @return [String]
        attr_accessor :adapter
      
        # Output only. Represents the graphics card device id.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Output only. Version of the GPU driver.
        # Corresponds to the JSON property `driverVersion`
        # @return [String]
        attr_accessor :driver_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapter = args[:adapter] if args.key?(:adapter)
          @device_id = args[:device_id] if args.key?(:device_id)
          @driver_version = args[:driver_version] if args.key?(:driver_version)
        end
      end
      
      # Information of the graphics subsystem. * This field provides device
      # information, which is static and will not change over time. * Data for this
      # field is controlled via policy: [ReportDeviceGraphicsStatus](https://
      # chromeenterprise.google/policies/#ReportDeviceGraphicsStatus) * Data
      # Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3
      # hours - Policy Controlled: Yes * Cache: If the device is offline, the
      # collected data is stored locally, and will be reported when the device is next
      # online: No * Reported for affiliated users only: N/A * Granular permission
      # needed: TELEMETRY_API_GRAPHICS_INFO
      class GoogleChromeManagementV1GraphicsInfo
        include Google::Apis::Core::Hashable
      
        # Information of a graphics adapter (GPU).
        # Corresponds to the JSON property `adapterInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsAdapterInfo]
        attr_accessor :adapter_info
      
        # Output only. Information about the display(s) of the device.
        # Corresponds to the JSON property `displayDevices`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayDevice>]
        attr_accessor :display_devices
      
        # Output only. Is ePrivacy screen supported or not.
        # Corresponds to the JSON property `eprivacySupported`
        # @return [Boolean]
        attr_accessor :eprivacy_supported
        alias_method :eprivacy_supported?, :eprivacy_supported
      
        # Information on the device touch screen.
        # Corresponds to the JSON property `touchScreenInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TouchScreenInfo]
        attr_accessor :touch_screen_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapter_info = args[:adapter_info] if args.key?(:adapter_info)
          @display_devices = args[:display_devices] if args.key?(:display_devices)
          @eprivacy_supported = args[:eprivacy_supported] if args.key?(:eprivacy_supported)
          @touch_screen_info = args[:touch_screen_info] if args.key?(:touch_screen_info)
        end
      end
      
      # Information of the graphics subsystem. * This field is telemetry information
      # and this will change over time as the device is utilized. * Data for this
      # field is controlled via policy: [ReportDeviceGraphicsInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceGraphicsInfo) * Data Collection
      # Frequency: 3 hours. * Default Data Reporting Frequency: 3 hours - Policy
      # Controlled: Yes * Cache: If the device is offline, the collected data is
      # stored locally, and will be reported when the device is next online: No *
      # Reported for affiliated users only: N/A * Granular permission needed:
      # TELEMETRY_API_GRAPHICS_REPORT
      class GoogleChromeManagementV1GraphicsStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. Information about the displays for the device.
        # Corresponds to the JSON property `displays`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DisplayInfo>]
        attr_accessor :displays
      
        # Output only. Time at which the graphics data was reported.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @displays = args[:displays] if args.key?(:displays)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # Heartbeat status report of a device. * Available for Kiosks * This field
      # provides online/offline/unknown status of a device and will only be included
      # if the status has changed (e.g. Online -> Offline) * Data for this field is
      # controlled via policy: [HeartbeatEnabled](https://chromeenterprise.google/
      # policies/#HeartbeatEnabled) [More Info](https://support.google.com/chrome/a/
      # answer/6179663#:~:text=On%20the%20Chrome,device%20status%20alerts) * Heartbeat
      # Frequency: 2 mins * Note: If a device goes offline, it can take up to 12
      # minutes for the online status of the device to be updated * Cache: If the
      # device is offline, the collected data is stored locally, and will be reported
      # when the device is next online: N/A * Reported for affiliated users only: N/A *
      # Granular permission needed: TELEMETRY_API_DEVICE_ACTIVITY_REPORT
      class GoogleChromeManagementV1HeartbeatStatusReport
        include Google::Apis::Core::Hashable
      
        # Timestamp of when status changed was detected
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # State the device changed to
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_time = args[:report_time] if args.key?(:report_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Data that describes the result of the HTTPS latency diagnostics routine, with
      # the HTTPS requests issued to Google websites.
      class GoogleChromeManagementV1HttpsLatencyRoutineData
        include Google::Apis::Core::Hashable
      
        # Output only. HTTPS latency if routine succeeded or failed because of
        # HIGH_LATENCY or VERY_HIGH_LATENCY.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # Output only. HTTPS latency routine problem if a problem occurred.
        # Corresponds to the JSON property `problem`
        # @return [String]
        attr_accessor :problem
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latency = args[:latency] if args.key?(:latency)
          @problem = args[:problem] if args.key?(:problem)
        end
      end
      
      # Describes an installed app.
      class GoogleChromeManagementV1InstalledApp
        include Google::Apis::Core::Hashable
      
        # Output only. Unique identifier of the app. For Chrome apps and extensions, the
        # 32-character id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the
        # package name (e.g. com.evernote).
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Output only. How the app was installed.
        # Corresponds to the JSON property `appInstallType`
        # @return [String]
        attr_accessor :app_install_type
      
        # Output only. Source of the installed app.
        # Corresponds to the JSON property `appSource`
        # @return [String]
        attr_accessor :app_source
      
        # Output only. Type of the app.
        # Corresponds to the JSON property `appType`
        # @return [String]
        attr_accessor :app_type
      
        # Output only. Count of browser devices with this app installed.
        # Corresponds to the JSON property `browserDeviceCount`
        # @return [Fixnum]
        attr_accessor :browser_device_count
      
        # Output only. Description of the installed app.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Whether the app is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Output only. Name of the installed app.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Homepage uri of the installed app.
        # Corresponds to the JSON property `homepageUri`
        # @return [String]
        attr_accessor :homepage_uri
      
        # Output only. Count of ChromeOS users with this app installed.
        # Corresponds to the JSON property `osUserCount`
        # @return [Fixnum]
        attr_accessor :os_user_count
      
        # Output only. Permissions of the installed app.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Risk assessment data about an extension/app.
        # Corresponds to the JSON property `riskAssessment`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessmentData]
        attr_accessor :risk_assessment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_install_type = args[:app_install_type] if args.key?(:app_install_type)
          @app_source = args[:app_source] if args.key?(:app_source)
          @app_type = args[:app_type] if args.key?(:app_type)
          @browser_device_count = args[:browser_device_count] if args.key?(:browser_device_count)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @os_user_count = args[:os_user_count] if args.key?(:os_user_count)
          @permissions = args[:permissions] if args.key?(:permissions)
          @risk_assessment = args[:risk_assessment] if args.key?(:risk_assessment)
        end
      end
      
      # Kiosk app status report of a device. * Available for Kiosks * This field
      # provides the app id and version number running on a kiosk device and the
      # timestamp of when the report was last updated * Data for this field is
      # controlled via policy: [ReportDeviceSessionStatus](https://chromeenterprise.
      # google/policies/#ReportDeviceSessionStatus) * Data Collection Frequency: Only
      # at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes
      # * Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_APPS_REPORT
      class GoogleChromeManagementV1KioskAppStatusReport
        include Google::Apis::Core::Hashable
      
        # App id of kiosk app for example "mdmkkicfmmkgmpkmkdikhlbggogpicma"
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # App version number of kiosk app for example "1.10.118"
        # Corresponds to the JSON property `appVersion`
        # @return [String]
        attr_accessor :app_version
      
        # Timestamp of when report was collected
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_version = args[:app_version] if args.key?(:app_version)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # 
      class GoogleChromeManagementV1ListTelemetryDevicesResponse
        include Google::Apis::Core::Hashable
      
        # Telemetry devices returned in the response.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice>]
        attr_accessor :devices
      
        # Token to specify next page in the list.
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
      
      # Response message for listing telemetry events for a customer.
      class GoogleChromeManagementV1ListTelemetryEventsResponse
        include Google::Apis::Core::Hashable
      
        # Token to specify next page in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Telemetry events returned in the response.
        # Corresponds to the JSON property `telemetryEvents`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryEvent>]
        attr_accessor :telemetry_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @telemetry_events = args[:telemetry_events] if args.key?(:telemetry_events)
        end
      end
      
      # Response message for listing notification configs for a customer.
      class GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The telemetry notification configs from the specified customer.
        # Corresponds to the JSON property `telemetryNotificationConfigs`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig>]
        attr_accessor :telemetry_notification_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @telemetry_notification_configs = args[:telemetry_notification_configs] if args.key?(:telemetry_notification_configs)
        end
      end
      
      # Response message for listing telemetry users for a customer.
      class GoogleChromeManagementV1ListTelemetryUsersResponse
        include Google::Apis::Core::Hashable
      
        # Token to specify next page in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Telemetry users returned in the response.
        # Corresponds to the JSON property `telemetryUsers`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser>]
        attr_accessor :telemetry_users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @telemetry_users = args[:telemetry_users] if args.key?(:telemetry_users)
        end
      end
      
      # Memory information of a device. * This field has both telemetry and device
      # information: - `totalRamBytes` - Device information - `availableRamBytes` -
      # Telemetry information - `totalMemoryEncryption` - Device information * Data
      # for this field is controlled via policy: [ReportDeviceMemoryInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection
      # Frequency: - `totalRamBytes` - Only at upload - `availableRamBytes` - Every 10
      # minutes - `totalMemoryEncryption` - at device startup * Default Data Reporting
      # Frequency: - `totalRamBytes` - 3 hours - `availableRamBytes` - 3 hours - `
      # totalMemoryEncryption` - at device startup - Policy Controlled: Yes * Cache:
      # If the device is offline, the collected data is stored locally, and will be
      # reported when the device is next online: only for `totalMemoryEncryption` *
      # Reported for affiliated users only: N/A * Granular permission needed:
      # TELEMETRY_API_MEMORY_INFO
      class GoogleChromeManagementV1MemoryInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Amount of available RAM in bytes.
        # Corresponds to the JSON property `availableRamBytes`
        # @return [Fixnum]
        attr_accessor :available_ram_bytes
      
        # Memory encryption information of a device. * This field provides device
        # information, which is static and will not change over time. * Data for this
        # field is controlled via policy: [ReportDeviceMemoryInfo](https://
        # chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection
        # Frequency: At device startup * Default Data Reporting Frequency: At device
        # startup - Policy Controlled: Yes * Cache: If the device is offline, the
        # collected data is stored locally, and will be reported when the device is next
        # online: Yes * Reported for affiliated users only: N/A
        # Corresponds to the JSON property `totalMemoryEncryption`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TotalMemoryEncryptionInfo]
        attr_accessor :total_memory_encryption
      
        # Output only. Total RAM in bytes.
        # Corresponds to the JSON property `totalRamBytes`
        # @return [Fixnum]
        attr_accessor :total_ram_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_ram_bytes = args[:available_ram_bytes] if args.key?(:available_ram_bytes)
          @total_memory_encryption = args[:total_memory_encryption] if args.key?(:total_memory_encryption)
          @total_ram_bytes = args[:total_ram_bytes] if args.key?(:total_ram_bytes)
        end
      end
      
      # Contains samples of memory status reports. * This field is telemetry
      # information and this will change over time as the device is utilized. * Data
      # for this field is controlled via policy: [ReportDeviceMemoryInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection
      # Frequency: Only at upload, SystemRamFreeByes is collected every 10 minutes *
      # Default Data Reporting Frequency: Every 3 hours - Policy Controlled: Yes *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_MEMORY_REPORT
      class GoogleChromeManagementV1MemoryStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. Number of page faults during this collection
        # Corresponds to the JSON property `pageFaults`
        # @return [Fixnum]
        attr_accessor :page_faults
      
        # Output only. The timestamp in milliseconds representing time at which this
        # report was sampled.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Output only. Frequency the report is sampled.
        # Corresponds to the JSON property `sampleFrequency`
        # @return [String]
        attr_accessor :sample_frequency
      
        # Output only. Amount of free RAM in bytes (unreliable due to Garbage Collection)
        # .
        # Corresponds to the JSON property `systemRamFreeBytes`
        # @return [Fixnum]
        attr_accessor :system_ram_free_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_faults = args[:page_faults] if args.key?(:page_faults)
          @report_time = args[:report_time] if args.key?(:report_time)
          @sample_frequency = args[:sample_frequency] if args.key?(:sample_frequency)
          @system_ram_free_bytes = args[:system_ram_free_bytes] if args.key?(:system_ram_free_bytes)
        end
      end
      
      # Network bandwidth report. * Granular permission needed:
      # TELEMETRY_API_NETWORK_REPORT
      class GoogleChromeManagementV1NetworkBandwidthReport
        include Google::Apis::Core::Hashable
      
        # Output only. Download speed in kilobits per second.
        # Corresponds to the JSON property `downloadSpeedKbps`
        # @return [Fixnum]
        attr_accessor :download_speed_kbps
      
        # Output only. Timestamp of when the report was collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_speed_kbps = args[:download_speed_kbps] if args.key?(:download_speed_kbps)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # Details about the network device. * This field provides device information,
      # which is static and will not change over time. * Data for this field is
      # controlled via policy: [ReportNetworkDeviceConfiguration](https://
      # chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration) * Data
      # Collection Frequency: At device startup * Default Data Reporting Frequency: At
      # device startup - Policy Controlled: Yes * Cache: If the device is offline, the
      # collected data is stored locally, and will be reported when the device is next
      # online: Yes * Reported for affiliated users only: N/A
      class GoogleChromeManagementV1NetworkDevice
        include Google::Apis::Core::Hashable
      
        # Output only. The integrated circuit card ID associated with the device's sim
        # card.
        # Corresponds to the JSON property `iccid`
        # @return [String]
        attr_accessor :iccid
      
        # Output only. IMEI (if applicable) of the corresponding network device.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # Output only. MAC address (if applicable) of the corresponding network device.
        # Corresponds to the JSON property `macAddress`
        # @return [String]
        attr_accessor :mac_address
      
        # Output only. The mobile directory number associated with the device's sim card.
        # Corresponds to the JSON property `mdn`
        # @return [String]
        attr_accessor :mdn
      
        # Output only. MEID (if applicable) of the corresponding network device.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Output only. Network device type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iccid = args[:iccid] if args.key?(:iccid)
          @imei = args[:imei] if args.key?(:imei)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
          @mdn = args[:mdn] if args.key?(:mdn)
          @meid = args[:meid] if args.key?(:meid)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Network testing results to determine the health of the device's network
      # connection, for example whether the HTTPS latency is high or normal. *
      # Granular permission needed: TELEMETRY_API_NETWORK_REPORT
      class GoogleChromeManagementV1NetworkDiagnosticsReport
        include Google::Apis::Core::Hashable
      
        # Data that describes the result of the HTTPS latency diagnostics routine, with
        # the HTTPS requests issued to Google websites.
        # Corresponds to the JSON property `httpsLatencyData`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData]
        attr_accessor :https_latency_data
      
        # Output only. Timestamp of when the diagnostics were collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @https_latency_data = args[:https_latency_data] if args.key?(:https_latency_data)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # Network device information. * This field provides device information, which is
      # static and will not change over time. * Data for this field is controlled via
      # policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/
      # policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At
      # device startup * Default Data Reporting Frequency: At device startup - Policy
      # Controlled: Yes * Cache: If the device is offline, the collected data is
      # stored locally, and will be reported when the device is next online: Yes *
      # Reported for affiliated users only: N/A * Granular permission needed:
      # TELEMETRY_API_NETWORK_INFO
      class GoogleChromeManagementV1NetworkInfo
        include Google::Apis::Core::Hashable
      
        # Output only. List of network devices.
        # Corresponds to the JSON property `networkDevices`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDevice>]
        attr_accessor :network_devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_devices = args[:network_devices] if args.key?(:network_devices)
        end
      end
      
      # State of visible/configured networks. * This field is telemetry information
      # and this will change over time as the device is utilized. * Data for this
      # field is controlled via policy: [ReportNetworkStatus](https://chromeenterprise.
      # google/policies/#ReportNetworkStatus) * Data Collection Frequency: 60 minutes *
      # Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache:
      # If the device is offline, the collected data is stored locally, and will be
      # reported when the device is next online: Yes * Reported for affiliated users
      # only: Yes * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
      class GoogleChromeManagementV1NetworkStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. Current connection state of the network.
        # Corresponds to the JSON property `connectionState`
        # @return [String]
        attr_accessor :connection_state
      
        # Output only. Network connection type.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Output only. Whether the wifi encryption key is turned off.
        # Corresponds to the JSON property `encryptionOn`
        # @return [Boolean]
        attr_accessor :encryption_on
        alias_method :encryption_on?, :encryption_on
      
        # Output only. Gateway IP address.
        # Corresponds to the JSON property `gatewayIpAddress`
        # @return [String]
        attr_accessor :gateway_ip_address
      
        # Output only. The gateway IPv6 for this interface, if detected
        # Corresponds to the JSON property `gatewayIpv6Address`
        # @return [String]
        attr_accessor :gateway_ipv6_address
      
        # Output only. Network connection guid.
        # Corresponds to the JSON property `guid`
        # @return [String]
        attr_accessor :guid
      
        # Output only. IPv6 addresses assigned to this network, if any. Each address is
        # a string in standard IPv6 text representation (e.g., "2001:db8::1").
        # Corresponds to the JSON property `ipv6Address`
        # @return [Array<String>]
        attr_accessor :ipv6_address
      
        # Output only. LAN IP address.
        # Corresponds to the JSON property `lanIpAddress`
        # @return [String]
        attr_accessor :lan_ip_address
      
        # Output only. The maximum downstream bandwidth in Kilobits per second (Kbps),
        # if reported by the network interface or connection.
        # Corresponds to the JSON property `linkDownSpeedKbps`
        # @return [Fixnum]
        attr_accessor :link_down_speed_kbps
      
        # Output only. Whether the network was detected as metered.
        # Corresponds to the JSON property `metered`
        # @return [Boolean]
        attr_accessor :metered
        alias_method :metered?, :metered
      
        # Output only. Receiving bit rate measured in Megabits per second.
        # Corresponds to the JSON property `receivingBitRateMbps`
        # @return [Fixnum]
        attr_accessor :receiving_bit_rate_mbps
      
        # Output only. Time at which the network state was reported.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Output only. Frequency the report is sampled.
        # Corresponds to the JSON property `sampleFrequency`
        # @return [String]
        attr_accessor :sample_frequency
      
        # Output only. Signal strength for wireless networks measured in decibels.
        # Corresponds to the JSON property `signalStrengthDbm`
        # @return [Fixnum]
        attr_accessor :signal_strength_dbm
      
        # Output only. Transmission bit rate measured in Megabits per second.
        # Corresponds to the JSON property `transmissionBitRateMbps`
        # @return [Fixnum]
        attr_accessor :transmission_bit_rate_mbps
      
        # Output only. Transmission power measured in decibels.
        # Corresponds to the JSON property `transmissionPowerDbm`
        # @return [Fixnum]
        attr_accessor :transmission_power_dbm
      
        # Output only. Wifi link quality. Value ranges from [0, 70]. 0 indicates no
        # signal and 70 indicates a strong signal.
        # Corresponds to the JSON property `wifiLinkQuality`
        # @return [Fixnum]
        attr_accessor :wifi_link_quality
      
        # Output only. Wifi power management enabled
        # Corresponds to the JSON property `wifiPowerManagementEnabled`
        # @return [Boolean]
        attr_accessor :wifi_power_management_enabled
        alias_method :wifi_power_management_enabled?, :wifi_power_management_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_state = args[:connection_state] if args.key?(:connection_state)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @encryption_on = args[:encryption_on] if args.key?(:encryption_on)
          @gateway_ip_address = args[:gateway_ip_address] if args.key?(:gateway_ip_address)
          @gateway_ipv6_address = args[:gateway_ipv6_address] if args.key?(:gateway_ipv6_address)
          @guid = args[:guid] if args.key?(:guid)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @lan_ip_address = args[:lan_ip_address] if args.key?(:lan_ip_address)
          @link_down_speed_kbps = args[:link_down_speed_kbps] if args.key?(:link_down_speed_kbps)
          @metered = args[:metered] if args.key?(:metered)
          @receiving_bit_rate_mbps = args[:receiving_bit_rate_mbps] if args.key?(:receiving_bit_rate_mbps)
          @report_time = args[:report_time] if args.key?(:report_time)
          @sample_frequency = args[:sample_frequency] if args.key?(:sample_frequency)
          @signal_strength_dbm = args[:signal_strength_dbm] if args.key?(:signal_strength_dbm)
          @transmission_bit_rate_mbps = args[:transmission_bit_rate_mbps] if args.key?(:transmission_bit_rate_mbps)
          @transmission_power_dbm = args[:transmission_power_dbm] if args.key?(:transmission_power_dbm)
          @wifi_link_quality = args[:wifi_link_quality] if args.key?(:wifi_link_quality)
          @wifi_power_management_enabled = args[:wifi_power_management_enabled] if args.key?(:wifi_power_management_enabled)
        end
      end
      
      # Contains information regarding the current OS update status. * This field is
      # telemetry information and this will change over time as the device is utilized.
      # * Data for this field is controlled via policy: [ReportDeviceOsUpdateStatus](
      # https://chromeenterprise.google/policies/#ReportDeviceOsUpdateStatus) * Data
      # Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3
      # hours - Policy Controlled: Yes * Cache: If the device is offline, the
      # collected data is stored locally, and will be reported when the device is next
      # online: No * Reported for affiliated users only: N/A * Granular permission
      # needed: TELEMETRY_API_OS_REPORT
      class GoogleChromeManagementV1OsUpdateStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp of the last reboot.
        # Corresponds to the JSON property `lastRebootTime`
        # @return [String]
        attr_accessor :last_reboot_time
      
        # Output only. Timestamp of the last update check.
        # Corresponds to the JSON property `lastUpdateCheckTime`
        # @return [String]
        attr_accessor :last_update_check_time
      
        # Output only. Timestamp of the last successful update.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Output only. New platform version of the os image being downloaded and applied.
        # It is only set when update status is OS_IMAGE_DOWNLOAD_IN_PROGRESS or
        # OS_UPDATE_NEED_REBOOT. Note this could be a dummy "0.0.0.0" for
        # OS_UPDATE_NEED_REBOOT status for some edge cases, e.g. update engine is
        # restarted without a reboot.
        # Corresponds to the JSON property `newPlatformVersion`
        # @return [String]
        attr_accessor :new_platform_version
      
        # Output only. New requested platform version from the pending updated kiosk app.
        # Corresponds to the JSON property `newRequestedPlatformVersion`
        # @return [String]
        attr_accessor :new_requested_platform_version
      
        # Output only. Current state of the os update.
        # Corresponds to the JSON property `updateState`
        # @return [String]
        attr_accessor :update_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_reboot_time = args[:last_reboot_time] if args.key?(:last_reboot_time)
          @last_update_check_time = args[:last_update_check_time] if args.key?(:last_update_check_time)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @new_platform_version = args[:new_platform_version] if args.key?(:new_platform_version)
          @new_requested_platform_version = args[:new_requested_platform_version] if args.key?(:new_requested_platform_version)
          @update_state = args[:update_state] if args.key?(:update_state)
        end
      end
      
      # Peripherals report. * Granular permission needed:
      # TELEMETRY_API_PERIPHERALS_REPORT
      class GoogleChromeManagementV1PeripheralsReport
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp of when the report was collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Reports of all usb connected devices.
        # Corresponds to the JSON property `usbPeripheralReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UsbPeripheralReport>]
        attr_accessor :usb_peripheral_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_time = args[:report_time] if args.key?(:report_time)
          @usb_peripheral_report = args[:usb_peripheral_report] if args.key?(:usb_peripheral_report)
        end
      end
      
      # Represents a request to print a document that has been submitted to a printer.
      class GoogleChromeManagementV1PrintJob
        include Google::Apis::Core::Hashable
      
        # Color mode.
        # Corresponds to the JSON property `colorMode`
        # @return [String]
        attr_accessor :color_mode
      
        # Print job completion timestamp.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Number of copies.
        # Corresponds to the JSON property `copyCount`
        # @return [Fixnum]
        attr_accessor :copy_count
      
        # Print job creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Number of pages in the document.
        # Corresponds to the JSON property `documentPageCount`
        # @return [Fixnum]
        attr_accessor :document_page_count
      
        # Duplex mode.
        # Corresponds to the JSON property `duplexMode`
        # @return [String]
        attr_accessor :duplex_mode
      
        # Unique ID of the print job.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the printer used for printing.
        # Corresponds to the JSON property `printer`
        # @return [String]
        attr_accessor :printer
      
        # API ID of the printer used for printing.
        # Corresponds to the JSON property `printerId`
        # @return [String]
        attr_accessor :printer_id
      
        # The final state of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The title of the document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The primary e-mail address of the user who submitted the print job.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        # The unique Directory API ID of the user who submitted the print job.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color_mode = args[:color_mode] if args.key?(:color_mode)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @copy_count = args[:copy_count] if args.key?(:copy_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @document_page_count = args[:document_page_count] if args.key?(:document_page_count)
          @duplex_mode = args[:duplex_mode] if args.key?(:duplex_mode)
          @id = args[:id] if args.key?(:id)
          @printer = args[:printer] if args.key?(:printer)
          @printer_id = args[:printer_id] if args.key?(:printer_id)
          @state = args[:state] if args.key?(:state)
          @title = args[:title] if args.key?(:title)
          @user_email = args[:user_email] if args.key?(:user_email)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Report for CountPrintJobsByPrinter, contains statistics on printer usage.
      # Contains the total number of print jobs initiated with this printer, the
      # number of users and the number of devices that have initiated at least one
      # print job with this printer.
      class GoogleChromeManagementV1PrinterReport
        include Google::Apis::Core::Hashable
      
        # Number of chrome devices that have been used to send print jobs to the
        # specified printer.
        # Corresponds to the JSON property `deviceCount`
        # @return [Fixnum]
        attr_accessor :device_count
      
        # Number of print jobs sent to the printer.
        # Corresponds to the JSON property `jobCount`
        # @return [Fixnum]
        attr_accessor :job_count
      
        # Printer name.
        # Corresponds to the JSON property `printer`
        # @return [String]
        attr_accessor :printer
      
        # Printer API ID.
        # Corresponds to the JSON property `printerId`
        # @return [String]
        attr_accessor :printer_id
      
        # Printer model.
        # Corresponds to the JSON property `printerModel`
        # @return [String]
        attr_accessor :printer_model
      
        # Number of users that have sent print jobs to the printer.
        # Corresponds to the JSON property `userCount`
        # @return [Fixnum]
        attr_accessor :user_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_count = args[:device_count] if args.key?(:device_count)
          @job_count = args[:job_count] if args.key?(:job_count)
          @printer = args[:printer] if args.key?(:printer)
          @printer_id = args[:printer_id] if args.key?(:printer_id)
          @printer_model = args[:printer_model] if args.key?(:printer_model)
          @user_count = args[:user_count] if args.key?(:user_count)
        end
      end
      
      # Risk assessment for a Chrome extension.
      class GoogleChromeManagementV1RiskAssessment
        include Google::Apis::Core::Hashable
      
        # Risk assessment for the extension. Currently, this is a numerical value, and
        # its interpretation is specific to each risk assessment provider.
        # Corresponds to the JSON property `assessment`
        # @return [String]
        attr_accessor :assessment
      
        # A URL that a user can navigate to for more information about the risk
        # assessment.
        # Corresponds to the JSON property `detailsUrl`
        # @return [String]
        attr_accessor :details_url
      
        # The version of the extension that this assessment applies to.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assessment = args[:assessment] if args.key?(:assessment)
          @details_url = args[:details_url] if args.key?(:details_url)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Risk assessment data about an extension/app.
      class GoogleChromeManagementV1RiskAssessmentData
        include Google::Apis::Core::Hashable
      
        # Individual risk assessments.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessmentEntry>]
        attr_accessor :entries
      
        # Overall assessed risk level across all entries. This will be the highest risk
        # level from all entries.
        # Corresponds to the JSON property `overallRiskLevel`
        # @return [String]
        attr_accessor :overall_risk_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @overall_risk_level = args[:overall_risk_level] if args.key?(:overall_risk_level)
        end
      end
      
      # One risk assessment entry.
      class GoogleChromeManagementV1RiskAssessmentEntry
        include Google::Apis::Core::Hashable
      
        # Output only. The risk assessment provider from which this entry comes from.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Risk assessment for a Chrome extension.
        # Corresponds to the JSON property `riskAssessment`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RiskAssessment]
        attr_accessor :risk_assessment
      
        # Output only. The bucketed risk level for the risk assessment.
        # Corresponds to the JSON property `riskLevel`
        # @return [String]
        attr_accessor :risk_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provider = args[:provider] if args.key?(:provider)
          @risk_assessment = args[:risk_assessment] if args.key?(:risk_assessment)
          @risk_level = args[:risk_level] if args.key?(:risk_level)
        end
      end
      
      # Runtime counters retrieved from CPU. Currently the runtime counters telemetry
      # is only supported by Intel vPro PSR on Gen 14+.
      class GoogleChromeManagementV1RuntimeCountersReport
        include Google::Apis::Core::Hashable
      
        # Number of times that the device has entered into the hibernation state.
        # Currently obtained via the PSR, count from S0->S4.
        # Corresponds to the JSON property `enterHibernationCount`
        # @return [Fixnum]
        attr_accessor :enter_hibernation_count
      
        # Number of times that the device has entered into the power-off state.
        # Currently obtained via the PSR, count from S0->S5.
        # Corresponds to the JSON property `enterPoweroffCount`
        # @return [Fixnum]
        attr_accessor :enter_poweroff_count
      
        # Number of times that the device has entered into the sleep state. Currently
        # obtained via the PSR, count from S0->S3.
        # Corresponds to the JSON property `enterSleepCount`
        # @return [Fixnum]
        attr_accessor :enter_sleep_count
      
        # Timestamp when the report was collected.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Total lifetime runtime. Currently always S0 runtime from Intel vPro PSR.
        # Corresponds to the JSON property `uptimeRuntimeDuration`
        # @return [String]
        attr_accessor :uptime_runtime_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enter_hibernation_count = args[:enter_hibernation_count] if args.key?(:enter_hibernation_count)
          @enter_poweroff_count = args[:enter_poweroff_count] if args.key?(:enter_poweroff_count)
          @enter_sleep_count = args[:enter_sleep_count] if args.key?(:enter_sleep_count)
          @report_time = args[:report_time] if args.key?(:report_time)
          @uptime_runtime_duration = args[:uptime_runtime_duration] if args.key?(:uptime_runtime_duration)
        end
      end
      
      # Status data for storage. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.
      # google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only
      # at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes
      # * Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_STORAGE_INFO
      class GoogleChromeManagementV1StorageInfo
        include Google::Apis::Core::Hashable
      
        # The available space for user data storage in the device in bytes.
        # Corresponds to the JSON property `availableDiskBytes`
        # @return [Fixnum]
        attr_accessor :available_disk_bytes
      
        # The total space for user data storage in the device in bytes.
        # Corresponds to the JSON property `totalDiskBytes`
        # @return [Fixnum]
        attr_accessor :total_disk_bytes
      
        # Information for disk volumes
        # Corresponds to the JSON property `volume`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfoDiskVolume>]
        attr_accessor :volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_disk_bytes = args[:available_disk_bytes] if args.key?(:available_disk_bytes)
          @total_disk_bytes = args[:total_disk_bytes] if args.key?(:total_disk_bytes)
          @volume = args[:volume] if args.key?(:volume)
        end
      end
      
      # Information for disk volumes
      class GoogleChromeManagementV1StorageInfoDiskVolume
        include Google::Apis::Core::Hashable
      
        # Free storage space in bytes.
        # Corresponds to the JSON property `storageFreeBytes`
        # @return [Fixnum]
        attr_accessor :storage_free_bytes
      
        # Total storage space in bytes.
        # Corresponds to the JSON property `storageTotalBytes`
        # @return [Fixnum]
        attr_accessor :storage_total_bytes
      
        # Disk volume id.
        # Corresponds to the JSON property `volumeId`
        # @return [String]
        attr_accessor :volume_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_free_bytes = args[:storage_free_bytes] if args.key?(:storage_free_bytes)
          @storage_total_bytes = args[:storage_total_bytes] if args.key?(:storage_total_bytes)
          @volume_id = args[:volume_id] if args.key?(:volume_id)
        end
      end
      
      # Status data for storage. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.
      # google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only
      # at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes
      # * Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_STORAGE_REPORT
      class GoogleChromeManagementV1StorageStatusReport
        include Google::Apis::Core::Hashable
      
        # Output only. Reports on disk.
        # Corresponds to the JSON property `disk`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DiskInfo>]
        attr_accessor :disk
      
        # Output only. Timestamp of when the sample was collected on device
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk = args[:disk] if args.key?(:disk)
          @report_time = args[:report_time] if args.key?(:report_time)
        end
      end
      
      # App installation data.
      class GoogleChromeManagementV1TelemetryAppInstallEvent
        include Google::Apis::Core::Hashable
      
        # App id. For PWAs this is the start URL, and for extensions this is the
        # extension id.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # App installation reason.
        # Corresponds to the JSON property `appInstallReason`
        # @return [String]
        attr_accessor :app_install_reason
      
        # App installation source.
        # Corresponds to the JSON property `appInstallSource`
        # @return [String]
        attr_accessor :app_install_source
      
        # App installation time depending on the app lifecycle.
        # Corresponds to the JSON property `appInstallTime`
        # @return [String]
        attr_accessor :app_install_time
      
        # Type of app.
        # Corresponds to the JSON property `appType`
        # @return [String]
        attr_accessor :app_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_install_reason = args[:app_install_reason] if args.key?(:app_install_reason)
          @app_install_source = args[:app_install_source] if args.key?(:app_install_source)
          @app_install_time = args[:app_install_time] if args.key?(:app_install_time)
          @app_type = args[:app_type] if args.key?(:app_type)
        end
      end
      
      # App launch data.
      class GoogleChromeManagementV1TelemetryAppLaunchEvent
        include Google::Apis::Core::Hashable
      
        # App id. For PWAs this is the start URL, and for extensions this is the
        # extension id.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # App launch source.
        # Corresponds to the JSON property `appLaunchSource`
        # @return [String]
        attr_accessor :app_launch_source
      
        # Type of app.
        # Corresponds to the JSON property `appType`
        # @return [String]
        attr_accessor :app_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_launch_source = args[:app_launch_source] if args.key?(:app_launch_source)
          @app_type = args[:app_type] if args.key?(:app_type)
        end
      end
      
      # App uninstall data.
      class GoogleChromeManagementV1TelemetryAppUninstallEvent
        include Google::Apis::Core::Hashable
      
        # App id. For PWAs this is the start URL, and for extensions this is the
        # extension id.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Type of app.
        # Corresponds to the JSON property `appType`
        # @return [String]
        attr_accessor :app_type
      
        # App uninstall source.
        # Corresponds to the JSON property `appUninstallSource`
        # @return [String]
        attr_accessor :app_uninstall_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_type = args[:app_type] if args.key?(:app_type)
          @app_uninstall_source = args[:app_uninstall_source] if args.key?(:app_uninstall_source)
        end
      end
      
      # `TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run out
      # of buffer data for more than 5 seconds. * Granular permission needed:
      # TELEMETRY_API_AUDIO_REPORT
      class GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Telemetry data collected from a managed device. * Granular permission needed:
      # TELEMETRY_API_DEVICE
      class GoogleChromeManagementV1TelemetryDevice
        include Google::Apis::Core::Hashable
      
        # Output only. App reports collected periodically sorted in a decreasing order
        # of report_time.
        # Corresponds to the JSON property `appReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppReport>]
        attr_accessor :app_report
      
        # Output only. Audio reports collected periodically sorted in a decreasing order
        # of report_time.
        # Corresponds to the JSON property `audioStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport>]
        attr_accessor :audio_status_report
      
        # Output only. Information on battery specs for the device.
        # Corresponds to the JSON property `batteryInfo`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryInfo>]
        attr_accessor :battery_info
      
        # Output only. Battery reports collected periodically.
        # Corresponds to the JSON property `batteryStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BatteryStatusReport>]
        attr_accessor :battery_status_report
      
        # Output only. Boot performance reports of the device.
        # Corresponds to the JSON property `bootPerformanceReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BootPerformanceReport>]
        attr_accessor :boot_performance_report
      
        # Output only. Information regarding CPU specs for the device.
        # Corresponds to the JSON property `cpuInfo`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuInfo>]
        attr_accessor :cpu_info
      
        # Output only. CPU status reports collected periodically sorted in a decreasing
        # order of report_time.
        # Corresponds to the JSON property `cpuStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CpuStatusReport>]
        attr_accessor :cpu_status_report
      
        # Output only. Google Workspace Customer whose enterprise enrolled the device.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Output only. The unique Directory API ID of the device. This value is the same
        # as the Admin Console's Directory API ID in the ChromeOS Devices tab
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Information of the graphics subsystem. * This field provides device
        # information, which is static and will not change over time. * Data for this
        # field is controlled via policy: [ReportDeviceGraphicsStatus](https://
        # chromeenterprise.google/policies/#ReportDeviceGraphicsStatus) * Data
        # Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3
        # hours - Policy Controlled: Yes * Cache: If the device is offline, the
        # collected data is stored locally, and will be reported when the device is next
        # online: No * Reported for affiliated users only: N/A * Granular permission
        # needed: TELEMETRY_API_GRAPHICS_INFO
        # Corresponds to the JSON property `graphicsInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsInfo]
        attr_accessor :graphics_info
      
        # Output only. Graphics reports collected periodically.
        # Corresponds to the JSON property `graphicsStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsStatusReport>]
        attr_accessor :graphics_status_report
      
        # Output only. Heartbeat status report containing timestamps periodically sorted
        # in decreasing order of report_time
        # Corresponds to the JSON property `heartbeatStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HeartbeatStatusReport>]
        attr_accessor :heartbeat_status_report
      
        # Output only. Kiosk app status report for the kiosk device
        # Corresponds to the JSON property `kioskAppStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1KioskAppStatusReport>]
        attr_accessor :kiosk_app_status_report
      
        # Memory information of a device. * This field has both telemetry and device
        # information: - `totalRamBytes` - Device information - `availableRamBytes` -
        # Telemetry information - `totalMemoryEncryption` - Device information * Data
        # for this field is controlled via policy: [ReportDeviceMemoryInfo](https://
        # chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection
        # Frequency: - `totalRamBytes` - Only at upload - `availableRamBytes` - Every 10
        # minutes - `totalMemoryEncryption` - at device startup * Default Data Reporting
        # Frequency: - `totalRamBytes` - 3 hours - `availableRamBytes` - 3 hours - `
        # totalMemoryEncryption` - at device startup - Policy Controlled: Yes * Cache:
        # If the device is offline, the collected data is stored locally, and will be
        # reported when the device is next online: only for `totalMemoryEncryption` *
        # Reported for affiliated users only: N/A * Granular permission needed:
        # TELEMETRY_API_MEMORY_INFO
        # Corresponds to the JSON property `memoryInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryInfo]
        attr_accessor :memory_info
      
        # Output only. Memory status reports collected periodically sorted decreasing by
        # report_time.
        # Corresponds to the JSON property `memoryStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1MemoryStatusReport>]
        attr_accessor :memory_status_report
      
        # Output only. Resource name of the device.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Network bandwidth reports collected periodically sorted in a
        # decreasing order of report_time.
        # Corresponds to the JSON property `networkBandwidthReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkBandwidthReport>]
        attr_accessor :network_bandwidth_report
      
        # Output only. Network diagnostics collected periodically.
        # Corresponds to the JSON property `networkDiagnosticsReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkDiagnosticsReport>]
        attr_accessor :network_diagnostics_report
      
        # Network device information. * This field provides device information, which is
        # static and will not change over time. * Data for this field is controlled via
        # policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/
        # policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At
        # device startup * Default Data Reporting Frequency: At device startup - Policy
        # Controlled: Yes * Cache: If the device is offline, the collected data is
        # stored locally, and will be reported when the device is next online: Yes *
        # Reported for affiliated users only: N/A * Granular permission needed:
        # TELEMETRY_API_NETWORK_INFO
        # Corresponds to the JSON property `networkInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkInfo]
        attr_accessor :network_info
      
        # Output only. Network specs collected periodically.
        # Corresponds to the JSON property `networkStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkStatusReport>]
        attr_accessor :network_status_report
      
        # Output only. Organization unit ID of the device.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # Output only. Contains relevant information regarding ChromeOS update status.
        # Corresponds to the JSON property `osUpdateStatus`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1OsUpdateStatus>]
        attr_accessor :os_update_status
      
        # Output only. Peripherals reports collected periodically sorted in a decreasing
        # order of report_time.
        # Corresponds to the JSON property `peripheralsReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport>]
        attr_accessor :peripherals_report
      
        # Output only. Runtime counters reports collected device lifetime runtime, as
        # well as the counts of S0->S3, S0->S4, and S0->S5 transitions, meaning entering
        # into sleep, hibernation, and power-off states
        # Corresponds to the JSON property `runtimeCountersReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1RuntimeCountersReport>]
        attr_accessor :runtime_counters_report
      
        # Output only. Device serial number. This value is the same as the Admin Console'
        # s Serial Number in the ChromeOS Devices tab.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Status data for storage. * This field is telemetry information and this will
        # change over time as the device is utilized. * Data for this field is
        # controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.
        # google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only
        # at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes
        # * Cache: If the device is offline, the collected data is stored locally, and
        # will be reported when the device is next online: No * Reported for affiliated
        # users only: N/A * Granular permission needed: TELEMETRY_API_STORAGE_INFO
        # Corresponds to the JSON property `storageInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageInfo]
        attr_accessor :storage_info
      
        # Output only. Storage reports collected periodically.
        # Corresponds to the JSON property `storageStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1StorageStatusReport>]
        attr_accessor :storage_status_report
      
        # Output only. Information on Thunderbolt bus.
        # Corresponds to the JSON property `thunderboltInfo`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ThunderboltInfo>]
        attr_accessor :thunderbolt_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_report = args[:app_report] if args.key?(:app_report)
          @audio_status_report = args[:audio_status_report] if args.key?(:audio_status_report)
          @battery_info = args[:battery_info] if args.key?(:battery_info)
          @battery_status_report = args[:battery_status_report] if args.key?(:battery_status_report)
          @boot_performance_report = args[:boot_performance_report] if args.key?(:boot_performance_report)
          @cpu_info = args[:cpu_info] if args.key?(:cpu_info)
          @cpu_status_report = args[:cpu_status_report] if args.key?(:cpu_status_report)
          @customer = args[:customer] if args.key?(:customer)
          @device_id = args[:device_id] if args.key?(:device_id)
          @graphics_info = args[:graphics_info] if args.key?(:graphics_info)
          @graphics_status_report = args[:graphics_status_report] if args.key?(:graphics_status_report)
          @heartbeat_status_report = args[:heartbeat_status_report] if args.key?(:heartbeat_status_report)
          @kiosk_app_status_report = args[:kiosk_app_status_report] if args.key?(:kiosk_app_status_report)
          @memory_info = args[:memory_info] if args.key?(:memory_info)
          @memory_status_report = args[:memory_status_report] if args.key?(:memory_status_report)
          @name = args[:name] if args.key?(:name)
          @network_bandwidth_report = args[:network_bandwidth_report] if args.key?(:network_bandwidth_report)
          @network_diagnostics_report = args[:network_diagnostics_report] if args.key?(:network_diagnostics_report)
          @network_info = args[:network_info] if args.key?(:network_info)
          @network_status_report = args[:network_status_report] if args.key?(:network_status_report)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @os_update_status = args[:os_update_status] if args.key?(:os_update_status)
          @peripherals_report = args[:peripherals_report] if args.key?(:peripherals_report)
          @runtime_counters_report = args[:runtime_counters_report] if args.key?(:runtime_counters_report)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @storage_info = args[:storage_info] if args.key?(:storage_info)
          @storage_status_report = args[:storage_status_report] if args.key?(:storage_status_report)
          @thunderbolt_info = args[:thunderbolt_info] if args.key?(:thunderbolt_info)
        end
      end
      
      # Information about a device associated with telemetry data. * Granular
      # Permission needed: TELEMETRY_API_DEVICE
      class GoogleChromeManagementV1TelemetryDeviceInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The unique Directory API ID of the device. This value is the same
        # as the Admin Console's Directory API ID in the ChromeOS Devices tab.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Output only. Organization unit ID of the device.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
        end
      end
      
      # Telemetry data reported by a managed device.
      class GoogleChromeManagementV1TelemetryEvent
        include Google::Apis::Core::Hashable
      
        # App installation data.
        # Corresponds to the JSON property `appInstallEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppInstallEvent]
        attr_accessor :app_install_event
      
        # App launch data.
        # Corresponds to the JSON property `appLaunchEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppLaunchEvent]
        attr_accessor :app_launch_event
      
        # App uninstall data.
        # Corresponds to the JSON property `appUninstallEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAppUninstallEvent]
        attr_accessor :app_uninstall_event
      
        # `TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run out
        # of buffer data for more than 5 seconds. * Granular permission needed:
        # TELEMETRY_API_AUDIO_REPORT
        # Corresponds to the JSON property `audioSevereUnderrunEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent]
        attr_accessor :audio_severe_underrun_event
      
        # Information about a device associated with telemetry data. * Granular
        # Permission needed: TELEMETRY_API_DEVICE
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDeviceInfo]
        attr_accessor :device
      
        # The event type of the current event.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # External display connected/disconnected event payload.
        # Corresponds to the JSON property `externalDisplaysEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryExternalDisplayEvent]
        attr_accessor :external_displays_event
      
        # Https latency routine is run periodically and `
        # TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was
        # detected or if the device has recovered from a latency problem. * Granular
        # permission needed: TELEMETRY_API_NETWORK_REPORT
        # Corresponds to the JSON property `httpsLatencyChangeEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent]
        attr_accessor :https_latency_change_event
      
        # Output only. Resource name of the event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # `TelemetryNetworkConnectionStateChangeEvent` is triggered on network
        # connection state changes. * Granular permission needed:
        # TELEMETRY_API_NETWORK_REPORT
        # Corresponds to the JSON property `networkStateChangeEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent]
        attr_accessor :network_state_change_event
      
        # OS crash data.
        # Corresponds to the JSON property `osCrashEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryOsCrashEvent]
        attr_accessor :os_crash_event
      
        # Timestamp that represents when the event was reported.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # `TelemetryUsbPeripheralsEvent` is triggered USB devices are either added or
        # removed. * Granular permission needed: TELEMETRY_API_PERIPHERALS_REPORT
        # Corresponds to the JSON property `usbPeripheralsEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUsbPeripheralsEvent]
        attr_accessor :usb_peripherals_event
      
        # Information about a user associated with telemetry data. * Granular permission
        # needed: TELEMETRY_API_USER
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserInfo]
        attr_accessor :user
      
        # `TelemetryNetworkConnectionStateChangeEvent` is triggered on network
        # connection state changes. * Granular permission needed:
        # TELEMETRY_API_NETWORK_REPORT
        # Corresponds to the JSON property `vpnConnectionStateChangeEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent]
        attr_accessor :vpn_connection_state_change_event
      
        # `TelemetryNetworkSignalStrengthEvent` is triggered on WiFi signal strength
        # events. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
        # Corresponds to the JSON property `wifiSignalStrengthEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent]
        attr_accessor :wifi_signal_strength_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_install_event = args[:app_install_event] if args.key?(:app_install_event)
          @app_launch_event = args[:app_launch_event] if args.key?(:app_launch_event)
          @app_uninstall_event = args[:app_uninstall_event] if args.key?(:app_uninstall_event)
          @audio_severe_underrun_event = args[:audio_severe_underrun_event] if args.key?(:audio_severe_underrun_event)
          @device = args[:device] if args.key?(:device)
          @event_type = args[:event_type] if args.key?(:event_type)
          @external_displays_event = args[:external_displays_event] if args.key?(:external_displays_event)
          @https_latency_change_event = args[:https_latency_change_event] if args.key?(:https_latency_change_event)
          @name = args[:name] if args.key?(:name)
          @network_state_change_event = args[:network_state_change_event] if args.key?(:network_state_change_event)
          @os_crash_event = args[:os_crash_event] if args.key?(:os_crash_event)
          @report_time = args[:report_time] if args.key?(:report_time)
          @usb_peripherals_event = args[:usb_peripherals_event] if args.key?(:usb_peripherals_event)
          @user = args[:user] if args.key?(:user)
          @vpn_connection_state_change_event = args[:vpn_connection_state_change_event] if args.key?(:vpn_connection_state_change_event)
          @wifi_signal_strength_event = args[:wifi_signal_strength_event] if args.key?(:wifi_signal_strength_event)
        end
      end
      
      # Configures how the telemetry events should be filtered.
      class GoogleChromeManagementV1TelemetryEventNotificationFilter
        include Google::Apis::Core::Hashable
      
        # Only sends the notifications for events of these types. Must not be empty.
        # Corresponds to the JSON property `eventTypes`
        # @return [Array<String>]
        attr_accessor :event_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_types = args[:event_types] if args.key?(:event_types)
        end
      end
      
      # External display data.
      class GoogleChromeManagementV1TelemetryExternalDisplayData
        include Google::Apis::Core::Hashable
      
        # The display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The EDID version.
        # Corresponds to the JSON property `edidVersion`
        # @return [String]
        attr_accessor :edid_version
      
        # The refresh rate.
        # Corresponds to the JSON property `refreshRate`
        # @return [Fixnum]
        attr_accessor :refresh_rate
      
        # The horizontal resolution.
        # Corresponds to the JSON property `resolutionHorizontal`
        # @return [Fixnum]
        attr_accessor :resolution_horizontal
      
        # The vertical resolution.
        # Corresponds to the JSON property `resolutionVertical`
        # @return [Fixnum]
        attr_accessor :resolution_vertical
      
        # The serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [Fixnum]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @edid_version = args[:edid_version] if args.key?(:edid_version)
          @refresh_rate = args[:refresh_rate] if args.key?(:refresh_rate)
          @resolution_horizontal = args[:resolution_horizontal] if args.key?(:resolution_horizontal)
          @resolution_vertical = args[:resolution_vertical] if args.key?(:resolution_vertical)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # External display connected/disconnected event payload.
      class GoogleChromeManagementV1TelemetryExternalDisplayEvent
        include Google::Apis::Core::Hashable
      
        # List of external displays that were connected/disconnected.
        # Corresponds to the JSON property `externalDisplayData`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryExternalDisplayData>]
        attr_accessor :external_display_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_display_data = args[:external_display_data] if args.key?(:external_display_data)
        end
      end
      
      # Https latency routine is run periodically and `
      # TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was
      # detected or if the device has recovered from a latency problem. * Granular
      # permission needed: TELEMETRY_API_NETWORK_REPORT
      class GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
        include Google::Apis::Core::Hashable
      
        # Data that describes the result of the HTTPS latency diagnostics routine, with
        # the HTTPS requests issued to Google websites.
        # Corresponds to the JSON property `httpsLatencyRoutineData`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1HttpsLatencyRoutineData]
        attr_accessor :https_latency_routine_data
      
        # Current HTTPS latency state.
        # Corresponds to the JSON property `httpsLatencyState`
        # @return [String]
        attr_accessor :https_latency_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @https_latency_routine_data = args[:https_latency_routine_data] if args.key?(:https_latency_routine_data)
          @https_latency_state = args[:https_latency_state] if args.key?(:https_latency_state)
        end
      end
      
      # `TelemetryNetworkConnectionStateChangeEvent` is triggered on network
      # connection state changes. * Granular permission needed:
      # TELEMETRY_API_NETWORK_REPORT
      class GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent
        include Google::Apis::Core::Hashable
      
        # Current connection state of the network.
        # Corresponds to the JSON property `connectionState`
        # @return [String]
        attr_accessor :connection_state
      
        # Unique identifier of the network.
        # Corresponds to the JSON property `guid`
        # @return [String]
        attr_accessor :guid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_state = args[:connection_state] if args.key?(:connection_state)
          @guid = args[:guid] if args.key?(:guid)
        end
      end
      
      # `TelemetryNetworkSignalStrengthEvent` is triggered on WiFi signal strength
      # events. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
      class GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the network.
        # Corresponds to the JSON property `guid`
        # @return [String]
        attr_accessor :guid
      
        # Signal strength RSSI value.
        # Corresponds to the JSON property `signalStrengthDbm`
        # @return [Fixnum]
        attr_accessor :signal_strength_dbm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guid = args[:guid] if args.key?(:guid)
          @signal_strength_dbm = args[:signal_strength_dbm] if args.key?(:signal_strength_dbm)
        end
      end
      
      # Configuration to receive notifications of telemetry data.
      class GoogleChromeManagementV1TelemetryNotificationConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Google Workspace customer that owns the resource.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Configures how the telemetry data should be filtered.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationFilter]
        attr_accessor :filter
      
        # The pubsub topic to which notifications are published to.
        # Corresponds to the JSON property `googleCloudPubsubTopic`
        # @return [String]
        attr_accessor :google_cloud_pubsub_topic
      
        # Output only. Resource name of the notification configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @filter = args[:filter] if args.key?(:filter)
          @google_cloud_pubsub_topic = args[:google_cloud_pubsub_topic] if args.key?(:google_cloud_pubsub_topic)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Configures how the telemetry data should be filtered.
      class GoogleChromeManagementV1TelemetryNotificationFilter
        include Google::Apis::Core::Hashable
      
        # If set, only sends notifications for telemetry data coming from this device.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # If set, only sends notifications for telemetry data coming from devices in
        # this org unit.
        # Corresponds to the JSON property `deviceOrgUnitId`
        # @return [String]
        attr_accessor :device_org_unit_id
      
        # Configures how the telemetry events should be filtered.
        # Corresponds to the JSON property `telemetryEventNotificationFilter`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryEventNotificationFilter]
        attr_accessor :telemetry_event_notification_filter
      
        # If set, only sends notifications for telemetry data coming from devices owned
        # by this user.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        # If set, only sends notifications for telemetry data coming from devices owned
        # by users in this org unit.
        # Corresponds to the JSON property `userOrgUnitId`
        # @return [String]
        attr_accessor :user_org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_org_unit_id = args[:device_org_unit_id] if args.key?(:device_org_unit_id)
          @telemetry_event_notification_filter = args[:telemetry_event_notification_filter] if args.key?(:telemetry_event_notification_filter)
          @user_email = args[:user_email] if args.key?(:user_email)
          @user_org_unit_id = args[:user_org_unit_id] if args.key?(:user_org_unit_id)
        end
      end
      
      # OS crash data.
      class GoogleChromeManagementV1TelemetryOsCrashEvent
        include Google::Apis::Core::Hashable
      
        # Crash id.
        # Corresponds to the JSON property `crashId`
        # @return [String]
        attr_accessor :crash_id
      
        # Crash type.
        # Corresponds to the JSON property `crashType`
        # @return [String]
        attr_accessor :crash_type
      
        # Session type.
        # Corresponds to the JSON property `sessionType`
        # @return [String]
        attr_accessor :session_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crash_id = args[:crash_id] if args.key?(:crash_id)
          @crash_type = args[:crash_type] if args.key?(:crash_type)
          @session_type = args[:session_type] if args.key?(:session_type)
        end
      end
      
      # `TelemetryUsbPeripheralsEvent` is triggered USB devices are either added or
      # removed. * Granular permission needed: TELEMETRY_API_PERIPHERALS_REPORT
      class GoogleChromeManagementV1TelemetryUsbPeripheralsEvent
        include Google::Apis::Core::Hashable
      
        # List of usb devices that were either added or removed.
        # Corresponds to the JSON property `usbPeripheralReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1UsbPeripheralReport>]
        attr_accessor :usb_peripheral_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @usb_peripheral_report = args[:usb_peripheral_report] if args.key?(:usb_peripheral_report)
        end
      end
      
      # Telemetry data collected from a managed user. * Granular permission needed:
      # TELEMETRY_API_USER
      class GoogleChromeManagementV1TelemetryUser
        include Google::Apis::Core::Hashable
      
        # G Suite Customer whose enterprise enrolled the device.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Resource name of the user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Organization unit of the user.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # Telemetry data collected from a managed user and device.
        # Corresponds to the JSON property `userDevice`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserDevice>]
        attr_accessor :user_device
      
        # Email address of the user.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        # Directory ID of the user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @user_device = args[:user_device] if args.key?(:user_device)
          @user_email = args[:user_email] if args.key?(:user_email)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Telemetry data collected for a managed user and device. * Granular permission
      # needed: TELEMETRY_API_DEVICE
      class GoogleChromeManagementV1TelemetryUserDevice
        include Google::Apis::Core::Hashable
      
        # Output only. App reports collected periodically sorted in a decreasing order
        # of report_time.
        # Corresponds to the JSON property `appReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppReport>]
        attr_accessor :app_report
      
        # Output only. Audio reports collected periodically sorted in a decreasing order
        # of report_time.
        # Corresponds to the JSON property `audioStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AudioStatusReport>]
        attr_accessor :audio_status_report
      
        # Output only. Device activity reports collected periodically sorted in a
        # decreasing order of report_time.
        # Corresponds to the JSON property `deviceActivityReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1DeviceActivityReport>]
        attr_accessor :device_activity_report
      
        # The unique Directory API ID of the device. This value is the same as the Admin
        # Console's Directory API ID in the ChromeOS Devices tab.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Output only. Network bandwidth reports collected periodically sorted in a
        # decreasing order of report_time.
        # Corresponds to the JSON property `networkBandwidthReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1NetworkBandwidthReport>]
        attr_accessor :network_bandwidth_report
      
        # Output only. Peripherals reports collected periodically sorted in a decreasing
        # order of report_time.
        # Corresponds to the JSON property `peripheralsReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1PeripheralsReport>]
        attr_accessor :peripherals_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_report = args[:app_report] if args.key?(:app_report)
          @audio_status_report = args[:audio_status_report] if args.key?(:audio_status_report)
          @device_activity_report = args[:device_activity_report] if args.key?(:device_activity_report)
          @device_id = args[:device_id] if args.key?(:device_id)
          @network_bandwidth_report = args[:network_bandwidth_report] if args.key?(:network_bandwidth_report)
          @peripherals_report = args[:peripherals_report] if args.key?(:peripherals_report)
        end
      end
      
      # Information about a user associated with telemetry data. * Granular permission
      # needed: TELEMETRY_API_USER
      class GoogleChromeManagementV1TelemetryUserInfo
        include Google::Apis::Core::Hashable
      
        # Output only. User's email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. Organization unit ID of the user.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
        end
      end
      
      # Thunderbolt bus info. * This field provides device information, which is
      # static and will not change over time. * Data for this field is controlled via
      # policy: [ReportDeviceSecurityStatus](https://chromeenterprise.google/policies/#
      # ReportDeviceSecurityStatus) * Data Collection Frequency: At device startup *
      # Default Data Reporting Frequency: At device startup - Policy Controlled: No *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: Yes * Reported for affiliated
      # users only: N/A * Granular permission needed: TELEMETRY_API_BUS_DEVICE_INFO
      class GoogleChromeManagementV1ThunderboltInfo
        include Google::Apis::Core::Hashable
      
        # Security level of the Thunderbolt bus.
        # Corresponds to the JSON property `securityLevel`
        # @return [String]
        attr_accessor :security_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @security_level = args[:security_level] if args.key?(:security_level)
        end
      end
      
      # Memory encryption information of a device. * This field provides device
      # information, which is static and will not change over time. * Data for this
      # field is controlled via policy: [ReportDeviceMemoryInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection
      # Frequency: At device startup * Default Data Reporting Frequency: At device
      # startup - Policy Controlled: Yes * Cache: If the device is offline, the
      # collected data is stored locally, and will be reported when the device is next
      # online: Yes * Reported for affiliated users only: N/A
      class GoogleChromeManagementV1TotalMemoryEncryptionInfo
        include Google::Apis::Core::Hashable
      
        # Memory encryption algorithm.
        # Corresponds to the JSON property `encryptionAlgorithm`
        # @return [String]
        attr_accessor :encryption_algorithm
      
        # The state of memory encryption on the device.
        # Corresponds to the JSON property `encryptionState`
        # @return [String]
        attr_accessor :encryption_state
      
        # The length of the encryption keys.
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # The maximum number of keys that can be used for encryption.
        # Corresponds to the JSON property `maxKeys`
        # @return [Fixnum]
        attr_accessor :max_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_algorithm = args[:encryption_algorithm] if args.key?(:encryption_algorithm)
          @encryption_state = args[:encryption_state] if args.key?(:encryption_state)
          @key_length = args[:key_length] if args.key?(:key_length)
          @max_keys = args[:max_keys] if args.key?(:max_keys)
        end
      end
      
      # Information of an internal touch screen device.
      class GoogleChromeManagementV1TouchScreenDevice
        include Google::Apis::Core::Hashable
      
        # Output only. Touch screen device display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Touch screen device is stylus capable or not.
        # Corresponds to the JSON property `stylusCapable`
        # @return [Boolean]
        attr_accessor :stylus_capable
        alias_method :stylus_capable?, :stylus_capable
      
        # Output only. Number of touch points supported on the device.
        # Corresponds to the JSON property `touchPointCount`
        # @return [Fixnum]
        attr_accessor :touch_point_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @stylus_capable = args[:stylus_capable] if args.key?(:stylus_capable)
          @touch_point_count = args[:touch_point_count] if args.key?(:touch_point_count)
        end
      end
      
      # Information on the device touch screen.
      class GoogleChromeManagementV1TouchScreenInfo
        include Google::Apis::Core::Hashable
      
        # Output only. List of the internal touch screen devices.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TouchScreenDevice>]
        attr_accessor :devices
      
        # Output only. Touchpad library name used by the input stack.
        # Corresponds to the JSON property `touchpadLibrary`
        # @return [String]
        attr_accessor :touchpad_library
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @touchpad_library = args[:touchpad_library] if args.key?(:touchpad_library)
        end
      end
      
      # USB connected peripheral report.
      class GoogleChromeManagementV1UsbPeripheralReport
        include Google::Apis::Core::Hashable
      
        # Output only. Categories the device belongs to https://www.usb.org/defined-
        # class-codes
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Output only. Class ID https://www.usb.org/defined-class-codes
        # Corresponds to the JSON property `classId`
        # @return [Fixnum]
        attr_accessor :class_id
      
        # Output only. Firmware version
        # Corresponds to the JSON property `firmwareVersion`
        # @return [String]
        attr_accessor :firmware_version
      
        # Output only. Device name, model name, or product name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Product ID
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # Output only. Subclass ID https://www.usb.org/defined-class-codes
        # Corresponds to the JSON property `subclassId`
        # @return [Fixnum]
        attr_accessor :subclass_id
      
        # Output only. Vendor name
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        # Output only. Vendor ID
        # Corresponds to the JSON property `vid`
        # @return [Fixnum]
        attr_accessor :vid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @class_id = args[:class_id] if args.key?(:class_id)
          @firmware_version = args[:firmware_version] if args.key?(:firmware_version)
          @name = args[:name] if args.key?(:name)
          @pid = args[:pid] if args.key?(:pid)
          @subclass_id = args[:subclass_id] if args.key?(:subclass_id)
          @vendor = args[:vendor] if args.key?(:vendor)
          @vid = args[:vid] if args.key?(:vid)
        end
      end
      
      # Report for CountPrintJobsByUser, contains printing statistics for a user.
      # Contains the number of printers, the number of devices used to initiate print
      # jobs, and the number of print jobs initiated.
      class GoogleChromeManagementV1UserPrintReport
        include Google::Apis::Core::Hashable
      
        # Number of chrome devices that have been used to initiate print jobs by the
        # user.
        # Corresponds to the JSON property `deviceCount`
        # @return [Fixnum]
        attr_accessor :device_count
      
        # Number of print jobs initiated by the user.
        # Corresponds to the JSON property `jobCount`
        # @return [Fixnum]
        attr_accessor :job_count
      
        # Number of printers used by the user.
        # Corresponds to the JSON property `printerCount`
        # @return [Fixnum]
        attr_accessor :printer_count
      
        # The primary e-mail address of the user.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        # The unique Directory API ID of the user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_count = args[:device_count] if args.key?(:device_count)
          @job_count = args[:job_count] if args.key?(:job_count)
          @printer_count = args[:printer_count] if args.key?(:printer_count)
          @user_email = args[:user_email] if args.key?(:user_email)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Details of a user requesting an extension, including the email and the
      # justification.
      class GoogleChromeManagementV1UserRequestingExtensionDetails
        include Google::Apis::Core::Hashable
      
        # The e-mail address of a user that has requested the extension.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Request justification as entered by the user.
        # Corresponds to the JSON property `justification`
        # @return [String]
        attr_accessor :justification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @justification = args[:justification] if args.key?(:justification)
        end
      end
      
      # Information of public key associated with a Chrome browser profile.
      class GoogleChromeManagementVersionsV1AttestationCredential
        include Google::Apis::Core::Hashable
      
        # Output only. Latest rotation timestamp of the public key rotation.
        # Corresponds to the JSON property `keyRotationTime`
        # @return [String]
        attr_accessor :key_rotation_time
      
        # Output only. Trust level of the public key.
        # Corresponds to the JSON property `keyTrustLevel`
        # @return [String]
        attr_accessor :key_trust_level
      
        # Output only. Type of the public key.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # Output only. Value of the public key.
        # Corresponds to the JSON property `publicKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_rotation_time = args[:key_rotation_time] if args.key?(:key_rotation_time)
          @key_trust_level = args[:key_trust_level] if args.key?(:key_trust_level)
          @key_type = args[:key_type] if args.key?(:key_type)
          @public_key = args[:public_key] if args.key?(:public_key)
        end
      end
      
      # A certificate provisioning process.
      class GoogleChromeManagementVersionsV1CertificateProvisioningProcess
        include Google::Apis::Core::Hashable
      
        # Describes the ChromeOS device that a `CertificateProvisioningProcess` belongs
        # to.
        # Corresponds to the JSON property `chromeOsDevice`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsDevice]
        attr_accessor :chrome_os_device
      
        # Describes the ChromeOS user session that a `CertificateProvisioningProcess`
        # belongs to.
        # Corresponds to the JSON property `chromeOsUserSession`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsUserSession]
        attr_accessor :chrome_os_user_session
      
        # Output only. A message describing why this `CertificateProvisioningProcess`
        # has failed. Presence of this field indicates that the `
        # CertificateProvisioningProcess` has failed.
        # Corresponds to the JSON property `failureMessage`
        # @return [String]
        attr_accessor :failure_message
      
        # Describes a generic Certificate Authority Connection.
        # Corresponds to the JSON property `genericCaConnection`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1GenericCaConnection]
        attr_accessor :generic_ca_connection
      
        # Describes a generic certificate provisioning profile.
        # Corresponds to the JSON property `genericProfile`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1GenericProfile]
        attr_accessor :generic_profile
      
        # Output only. The issued certificate for this `CertificateProvisioningProcess`
        # in PEM format.
        # Corresponds to the JSON property `issuedCertificate`
        # @return [String]
        attr_accessor :issued_certificate
      
        # Identifier. Resource name of the `CertificateProvisioningProcess`. The name
        # pattern is given as `customers/`customer`/certificateProvisioningProcesses/`
        # certificate_provisioning_process`` with ``customer`` being the obfuscated
        # customer id and ``certificate_provisioning_process`` being the certificate
        # provisioning process id.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The ID of the certificate provisioning profile.
        # Corresponds to the JSON property `provisioningProfileId`
        # @return [String]
        attr_accessor :provisioning_profile_id
      
        # Describes a SCEP Certificate Authority Connection.
        # Corresponds to the JSON property `scepCaConnection`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ScepCaConnection]
        attr_accessor :scep_ca_connection
      
        # Describes a SCEP certificate provisioning profile.
        # Corresponds to the JSON property `scepProfile`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ScepProfile]
        attr_accessor :scep_profile
      
        # Output only. The data that the client was asked to sign. This field is only
        # present after the `SignData` operation has been initiated.
        # Corresponds to the JSON property `signData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sign_data
      
        # Output only. The signature of `signature_algorithm`, generated using the
        # client's private key using `signature_algorithm`. This field is only present
        # after the `SignData` operation has finished.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        # Output only. The signature algorithm that the client and backend components
        # use when processing `sign_data`. If the `profile_type` is a `GenericProfile`,
        # this field will only be present after the `SignData` operation was initiated.
        # If the `profile_type` is a `ScepProfile`, the field will always be present.
        # Corresponds to the JSON property `signatureAlgorithm`
        # @return [String]
        attr_accessor :signature_algorithm
      
        # Output only. Server-generated timestamp of when the certificate provisioning
        # process has been created.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The public key for which a certificate should be provisioned.
        # Represented as a DER-encoded X.509 SubjectPublicKeyInfo.
        # Corresponds to the JSON property `subjectPublicKeyInfo`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :subject_public_key_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chrome_os_device = args[:chrome_os_device] if args.key?(:chrome_os_device)
          @chrome_os_user_session = args[:chrome_os_user_session] if args.key?(:chrome_os_user_session)
          @failure_message = args[:failure_message] if args.key?(:failure_message)
          @generic_ca_connection = args[:generic_ca_connection] if args.key?(:generic_ca_connection)
          @generic_profile = args[:generic_profile] if args.key?(:generic_profile)
          @issued_certificate = args[:issued_certificate] if args.key?(:issued_certificate)
          @name = args[:name] if args.key?(:name)
          @provisioning_profile_id = args[:provisioning_profile_id] if args.key?(:provisioning_profile_id)
          @scep_ca_connection = args[:scep_ca_connection] if args.key?(:scep_ca_connection)
          @scep_profile = args[:scep_profile] if args.key?(:scep_profile)
          @sign_data = args[:sign_data] if args.key?(:sign_data)
          @signature = args[:signature] if args.key?(:signature)
          @signature_algorithm = args[:signature_algorithm] if args.key?(:signature_algorithm)
          @start_time = args[:start_time] if args.key?(:start_time)
          @subject_public_key_info = args[:subject_public_key_info] if args.key?(:subject_public_key_info)
        end
      end
      
      # A representation of a Chrome browser profile.
      class GoogleChromeManagementVersionsV1ChromeBrowserProfile
        include Google::Apis::Core::Hashable
      
        # Output only. The specific affiliation state of the profile.
        # Corresponds to the JSON property `affiliationState`
        # @return [String]
        attr_accessor :affiliation_state
      
        # Optional. Location of the profile annotated by the admin.
        # Corresponds to the JSON property `annotatedLocation`
        # @return [String]
        attr_accessor :annotated_location
      
        # Optional. User of the profile annotated by the admin.
        # Corresponds to the JSON property `annotatedUser`
        # @return [String]
        attr_accessor :annotated_user
      
        # Information of public key associated with a Chrome browser profile.
        # Corresponds to the JSON property `attestationCredential`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1AttestationCredential]
        attr_accessor :attestation_credential
      
        # Output only. Channel of the browser on which the profile exists.
        # Corresponds to the JSON property `browserChannel`
        # @return [String]
        attr_accessor :browser_channel
      
        # Output only. Version of the browser on which the profile exists.
        # Corresponds to the JSON property `browserVersion`
        # @return [String]
        attr_accessor :browser_version
      
        # Information of a device that runs a Chrome browser profile.
        # Corresponds to the JSON property `deviceInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1DeviceInfo]
        attr_accessor :device_info
      
        # Output only. Profile display name set by client.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Etag of this ChromeBrowserProfile resource. This etag can be used
        # with UPDATE operation to ensure consistency.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Number of extensions installed on the profile.
        # Corresponds to the JSON property `extensionCount`
        # @return [Fixnum]
        attr_accessor :extension_count
      
        # Output only. Timestamp of the first enrollment of the profile.
        # Corresponds to the JSON property `firstEnrollmentTime`
        # @return [String]
        attr_accessor :first_enrollment_time
      
        # Output only. Identify provider of the profile.
        # Corresponds to the JSON property `identityProvider`
        # @return [String]
        attr_accessor :identity_provider
      
        # Output only. Timestamp of the latest activity by the profile.
        # Corresponds to the JSON property `lastActivityTime`
        # @return [String]
        attr_accessor :last_activity_time
      
        # Output only. Timestamp of the latest policy fetch by the profile.
        # Corresponds to the JSON property `lastPolicyFetchTime`
        # @return [String]
        attr_accessor :last_policy_fetch_time
      
        # Output only. Timestamp of the latest policy sync by the profile.
        # Corresponds to the JSON property `lastPolicySyncTime`
        # @return [String]
        attr_accessor :last_policy_sync_time
      
        # Output only. Timestamp of the latest status report by the profile.
        # Corresponds to the JSON property `lastStatusReportTime`
        # @return [String]
        attr_accessor :last_status_report_time
      
        # Identifier. Format: customers/`customer_id`/profiles/`profile_permanent_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. OS platform of the device on which the profile exists.
        # Corresponds to the JSON property `osPlatformType`
        # @return [String]
        attr_accessor :os_platform_type
      
        # Output only. Major OS platform version of the device on which the profile
        # exists, from profile reporting.
        # Corresponds to the JSON property `osPlatformVersion`
        # @return [String]
        attr_accessor :os_platform_version
      
        # Output only. OS version of the device on which the profile exists.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. Number of policies applied on the profile.
        # Corresponds to the JSON property `policyCount`
        # @return [Fixnum]
        attr_accessor :policy_count
      
        # Output only. Chrome client side profile ID.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # Output only. Profile permanent ID is the unique identifier of a profile within
        # one customer.
        # Corresponds to the JSON property `profilePermanentId`
        # @return [String]
        attr_accessor :profile_permanent_id
      
        # Reporting data of a Chrome browser profile.
        # Corresponds to the JSON property `reportingData`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingData]
        attr_accessor :reporting_data
      
        # Output only. Whether the profile supports FCM notifications.
        # Corresponds to the JSON property `supportsFcmNotifications`
        # @return [Boolean]
        attr_accessor :supports_fcm_notifications
        alias_method :supports_fcm_notifications?, :supports_fcm_notifications
      
        # Output only. Email address of the user to which the profile belongs.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        # Output only. Unique Directory API ID of the user that can be used in Admin SDK
        # Users API.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affiliation_state = args[:affiliation_state] if args.key?(:affiliation_state)
          @annotated_location = args[:annotated_location] if args.key?(:annotated_location)
          @annotated_user = args[:annotated_user] if args.key?(:annotated_user)
          @attestation_credential = args[:attestation_credential] if args.key?(:attestation_credential)
          @browser_channel = args[:browser_channel] if args.key?(:browser_channel)
          @browser_version = args[:browser_version] if args.key?(:browser_version)
          @device_info = args[:device_info] if args.key?(:device_info)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @extension_count = args[:extension_count] if args.key?(:extension_count)
          @first_enrollment_time = args[:first_enrollment_time] if args.key?(:first_enrollment_time)
          @identity_provider = args[:identity_provider] if args.key?(:identity_provider)
          @last_activity_time = args[:last_activity_time] if args.key?(:last_activity_time)
          @last_policy_fetch_time = args[:last_policy_fetch_time] if args.key?(:last_policy_fetch_time)
          @last_policy_sync_time = args[:last_policy_sync_time] if args.key?(:last_policy_sync_time)
          @last_status_report_time = args[:last_status_report_time] if args.key?(:last_status_report_time)
          @name = args[:name] if args.key?(:name)
          @os_platform_type = args[:os_platform_type] if args.key?(:os_platform_type)
          @os_platform_version = args[:os_platform_version] if args.key?(:os_platform_version)
          @os_version = args[:os_version] if args.key?(:os_version)
          @policy_count = args[:policy_count] if args.key?(:policy_count)
          @profile_id = args[:profile_id] if args.key?(:profile_id)
          @profile_permanent_id = args[:profile_permanent_id] if args.key?(:profile_permanent_id)
          @reporting_data = args[:reporting_data] if args.key?(:reporting_data)
          @supports_fcm_notifications = args[:supports_fcm_notifications] if args.key?(:supports_fcm_notifications)
          @user_email = args[:user_email] if args.key?(:user_email)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # A representation of a remote command for a Chrome browser profile.
      class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand
        include Google::Apis::Core::Hashable
      
        # Result of the execution of a command.
        # Corresponds to the JSON property `commandResult`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult]
        attr_accessor :command_result
      
        # Output only. State of the remote command.
        # Corresponds to the JSON property `commandState`
        # @return [String]
        attr_accessor :command_state
      
        # Required. Type of the remote command. The only supported command_type is "
        # clearBrowsingData".
        # Corresponds to the JSON property `commandType`
        # @return [String]
        attr_accessor :command_type
      
        # Output only. Timestamp of the issurance of the remote command.
        # Corresponds to the JSON property `issueTime`
        # @return [String]
        attr_accessor :issue_time
      
        # Identifier. Format: customers/`customer_id`/profiles/`profile_permanent_id`/
        # commands/`command_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Payload of the remote command. The payload for "clearBrowsingData"
        # command supports: - fields "clearCache" and "clearCookies" - values of boolean
        # type.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Output only. Valid duration of the remote command.
        # Corresponds to the JSON property `validDuration`
        # @return [String]
        attr_accessor :valid_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_result = args[:command_result] if args.key?(:command_result)
          @command_state = args[:command_state] if args.key?(:command_state)
          @command_type = args[:command_type] if args.key?(:command_type)
          @issue_time = args[:issue_time] if args.key?(:issue_time)
          @name = args[:name] if args.key?(:name)
          @payload = args[:payload] if args.key?(:payload)
          @valid_duration = args[:valid_duration] if args.key?(:valid_duration)
        end
      end
      
      # Result of the execution of a command.
      class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp of the client execution of the remote command.
        # Corresponds to the JSON property `clientExecutionTime`
        # @return [String]
        attr_accessor :client_execution_time
      
        # Output only. Result code that indicates the type of error or success of the
        # command.
        # Corresponds to the JSON property `resultCode`
        # @return [String]
        attr_accessor :result_code
      
        # Output only. Result type of the remote command.
        # Corresponds to the JSON property `resultType`
        # @return [String]
        attr_accessor :result_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_execution_time = args[:client_execution_time] if args.key?(:client_execution_time)
          @result_code = args[:result_code] if args.key?(:result_code)
          @result_type = args[:result_type] if args.key?(:result_type)
        end
      end
      
      # Describes the ChromeOS device that a `CertificateProvisioningProcess` belongs
      # to.
      class GoogleChromeManagementVersionsV1ChromeOsDevice
        include Google::Apis::Core::Hashable
      
        # Output only. The unique Directory API ID of the device. This value is the same
        # as the Admin Console's Directory API ID in the ChromeOS Devices tab.
        # Corresponds to the JSON property `deviceDirectoryApiId`
        # @return [String]
        attr_accessor :device_directory_api_id
      
        # Output only. Device serial number. This value is the same as the Admin Console'
        # s Serial Number in the ChromeOS Devices tab.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_directory_api_id = args[:device_directory_api_id] if args.key?(:device_directory_api_id)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Describes the ChromeOS user session that a `CertificateProvisioningProcess`
      # belongs to.
      class GoogleChromeManagementVersionsV1ChromeOsUserSession
        include Google::Apis::Core::Hashable
      
        # Describes the ChromeOS device that a `CertificateProvisioningProcess` belongs
        # to.
        # Corresponds to the JSON property `chromeOsDevice`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeOsDevice]
        attr_accessor :chrome_os_device
      
        # Output only. The unique Directory API ID of the user.
        # Corresponds to the JSON property `userDirectoryApiId`
        # @return [String]
        attr_accessor :user_directory_api_id
      
        # Output only. The primary e-mail address of the user.
        # Corresponds to the JSON property `userPrimaryEmail`
        # @return [String]
        attr_accessor :user_primary_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chrome_os_device = args[:chrome_os_device] if args.key?(:chrome_os_device)
          @user_directory_api_id = args[:user_directory_api_id] if args.key?(:user_directory_api_id)
          @user_primary_email = args[:user_primary_email] if args.key?(:user_primary_email)
        end
      end
      
      # Request message for claiming a certificate provisioning process.
      class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest
        include Google::Apis::Core::Hashable
      
        # Required. The instance id of the caller.
        # Corresponds to the JSON property `callerInstanceId`
        # @return [String]
        attr_accessor :caller_instance_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_instance_id = args[:caller_instance_id] if args.key?(:caller_instance_id)
        end
      end
      
      # Response message for claiming a certificate provisioning process.
      class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information of a device that runs a Chrome browser profile.
      class GoogleChromeManagementVersionsV1DeviceInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Device ID that identifies the affiliated device on which the
        # profile exists. If the device type is CHROME_BROWSER, then this represents a
        # unique Directory API ID of the device that can be used in Admin SDK Browsers
        # API.
        # Corresponds to the JSON property `affiliatedDeviceId`
        # @return [String]
        attr_accessor :affiliated_device_id
      
        # Output only. Type of the device on which the profile exists.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Output only. Hostname of the device on which the profile exists.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Output only. Machine name of the device on which the profile exists. On
        # platforms which do not report the machine name (currently iOS and Android)
        # this is instead set to the browser's device_id - but note that this is a
        # different device_id than the |affiliated_device_id|.
        # Corresponds to the JSON property `machine`
        # @return [String]
        attr_accessor :machine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affiliated_device_id = args[:affiliated_device_id] if args.key?(:affiliated_device_id)
          @device_type = args[:device_type] if args.key?(:device_type)
          @hostname = args[:hostname] if args.key?(:hostname)
          @machine = args[:machine] if args.key?(:machine)
        end
      end
      
      # Describes a generic Certificate Authority Connection.
      class GoogleChromeManagementVersionsV1GenericCaConnection
        include Google::Apis::Core::Hashable
      
        # Output only. A string that references the administrator-provided configuration
        # for the certification authority service.
        # Corresponds to the JSON property `caConnectionAdapterConfigReference`
        # @return [String]
        attr_accessor :ca_connection_adapter_config_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_connection_adapter_config_reference = args[:ca_connection_adapter_config_reference] if args.key?(:ca_connection_adapter_config_reference)
        end
      end
      
      # Describes a generic certificate provisioning profile.
      class GoogleChromeManagementVersionsV1GenericProfile
        include Google::Apis::Core::Hashable
      
        # Output only. A string that references the administrator-provided configuration
        # for the certificate provisioning profile.
        # Corresponds to the JSON property `profileAdapterConfigReference`
        # @return [String]
        attr_accessor :profile_adapter_config_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_adapter_config_reference = args[:profile_adapter_config_reference] if args.key?(:profile_adapter_config_reference)
        end
      end
      
      # Response to ListChromeBrowserProfileCommands method.
      class GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
        include Google::Apis::Core::Hashable
      
        # The list of commands returned.
        # Corresponds to the JSON property `chromeBrowserProfileCommands`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand>]
        attr_accessor :chrome_browser_profile_commands
      
        # The pagination token that can be used to list the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total size represents an estimated number of resources returned.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chrome_browser_profile_commands = args[:chrome_browser_profile_commands] if args.key?(:chrome_browser_profile_commands)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response to ListChromeBrowserProfiles method.
      class GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The list of profiles returned.
        # Corresponds to the JSON property `chromeBrowserProfiles`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile>]
        attr_accessor :chrome_browser_profiles
      
        # The pagination token that can be used to list the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total size represents an estimated number of resources returned. Not
        # guaranteed to be accurate above 10k profiles.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chrome_browser_profiles = args[:chrome_browser_profiles] if args.key?(:chrome_browser_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Request to MoveThirdPartyProfileUser method.
      class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest
        include Google::Apis::Core::Hashable
      
        # Required. Destination organizational unit where the third party chrome profile
        # user will be moved to.
        # Corresponds to the JSON property `destinationOrgUnit`
        # @return [String]
        attr_accessor :destination_org_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_org_unit = args[:destination_org_unit] if args.key?(:destination_org_unit)
        end
      end
      
      # Response for MoveThirdPartyProfileUser method.
      class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse
        include Google::Apis::Core::Hashable
      
        # A representation of non-Google (third party) user that is associated with a
        # managed Chrome profile.
        # Corresponds to the JSON property `thirdPartyProfileUser`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ThirdPartyProfileUser]
        attr_accessor :third_party_profile_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @third_party_profile_user = args[:third_party_profile_user] if args.key?(:third_party_profile_user)
        end
      end
      
      # Reporting data of a Chrome browser profile.
      class GoogleChromeManagementVersionsV1ReportingData
        include Google::Apis::Core::Hashable
      
        # Output only. Executable path of the installed Chrome browser. A valid path is
        # included only in affiliated profiles.
        # Corresponds to the JSON property `browserExecutablePath`
        # @return [String]
        attr_accessor :browser_executable_path
      
        # Output only. Information of the extensions installed on the profile.
        # Corresponds to the JSON property `extensionData`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataExtensionData>]
        attr_accessor :extension_data
      
        # Output only. Information of the policies applied on the extensions.
        # Corresponds to the JSON property `extensionPolicyData`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData>]
        attr_accessor :extension_policy_data
      
        # Output only. Updated version of a browser, if it is different from the active
        # browser version.
        # Corresponds to the JSON property `installedBrowserVersion`
        # @return [String]
        attr_accessor :installed_browser_version
      
        # Output only. Information of the policies applied on the profile.
        # Corresponds to the JSON property `policyData`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataPolicyData>]
        attr_accessor :policy_data
      
        # Output only. Path of the profile. A valid path is included only in affiliated
        # profiles.
        # Corresponds to the JSON property `profilePath`
        # @return [String]
        attr_accessor :profile_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browser_executable_path = args[:browser_executable_path] if args.key?(:browser_executable_path)
          @extension_data = args[:extension_data] if args.key?(:extension_data)
          @extension_policy_data = args[:extension_policy_data] if args.key?(:extension_policy_data)
          @installed_browser_version = args[:installed_browser_version] if args.key?(:installed_browser_version)
          @policy_data = args[:policy_data] if args.key?(:policy_data)
          @profile_path = args[:profile_path] if args.key?(:profile_path)
        end
      end
      
      # Information of conflicting policy applied on a Chrome browser profile.
      class GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData
        include Google::Apis::Core::Hashable
      
        # Output only. Source of the policy.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Information of an extension installed on a Chrome browser profile.
      class GoogleChromeManagementVersionsV1ReportingDataExtensionData
        include Google::Apis::Core::Hashable
      
        # Output only. Description of the extension.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. ID of the extension.
        # Corresponds to the JSON property `extensionId`
        # @return [String]
        attr_accessor :extension_id
      
        # Output only. Type of the extension.
        # Corresponds to the JSON property `extensionType`
        # @return [String]
        attr_accessor :extension_type
      
        # Output only. The URL of the homepage of the extension.
        # Corresponds to the JSON property `homepageUri`
        # @return [String]
        attr_accessor :homepage_uri
      
        # Output only. Installation type of the extension.
        # Corresponds to the JSON property `installationType`
        # @return [String]
        attr_accessor :installation_type
      
        # Output only. Represents whether the user disabled the extension.
        # Corresponds to the JSON property `isDisabled`
        # @return [Boolean]
        attr_accessor :is_disabled
        alias_method :is_disabled?, :is_disabled
      
        # Output only. Represents whether the extension is from the webstore.
        # Corresponds to the JSON property `isWebstoreExtension`
        # @return [Boolean]
        attr_accessor :is_webstore_extension
        alias_method :is_webstore_extension?, :is_webstore_extension
      
        # Output only. Manifest version of the extension.
        # Corresponds to the JSON property `manifestVersion`
        # @return [Fixnum]
        attr_accessor :manifest_version
      
        # Output only. Name of the extension.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Permissions requested by the extension.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Output only. Version of the extension.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @extension_id = args[:extension_id] if args.key?(:extension_id)
          @extension_type = args[:extension_type] if args.key?(:extension_type)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @installation_type = args[:installation_type] if args.key?(:installation_type)
          @is_disabled = args[:is_disabled] if args.key?(:is_disabled)
          @is_webstore_extension = args[:is_webstore_extension] if args.key?(:is_webstore_extension)
          @manifest_version = args[:manifest_version] if args.key?(:manifest_version)
          @name = args[:name] if args.key?(:name)
          @permissions = args[:permissions] if args.key?(:permissions)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Information of the policies applied on an extension.
      class GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData
        include Google::Apis::Core::Hashable
      
        # Output only. ID of the extension.
        # Corresponds to the JSON property `extensionId`
        # @return [String]
        attr_accessor :extension_id
      
        # Output only. Name of the extension.
        # Corresponds to the JSON property `extensionName`
        # @return [String]
        attr_accessor :extension_name
      
        # Output only. Information of the policies applied on the extension.
        # Corresponds to the JSON property `policyData`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataPolicyData>]
        attr_accessor :policy_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extension_id = args[:extension_id] if args.key?(:extension_id)
          @extension_name = args[:extension_name] if args.key?(:extension_name)
          @policy_data = args[:policy_data] if args.key?(:policy_data)
        end
      end
      
      # Information of a policy applied on a Chrome browser profile.
      class GoogleChromeManagementVersionsV1ReportingDataPolicyData
        include Google::Apis::Core::Hashable
      
        # Output only. Conflicting policy information.
        # Corresponds to the JSON property `conflicts`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData>]
        attr_accessor :conflicts
      
        # Output only. Error message of the policy, if any.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Output only. Name of the policy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Source of the policy.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. Value of the policy.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicts = args[:conflicts] if args.key?(:conflicts)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes a SCEP Certificate Authority Connection.
      class GoogleChromeManagementVersionsV1ScepCaConnection
        include Google::Apis::Core::Hashable
      
        # Output only. A string that references the administrator-provided configuration
        # for the certification authority service.
        # Corresponds to the JSON property `caConnectionAdapterConfigReference`
        # @return [String]
        attr_accessor :ca_connection_adapter_config_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_connection_adapter_config_reference = args[:ca_connection_adapter_config_reference] if args.key?(:ca_connection_adapter_config_reference)
        end
      end
      
      # Describes a SCEP certificate provisioning profile.
      class GoogleChromeManagementVersionsV1ScepProfile
        include Google::Apis::Core::Hashable
      
        # Output only. The certificate template name as defined by the admin on their on-
        # prem infrastructure. The Certificate Authority uses this name to identify the
        # certificate template.
        # Corresponds to the JSON property `certificateTemplateName`
        # @return [String]
        attr_accessor :certificate_template_name
      
        # Output only. The country of the subject.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Output only. The allowed key usages for certificate's key.
        # Corresponds to the JSON property `keyUsages`
        # @return [Array<String>]
        attr_accessor :key_usages
      
        # Output only. The locality of the subject.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Output only. The name of the organization the subject belongs to.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Output only. The organizational units of the subject.
        # Corresponds to the JSON property `organizationalUnits`
        # @return [Array<String>]
        attr_accessor :organizational_units
      
        # Output only. The state of the subject.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The subject alternative names.
        # Corresponds to the JSON property `subjectAltNames`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SubjectAltName>]
        attr_accessor :subject_alt_names
      
        # Output only. The common name of the subject.
        # Corresponds to the JSON property `subjectCommonName`
        # @return [String]
        attr_accessor :subject_common_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_template_name = args[:certificate_template_name] if args.key?(:certificate_template_name)
          @country = args[:country] if args.key?(:country)
          @key_usages = args[:key_usages] if args.key?(:key_usages)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_units = args[:organizational_units] if args.key?(:organizational_units)
          @state = args[:state] if args.key?(:state)
          @subject_alt_names = args[:subject_alt_names] if args.key?(:subject_alt_names)
          @subject_common_name = args[:subject_common_name] if args.key?(:subject_common_name)
        end
      end
      
      # Request message for marking a certificate provisioning process as failed.
      class GoogleChromeManagementVersionsV1SetFailureRequest
        include Google::Apis::Core::Hashable
      
        # Required. A message describing the failure details. It is displayed on the
        # ChromeOS client device.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # Response message for publishing a failure for a certificate provisioning
      # process.
      class GoogleChromeManagementVersionsV1SetFailureResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the long-running operation returned by signData.
      class GoogleChromeManagementVersionsV1SignDataMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Start time of the SignData operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for requesting a signature from the client that initated a
      # certificate provisioning process.
      class GoogleChromeManagementVersionsV1SignDataRequest
        include Google::Apis::Core::Hashable
      
        # Required. The data that the client was asked to sign.
        # Corresponds to the JSON property `signData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sign_data
      
        # Required. The signature algorithm that the adapter expects the client and
        # backend components to use when processing `sign_data`.
        # Corresponds to the JSON property `signatureAlgorithm`
        # @return [String]
        attr_accessor :signature_algorithm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sign_data = args[:sign_data] if args.key?(:sign_data)
          @signature_algorithm = args[:signature_algorithm] if args.key?(:signature_algorithm)
        end
      end
      
      # Response message for requesting a signature from the client that initated a
      # certificate provisioning process.
      class GoogleChromeManagementVersionsV1SignDataResponse
        include Google::Apis::Core::Hashable
      
        # A certificate provisioning process.
        # Corresponds to the JSON property `certificateProvisioningProcess`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess]
        attr_accessor :certificate_provisioning_process
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_provisioning_process = args[:certificate_provisioning_process] if args.key?(:certificate_provisioning_process)
        end
      end
      
      # Describes a subject alternative name.
      class GoogleChromeManagementVersionsV1SubjectAltName
        include Google::Apis::Core::Hashable
      
        # Output only. The type of the SubjectAltName extension.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The value of the subject alternative name with respect to the `
        # type`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A representation of non-Google (third party) user that is associated with a
      # managed Chrome profile.
      class GoogleChromeManagementVersionsV1ThirdPartyProfileUser
        include Google::Apis::Core::Hashable
      
        # Identifier. Format: customers/`customer_id`/thirdPartyProfileUsers/`
        # third_party_profile_user_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The ID of the organizational unit assigned to the user.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
        end
      end
      
      # Request message for uploading an issued certificate for a certificate
      # provisioning process.
      class GoogleChromeManagementVersionsV1UploadCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The issued certificate in PEM format.
        # Corresponds to the JSON property `certificatePem`
        # @return [String]
        attr_accessor :certificate_pem
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_pem = args[:certificate_pem] if args.key?(:certificate_pem)
        end
      end
      
      # Response message for publishing an issued certificate for a certificate
      # provisioning process.
      class GoogleChromeManagementVersionsV1UploadCertificateResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ChromemanagementV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
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
    end
  end
end
