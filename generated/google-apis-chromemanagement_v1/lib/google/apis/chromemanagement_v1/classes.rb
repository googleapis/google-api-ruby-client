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
      
        # Output only. Whether the app or extension is a theme.
        # Corresponds to the JSON property `isTheme`
        # @return [Boolean]
        attr_accessor :is_theme
        alias_method :is_theme?, :is_theme
      
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
          @is_theme = args[:is_theme] if args.key?(:is_theme)
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
    end
  end
end
