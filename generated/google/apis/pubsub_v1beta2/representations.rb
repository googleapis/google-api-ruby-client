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
      
      class AcknowledgeRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EmptyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListSubscriptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTopicSubscriptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTopicsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModifyAckDeadlineRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModifyPushConfigRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PullRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PullResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PushConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReceivedMessageRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TopicRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AcknowledgeRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :ack_ids, as: 'ackIds'
      end

      # @private
      class EmptyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ListSubscriptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :subscriptions, as: 'subscriptions', class: Google::Apis::PubsubV1beta2::Subscription, decorator: Google::Apis::PubsubV1beta2::SubscriptionRepresentation
      end

      # @private
      class ListTopicSubscriptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :subscriptions, as: 'subscriptions'
      end

      # @private
      class ListTopicsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :topics, as: 'topics', class: Google::Apis::PubsubV1beta2::Topic, decorator: Google::Apis::PubsubV1beta2::TopicRepresentation
      end

      # @private
      class ModifyAckDeadlineRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
        property :ack_id, as: 'ackId'
      end

      # @private
      class ModifyPushConfigRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1beta2::PushConfig, decorator: Google::Apis::PubsubV1beta2::PushConfigRepresentation
      end

      # @private
      class PublishRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :messages, as: 'messages', class: Google::Apis::PubsubV1beta2::Message, decorator: Google::Apis::PubsubV1beta2::MessageRepresentation
      end

      # @private
      class PublishResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :message_ids, as: 'messageIds'
      end

      # @private
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        hash :attributes, as: 'attributes'
        
        property :data, as: 'data'
        property :message_id, as: 'messageId'
      end

      # @private
      class PullRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :max_messages, as: 'maxMessages'
        property :return_immediately, as: 'returnImmediately'
      end

      # @private
      class PullResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :received_messages, as: 'receivedMessages', class: Google::Apis::PubsubV1beta2::ReceivedMessage, decorator: Google::Apis::PubsubV1beta2::ReceivedMessageRepresentation
      end

      # @private
      class PushConfigRepresentation < Google::Apis::Core::JsonRepresentation
        hash :attributes, as: 'attributes'
        
        property :push_endpoint, as: 'pushEndpoint'
      end

      # @private
      class ReceivedMessageRepresentation < Google::Apis::Core::JsonRepresentation
        property :ack_id, as: 'ackId'
        property :message, as: 'message', class: Google::Apis::PubsubV1beta2::Message, decorator: Google::Apis::PubsubV1beta2::MessageRepresentation
      end

      # @private
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
        property :name, as: 'name'
        property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1beta2::PushConfig, decorator: Google::Apis::PubsubV1beta2::PushConfigRepresentation
        
        property :topic, as: 'topic'
      end

      # @private
      class TopicRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
      end
    end
  end
end
