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
    module SmartdevicemanagementV1
      # Smart Device Management API
      #
      # Allow select enterprise partners to access, control, and manage Google and
      #  Nest devices programmatically.
      #
      # @example
      #    require 'google/apis/smartdevicemanagement_v1'
      #
      #    Smartdevicemanagement = Google::Apis::SmartdevicemanagementV1 # Alias the module
      #    service = Smartdevicemanagement::SmartDeviceManagementService.new
      #
      # @see https://developers.google.com/nest/device-access
      class SmartDeviceManagementService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://smartdevicemanagement.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Executes a command to device managed by the enterprise.
        # @param [String] name
        #   The name of the device requested. For example: "enterprises/XYZ/devices/123"
        # @param [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest] google_home_enterprise_sdm_v1_execute_device_command_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_enterprise_device_command(name, google_home_enterprise_sdm_v1_execute_device_command_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:executeCommand', options)
          command.request_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest::Representation
          command.request_object = google_home_enterprise_sdm_v1_execute_device_command_request_object
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a device managed by the enterprise.
        # @param [String] name
        #   The name of the device requested. For example: "enterprises/XYZ/devices/123"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Device
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices managed by the enterprise.
        # @param [String] parent
        #   The parent enterprise to list devices under. E.g. "enterprises/XYZ".
        # @param [String] filter
        #   Optional filter to list devices. Filters can be done on: Device custom name (
        #   substring match): 'customName=wing'
        # @param [Fixnum] page_size
        #   Optional requested page size. Server may return fewer devices than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional token of the page to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/devices', options)
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListDevicesResponse::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a structure managed by the enterprise.
        # @param [String] name
        #   The name of the structure requested. For example: "enterprises/XYZ/structures/
        #   ABC".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_structure(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Structure
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists structures managed by the enterprise.
        # @param [String] parent
        #   The parent enterprise to list structures under. E.g. "enterprises/XYZ".
        # @param [String] filter
        #   Optional filter to list structures.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer structures than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   The token of the page to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListStructuresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListStructuresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_structures(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/structures', options)
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListStructuresResponse::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListStructuresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a room managed by the enterprise.
        # @param [String] name
        #   The name of the room requested. For example: "enterprises/XYZ/structures/ABC/
        #   rooms/123".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_structure_room(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1Room
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists rooms managed by the enterprise.
        # @param [String] parent
        #   The parent resource name of the rooms requested. For example: "enterprises/XYZ/
        #   structures/ABC".
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer rooms than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   The token of the page to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListRoomsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListRoomsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprise_structure_rooms(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/rooms', options)
          command.response_representation = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListRoomsResponse::Representation
          command.response_class = Google::Apis::SmartdevicemanagementV1::GoogleHomeEnterpriseSdmV1ListRoomsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
