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
      
      # Response containing requested browser versions details and counts.
      class GoogleChromeManagementV1CountChromeVersionsResponse
        include Google::Apis::Core::Hashable
      
        # List of all browser versions and their install counts.
        # Corresponds to the JSON property `browserVersions`
        # @return [Array<Google::Apis::ChromemanagementV1::GoogleChromeManagementV1BrowserVersion>]
        attr_accessor :browser_versions
      
        # Token to specify the next page in the list.
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
      
        # Token to specify next page in the list.
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
      
        # Token to specify the next page in the list.
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
    end
  end
end
