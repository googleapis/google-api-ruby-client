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
    module MybusinessnotificationsV1
      # My Business Notifications API
      #
      # The My Business Notification Settings API enables managing notification
      #  settings for business accounts. Note - If you have a quota of 0 after enabling
      #  the API, please request for GBP API access.
      #
      # @example
      #    require 'google/apis/mybusinessnotifications_v1'
      #
      #    Mybusinessnotifications = Google::Apis::MybusinessnotificationsV1 # Alias the module
      #    service = Mybusinessnotifications::MyBusinessNotificationSettingsService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessNotificationSettingsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinessnotifications.googleapis.com/', '',
                client_name: 'google-apis-mybusinessnotifications_v1',
                client_version: Google::Apis::MybusinessnotificationsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns the pubsub notification settings for the account.
        # @param [String] name
        #   Required. The resource name of the notification setting we are trying to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessnotificationsV1::NotificationSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessnotificationsV1::NotificationSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_notification_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessnotificationsV1::NotificationSetting::Representation
          command.response_class = Google::Apis::MybusinessnotificationsV1::NotificationSetting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the pubsub notification setting for the account informing Google which
        # topic to send pubsub notifications for. Use the notification_types field
        # within notification_setting to manipulate the events an account wants to
        # subscribe to. An account will only have one notification setting resource, and
        # only one pubsub topic can be set. To delete the setting, update with an empty
        # notification_types
        # @param [String] name
        #   Required. The resource name this setting is for. This is of the form `accounts/
        #   `account_id`/notificationSetting`.
        # @param [Google::Apis::MybusinessnotificationsV1::NotificationSetting] notification_setting_object
        # @param [String] update_mask
        #   Required. The specific fields that should be updated. The only editable field
        #   is notification_setting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessnotificationsV1::NotificationSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessnotificationsV1::NotificationSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_notification_setting(name, notification_setting_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessnotificationsV1::NotificationSetting::Representation
          command.request_object = notification_setting_object
          command.response_representation = Google::Apis::MybusinessnotificationsV1::NotificationSetting::Representation
          command.response_class = Google::Apis::MybusinessnotificationsV1::NotificationSetting
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
