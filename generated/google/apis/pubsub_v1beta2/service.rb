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
    module PubsubV1beta2
      # Google Cloud Pub/Sub API
      #
      # Provides reliable, many-to-many, asynchronous messaging between applications.
      #
      # @example
      #    require 'google/apis/pubsub_v1beta2'
      #
      #    Pubsub = Google::Apis::PubsubV1beta2 # Alias the module
      #    service = Pubsub::PubsubService.new
      #
      # @see 
      class PubsubService < Google::Apis::Core::BaseService
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
          super('https://pubsub.googleapis.com/', 'v1beta2/')
        end
        
        # Acknowledges the messages associated with the ack tokens in the
        # AcknowledgeRequest. The Pub/Sub system can remove the relevant messages from
        # the subscription. Acknowledging a message whose ack deadline has expired may
        # succeed, but such a message may be redelivered later. Acknowledging a message
        # more than once will not result in an error.
        # @param [String] subscription
        # @param [Google::Apis::PubsubV1beta2::AcknowledgeRequest] acknowledge_request_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge(subscription, acknowledge_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+subscription}:acknowledge'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::AcknowledgeRequest::Representation
          command.request_object = acknowledge_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a subscription to a given topic for a given subscriber. If the
        # subscription already exists, returns ALREADY_EXISTS. If the corresponding
        # topic doesn't exist, returns NOT_FOUND. If the name is not provided in the
        # request, the server will assign a random name for this subscription on the
        # same project as the topic.
        # @param [String] name
        # @param [Google::Apis::PubsubV1beta2::Subscription] subscription_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_subscription(name, subscription_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+name}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::PubsubV1beta2::Subscription::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Subscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing subscription. All pending messages in the subscription are
        # immediately dropped. Calls to Pull after deletion will return NOT_FOUND. After
        # a subscription is deleted, a new one may be created with the same name, but
        # the new one has no association with the old subscription, or its topic unless
        # the same topic is specified.
        # @param [String] subscription
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_subscription(subscription, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+subscription}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration details of a subscription.
        # @param [String] subscription
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_subscription(subscription, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+subscription}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Subscription::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Subscription
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists matching subscriptions.
        # @param [String] project
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::ListSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::ListSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_subscriptions(project, page_size: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+project}/subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::ListSubscriptionsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::ListSubscriptionsResponse
          command.params['project'] = project unless project.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the ack deadline for a specific message. This method is useful to
        # indicate that more time is needed to process a message by the subscriber, or
        # to make the message available for redelivery if the processing was interrupted.
        # @param [String] subscription
        # @param [Google::Apis::PubsubV1beta2::ModifyAckDeadlineRequest] modify_ack_deadline_request_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_ack_deadline(subscription, modify_ack_deadline_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+subscription}:modifyAckDeadline'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::ModifyAckDeadlineRequest::Representation
          command.request_object = modify_ack_deadline_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the PushConfig for a specified subscription. This may be used to
        # change a push subscription to a pull one (signified by an empty PushConfig) or
        # vice versa, or change the endpoint URL and other attributes of a push
        # subscription. Messages will accumulate for delivery continuously through the
        # call regardless of changes to the PushConfig.
        # @param [String] subscription
        # @param [Google::Apis::PubsubV1beta2::ModifyPushConfigRequest] modify_push_config_request_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_push_config(subscription, modify_push_config_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+subscription}:modifyPushConfig'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::ModifyPushConfigRequest::Representation
          command.request_object = modify_push_config_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pulls messages from the server. Returns an empty list if there are no messages
        # available in the backlog. The server may return UNAVAILABLE if there are too
        # many concurrent pull requests pending for the given subscription.
        # @param [String] subscription
        # @param [Google::Apis::PubsubV1beta2::PullRequest] pull_request_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::PullResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::PullResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pull(subscription, pull_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+subscription}:pull'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::PullRequest::Representation
          command.request_object = pull_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::PullResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::PullResponse
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates the given topic with the given name.
        # @param [String] name
        # @param [Google::Apis::PubsubV1beta2::Topic] topic_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_topic(name, topic_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+name}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::Topic::Representation
          command.request_object = topic_object
          command.response_representation = Google::Apis::PubsubV1beta2::Topic::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Topic
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the topic with the given name. Returns NOT_FOUND if the topic does not
        # exist. After a topic is deleted, a new topic may be created with the same name;
        # this is an entirely new topic with none of the old configuration or
        # subscriptions. Existing subscriptions to this topic are not deleted.
        # @param [String] topic
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_topic(topic, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+topic}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Empty::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Empty
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration of a topic.
        # @param [String] topic
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_topic(topic, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+topic}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::Topic::Representation
          command.response_class = Google::Apis::PubsubV1beta2::Topic
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists matching topics.
        # @param [String] project
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::ListTopicsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::ListTopicsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_topics(project, page_size: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+project}/topics'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::ListTopicsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::ListTopicsResponse
          command.params['project'] = project unless project.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds one or more messages to the topic. Returns NOT_FOUND if the topic does
        # not exist.
        # @param [String] topic
        # @param [Google::Apis::PubsubV1beta2::PublishRequest] publish_request_object
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::PublishResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::PublishResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish(topic, publish_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+topic}:publish'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta2::PublishRequest::Representation
          command.request_object = publish_request_object
          command.response_representation = Google::Apis::PubsubV1beta2::PublishResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::PublishResponse
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the name of the subscriptions for this topic.
        # @param [String] topic
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        # @yieldparam result [Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_topic_subscriptions(topic, page_size: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{+topic}/subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse::Representation
          command.response_class = Google::Apis::PubsubV1beta2::ListTopicSubscriptionsResponse
          command.params['topic'] = topic unless topic.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
