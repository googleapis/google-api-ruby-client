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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PubsubV1beta2
      
      # 
      class AcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_ids = args[:ack_ids] unless args[:ack_ids].nil?
        end
      end
      
      # 
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::PubsubV1beta2::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @subscriptions = args[:subscriptions] unless args[:subscriptions].nil?
        end
      end
      
      # 
      class ListTopicSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<String>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @subscriptions = args[:subscriptions] unless args[:subscriptions].nil?
        end
      end
      
      # 
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::PubsubV1beta2::Topic>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @topics = args[:topics] unless args[:topics].nil?
        end
      end
      
      # 
      class ModifyAckDeadlineRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # 
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] unless args[:ack_deadline_seconds].nil?
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
        end
      end
      
      # 
      class ModifyPushConfigRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1beta2::PushConfig]
        attr_accessor :push_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @push_config = args[:push_config] unless args[:push_config].nil?
        end
      end
      
      # 
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::PubsubV1beta2::Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] unless args[:messages].nil?
        end
      end
      
      # 
      class PublishResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messageIds`
        # @return [Array<String>]
        attr_accessor :message_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_ids = args[:message_ids] unless args[:message_ids].nil?
        end
      end
      
      # 
      class Message
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # 
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] unless args[:attributes].nil?
          @data = args[:data] unless args[:data].nil?
          @message_id = args[:message_id] unless args[:message_id].nil?
        end
      end
      
      # 
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        # 
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_messages = args[:max_messages] unless args[:max_messages].nil?
          @return_immediately = args[:return_immediately] unless args[:return_immediately].nil?
        end
      end
      
      # 
      class PullResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `receivedMessages`
        # @return [Array<Google::Apis::PubsubV1beta2::ReceivedMessage>]
        attr_accessor :received_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @received_messages = args[:received_messages] unless args[:received_messages].nil?
        end
      end
      
      # 
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] unless args[:attributes].nil?
          @push_endpoint = args[:push_endpoint] unless args[:push_endpoint].nil?
        end
      end
      
      # 
      class ReceivedMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # 
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1beta2::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # 
      class Subscription
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1beta2::PushConfig]
        attr_accessor :push_config
      
        # 
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] unless args[:ack_deadline_seconds].nil?
          @name = args[:name] unless args[:name].nil?
          @push_config = args[:push_config] unless args[:push_config].nil?
          @topic = args[:topic] unless args[:topic].nil?
        end
      end
      
      # 
      class Topic
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
        end
      end
    end
  end
end
