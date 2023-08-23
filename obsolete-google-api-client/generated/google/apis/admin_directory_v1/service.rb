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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AdminDirectoryV1
      # Admin SDK API
      #
      # Admin SDK lets administrators of enterprise domains to view and manage
      #  resources like user, groups etc. It also provides audit and usage reports of
      #  domain.
      #
      # @example
      #    require 'google/apis/admin_directory_v1'
      #
      #    Admin = Google::Apis::AdminDirectoryV1 # Alias the module
      #    service = Admin::DirectoryService.new
      #
      # @see http://developers.google.com/admin-sdk/
      class DirectoryService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://admin.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Delete an ASP issued by a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Fixnum] code_id
        #   The unique ID of the ASP to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_asp(user_key, code_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/users/{userKey}/asps/{codeId}', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['codeId'] = code_id unless code_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about an ASP issued by a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Fixnum] code_id
        #   The unique ID of the ASP.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Asp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Asp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_asp(user_key, code_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/asps/{codeId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Asp::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Asp
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['codeId'] = code_id unless code_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the ASPs issued by a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Asps] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Asps]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_asps(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/asps', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Asps::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Asps
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop watching resources through this channel.
        # @param [Google::Apis::AdminDirectoryV1::Channel] channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_channel(channel_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory_v1/channels/stop', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.request_object = channel_object
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Takes an action that affects a Chrome OS Device. This includes deprovisioning,
        # disabling, and re-enabling devices. *Warning:* * Deprovisioning a device will
        # stop device policy syncing and remove device-level printers. After a device is
        # deprovisioned, it must be wiped before it can be re-enrolled. * Lost or stolen
        # devices should use the disable action. * Re-enabling a disabled device will
        # consume a device license. If you do not have sufficient licenses available
        # when completing the re-enable action, you will receive an error. For more
        # information about deprovisioning and disabling devices, visit the [help center]
        # (https://support.google.com/chrome/a/answer/3523633).
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] resource_id
        #   The unique ID of the device. The `resourceId`s are returned in the response
        #   from the [chromeosdevices.list](/admin-sdk/directory/v1/reference/
        #   chromeosdevices/list) method.
        # @param [Google::Apis::AdminDirectoryV1::ChromeOsDeviceAction] chrome_os_device_action_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def action_chromeosdevice(customer_id, resource_id, chrome_os_device_action_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customerId}/devices/chromeos/{resourceId}/action', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::ChromeOsDeviceAction::Representation
          command.request_object = chrome_os_device_action_object
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Chrome OS device's properties.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] device_id
        #   The unique ID of the device. The `deviceId`s are returned in the response from
        #   the [chromeosdevices.list](/admin-sdk/directory/v1/reference/chromeosdevices/
        #   list) method.
        # @param [String] projection
        #   Determines whether the response contains the full list of properties or only a
        #   subset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::ChromeOsDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::ChromeOsDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_chrome_os_device(customer_id, device_id, projection: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of Chrome OS devices within an account.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] order_by
        #   Device property to use for sorting results.
        # @param [String] org_unit_path
        #   The full path of the organizational unit or its unique ID.
        # @param [String] page_token
        #   The `pageToken` query parameter is used to request the next page of query
        #   results. The follow-on request's `pageToken` query parameter is the `
        #   nextPageToken` from your previous response.
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] query
        #   Search string in the format given at http://support.google.com/chromeos/a/bin/
        #   answer.py?answer=1698333
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order. Must be used with
        #   the `orderBy` parameter.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::ChromeOsDevices] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::ChromeOsDevices]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_chrome_os_devices(customer_id, max_results: nil, order_by: nil, org_unit_path: nil, page_token: nil, projection: nil, query: nil, sort_order: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/devices/chromeos', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevices::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevices
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['query'] = query unless query.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Move or insert multiple Chrome OS devices to an organizational unit. You can
        # move up to 50 devices at once.
        # @param [String] customer_id
        #   Immutable ID of the G Suite account
        # @param [String] org_unit_path
        #   Full path of the target organizational unit or its ID
        # @param [Google::Apis::AdminDirectoryV1::ChromeOsMoveDevicesToOu] chrome_os_move_devices_to_ou_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_chromeosdevice_devices_to_ou(customer_id, org_unit_path, chrome_os_move_devices_to_ou_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customerId}/devices/chromeos/moveDevicesToOu', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::ChromeOsMoveDevicesToOu::Representation
          command.request_object = chrome_os_move_devices_to_ou_object
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a device's updatable properties, such as `annotatedUser`, `
        # annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`. This method
        # supports [patch semantics](/admin-sdk/directory/v1/guides/performance#patch).
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] device_id
        #   The unique ID of the device. The `deviceId`s are returned in the response from
        #   the [chromeosdevices.list](/admin-sdk/v1/reference/chromeosdevices/list)
        #   method.
        # @param [Google::Apis::AdminDirectoryV1::ChromeOsDevice] chrome_os_device_object
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::ChromeOsDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::ChromeOsDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_chrome_os_device(customer_id, device_id, chrome_os_device_object = nil, projection: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.request_object = chrome_os_device_object
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a device's updatable properties, such as `annotatedUser`, `
        # annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] device_id
        #   The unique ID of the device. The `deviceId`s are returned in the response from
        #   the [chromeosdevices.list](/admin-sdk/v1/reference/chromeosdevices/list)
        #   method.
        # @param [Google::Apis::AdminDirectoryV1::ChromeOsDevice] chrome_os_device_object
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::ChromeOsDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::ChromeOsDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_chrome_os_device(customer_id, device_id, chrome_os_device_object = nil, projection: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.request_object = chrome_os_device_object
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Issues a command for the device to execute.
        # @param [String] customer_id
        #   Immutable. Immutable ID of the G Suite account.
        # @param [String] device_id
        #   Immutable. Immutable ID of Chrome OS Device.
        # @param [Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesIssueCommandRequest] directory_chromeosdevices_issue_command_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesIssueCommandResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesIssueCommandResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def issue_customer_device_chromeo_command(customer_id, device_id, directory_chromeosdevices_issue_command_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}:issueCommand', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesIssueCommandRequest::Representation
          command.request_object = directory_chromeosdevices_issue_command_request_object
          command.response_representation = Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesIssueCommandResponse::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesIssueCommandResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets command data a specific command issued to the device.
        # @param [String] customer_id
        #   Immutable. Immutable ID of the G Suite account.
        # @param [String] device_id
        #   Immutable. Immutable ID of Chrome OS Device.
        # @param [Fixnum] command_id
        #   Immutable. Immutable ID of Chrome OS Device Command.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesCommand] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesCommand]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_device_chromeo_command(customer_id, device_id, command_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}/commands/{commandId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesCommand::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesCommand
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['commandId'] = command_id unless command_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a customer.
        # @param [String] customer_key
        #   Id of the customer to be retrieved
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer(customer_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customers/{customerKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Customer::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Customer
          command.params['customerKey'] = customer_key unless customer_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patch Customers via Apiary Patch Orchestration
        # @param [String] customer_key
        #   Id of the customer to be updated
        # @param [Google::Apis::AdminDirectoryV1::Customer] customer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_customer(customer_key, customer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customers/{customerKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Customer::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Customer
          command.params['customerKey'] = customer_key unless customer_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a customer.
        # @param [String] customer_key
        #   Id of the customer to be updated
        # @param [Google::Apis::AdminDirectoryV1::Customer] customer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_customer(customer_key, customer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customers/{customerKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Customer::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Customer
          command.params['customerKey'] = customer_key unless customer_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a domain Alias of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] domain_alias_name
        #   Name of domain alias to be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_domain_alias(customer, domain_alias_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['domainAliasName'] = domain_alias_name unless domain_alias_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a domain alias of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] domain_alias_name
        #   Name of domain alias to be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::DomainAlias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::DomainAlias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain_alias(customer, domain_alias_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::DomainAlias::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::DomainAlias
          command.params['customer'] = customer unless customer.nil?
          command.params['domainAliasName'] = domain_alias_name unless domain_alias_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a domain alias of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [Google::Apis::AdminDirectoryV1::DomainAlias] domain_alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::DomainAlias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::DomainAlias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_domain_alias(customer, domain_alias_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/domainaliases', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::DomainAlias::Representation
          command.request_object = domain_alias_object
          command.response_representation = Google::Apis::AdminDirectoryV1::DomainAlias::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::DomainAlias
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the domain aliases of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] parent_domain_name
        #   Name of the parent domain for which domain aliases are to be fetched.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::DomainAliases] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::DomainAliases]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_domain_aliases(customer, parent_domain_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/domainaliases', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::DomainAliases::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::DomainAliases
          command.params['customer'] = customer unless customer.nil?
          command.query['parentDomainName'] = parent_domain_name unless parent_domain_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a domain of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] domain_name
        #   Name of domain to be deleted
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_domain(customer, domain_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/domains/{domainName}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['domainName'] = domain_name unless domain_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a domain of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] domain_name
        #   Name of domain to be retrieved
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Domains] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Domains]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain(customer, domain_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/domains/{domainName}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Domains::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Domains
          command.params['customer'] = customer unless customer.nil?
          command.params['domainName'] = domain_name unless domain_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a domain of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [Google::Apis::AdminDirectoryV1::Domains] domains_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Domains] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Domains]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_domain(customer, domains_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/domains', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Domains::Representation
          command.request_object = domains_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Domains::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Domains
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the domains of the customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Domains2] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Domains2]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_domains(customer, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/domains', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Domains2::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Domains2
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group(group_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/groups/{groupKey}', options)
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a group's properties.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group(group_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/groups/{groupKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a group.
        # @param [Google::Apis::AdminDirectoryV1::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_group(group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/groups', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all groups of a domain or of a user given a userKey (paginated)
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. In case of a multi-domain
        #   account, to fetch all groups for a customer, fill this field instead of domain.
        #   As an account administrator, you can also use the `my_customer` alias to
        #   represent your account's `customerId`. The `customerId` is also returned as
        #   part of the [Users](/admin-sdk/directory/v1/reference/users)
        # @param [String] domain
        #   The domain name. Use this field to get fields from only one domain. To return
        #   all domains for a customer account, use the `customer` query parameter instead.
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Max allowed value is 200.
        # @param [String] order_by
        #   Column to use for sorting results
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] query
        #   Query string search. Should be of the form "". Complete documentation is at
        #   https: //developers.google.com/admin-sdk/directory/v1/guides/search-groups
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order. Only of use when
        #   orderBy is also used
        # @param [String] user_key
        #   Email or immutable ID of the user if only those groups are to be listed, the
        #   given user is a member of. If it's an ID, it should match with the ID of the
        #   user object.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Groups] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Groups]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_groups(customer: nil, domain: nil, max_results: nil, order_by: nil, page_token: nil, query: nil, sort_order: nil, user_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/groups', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Groups::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Groups
          command.query['customer'] = customer unless customer.nil?
          command.query['domain'] = domain unless domain.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a group's properties. This method supports [patch semantics](/admin-
        # sdk/directory/v1/guides/performance#patch).
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [Google::Apis::AdminDirectoryV1::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_group(group_key, group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/groups/{groupKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a group's properties.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [Google::Apis::AdminDirectoryV1::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_group(group_key, group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/groups/{groupKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an alias.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] group_alias
        #   The alias to be removed
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group_alias(group_key, group_alias, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/groups/{groupKey}/aliases/{alias}', options)
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['alias'] = group_alias unless group_alias.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an alias for the group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [Google::Apis::AdminDirectoryV1::Alias] alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Alias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Alias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_group_alias(group_key, alias_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/groups/{groupKey}/aliases', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.request_object = alias_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Alias
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all aliases for a group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Aliases] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Aliases]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_group_aliases(group_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/groups/{groupKey}/aliases', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Aliases::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Aliases
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a member from a group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] member_key
        #   Identifies the group member in the API request. A group member can be a user
        #   or another group. The value can be the member's (group or user) primary email
        #   address, alias, or unique ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_member(group_key, member_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/groups/{groupKey}/members/{memberKey}', options)
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a group member's properties.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] member_key
        #   Identifies the group member in the API request. A group member can be a user
        #   or another group. The value can be the member's (group or user) primary email
        #   address, alias, or unique ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Member] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Member]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_member(group_key, member_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/groups/{groupKey}/members/{memberKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks whether the given user is a member of the group. Membership can be
        # direct or nested.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] member_key
        #   Identifies the user member in the API request. The value can be the user's
        #   primary email address, alias, or unique ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::MembersHasMember] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::MembersHasMember]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def has_member_member(group_key, member_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/groups/{groupKey}/hasMember/{memberKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::MembersHasMember::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::MembersHasMember
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a user to the specified group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [Google::Apis::AdminDirectoryV1::Member] member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Member] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Member]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_member(group_key, member_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/groups/{groupKey}/members', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.request_object = member_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of all members in a group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [Boolean] include_derived_membership
        #   Whether to list indirect memberships. Default: false.
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Max allowed value is 200.
        # @param [String] page_token
        #   Token to specify next page in the list.
        # @param [String] roles
        #   The `roles` query parameter allows you to retrieve group members by role.
        #   Allowed values are `OWNER`, `MANAGER`, and `MEMBER`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Members] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Members]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_members(group_key, include_derived_membership: nil, max_results: nil, page_token: nil, roles: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/groups/{groupKey}/members', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Members::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Members
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['includeDerivedMembership'] = include_derived_membership unless include_derived_membership.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['roles'] = roles unless roles.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the membership properties of a user in the specified group. This
        # method supports [patch semantics](/admin-sdk/directory/v1/guides/performance#
        # patch).
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] member_key
        #   Identifies the group member in the API request. A group member can be a user
        #   or another group. The value can be the member's (group or user) primary email
        #   address, alias, or unique ID.
        # @param [Google::Apis::AdminDirectoryV1::Member] member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Member] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Member]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_member(group_key, member_key, member_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/groups/{groupKey}/members/{memberKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.request_object = member_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the membership of a user in the specified group.
        # @param [String] group_key
        #   Identifies the group in the API request. The value can be the group's email
        #   address, group alias, or the unique group ID.
        # @param [String] member_key
        #   Identifies the group member in the API request. A group member can be a user
        #   or another group. The value can be the member's (group or user) primary email
        #   address, alias, or unique ID.
        # @param [Google::Apis::AdminDirectoryV1::Member] member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Member] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Member]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_member(group_key, member_key, member_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/groups/{groupKey}/members/{memberKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.request_object = member_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Takes an action that affects a mobile device. For example, remotely wiping a
        # device.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] resource_id
        #   The unique ID the API service uses to identify the mobile device.
        # @param [Google::Apis::AdminDirectoryV1::MobileDeviceAction] mobile_device_action_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def action_mobile_device(customer_id, resource_id, mobile_device_action_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}/action', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::MobileDeviceAction::Representation
          command.request_object = mobile_device_action_object
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a mobile device.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] resource_id
        #   The unique ID the API service uses to identify the mobile device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_mobile_device(customer_id, resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}', options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a mobile device's properties.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] resource_id
        #   The unique ID the API service uses to identify the mobile device.
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::MobileDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::MobileDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_mobile_device(customer_id, resource_id, projection: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::MobileDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::MobileDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of all mobile devices for an account.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Max allowed value is 100.
        # @param [String] order_by
        #   Device property to use for sorting results.
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] query
        #   Search string in the format given at https://developers.google.com/admin-sdk/
        #   directory/v1/search-operators
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order. Must be used with
        #   the `orderBy` parameter.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::MobileDevices] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::MobileDevices]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_mobile_devices(customer_id, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, sort_order: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/devices/mobile', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::MobileDevices::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::MobileDevices
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['query'] = query unless query.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an organizational unit.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] org_unit_path
        #   The full path of the organizational unit or its unique ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_org_unit(customer_id, org_unit_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}', options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an organizational unit.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] org_unit_path
        #   The full path of the organizational unit or its unique ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::OrgUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::OrgUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_org_unit(customer_id, org_unit_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an organizational unit.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [Google::Apis::AdminDirectoryV1::OrgUnit] org_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::OrgUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::OrgUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_org_unit(customer_id, org_unit_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customerId}/orgunits', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.request_object = org_unit_object
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of all organizational units for an account.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] org_unit_path
        #   The full path to the organizational unit or its unique ID. Returns the
        #   children of the specified organizational unit.
        # @param [String] type
        #   Whether to return all sub-organizations or just immediate children.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::OrgUnits] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::OrgUnits]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_org_units(customer_id, org_unit_path: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/orgunits', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnits::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnits
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an organizational unit. This method supports [patch semantics](/admin-
        # sdk/directory/v1/guides/performance#patch)
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] org_unit_path
        #   The full path of the organizational unit or its unique ID.
        # @param [Google::Apis::AdminDirectoryV1::OrgUnit] org_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::OrgUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::OrgUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_org_unit(customer_id, org_unit_path, org_unit_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.request_object = org_unit_object
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an organizational unit.
        # @param [String] customer_id
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users).
        # @param [String] org_unit_path
        #   The full path of the organizational unit or its unique ID.
        # @param [Google::Apis::AdminDirectoryV1::OrgUnit] org_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::OrgUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::OrgUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_org_unit(customer_id, org_unit_path, org_unit_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.request_object = org_unit_object
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of all privileges for a customer.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Privileges] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Privileges]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_privileges(customer, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/roles/ALL/privileges', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Privileges::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Privileges
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a building.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] building_id
        #   The id of the building to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_resource_building(customer, building_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['buildingId'] = building_id unless building_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a building.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] building_id
        #   The unique ID of the building to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Building] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Building]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_resource_building(customer, building_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Building
          command.params['customer'] = customer unless customer.nil?
          command.params['buildingId'] = building_id unless building_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a building.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [Google::Apis::AdminDirectoryV1::Building] building_object
        # @param [String] coordinates_source
        #   Source from which Building.coordinates are derived.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Building] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Building]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_resource_building(customer, building_object = nil, coordinates_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/resources/buildings', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.request_object = building_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Building
          command.params['customer'] = customer unless customer.nil?
          command.query['coordinatesSource'] = coordinates_source unless coordinates_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of buildings for an account.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] page_token
        #   Token to specify the next page in the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Buildings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Buildings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_resource_buildings(customer, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/resources/buildings', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Buildings::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Buildings
          command.params['customer'] = customer unless customer.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a building via Apiary Patch Orchestration.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] building_id
        #   The id of the building to update.
        # @param [Google::Apis::AdminDirectoryV1::Building] building_object
        # @param [String] coordinates_source
        #   Source from which Building.coordinates are derived.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Building] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Building]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_resource_building(customer, building_id, building_object = nil, coordinates_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.request_object = building_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Building
          command.params['customer'] = customer unless customer.nil?
          command.params['buildingId'] = building_id unless building_id.nil?
          command.query['coordinatesSource'] = coordinates_source unless coordinates_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a building.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] building_id
        #   The id of the building to update.
        # @param [Google::Apis::AdminDirectoryV1::Building] building_object
        # @param [String] coordinates_source
        #   Source from which Building.coordinates are derived.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Building] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Building]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_resource_building(customer, building_id, building_object = nil, coordinates_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.request_object = building_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Building::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Building
          command.params['customer'] = customer unless customer.nil?
          command.params['buildingId'] = building_id unless building_id.nil?
          command.query['coordinatesSource'] = coordinates_source unless coordinates_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a calendar resource.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] calendar_resource_id
        #   The unique ID of the calendar resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_calendar_resource(customer, calendar_resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['calendarResourceId'] = calendar_resource_id unless calendar_resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a calendar resource.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] calendar_resource_id
        #   The unique ID of the calendar resource to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::CalendarResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::CalendarResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_calendar_resource(customer, calendar_resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::CalendarResource
          command.params['customer'] = customer unless customer.nil?
          command.params['calendarResourceId'] = calendar_resource_id unless calendar_resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a calendar resource.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [Google::Apis::AdminDirectoryV1::CalendarResource] calendar_resource_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::CalendarResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::CalendarResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calendar_resource(customer, calendar_resource_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/resources/calendars', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.request_object = calendar_resource_object
          command.response_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::CalendarResource
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of calendar resources for an account.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] order_by
        #   Field(s) to sort results by in either ascending or descending order. Supported
        #   fields include `resourceId`, `resourceName`, `capacity`, `buildingId`, and `
        #   floorName`. If no order is specified, defaults to ascending. Should be of the
        #   form "field [asc|desc], field [asc|desc], ...". For example `buildingId,
        #   capacity desc` would return results sorted first by `buildingId` in ascending
        #   order then by `capacity` in descending order.
        # @param [String] page_token
        #   Token to specify the next page in the list.
        # @param [String] query
        #   String query used to filter results. Should be of the form "field operator
        #   value" where field can be any of supported fields and operators can be any of
        #   supported operations. Operators include '=' for exact match, '!=' for mismatch
        #   and ':' for prefix match or HAS match where applicable. For prefix match, the
        #   value should always be followed by a *. Logical operators NOT and AND are
        #   supported (in this order of precedence). Supported fields include `
        #   generatedResourceName`, `name`, `buildingId`, `floor_name`, `capacity`, `
        #   featureInstances.feature.name`, `resourceEmail`, `resourceCategory`. For
        #   example `buildingId=US-NYC-9TH AND featureInstances.feature.name:Phone`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::CalendarResources] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::CalendarResources]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_calendar_resources(customer, max_results: nil, order_by: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/resources/calendars', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::CalendarResources::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::CalendarResources
          command.params['customer'] = customer unless customer.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a calendar resource via Apiary Patch Orchestration.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] calendar_resource_id
        #   The unique ID of the calendar resource to update.
        # @param [Google::Apis::AdminDirectoryV1::CalendarResource] calendar_resource_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::CalendarResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::CalendarResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_calendar_resource(customer, calendar_resource_id, calendar_resource_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.request_object = calendar_resource_object
          command.response_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::CalendarResource
          command.params['customer'] = customer unless customer.nil?
          command.params['calendarResourceId'] = calendar_resource_id unless calendar_resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a calendar resource. This method supports patch semantics, meaning you
        # only need to include the fields you wish to update. Fields that are not
        # present in the request will be preserved.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] calendar_resource_id
        #   The unique ID of the calendar resource to update.
        # @param [Google::Apis::AdminDirectoryV1::CalendarResource] calendar_resource_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::CalendarResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::CalendarResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_calendar_resource(customer, calendar_resource_id, calendar_resource_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.request_object = calendar_resource_object
          command.response_representation = Google::Apis::AdminDirectoryV1::CalendarResource::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::CalendarResource
          command.params['customer'] = customer unless customer.nil?
          command.params['calendarResourceId'] = calendar_resource_id unless calendar_resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a feature.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] feature_key
        #   The unique ID of the feature to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_resource_feature(customer, feature_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/resources/features/{featureKey}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['featureKey'] = feature_key unless feature_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a feature.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] feature_key
        #   The unique ID of the feature to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Feature] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Feature]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_resource_feature(customer, feature_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/resources/features/{featureKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Feature
          command.params['customer'] = customer unless customer.nil?
          command.params['featureKey'] = feature_key unless feature_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a feature.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [Google::Apis::AdminDirectoryV1::Feature] feature_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Feature] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Feature]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_resource_feature(customer, feature_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/resources/features', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.request_object = feature_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Feature
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of features for an account.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] page_token
        #   Token to specify the next page in the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Features] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Features]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_resource_features(customer, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/resources/features', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Features::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Features
          command.params['customer'] = customer unless customer.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a feature via Apiary Patch Orchestration.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] feature_key
        #   The unique ID of the feature to update.
        # @param [Google::Apis::AdminDirectoryV1::Feature] feature_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Feature] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Feature]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_resource_feature(customer, feature_key, feature_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customer}/resources/features/{featureKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.request_object = feature_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Feature
          command.params['customer'] = customer unless customer.nil?
          command.params['featureKey'] = feature_key unless feature_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renames a feature.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] old_name
        #   The unique ID of the feature to rename.
        # @param [Google::Apis::AdminDirectoryV1::FeatureRename] feature_rename_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_resource_feature(customer, old_name, feature_rename_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/resources/features/{oldName}/rename', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::FeatureRename::Representation
          command.request_object = feature_rename_object
          command.params['customer'] = customer unless customer.nil?
          command.params['oldName'] = old_name unless old_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a feature.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. As an account administrator,
        #   you can also use the `my_customer` alias to represent your account's customer
        #   ID.
        # @param [String] feature_key
        #   The unique ID of the feature to update.
        # @param [Google::Apis::AdminDirectoryV1::Feature] feature_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Feature] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Feature]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_resource_feature(customer, feature_key, feature_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customer}/resources/features/{featureKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.request_object = feature_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Feature::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Feature
          command.params['customer'] = customer unless customer.nil?
          command.params['featureKey'] = feature_key unless feature_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a role assignment.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] role_assignment_id
        #   Immutable ID of the role assignment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_role_assignment(customer, role_assignment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['roleAssignmentId'] = role_assignment_id unless role_assignment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a role assignment.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] role_assignment_id
        #   Immutable ID of the role assignment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::RoleAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::RoleAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_role_assignment(customer, role_assignment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::RoleAssignment::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::RoleAssignment
          command.params['customer'] = customer unless customer.nil?
          command.params['roleAssignmentId'] = role_assignment_id unless role_assignment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a role assignment.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [Google::Apis::AdminDirectoryV1::RoleAssignment] role_assignment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::RoleAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::RoleAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_role_assignment(customer, role_assignment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/roleassignments', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::RoleAssignment::Representation
          command.request_object = role_assignment_object
          command.response_representation = Google::Apis::AdminDirectoryV1::RoleAssignment::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::RoleAssignment
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of all roleAssignments.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] page_token
        #   Token to specify the next page in the list.
        # @param [String] role_id
        #   Immutable ID of a role. If included in the request, returns only role
        #   assignments containing this role ID.
        # @param [String] user_key
        #   The user's primary email address, alias email address, or unique user ID. If
        #   included in the request, returns role assignments only for this user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::RoleAssignments] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::RoleAssignments]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_role_assignments(customer, max_results: nil, page_token: nil, role_id: nil, user_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/roleassignments', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::RoleAssignments::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::RoleAssignments
          command.params['customer'] = customer unless customer.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['roleId'] = role_id unless role_id.nil?
          command.query['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a role.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] role_id
        #   Immutable ID of the role.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_role(customer, role_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customer}/roles/{roleId}', options)
          command.params['customer'] = customer unless customer.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a role.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] role_id
        #   Immutable ID of the role.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_role(customer, role_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/roles/{roleId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Role
          command.params['customer'] = customer unless customer.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a role.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [Google::Apis::AdminDirectoryV1::Role] role_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_role(customer, role_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customer}/roles', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.request_object = role_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Role
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of all the roles in a domain.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] page_token
        #   Token to specify the next page in the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Roles] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Roles]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_roles(customer, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customer}/roles', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Roles::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Roles
          command.params['customer'] = customer unless customer.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patch role via Apiary Patch Orchestration
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] role_id
        #   Immutable ID of the role.
        # @param [Google::Apis::AdminDirectoryV1::Role] role_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_role(customer, role_id, role_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customer}/roles/{roleId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.request_object = role_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Role
          command.params['customer'] = customer unless customer.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a role.
        # @param [String] customer
        #   Immutable ID of the G Suite account.
        # @param [String] role_id
        #   Immutable ID of the role.
        # @param [Google::Apis::AdminDirectoryV1::Role] role_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Role] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Role]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_role(customer, role_id, role_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customer}/roles/{roleId}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.request_object = role_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Role::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Role
          command.params['customer'] = customer unless customer.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete schema
        # @param [String] customer_id
        #   Immutable ID of the G Suite account.
        # @param [String] schema_key
        #   Name or immutable ID of the schema.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_schema(customer_id, schema_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/customer/{customerId}/schemas/{schemaKey}', options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve schema
        # @param [String] customer_id
        #   Immutable ID of the G Suite account.
        # @param [String] schema_key
        #   Name or immutable ID of the schema.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_schema(customer_id, schema_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/schemas/{schemaKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create schema.
        # @param [String] customer_id
        #   Immutable ID of the G Suite account.
        # @param [Google::Apis::AdminDirectoryV1::Schema] schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_schema(customer_id, schema_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/customer/{customerId}/schemas', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.request_object = schema_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all schemas for a customer
        # @param [String] customer_id
        #   Immutable ID of the G Suite account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Schemas] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Schemas]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_schemas(customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/customer/{customerId}/schemas', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Schemas::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schemas
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patch Schema via Apiary Patch Orchestration
        # @param [String] customer_id
        #   Immutable ID of the G Suite account.
        # @param [String] schema_key
        #   Name or immutable ID of the schema.
        # @param [Google::Apis::AdminDirectoryV1::Schema] schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_schema(customer_id, schema_key, schema_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/customer/{customerId}/schemas/{schemaKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.request_object = schema_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update schema
        # @param [String] customer_id
        #   Immutable ID of the G Suite account.
        # @param [String] schema_key
        #   Name or immutable ID of the schema.
        # @param [Google::Apis::AdminDirectoryV1::Schema] schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_schema(customer_id, schema_key, schema_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/customer/{customerId}/schemas/{schemaKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.request_object = schema_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete all access tokens issued by a user for an application.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] client_id
        #   The Client ID of the application the token is issued to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_token(user_key, client_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/users/{userKey}/tokens/{clientId}', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['clientId'] = client_id unless client_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about an access token issued by a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] client_id
        #   The Client ID of the application the token is issued to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Token] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Token]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_token(user_key, client_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/tokens/{clientId}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Token::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Token
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['clientId'] = client_id unless client_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the set of tokens specified user has issued to 3rd party applications.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Tokens] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Tokens]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tokens(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/tokens', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Tokens::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Tokens
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Turn off 2-Step Verification for user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def turn_two_step_verification_off(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/twoStepVerification/turnOff', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/users/{userKey}', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] custom_field_mask
        #   A comma-separated list of schema names. All fields from these schemas are
        #   fetched. This should only be set when `projection=custom`.
        # @param [String] projection
        #   What subset of fields to fetch for this user.
        # @param [String] view_type
        #   Whether to fetch the administrator-only or domain-wide public view of the user.
        #   For more information, see [Retrieve a user as a non-administrator](/admin-sdk/
        #   directory/v1/guides/manage-users#retrieve_users_non_admin).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(user_key, custom_field_mask: nil, projection: nil, view_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['customFieldMask'] = custom_field_mask unless custom_field_mask.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['viewType'] = view_type unless view_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user.
        # @param [Google::Apis::AdminDirectoryV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_user(user_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a paginated list of either deleted users or all users in a domain.
        # @param [String] custom_field_mask
        #   A comma-separated list of schema names. All fields from these schemas are
        #   fetched. This should only be set when `projection=custom`.
        # @param [String] customer
        #   The unique ID for the customer's G Suite account. In case of a multi-domain
        #   account, to fetch all groups for a customer, fill this field instead of domain.
        #   You can also use the `my_customer` alias to represent your account's `
        #   customerId`. The `customerId` is also returned as part of the [Users resource](
        #   /admin-sdk/directory/v1/reference/users). Either the `customer` or the `domain`
        #   parameter must be provided.
        # @param [String] domain
        #   The domain name. Use this field to get fields from only one domain. To return
        #   all domains for a customer account, use the `customer` query parameter instead.
        #   Either the `customer` or the `domain` parameter must be provided.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] order_by
        #   Property to use for sorting results.
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   What subset of fields to fetch for this user.
        # @param [String] query
        #   Query string for searching user fields. For more information on constructing
        #   user queries, see [Search for Users](/admin-sdk/directory/v1/guides/search-
        #   users).
        # @param [String] show_deleted
        #   If set to `true`, retrieves the list of deleted users. (Default: `false`)
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order.
        # @param [String] view_type
        #   Whether to fetch the administrator-only or domain-wide public view of the user.
        #   For more information, see [Retrieve a user as a non-administrator](/admin-sdk/
        #   directory/v1/guides/manage-users#retrieve_users_non_admin).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Users] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Users]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(custom_field_mask: nil, customer: nil, domain: nil, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, show_deleted: nil, sort_order: nil, view_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Users::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Users
          command.query['customFieldMask'] = custom_field_mask unless custom_field_mask.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['domain'] = domain unless domain.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['query'] = query unless query.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['viewType'] = view_type unless view_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a user a super administrator.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Google::Apis::AdminDirectoryV1::UserMakeAdmin] user_make_admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def make_user_admin(user_key, user_make_admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/makeAdmin', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserMakeAdmin::Representation
          command.request_object = user_make_admin_object
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user using patch semantics. The update method should be used instead,
        # since it also supports patch semantics and has better performance. This
        # method is unable to clear fields that contain repeated objects (`addresses`, `
        # phones`, etc). Use the update method instead.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Google::Apis::AdminDirectoryV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user(user_key, user_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/users/{userKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sign a user out of all web and device sessions and reset their sign-in cookies.
        # User will have to sign in by authenticating again.
        # @param [String] user_key
        #   Identifies the target user in the API request. The value can be the user's
        #   primary email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_user_out(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/signOut', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a deleted user.
        # @param [String] user_key
        #   The immutable id of the user
        # @param [Google::Apis::AdminDirectoryV1::UserUndelete] user_undelete_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_user(user_key, user_undelete_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/undelete', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserUndelete::Representation
          command.request_object = user_undelete_object
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user. This method supports patch semantics, meaning you only need to
        # include the fields you wish to update. Fields that are not present in the
        # request will be preserved, and fields set to `null` will be cleared.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Google::Apis::AdminDirectoryV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user(user_key, user_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/users/{userKey}', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watch for changes in users list
        # @param [Google::Apis::AdminDirectoryV1::Channel] channel_object
        # @param [String] custom_field_mask
        #   Comma-separated list of schema names. All fields from these schemas are
        #   fetched. This should only be set when projection=custom.
        # @param [String] customer
        #   Immutable ID of the G Suite account. In case of multi-domain, to fetch all
        #   users for a customer, fill this field instead of domain.
        # @param [String] domain
        #   Name of the domain. Fill this field to get users from only this domain. To
        #   return all users in a multi-domain fill customer field instead."
        # @param [String] event
        #   Events to watch for.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] order_by
        #   Column to use for sorting results
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   What subset of fields to fetch for this user.
        # @param [String] query
        #   Query string search. Should be of the form "". Complete documentation is at
        #   https: //developers.google.com/admin-sdk/directory/v1/guides/search-users
        # @param [String] show_deleted
        #   If set to true, retrieves the list of deleted users. (Default: false)
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order.
        # @param [String] view_type
        #   Whether to fetch the administrator-only or domain-wide public view of the user.
        #   For more information, see [Retrieve a user as a non-administrator](/admin-sdk/
        #   directory/v1/guides/manage-users#retrieve_users_non_admin).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_user(channel_object = nil, custom_field_mask: nil, customer: nil, domain: nil, event: nil, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, show_deleted: nil, sort_order: nil, view_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/watch', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Channel
          command.query['customFieldMask'] = custom_field_mask unless custom_field_mask.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['domain'] = domain unless domain.nil?
          command.query['event'] = event unless event.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['query'] = query unless query.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['viewType'] = view_type unless view_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an alias.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] user_alias
        #   The alias to be removed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_alias(user_key, user_alias, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/users/{userKey}/aliases/{alias}', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['alias'] = user_alias unless user_alias.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an alias.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Google::Apis::AdminDirectoryV1::Alias] alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Alias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Alias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_user_alias(user_key, alias_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/aliases', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.request_object = alias_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Alias
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all aliases for a user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Aliases] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Aliases]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_aliases(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/aliases', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Aliases::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Aliases
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watch for changes in users list.
        # @param [String] user_key
        #   Email or immutable ID of the user
        # @param [Google::Apis::AdminDirectoryV1::Channel] channel_object
        # @param [String] event
        #   Events to watch for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_user_alias(user_key, channel_object = nil, event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/aliases/watch', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Channel
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['event'] = event unless event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the user's photo.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_photo(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'admin/directory/v1/users/{userKey}/photos/thumbnail', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the user's photo.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::UserPhoto] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::UserPhoto]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_photo(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/photos/thumbnail', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::UserPhoto
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a photo for the user. This method supports [patch semantics](/admin-sdk/
        # directory/v1/guides/performance#patch).
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Google::Apis::AdminDirectoryV1::UserPhoto] user_photo_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::UserPhoto] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::UserPhoto]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_photo(user_key, user_photo_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'admin/directory/v1/users/{userKey}/photos/thumbnail', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.request_object = user_photo_object
          command.response_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::UserPhoto
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a photo for the user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [Google::Apis::AdminDirectoryV1::UserPhoto] user_photo_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::UserPhoto] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::UserPhoto]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_photo(user_key, user_photo_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'admin/directory/v1/users/{userKey}/photos/thumbnail', options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.request_object = user_photo_object
          command.response_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::UserPhoto
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate new backup verification codes for the user.
        # @param [String] user_key
        #   Email or immutable ID of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_verification_code(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/verificationCodes/generate', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invalidate the current backup verification codes for the user.
        # @param [String] user_key
        #   Email or immutable ID of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def invalidate_verification_code(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'admin/directory/v1/users/{userKey}/verificationCodes/invalidate', options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the current set of valid backup verification codes for the specified
        # user.
        # @param [String] user_key
        #   Identifies the user in the API request. The value can be the user's primary
        #   email address, alias email address, or unique user ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::VerificationCodes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::VerificationCodes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_verification_codes(user_key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'admin/directory/v1/users/{userKey}/verificationCodes', options)
          command.response_representation = Google::Apis::AdminDirectoryV1::VerificationCodes::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::VerificationCodes
          command.params['userKey'] = user_key unless user_key.nil?
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
