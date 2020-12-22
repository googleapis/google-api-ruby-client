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
    module PubsubliteV1
      # Pub/Sub Lite API
      #
      # 
      #
      # @example
      #    require 'google/apis/pubsublite_v1'
      #
      #    Pubsublite = Google::Apis::PubsubliteV1 # Alias the module
      #    service = Pubsublite::PubsubLiteService.new
      #
      # @see https://cloud.google.com/pubsub/lite/docs
      class PubsubLiteService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://pubsublite.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a new subscription.
        # @param [String] parent
        #   Required. The parent location in which to create the subscription. Structured
        #   like `projects/`project_number`/locations/`location``.
        # @param [Google::Apis::PubsubliteV1::Subscription] subscription_object
        # @param [String] subscription_id
        #   Required. The ID to use for the subscription, which will become the final
        #   component of the subscription's name. This value is structured like: `my-sub-
        #   name`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_admin_project_location_subscription(parent, subscription_object = nil, subscription_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/admin/{+parent}/subscriptions', options)
          command.request_representation = Google::Apis::PubsubliteV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::PubsubliteV1::Subscription::Representation
          command.response_class = Google::Apis::PubsubliteV1::Subscription
          command.params['parent'] = parent unless parent.nil?
          command.query['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified subscription.
        # @param [String] name
        #   Required. The name of the subscription to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_admin_project_location_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/admin/{+name}', options)
          command.response_representation = Google::Apis::PubsubliteV1::Empty::Representation
          command.response_class = Google::Apis::PubsubliteV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the subscription configuration.
        # @param [String] name
        #   Required. The name of the subscription whose configuration to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_admin_project_location_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/admin/{+name}', options)
          command.response_representation = Google::Apis::PubsubliteV1::Subscription::Representation
          command.response_class = Google::Apis::PubsubliteV1::Subscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of subscriptions for the given project.
        # @param [String] parent
        #   Required. The parent whose subscriptions are to be listed. Structured like `
        #   projects/`project_number`/locations/`location``.
        # @param [Fixnum] page_size
        #   The maximum number of subscriptions to return. The service may return fewer
        #   than this value. If unset or zero, all subscriptions for the parent will be
        #   returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListSubscriptions` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSubscriptions` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::ListSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::ListSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_admin_project_location_subscriptions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/admin/{+parent}/subscriptions', options)
          command.response_representation = Google::Apis::PubsubliteV1::ListSubscriptionsResponse::Representation
          command.response_class = Google::Apis::PubsubliteV1::ListSubscriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates properties of the specified subscription.
        # @param [String] name
        #   The name of the subscription. Structured like: projects/`project_number`/
        #   locations/`location`/subscriptions/`subscription_id`
        # @param [Google::Apis::PubsubliteV1::Subscription] subscription_object
        # @param [String] update_mask
        #   Required. A mask specifying the subscription fields to change.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_admin_project_location_subscription(name, subscription_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/admin/{+name}', options)
          command.request_representation = Google::Apis::PubsubliteV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::PubsubliteV1::Subscription::Representation
          command.response_class = Google::Apis::PubsubliteV1::Subscription
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new topic.
        # @param [String] parent
        #   Required. The parent location in which to create the topic. Structured like `
        #   projects/`project_number`/locations/`location``.
        # @param [Google::Apis::PubsubliteV1::Topic] topic_object
        # @param [String] topic_id
        #   Required. The ID to use for the topic, which will become the final component
        #   of the topic's name. This value is structured like: `my-topic-name`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_admin_project_location_topic(parent, topic_object = nil, topic_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/admin/{+parent}/topics', options)
          command.request_representation = Google::Apis::PubsubliteV1::Topic::Representation
          command.request_object = topic_object
          command.response_representation = Google::Apis::PubsubliteV1::Topic::Representation
          command.response_class = Google::Apis::PubsubliteV1::Topic
          command.params['parent'] = parent unless parent.nil?
          command.query['topicId'] = topic_id unless topic_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified topic.
        # @param [String] name
        #   Required. The name of the topic to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_admin_project_location_topic(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/admin/{+name}', options)
          command.response_representation = Google::Apis::PubsubliteV1::Empty::Representation
          command.response_class = Google::Apis::PubsubliteV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the topic configuration.
        # @param [String] name
        #   Required. The name of the topic whose configuration to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_admin_project_location_topic(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/admin/{+name}', options)
          command.response_representation = Google::Apis::PubsubliteV1::Topic::Representation
          command.response_class = Google::Apis::PubsubliteV1::Topic
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the partition information for the requested topic.
        # @param [String] name
        #   Required. The topic whose partition information to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::TopicPartitions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::TopicPartitions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_admin_project_location_topic_partitions(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/admin/{+name}/partitions', options)
          command.response_representation = Google::Apis::PubsubliteV1::TopicPartitions::Representation
          command.response_class = Google::Apis::PubsubliteV1::TopicPartitions
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of topics for the given project.
        # @param [String] parent
        #   Required. The parent whose topics are to be listed. Structured like `projects/`
        #   project_number`/locations/`location``.
        # @param [Fixnum] page_size
        #   The maximum number of topics to return. The service may return fewer than this
        #   value. If unset or zero, all topics for the parent will be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListTopics` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTopics` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::ListTopicsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::ListTopicsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_admin_project_location_topics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/admin/{+parent}/topics', options)
          command.response_representation = Google::Apis::PubsubliteV1::ListTopicsResponse::Representation
          command.response_class = Google::Apis::PubsubliteV1::ListTopicsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates properties of the specified topic.
        # @param [String] name
        #   The name of the topic. Structured like: projects/`project_number`/locations/`
        #   location`/topics/`topic_id`
        # @param [Google::Apis::PubsubliteV1::Topic] topic_object
        # @param [String] update_mask
        #   Required. A mask specifying the topic fields to change.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_admin_project_location_topic(name, topic_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/admin/{+name}', options)
          command.request_representation = Google::Apis::PubsubliteV1::Topic::Representation
          command.request_object = topic_object
          command.response_representation = Google::Apis::PubsubliteV1::Topic::Representation
          command.response_class = Google::Apis::PubsubliteV1::Topic
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the subscriptions attached to the specified topic.
        # @param [String] name
        #   Required. The name of the topic whose subscriptions to list.
        # @param [Fixnum] page_size
        #   The maximum number of subscriptions to return. The service may return fewer
        #   than this value. If unset or zero, all subscriptions for the given topic will
        #   be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListTopicSubscriptions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListTopicSubscriptions` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::ListTopicSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::ListTopicSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_admin_project_location_topic_subscriptions(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/admin/{+name}/subscriptions', options)
          command.response_representation = Google::Apis::PubsubliteV1::ListTopicSubscriptionsResponse::Representation
          command.response_class = Google::Apis::PubsubliteV1::ListTopicSubscriptionsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all committed cursor information for a subscription.
        # @param [String] parent
        #   Required. The subscription for which to retrieve cursors. Structured like `
        #   projects/`project_number`/locations/`location`/subscriptions/`subscription_id``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of cursors to return. The service may return fewer than
        #   this value. If unset or zero, all cursors for the parent will be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListPartitionCursors` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListPartitionCursors` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::ListPartitionCursorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::ListPartitionCursorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_cursor_project_location_subscription_cursors(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/cursor/{+parent}/cursors', options)
          command.response_representation = Google::Apis::PubsubliteV1::ListPartitionCursorsResponse::Representation
          command.response_class = Google::Apis::PubsubliteV1::ListPartitionCursorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Compute statistics about a range of messages in a given topic and partition.
        # @param [String] topic
        #   Required. The topic for which we should compute message stats.
        # @param [Google::Apis::PubsubliteV1::ComputeMessageStatsRequest] compute_message_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubsubliteV1::ComputeMessageStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubsubliteV1::ComputeMessageStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_topic_message_stats(topic, compute_message_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/topicStats/{+topic}:computeMessageStats', options)
          command.request_representation = Google::Apis::PubsubliteV1::ComputeMessageStatsRequest::Representation
          command.request_object = compute_message_stats_request_object
          command.response_representation = Google::Apis::PubsubliteV1::ComputeMessageStatsResponse::Representation
          command.response_class = Google::Apis::PubsubliteV1::ComputeMessageStatsResponse
          command.params['topic'] = topic unless topic.nil?
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
