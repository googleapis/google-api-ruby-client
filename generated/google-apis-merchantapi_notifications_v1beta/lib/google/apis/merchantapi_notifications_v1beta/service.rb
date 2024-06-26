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
    module MerchantapiNotificationsV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_notifications_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiNotificationsV1beta # Alias the module
      #    service = Merchantapi::MerchantService.new
      #
      # @see https://developers.devsite.corp.google.com/merchant/api
      class MerchantService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://merchantapi.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-merchantapi_notifications_v1beta',
                client_version: Google::Apis::MerchantapiNotificationsV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a notification subscription for a merchant. We will allow the
        # following types of notification subscriptions to exist together (per merchant
        # as a subscriber per event type): 1. Subscription for all managed accounts +
        # subscription for self 2. Multiple "partial" subscriptions for managed accounts
        # + subscription for self we will not allow (per merchant as a subscriber per
        # event type): 1. multiple self subscriptions. 2. multiple "all managed accounts"
        # subscriptions. 3. all and partial subscriptions at the same time. 4. multiple
        # partial subscriptions for the same target account
        # @param [String] parent
        #   Required. The merchant account that owns the new notification subscription.
        #   Format: `accounts/`account``
        # @param [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription] notification_subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_notificationsubscription(parent, notification_subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'notifications/v1beta/{+parent}/notificationsubscriptions', options)
          command.request_representation = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription::Representation
          command.request_object = notification_subscription_object
          command.response_representation = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription::Representation
          command.response_class = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a notification subscription for a merchant.
        # @param [String] name
        #   Required. The name of the notification subscription to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiNotificationsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiNotificationsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_notificationsubscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'notifications/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiNotificationsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiNotificationsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets notification subscriptions for an account.
        # @param [String] name
        #   Required. The `name` of the notification subscription.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_notificationsubscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'notifications/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription::Representation
          command.response_class = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets all the notification subscriptions for a merchant.
        # @param [String] parent
        #   Required. The merchant account who owns the notification subscriptions. Format:
        #   `accounts/`account``
        # @param [Fixnum] page_size
        #   The maximum number of notification subscriptions to return in a page. The
        #   default value for `page_size` is 100. The maximum value is `200`. Values above
        #   `200` will be coerced to `200`.
        # @param [String] page_token
        #   Token (if provided) to retrieve the subsequent page. All other parameters must
        #   match the original call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiNotificationsV1beta::ListNotificationSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiNotificationsV1beta::ListNotificationSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_notificationsubscriptions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'notifications/v1beta/{+parent}/notificationsubscriptions', options)
          command.response_representation = Google::Apis::MerchantapiNotificationsV1beta::ListNotificationSubscriptionsResponse::Representation
          command.response_class = Google::Apis::MerchantapiNotificationsV1beta::ListNotificationSubscriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing notification subscription for a merchant.
        # @param [String] name
        #   Output only. The `name` of the notification configuration. Generated by the
        #   Content API upon creation of a new `NotificationSubscription`. The `account`
        #   represents the merchant ID of the merchant that owns the configuration. Format:
        #   `accounts/`account`/notificationsubscriptions/`notification_subscription``
        # @param [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription] notification_subscription_object
        # @param [String] update_mask
        #   List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_notificationsubscription(name, notification_subscription_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'notifications/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription::Representation
          command.request_object = notification_subscription_object
          command.response_representation = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription::Representation
          command.response_class = Google::Apis::MerchantapiNotificationsV1beta::NotificationSubscription
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
