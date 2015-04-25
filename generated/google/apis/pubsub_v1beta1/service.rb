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
    module PubsubV1beta1
      # Google Cloud Pub/Sub API
      #
      # Provides reliable, many-to-many, asynchronous messaging between applications.
      #
      # @example
      #    require 'google/apis/pubsub_v1beta1'
      #
      #    Pubsub = Google::Apis::PubsubV1beta1 # Alias the module
      #    service = Pubsub::PubsubService.new
      #
      # @see https://developers.google.com/pubsub/v1beta1
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
          super('https://www.googleapis.com/', 'pubsub/v1beta1/')
        end

        # Acknowledges a particular received message: the Pub/Sub system can remove the
        # given message from the subscription. Acknowledging a message whose Ack
        # deadline has expired may succeed, but the message could have been already
        # redelivered. Acknowledging a message more than once will not result in an
        # error. This is only used for messages received via pull.
        # @param [Google::Apis::PubsubV1beta1::AcknowledgeRequest] acknowledge_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def acknowledge_subscription(acknowledge_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/acknowledge'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::AcknowledgeRequestRepresentation
          command.request_object = acknowledge_request
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a subscription on a given topic for a given subscriber. If the
        # subscription already exists, returns ALREADY_EXISTS. If the corresponding
        # topic doesn't exist, returns NOT_FOUND.
        # If the name is not provided in the request, the server will assign a random
        # name for this subscription on the same project as the topic.
        # @param [Google::Apis::PubsubV1beta1::Subscription] subscription
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_subscription(subscription = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::SubscriptionRepresentation
          command.request_object = subscription
          command.response_representation = Google::Apis::PubsubV1beta1::SubscriptionRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::Subscription
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes an existing subscription. All pending messages in the subscription are
        # immediately dropped. Calls to Pull after deletion will return NOT_FOUND.
        # @param [String] subscription
        #   The subscription to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def delete_subscription(subscription, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/{+subscription}'
          command =  make_simple_command(:delete, path, options)
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the configuration details of a subscription.
        # @param [String] subscription
        #   The name of the subscription to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_subscription(subscription, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/{+subscription}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta1::SubscriptionRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::Subscription
          command.params['subscription'] = subscription unless subscription.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists matching subscriptions.
        # @param [Fixnum] max_results
        #   Maximum number of subscriptions to return.
        # @param [String] page_token
        #   The value obtained in the last ListSubscriptionsResponse for continuation.
        # @param [String] query
        #   A valid label query expression.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::ListSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::ListSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(max_results: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta1::ListSubscriptionsResponseRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::ListSubscriptionsResponse
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Modifies the Ack deadline for a message received from a pull request.
        # @param [Google::Apis::PubsubV1beta1::ModifyAckDeadlineRequest] modify_ack_deadline_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def modify_ack_deadline(modify_ack_deadline_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/modifyAckDeadline'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::ModifyAckDeadlineRequestRepresentation
          command.request_object = modify_ack_deadline_request
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Modifies the PushConfig for a specified subscription. This method can be used
        # to suspend the flow of messages to an endpoint by clearing the PushConfig
        # field in the request. Messages will be accumulated for delivery even if no
        # push configuration is defined or while the configuration is modified.
        # @param [Google::Apis::PubsubV1beta1::ModifyPushConfigRequest] modify_push_config_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def modify_push_config(modify_push_config_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/modifyPushConfig'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::ModifyPushConfigRequestRepresentation
          command.request_object = modify_push_config_request
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Pulls a single message from the server. If return_immediately is true, and no
        # messages are available in the subscription, this method returns
        # FAILED_PRECONDITION. The system is free to return an UNAVAILABLE error if no
        # messages are available in a reasonable amount of time (to reduce system load).
        # @param [Google::Apis::PubsubV1beta1::PullRequest] pull_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::PullResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::PullResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pull_subscription(pull_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/pull'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::PullRequestRepresentation
          command.request_object = pull_request
          command.response_representation = Google::Apis::PubsubV1beta1::PullResponseRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::PullResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Pulls messages from the server. Returns an empty list if there are no messages
        # available in the backlog. The system is free to return UNAVAILABLE if there
        # are too many pull requests outstanding for the given subscription.
        # @param [Google::Apis::PubsubV1beta1::PullBatchRequest] pull_batch_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::PullBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::PullBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pull_batch(pull_batch_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/pullBatch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::PullBatchRequestRepresentation
          command.request_object = pull_batch_request
          command.response_representation = Google::Apis::PubsubV1beta1::PullBatchResponseRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::PullBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Creates the given topic with the given name.
        # @param [Google::Apis::PubsubV1beta1::Topic] topic
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_topic(topic = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'topics'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::TopicRepresentation
          command.request_object = topic
          command.response_representation = Google::Apis::PubsubV1beta1::TopicRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::Topic
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the topic with the given name. Returns NOT_FOUND if the topic does not
        # exist. After a topic is deleted, a new topic may be created with the same name.
        # @param [String] topic
        #   Name of the topic to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def delete_topic(topic, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'topics/{+topic}'
          command =  make_simple_command(:delete, path, options)
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the configuration of a topic. Since the topic only has the name attribute,
        # this method is only useful to check the existence of a topic. If other
        # attributes are added in the future, they will be returned here.
        # @param [String] topic
        #   The name of the topic to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_topic(topic, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'topics/{+topic}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta1::TopicRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::Topic
          command.params['topic'] = topic unless topic.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists matching topics.
        # @param [Fixnum] max_results
        #   Maximum number of topics to return.
        # @param [String] page_token
        #   The value obtained in the last ListTopicsResponse for continuation.
        # @param [String] query
        #   A valid label query expression.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::ListTopicsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::ListTopicsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_topics(max_results: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'topics'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PubsubV1beta1::ListTopicsResponseRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::ListTopicsResponse
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a message to the topic. Returns NOT_FOUND if the topic does not exist.
        # @param [Google::Apis::PubsubV1beta1::PublishRequest] publish_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def publish_topic(publish_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'topics/publish'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::PublishRequestRepresentation
          command.request_object = publish_request
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds one or more messages to the topic. Returns NOT_FOUND if the topic does
        # not exist.
        # @param [Google::Apis::PubsubV1beta1::PublishBatchRequest] publish_batch_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubV1beta1::PublishBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubV1beta1::PublishBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_batch(publish_batch_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'topics/publishBatch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PubsubV1beta1::PublishBatchRequestRepresentation
          command.request_object = publish_batch_request
          command.response_representation = Google::Apis::PubsubV1beta1::PublishBatchResponseRepresentation
          command.response_class = Google::Apis::PubsubV1beta1::PublishBatchResponse
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
