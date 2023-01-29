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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ChromemanagementV1
      # Chrome Management API
      #
      # The Chrome Management API is a suite of services that allows Chrome
      #  administrators to view, manage and gain insights on their Chrome OS and Chrome
      #  Browser devices.
      #
      # @example
      #    require 'google/apis/chromemanagement_v1'
      #
      #    Chromemanagement = Google::Apis::ChromemanagementV1 # Alias the module
      #    service = Chromemanagement::ChromeManagementService.new
      #
      # @see http://developers.google.com/chrome/management/
      class ChromeManagementService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://chromemanagement.googleapis.com/', '',
                client_name: 'google-apis-chromemanagement_v1',
                client_version: Google::Apis::ChromemanagementV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Generate summary of app installation requests.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] order_by
        #   Field used to order results. Supported fields: * request_count *
        #   latest_request_time
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 50, anything
        #   above will be coerced to 50.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_app_chrome_app_requests(customer, order_by: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/apps:countChromeAppRequests', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific app for a customer by its resource name.
        # @param [String] name
        #   Required. The app for which details are being queried. Examples: "customers/
        #   my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2" for the Save
        #   to Google Drive Chrome extension version 2.1.2, "customers/my_customer/apps/
        #   android/com.google.android.apps.docs" for the Google Drive Android app's
        #   latest version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_app_android(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific app for a customer by its resource name.
        # @param [String] name
        #   Required. The app for which details are being queried. Examples: "customers/
        #   my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2" for the Save
        #   to Google Drive Chrome extension version 2.1.2, "customers/my_customer/apps/
        #   android/com.google.android.apps.docs" for the Google Drive Android app's
        #   latest version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_app_chrome(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific app for a customer by its resource name.
        # @param [String] name
        #   Required. The app for which details are being queried. Examples: "customers/
        #   my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2" for the Save
        #   to Google Drive Chrome extension version 2.1.2, "customers/my_customer/apps/
        #   android/com.google.android.apps.docs" for the Google Drive Android app's
        #   latest version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_app_web(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of the number of devices expiring in each month of the
        # selected time frame. Devices are grouped by auto update expiration date and
        # model. Further information can be found [here](https://support.google.com/
        # chrome/a/answer/10564947).
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] max_aue_date
        #   Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If
        #   included returns all devices that have already expired and devices with auto
        #   expiration date equal to or earlier than the maximum date.
        # @param [String] min_aue_date
        #   Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If
        #   included returns all devices that have already expired and devices with auto
        #   expiration date equal to or later than the minimum date.
        # @param [String] org_unit_id
        #   Optional. The organizational unit ID, if omitted, will return data for all
        #   organizational units.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_devices_reaching_auto_expiration_date(customer, max_aue_date: nil, min_aue_date: nil, org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeDevicesReachingAutoExpirationDate', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['maxAueDate'] = max_aue_date unless max_aue_date.nil?
          command.query['minAueDate'] = min_aue_date unless min_aue_date.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Counts of ChromeOS devices that have not synced policies or have lacked user
        # activity in the past 28 days, are out of date, or are not complaint. Further
        # information can be found here https://support.google.com/chrome/a/answer/
        # 10564947
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] org_unit_id
        #   Optional. The ID of the organizational unit. If omitted, all data will be
        #   returned.
        # @param [String] read_mask
        #   Required. Mask of the fields that should be populated in the returned report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_devices_that_need_attention(customer, org_unit_id: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeDevicesThatNeedAttention', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Counts of devices with a specific hardware specification from the requested
        # hardware type (for example model name, processor type). Further information
        # can be found here https://support.google.com/chrome/a/answer/10564947
        # @param [String] customer
        #   Required. The customer ID or "my_customer".
        # @param [String] org_unit_id
        #   Optional. The ID of the organizational unit. If omitted, all data will be
        #   returned.
        # @param [String] read_mask
        #   Required. Mask of the fields that should be populated in the returned report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_hardware_fleet_devices(customer, org_unit_id: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeHardwareFleetDevices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of installed Chrome versions.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Supported filter fields: *
        #   last_active_date
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_versions(customer, filter: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeVersions', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of app installations.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Supported filter fields: *
        #   app_name * app_type * install_type * number_of_permissions *
        #   total_install_count * latest_profile_active_date * permission_name
        # @param [String] order_by
        #   Field used to order results. Supported order by fields: * app_name * app_type *
        #   install_type * number_of_permissions * total_install_count
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_installed_apps(customer, filter: nil, order_by: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countInstalledApps', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of devices that have a specified app installed.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] app_id
        #   Unique identifier of the app. For Chrome apps and extensions, the 32-character
        #   id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the package name
        #   (e.g. com.evernote).
        # @param [String] app_type
        #   Type of the app.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Supported filter fields: *
        #   last_active_date
        # @param [String] order_by
        #   Field used to order results. Supported order by fields: * machine * device_id
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_customer_report_installed_app_devices(customer, app_id: nil, app_type: nil, filter: nil, order_by: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:findInstalledAppDevices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['appId'] = app_id unless app_id.nil?
          command.query['appType'] = app_type unless app_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get telemetry device.
        # @param [String] name
        #   Required. Name of the `TelemetryDevice` to return.
        # @param [String] read_mask
        #   Required. Read mask to specify which fields to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_telemetry_device(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all telemetry devices.
        # @param [String] parent
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Optional. Only include resources that match the filter. Supported filter
        #   fields: - org_unit_id - serial_number - device_id
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Default value is 100. Maximum value is
        #   1000.
        # @param [String] page_token
        #   Token to specify next page in the list.
        # @param [String] read_mask
        #   Required. Read mask to specify which fields to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_devices(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/devices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List telemetry events.
        # @param [String] parent
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Optional. Only include resources that match the filter. Supported filter
        #   fields: - device_id - user_id - device_org_unit_id - user_org_unit_id -
        #   timestamp - event_type The "timestamp" filter accepts either Epoch
        #   milliseconds or RFC 3339 formatted time surrounded by simple double quotes.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. Default value is 100. Maximum
        #   value is 1000.
        # @param [String] page_token
        #   Optional. Token to specify next page in the list.
        # @param [String] read_mask
        #   Required. Read mask to specify which fields to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_events(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/events', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get telemetry user.
        # @param [String] name
        #   Required. Name of the `TelemetryUser` to return.
        # @param [String] read_mask
        #   Read mask to specify which fields to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_telemetry_user(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all telemetry users.
        # @param [String] parent
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Only include resources that match the filter. Supported filter fields: -
        #   user_id - user_org_unit_id
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Default value is 100. Maximum value is
        #   1000.
        # @param [String] page_token
        #   Token to specify next page in the list.
        # @param [String] read_mask
        #   Read mask to specify which fields to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_users(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/users', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
