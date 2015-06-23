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
      # Admin Directory API
      #
      # The Admin SDK Directory API lets you view and manage enterprise resources such
      #  as users and groups, administrative notifications, security features, and more.
      #
      # @example
      #    require 'google/apis/admin_directory_v1'
      #
      #    Admin = Google::Apis::AdminDirectoryV1 # Alias the module
      #    service = Admin::DirectoryService.new
      #
      # @see https://developers.google.com/admin-sdk/directory/
      class DirectoryService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'admin/directory/v1/')
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_asp(user_key, code_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/asps/{codeId}'
          command =  make_simple_command(:delete, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['codeId'] = code_id unless code_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_asp(user_key, code_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/asps/{codeId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Asp::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Asp
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['codeId'] = code_id unless code_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_asps(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/asps'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Asps::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Asps
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop watching resources through this channel
        # @param [Google::Apis::AdminDirectoryV1::Channel] channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def stop_channel(channel_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '/admin/directory_v1/channels/stop'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.request_object = channel_object
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve Chrome OS Device
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] device_id
        #   Immutable id of Chrome OS Device
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_chrome_os_device(customer_id, device_id, projection: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/chromeos/{deviceId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all Chrome OS Devices of a customer (paginated)
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Default is 100
        # @param [String] order_by
        #   Column to use for sorting results
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] query
        #   Search string in the format given at http://support.google.com/chromeos/a/bin/
        #   answer.py?hl=en&answer=1698333
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order. Only of use when
        #   orderBy is also used
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_chrome_os_devices(customer_id, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, sort_order: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/chromeos'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevices::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevices
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['query'] = query unless query.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Chrome OS Device. This method supports patch semantics.
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] device_id
        #   Immutable id of Chrome OS Device
        # @param [Google::Apis::AdminDirectoryV1::ChromeOsDevice] chrome_os_device_object
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_chrome_os_device(customer_id, device_id, chrome_os_device_object = nil, projection: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/chromeos/{deviceId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.request_object = chrome_os_device_object
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Chrome OS Device
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] device_id
        #   Immutable id of Chrome OS Device
        # @param [Google::Apis::AdminDirectoryV1::ChromeOsDevice] chrome_os_device_object
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_chrome_os_device(customer_id, device_id, chrome_os_device_object = nil, projection: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/chromeos/{deviceId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.request_object = chrome_os_device_object
          command.response_representation = Google::Apis::AdminDirectoryV1::ChromeOsDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::ChromeOsDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete Group
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_group(group_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}'
          command =  make_simple_command(:delete, path, options)
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve Group
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_group(group_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create Group
        # @param [Google::Apis::AdminDirectoryV1::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_group(group_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all groups in a domain (paginated)
        # @param [String] customer
        #   Immutable id of the Google Apps account. In case of multi-domain, to fetch all
        #   groups for a customer, fill this field instead of domain.
        # @param [String] domain
        #   Name of the domain. Fill this field to get groups from only this domain. To
        #   return all groups in a multi-domain fill customer field instead.
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Default is 200
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] user_key
        #   Email or immutable Id of the user if only those groups are to be listed, the
        #   given user is a member of. If Id, it should match with id of user object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_groups(customer: nil, domain: nil, max_results: nil, page_token: nil, user_key: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Groups::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Groups
          command.query['customer'] = customer unless customer.nil?
          command.query['domain'] = domain unless domain.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Group. This method supports patch semantics.
        # @param [String] group_key
        #   Email or immutable Id of the group. If Id, it should match with id of group
        #   object
        # @param [Google::Apis::AdminDirectoryV1::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_group(group_key, group_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Group
        # @param [String] group_key
        #   Email or immutable Id of the group. If Id, it should match with id of group
        #   object
        # @param [Google::Apis::AdminDirectoryV1::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_group(group_key, group_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Group::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Group
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove a alias for the group
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [String] group_alias
        #   The alias to be removed
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_group_alias(group_key, group_alias, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/aliases/{alias}'
          command =  make_simple_command(:delete, path, options)
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['alias'] = group_alias unless group_alias.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a alias for the group
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [Google::Apis::AdminDirectoryV1::Alias] alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_group_alias(group_key, alias_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/aliases'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.request_object = alias_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Alias
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all aliases for a group
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_group_aliases(group_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/aliases'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Aliases::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Aliases
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove membership.
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [String] member_key
        #   Email or immutable Id of the member
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_member(group_key, member_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/members/{memberKey}'
          command =  make_simple_command(:delete, path, options)
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve Group Member
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [String] member_key
        #   Email or immutable Id of the member
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_member(group_key, member_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/members/{memberKey}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add user to the specified group.
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [Google::Apis::AdminDirectoryV1::Member] member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_member(group_key, member_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/members'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.request_object = member_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all members in a group (paginated)
        # @param [String] group_key
        #   Email or immutable Id of the group
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Default is 200
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] roles
        #   Comma separated role values to filter list results on.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_members(group_key, max_results: nil, page_token: nil, roles: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/members'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Members::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Members
          command.params['groupKey'] = group_key unless group_key.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['roles'] = roles unless roles.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update membership of a user in the specified group. This method supports patch
        # semantics.
        # @param [String] group_key
        #   Email or immutable Id of the group. If Id, it should match with id of group
        #   object
        # @param [String] member_key
        #   Email or immutable Id of the user. If Id, it should match with id of member
        #   object
        # @param [Google::Apis::AdminDirectoryV1::Member] member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_member(group_key, member_key, member_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/members/{memberKey}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.request_object = member_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update membership of a user in the specified group.
        # @param [String] group_key
        #   Email or immutable Id of the group. If Id, it should match with id of group
        #   object
        # @param [String] member_key
        #   Email or immutable Id of the user. If Id, it should match with id of member
        #   object
        # @param [Google::Apis::AdminDirectoryV1::Member] member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_member(group_key, member_key, member_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'groups/{groupKey}/members/{memberKey}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.request_object = member_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Member::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Member
          command.params['groupKey'] = group_key unless group_key.nil?
          command.params['memberKey'] = member_key unless member_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Take action on Mobile Device
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] resource_id
        #   Immutable id of Mobile Device
        # @param [Google::Apis::AdminDirectoryV1::MobileDeviceAction] mobile_device_action_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def action_mobile_device(customer_id, resource_id, mobile_device_action_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/mobile/{resourceId}/action'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::MobileDeviceAction::Representation
          command.request_object = mobile_device_action_object
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete Mobile Device
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] resource_id
        #   Immutable id of Mobile Device
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_mobile_device(customer_id, resource_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/mobile/{resourceId}'
          command =  make_simple_command(:delete, path, options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve Mobile Device
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] resource_id
        #   Immutable id of Mobile Device
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_mobile_device(customer_id, resource_id, projection: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/mobile/{resourceId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::MobileDevice::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::MobileDevice
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all Mobile Devices of a customer (paginated)
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Default is 100
        # @param [String] order_by
        #   Column to use for sorting results
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   Restrict information returned to a set of selected fields.
        # @param [String] query
        #   Search string in the format given at http://support.google.com/a/bin/answer.py?
        #   hl=en&answer=1408863#search
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order. Only of use when
        #   orderBy is also used
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_mobile_devices(customer_id, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, sort_order: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/devices/mobile'
          command =  make_simple_command(:get, path, options)
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
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a notification
        # @param [String] customer
        #   The unique ID for the customer's Google account. The customerId is also
        #   returned as part of the Users resource.
        # @param [String] notification_id
        #   The unique ID of the notification.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_notification(customer, notification_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customer}/notifications/{notificationId}'
          command =  make_simple_command(:delete, path, options)
          command.params['customer'] = customer unless customer.nil?
          command.params['notificationId'] = notification_id unless notification_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a notification.
        # @param [String] customer
        #   The unique ID for the customer's Google account. The customerId is also
        #   returned as part of the Users resource.
        # @param [String] notification_id
        #   The unique ID of the notification.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Notification] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Notification]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_notification(customer, notification_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customer}/notifications/{notificationId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Notification::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Notification
          command.params['customer'] = customer unless customer.nil?
          command.params['notificationId'] = notification_id unless notification_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of notifications.
        # @param [String] customer
        #   The unique ID for the customer's Google account.
        # @param [String] language
        #   The ISO 639-1 code of the language notifications are returned in. The default
        #   is English (en).
        # @param [Fixnum] max_results
        #   Maximum number of notifications to return per page. The default is 100.
        # @param [String] page_token
        #   The token to specify the page of results to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Notifications] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Notifications]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_notifications(customer, language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customer}/notifications'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Notifications::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Notifications
          command.params['customer'] = customer unless customer.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a notification. This method supports patch semantics.
        # @param [String] customer
        #   The unique ID for the customer's Google account.
        # @param [String] notification_id
        #   The unique ID of the notification.
        # @param [Google::Apis::AdminDirectoryV1::Notification] notification_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Notification] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Notification]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_notification(customer, notification_id, notification_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customer}/notifications/{notificationId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Notification::Representation
          command.request_object = notification_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Notification::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Notification
          command.params['customer'] = customer unless customer.nil?
          command.params['notificationId'] = notification_id unless notification_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a notification.
        # @param [String] customer
        #   The unique ID for the customer's Google account.
        # @param [String] notification_id
        #   The unique ID of the notification.
        # @param [Google::Apis::AdminDirectoryV1::Notification] notification_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdminDirectoryV1::Notification] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminDirectoryV1::Notification]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_notification(customer, notification_id, notification_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customer}/notifications/{notificationId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Notification::Representation
          command.request_object = notification_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Notification::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Notification
          command.params['customer'] = customer unless customer.nil?
          command.params['notificationId'] = notification_id unless notification_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove Organization Unit
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Array<String>, String] org_unit_path
        #   Full path of the organization unit or its Id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_org_unit(customer_id, org_unit_path, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/orgunits{/orgUnitPath*}'
          command =  make_simple_command(:delete, path, options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve Organization Unit
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Array<String>, String] org_unit_path
        #   Full path of the organization unit or its Id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_org_unit(customer_id, org_unit_path, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/orgunits{/orgUnitPath*}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add Organization Unit
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Google::Apis::AdminDirectoryV1::OrgUnit] org_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_org_unit(customer_id, org_unit_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/orgunits'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.request_object = org_unit_object
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all Organization Units
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] org_unit_path
        #   the URL-encoded organization unit's path or its Id
        # @param [String] type
        #   Whether to return all sub-organizations or just immediate children
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_org_units(customer_id, org_unit_path: nil, type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/orgunits'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnits::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnits
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Organization Unit. This method supports patch semantics.
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Array<String>, String] org_unit_path
        #   Full path of the organization unit or its Id
        # @param [Google::Apis::AdminDirectoryV1::OrgUnit] org_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_org_unit(customer_id, org_unit_path, org_unit_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/orgunits{/orgUnitPath*}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.request_object = org_unit_object
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Organization Unit
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Array<String>, String] org_unit_path
        #   Full path of the organization unit or its Id
        # @param [Google::Apis::AdminDirectoryV1::OrgUnit] org_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_org_unit(customer_id, org_unit_path, org_unit_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/orgunits{/orgUnitPath*}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.request_object = org_unit_object
          command.response_representation = Google::Apis::AdminDirectoryV1::OrgUnit::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::OrgUnit
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['orgUnitPath'] = org_unit_path unless org_unit_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete schema
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] schema_key
        #   Name or immutable Id of the schema
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_schema(customer_id, schema_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/schemas/{schemaKey}'
          command =  make_simple_command(:delete, path, options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve schema
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] schema_key
        #   Name or immutable Id of the schema
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_schema(customer_id, schema_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/schemas/{schemaKey}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create schema.
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [Google::Apis::AdminDirectoryV1::Schema] schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_schema(customer_id, schema_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/schemas'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.request_object = schema_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all schemas for a customer
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_schemas(customer_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/schemas'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Schemas::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schemas
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update schema. This method supports patch semantics.
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] schema_key
        #   Name or immutable Id of the schema.
        # @param [Google::Apis::AdminDirectoryV1::Schema] schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_schema(customer_id, schema_key, schema_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/schemas/{schemaKey}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.request_object = schema_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update schema
        # @param [String] customer_id
        #   Immutable id of the Google Apps account
        # @param [String] schema_key
        #   Name or immutable Id of the schema.
        # @param [Google::Apis::AdminDirectoryV1::Schema] schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_schema(customer_id, schema_key, schema_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'customer/{customerId}/schemas/{schemaKey}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.request_object = schema_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Schema::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Schema
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['schemaKey'] = schema_key unless schema_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_token(user_key, client_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/tokens/{clientId}'
          command =  make_simple_command(:delete, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['clientId'] = client_id unless client_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_token(user_key, client_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/tokens/{clientId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Token::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Token
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['clientId'] = client_id unless client_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_tokens(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/tokens'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Tokens::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Tokens
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_user(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}'
          command =  make_simple_command(:delete, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # retrieve user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] custom_field_mask
        #   Comma-separated list of schema names. All fields from these schemas are
        #   fetched. This should only be set when projection=custom.
        # @param [String] projection
        #   What subset of fields to fetch for this user.
        # @param [String] view_type
        #   Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_user(user_key, custom_field_mask: nil, projection: nil, view_type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['customFieldMask'] = custom_field_mask unless custom_field_mask.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['viewType'] = view_type unless view_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # create user.
        # @param [Google::Apis::AdminDirectoryV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_user(user_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve either deleted users or all users in a domain (paginated)
        # @param [String] custom_field_mask
        #   Comma-separated list of schema names. All fields from these schemas are
        #   fetched. This should only be set when projection=custom.
        # @param [String] customer
        #   Immutable id of the Google Apps account. In case of multi-domain, to fetch all
        #   users for a customer, fill this field instead of domain.
        # @param [String] domain
        #   Name of the domain. Fill this field to get users from only this domain. To
        #   return all users in a multi-domain fill customer field instead.
        # @param [String] event
        #   Event on which subscription is intended (if subscribing)
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Default is 100. Max allowed is 500
        # @param [String] order_by
        #   Column to use for sorting results
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   What subset of fields to fetch for this user.
        # @param [String] query
        #   Query string search. Should be of the form "". Complete documentation is at
        #   https://developers.google.com/admin-sdk/directory/v1/guides/search-users
        # @param [String] show_deleted
        #   If set to true retrieves the list of deleted users. Default is false
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order.
        # @param [String] view_type
        #   Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_users(custom_field_mask: nil, customer: nil, domain: nil, event: nil, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, show_deleted: nil, sort_order: nil, view_type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Users::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Users
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
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # change admin status of a user
        # @param [String] user_key
        #   Email or immutable Id of the user as admin
        # @param [Google::Apis::AdminDirectoryV1::UserMakeAdmin] user_make_admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def make_admin_user(user_key, user_make_admin_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/makeAdmin'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserMakeAdmin::Representation
          command.request_object = user_make_admin_object
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # update user. This method supports patch semantics.
        # @param [String] user_key
        #   Email or immutable Id of the user. If Id, it should match with id of user
        #   object
        # @param [Google::Apis::AdminDirectoryV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_user(user_key, user_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undelete a deleted user
        # @param [String] user_key
        #   The immutable id of the user
        # @param [Google::Apis::AdminDirectoryV1::UserUndelete] user_undelete_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def undelete_user(user_key, user_undelete_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/undelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserUndelete::Representation
          command.request_object = user_undelete_object
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # update user
        # @param [String] user_key
        #   Email or immutable Id of the user. If Id, it should match with id of user
        #   object
        # @param [Google::Apis::AdminDirectoryV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_user(user_key, user_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AdminDirectoryV1::User::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::User
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watch for changes in users list
        # @param [Google::Apis::AdminDirectoryV1::Channel] channel_object
        # @param [String] custom_field_mask
        #   Comma-separated list of schema names. All fields from these schemas are
        #   fetched. This should only be set when projection=custom.
        # @param [String] customer
        #   Immutable id of the Google Apps account. In case of multi-domain, to fetch all
        #   users for a customer, fill this field instead of domain.
        # @param [String] domain
        #   Name of the domain. Fill this field to get users from only this domain. To
        #   return all users in a multi-domain fill customer field instead.
        # @param [String] event
        #   Event on which subscription is intended (if subscribing)
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Default is 100. Max allowed is 500
        # @param [String] order_by
        #   Column to use for sorting results
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] projection
        #   What subset of fields to fetch for this user.
        # @param [String] query
        #   Query string search. Should be of the form "". Complete documentation is at
        #   https://developers.google.com/admin-sdk/directory/v1/guides/search-users
        # @param [String] show_deleted
        #   If set to true retrieves the list of deleted users. Default is false
        # @param [String] sort_order
        #   Whether to return results in ascending or descending order.
        # @param [String] view_type
        #   Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def watch_user(channel_object = nil, custom_field_mask: nil, customer: nil, domain: nil, event: nil, max_results: nil, order_by: nil, page_token: nil, projection: nil, query: nil, show_deleted: nil, sort_order: nil, view_type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/watch'
          command =  make_simple_command(:post, path, options)
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
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove a alias for the user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] user_alias
        #   The alias to be removed
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_user_alias(user_key, user_alias, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/aliases/{alias}'
          command =  make_simple_command(:delete, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['alias'] = user_alias unless user_alias.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a alias for the user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [Google::Apis::AdminDirectoryV1::Alias] alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def insert_user_alias(user_key, alias_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/aliases'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.request_object = alias_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Alias::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Alias
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all aliases for a user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] event
        #   Event on which subscription is intended (if subscribing)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_user_aliases(user_key, event: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/aliases'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::Aliases::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Aliases
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['event'] = event unless event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watch for changes in user aliases list
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [Google::Apis::AdminDirectoryV1::Channel] channel_object
        # @param [String] event
        #   Event on which subscription is intended (if subscribing)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def watch_user_alias(user_key, channel_object = nil, event: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/aliases/watch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::AdminDirectoryV1::Channel::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::Channel
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['event'] = event unless event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove photos for the user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_user_photo(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/photos/thumbnail'
          command =  make_simple_command(:delete, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve photo of a user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def get_user_photo(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/photos/thumbnail'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::UserPhoto
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a photo for the user. This method supports patch semantics.
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [Google::Apis::AdminDirectoryV1::UserPhoto] user_photo_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def patch_user_photo(user_key, user_photo_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/photos/thumbnail'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.request_object = user_photo_object
          command.response_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::UserPhoto
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a photo for the user
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [Google::Apis::AdminDirectoryV1::UserPhoto] user_photo_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def update_user_photo(user_key, user_photo_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/photos/thumbnail'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.request_object = user_photo_object
          command.response_representation = Google::Apis::AdminDirectoryV1::UserPhoto::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::UserPhoto
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate new backup verification codes for the user.
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def generate_verification_code(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/verificationCodes/generate'
          command =  make_simple_command(:post, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invalidate the current backup verification codes for the user.
        # @param [String] user_key
        #   Email or immutable Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def invalidate_verification_code(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/verificationCodes/invalidate'
          command =  make_simple_command(:post, path, options)
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
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
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def list_verification_codes(user_key, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'users/{userKey}/verificationCodes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdminDirectoryV1::VerificationCodes::Representation
          command.response_class = Google::Apis::AdminDirectoryV1::VerificationCodes
          command.params['userKey'] = user_key unless user_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
