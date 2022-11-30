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
      
      # Status data for storage. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDeviceAudioStatus](https://chromeenterprise.
      # google/policies/#ReportDeviceAudioStatus) * Data Collection Frequency: 10
      # minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes *
      # Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A
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
      # only: N/A
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
      # users only: N/A
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
      # users only: N/A
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
          @min_user_count = args[:min_user_count] if args.key?(:min_user_count)
          @permissions = args[:permissions] if args.key?(:permissions)
          @site_access = args[:site_access] if args.key?(:site_access)
          @support_enabled = args[:support_enabled] if args.key?(:support_enabled)
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
      
      # CPU specifications for the device * This field provides device information,
      # which is static and will not change over time. * Data for this field is
      # controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/
      # policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Only at Upload *
      # Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If
      # the device is offline, the collected data is stored locally, and will be
      # reported when the device is next online: No * Reported for affiliated users
      # only: N/A
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
      # Reported for affiliated users only: N/A
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
      
      # Information for a display.
      class GoogleChromeManagementV1DisplayInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Represents the graphics card device id.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @refresh_rate = args[:refresh_rate] if args.key?(:refresh_rate)
          @resolution_height = args[:resolution_height] if args.key?(:resolution_height)
          @resolution_width = args[:resolution_width] if args.key?(:resolution_width)
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
      # online: No * Reported for affiliated users only: N/A
      class GoogleChromeManagementV1GraphicsInfo
        include Google::Apis::Core::Hashable
      
        # Information of a graphics adapter (GPU).
        # Corresponds to the JSON property `adapterInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsAdapterInfo]
        attr_accessor :adapter_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapter_info = args[:adapter_info] if args.key?(:adapter_info)
        end
      end
      
      # Information of the graphics subsystem. * This field is telemetry information
      # and this will change over time as the device is utilized. * Data for this
      # field is controlled via policy: [ReportDeviceGraphicsInfo](https://
      # chromeenterprise.google/policies/#ReportDeviceGraphicsInfo) * Data Collection
      # Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy
      # Controlled: Yes * Cache: If the device is offline, the collected data is
      # stored locally, and will be reported when the device is next online: No *
      # Reported for affiliated users only: N/A
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
      # Reported for affiliated users only: N/A
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
      # users only: N/A
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
      # connection, for example whether the HTTPS latency is high or normal.
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
      # Reported for affiliated users only: N/A
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
      # only: Yes
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
      
        # Output only. Network connection guid.
        # Corresponds to the JSON property `guid`
        # @return [String]
        attr_accessor :guid
      
        # Output only. LAN IP address.
        # Corresponds to the JSON property `lanIpAddress`
        # @return [String]
        attr_accessor :lan_ip_address
      
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
          @guid = args[:guid] if args.key?(:guid)
          @lan_ip_address = args[:lan_ip_address] if args.key?(:lan_ip_address)
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
      # online: No * Reported for affiliated users only: N/A
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
      
      # Status data for storage. * This field is telemetry information and this will
      # change over time as the device is utilized. * Data for this field is
      # controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.
      # google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only
      # at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes
      # * Cache: If the device is offline, the collected data is stored locally, and
      # will be reported when the device is next online: No * Reported for affiliated
      # users only: N/A
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
      # users only: N/A
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
      
      # `TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run out
      # of buffer data for more than 5 seconds.
      class GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Telemetry data collected from a managed device.
      class GoogleChromeManagementV1TelemetryDevice
        include Google::Apis::Core::Hashable
      
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
        # online: No * Reported for affiliated users only: N/A
        # Corresponds to the JSON property `graphicsInfo`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsInfo]
        attr_accessor :graphics_info
      
        # Output only. Graphics reports collected periodically.
        # Corresponds to the JSON property `graphicsStatusReport`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1GraphicsStatusReport>]
        attr_accessor :graphics_status_report
      
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
        # Reported for affiliated users only: N/A
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
        # Reported for affiliated users only: N/A
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
        # users only: N/A
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
          @memory_info = args[:memory_info] if args.key?(:memory_info)
          @memory_status_report = args[:memory_status_report] if args.key?(:memory_status_report)
          @name = args[:name] if args.key?(:name)
          @network_diagnostics_report = args[:network_diagnostics_report] if args.key?(:network_diagnostics_report)
          @network_info = args[:network_info] if args.key?(:network_info)
          @network_status_report = args[:network_status_report] if args.key?(:network_status_report)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @os_update_status = args[:os_update_status] if args.key?(:os_update_status)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @storage_info = args[:storage_info] if args.key?(:storage_info)
          @storage_status_report = args[:storage_status_report] if args.key?(:storage_status_report)
          @thunderbolt_info = args[:thunderbolt_info] if args.key?(:thunderbolt_info)
        end
      end
      
      # Information about a device associated with telemetry data.
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
      
        # `TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run out
        # of buffer data for more than 5 seconds.
        # Corresponds to the JSON property `audioSevereUnderrunEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent]
        attr_accessor :audio_severe_underrun_event
      
        # Information about a device associated with telemetry data.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDeviceInfo]
        attr_accessor :device
      
        # The event type of the current event.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Https latency routine is run periodically and `
        # TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was
        # detected or if the device has recovered from a latency problem..
        # Corresponds to the JSON property `httpsLatencyChangeEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent]
        attr_accessor :https_latency_change_event
      
        # Output only. Resource name of the event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # `TelemetryNetworkConnectionStateChangeEvent` is triggered on network
        # connection state changes.
        # Corresponds to the JSON property `networkConnectionStateChangeEvent`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent]
        attr_accessor :network_connection_state_change_event
      
        # Timestamp that represents when the event was reported.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Information about a user associated with telemetry data.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUserInfo]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_severe_underrun_event = args[:audio_severe_underrun_event] if args.key?(:audio_severe_underrun_event)
          @device = args[:device] if args.key?(:device)
          @event_type = args[:event_type] if args.key?(:event_type)
          @https_latency_change_event = args[:https_latency_change_event] if args.key?(:https_latency_change_event)
          @name = args[:name] if args.key?(:name)
          @network_connection_state_change_event = args[:network_connection_state_change_event] if args.key?(:network_connection_state_change_event)
          @report_time = args[:report_time] if args.key?(:report_time)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Https latency routine is run periodically and `
      # TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was
      # detected or if the device has recovered from a latency problem..
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
      # connection state changes.
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
      
      # Information about a user associated with telemetry data.
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
      # users only: N/A
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
