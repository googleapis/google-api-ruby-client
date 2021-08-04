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
      
      class GoogleChromeManagementV1ChromeAppSiteAccess
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
      
      class GoogleChromeManagementV1Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1FindInstalledAppDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromeManagementV1InstalledApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
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
          property :is_theme, as: 'isTheme'
          property :min_user_count, as: 'minUserCount'
          collection :permissions, as: 'permissions', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppPermission::Representation
      
          collection :site_access, as: 'siteAccess', class: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess, decorator: Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ChromeAppSiteAccess::Representation
      
          property :support_enabled, as: 'supportEnabled'
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
      
      class GoogleChromeManagementV1ChromeAppSiteAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_match, as: 'hostMatch'
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
      
      class GoogleChromeManagementV1Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :machine, as: 'machine'
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
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
