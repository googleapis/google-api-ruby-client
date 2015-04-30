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
      
      class AcknowledgeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTopicSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ModifyAckDeadlineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ModifyPushConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PublishRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PublishResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PullRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PullResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PushConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ReceivedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class AcknowledgeRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ack_ids, as: 'ackIds'
        end
      end
      
      # @private
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::PubsubV1beta2::Subscription, decorator: Google::Apis::PubsubV1beta2::Subscription::Representation
      
        end
      end
      
      # @private
      class ListTopicSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions'
        end
      end
      
      # @private
      class ListTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topics, as: 'topics', class: Google::Apis::PubsubV1beta2::Topic, decorator: Google::Apis::PubsubV1beta2::Topic::Representation
      
        end
      end
      
      # @private
      class ModifyAckDeadlineRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          property :ack_id, as: 'ackId'
        end
      end
      
      # @private
      class ModifyPushConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1beta2::PushConfig, decorator: Google::Apis::PubsubV1beta2::PushConfig::Representation
      
        end
      end
      
      # @private
      class PublishRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::PubsubV1beta2::Message, decorator: Google::Apis::PubsubV1beta2::Message::Representation
      
        end
      end
      
      # @private
      class PublishResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :message_ids, as: 'messageIds'
        end
      end
      
      # @private
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :data, :base64 => true, as: 'data'
          property :message_id, as: 'messageId'
        end
      end
      
      # @private
      class PullRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_messages, as: 'maxMessages'
          property :return_immediately, as: 'returnImmediately'
        end
      end
      
      # @private
      class PullResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :received_messages, as: 'receivedMessages', class: Google::Apis::PubsubV1beta2::ReceivedMessage, decorator: Google::Apis::PubsubV1beta2::ReceivedMessage::Representation
      
        end
      end
      
      # @private
      class PushConfig
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :push_endpoint, as: 'pushEndpoint'
        end
      end
      
      # @private
      class ReceivedMessage
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_id, as: 'ackId'
          property :message, as: 'message', class: Google::Apis::PubsubV1beta2::Message, decorator: Google::Apis::PubsubV1beta2::Message::Representation
      
        end
      end
      
      # @private
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          property :name, as: 'name'
          property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1beta2::PushConfig, decorator: Google::Apis::PubsubV1beta2::PushConfig::Representation
      
          property :topic, as: 'topic'
        end
      end
      
      # @private
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
    end
  end
end
