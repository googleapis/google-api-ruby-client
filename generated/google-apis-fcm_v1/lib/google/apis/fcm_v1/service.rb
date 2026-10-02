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
    module FcmV1
      # Firebase Cloud Messaging API
      #
      # FCM send API that provides a cross-platform messaging solution to reliably
      #  deliver messages.
      #
      # @example
      #    require 'google/apis/fcm_v1'
      #
      #    Fcm = Google::Apis::FcmV1 # Alias the module
      #    service = Fcm::FirebaseCloudMessagingService.new
      #
      # @see https://firebase.google.com/docs/cloud-messaging
      class FirebaseCloudMessagingService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://fcm.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-fcm_v1',
                client_version: Google::Apis::FcmV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Send a message to specified target (a [Firebase Installation ID (FID)](/docs/
        # cloud-messaging/android/get-started#access-firebase-installation-id),
        # registration token, topic, or condition).
        # @param [String] parent
        #   Required. It contains the Firebase project id (i.e. the unique identifier for
        #   your Firebase project), in the format of `projects/`project_id``. The numeric
        #   project number with no padding is also supported in the format of `projects/`
        #   project_number``.
        # @param [Google::Apis::FcmV1::SendMessageRequest] send_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_message(parent, send_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/messages:send', options)
          command.request_representation = Google::Apis::FcmV1::SendMessageRequest::Representation
          command.request_object = send_message_request_object
          command.response_representation = Google::Apis::FcmV1::Message::Representation
          command.response_class = Google::Apis::FcmV1::Message
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TopicSubscription. Subscribes an app installation instance (by
        # registration_id, either FID or FCM Token) to a topicSubscription. Returns a
        # TopicSubscription if it is created successfully. If the subscription already
        # exists, returns error of ALREADY_EXISTS.
        # @param [String] parent
        #   Required. The parent resource where this subscription will be created. Format:
        #   projects/`project`/registrations/`registration` The `registration` part can be
        #   an FID or an FCM Token.
        # @param [Google::Apis::FcmV1::TopicSubscription] topic_subscription_object
        # @param [String] topic_name
        #   Required. The ID to use for the subscription, which is the topic name. This
        #   will become the last segment of the TopicSubscription's resource name. Topic
        #   names match the pattern of "[a-zA-Z0-9-_.~%]`1,900`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmV1::TopicSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmV1::TopicSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_registration_topic_subscription(parent, topic_subscription_object = nil, topic_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/topicSubscriptions', options)
          command.request_representation = Google::Apis::FcmV1::TopicSubscription::Representation
          command.request_object = topic_subscription_object
          command.response_representation = Google::Apis::FcmV1::TopicSubscription::Representation
          command.response_class = Google::Apis::FcmV1::TopicSubscription
          command.params['parent'] = parent unless parent.nil?
          command.query['topicName'] = topic_name unless topic_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TopicSubscription.
        # @param [String] name
        #   Required. The name of the topic subscription to delete. Format: projects/`
        #   project`/registrations/`registration`/topicSubscriptions/`topicSubscription`
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the topic subscription is not found, the request
        #   will succeed but no action will be taken on the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_registration_topic_subscription(name, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FcmV1::Empty::Representation
          command.response_class = Google::Apis::FcmV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a TopicSubscription.
        # @param [String] name
        #   Required. The name of the topic subscription to retrieve. Format: projects/`
        #   project`/registrations/`registration`/topicSubscriptions/`topicSubscription`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmV1::TopicSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmV1::TopicSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_registration_topic_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FcmV1::TopicSubscription::Representation
          command.response_class = Google::Apis::FcmV1::TopicSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists TopicSubscriptions for a given app instance.
        # @param [String] parent
        #   Required. The parent resource, which owns this collection of subscriptions.
        #   Format: projects/`project`/registrations/`registration` The `registration`
        #   part can be an FID or an FCM Token.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of subscriptions to return. The service may
        #   return fewer than this value. If unspecified, at most 1000 subscriptions will
        #   be returned. The maximum value is 2000; values above 2000 will be coerced to
        #   2000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListTopicSubscriptions` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmV1::ListTopicSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmV1::ListTopicSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_registration_topic_subscriptions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/topicSubscriptions', options)
          command.response_representation = Google::Apis::FcmV1::ListTopicSubscriptionsResponse::Representation
          command.response_class = Google::Apis::FcmV1::ListTopicSubscriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a TopicSubscription. Subscribes an app installation instance by
        # registration_id, either FID or FCM Token, to a topicSubscription. Returns an
        # existing TopicSubscription or creates a new one if it does not exist.
        # @param [String] name
        #   Identifier. The resource name of the subscription. Format: projects/`project`/
        #   registrations/`registration`/topicSubscriptions/`topicSubscription` The `
        #   registration` part contains the registration ID (e.g., FID).
        # @param [Google::Apis::FcmV1::TopicSubscription] topic_subscription_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the topic subscription is not found, a new topic
        #   subscription will be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmV1::TopicSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmV1::TopicSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_registration_topic_subscription(name, topic_subscription_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FcmV1::TopicSubscription::Representation
          command.request_object = topic_subscription_object
          command.response_representation = Google::Apis::FcmV1::TopicSubscription::Representation
          command.response_class = Google::Apis::FcmV1::TopicSubscription
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
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
