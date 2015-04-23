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
    module PubsubV1beta1
      
      class AcknowledgeRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LabelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListSubscriptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTopicsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModifyAckDeadlineRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModifyPushConfigRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PullBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PullBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PullRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PullResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PushConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TopicRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AcknowledgeRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :ack_id, as: 'ackId'
        
        property :subscription, as: 'subscription'
      end

      # @private
      class LabelRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :key, as: 'key'
        property :num_value, as: 'numValue'
        property :str_value, as: 'strValue'
      end

      # @private
      class ListSubscriptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :subscription, as: 'subscription', class: Google::Apis::PubsubV1beta1::Subscription, decorator: Google::Apis::PubsubV1beta1::SubscriptionRepresentation
      end

      # @private
      class ListTopicsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :topic, as: 'topic', class: Google::Apis::PubsubV1beta1::Topic, decorator: Google::Apis::PubsubV1beta1::TopicRepresentation
      end

      # @private
      class ModifyAckDeadlineRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
        property :ack_id, as: 'ackId'
        property :subscription, as: 'subscription'
      end

      # @private
      class ModifyPushConfigRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1beta1::PushConfig, decorator: Google::Apis::PubsubV1beta1::PushConfigRepresentation
        
        property :subscription, as: 'subscription'
      end

      # @private
      class PublishBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :messages, as: 'messages', class: Google::Apis::PubsubV1beta1::Message, decorator: Google::Apis::PubsubV1beta1::MessageRepresentation
        
        
        property :topic, as: 'topic'
      end

      # @private
      class PublishBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :message_ids, as: 'messageIds'
      end

      # @private
      class PublishRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :message, as: 'message', class: Google::Apis::PubsubV1beta1::Message, decorator: Google::Apis::PubsubV1beta1::MessageRepresentation
        
        property :topic, as: 'topic'
      end

      # @private
      class EventRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :deleted, as: 'deleted'
        property :message, as: 'message', class: Google::Apis::PubsubV1beta1::Message, decorator: Google::Apis::PubsubV1beta1::MessageRepresentation
        
        property :subscription, as: 'subscription'
        property :truncated, as: 'truncated'
      end

      # @private
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :data, as: 'data'
        collection :label, as: 'label', class: Google::Apis::PubsubV1beta1::Label, decorator: Google::Apis::PubsubV1beta1::LabelRepresentation
        
        
        property :message_id, as: 'messageId'
      end

      # @private
      class PullBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :max_events, as: 'maxEvents'
        property :return_immediately, as: 'returnImmediately'
        property :subscription, as: 'subscription'
      end

      # @private
      class PullBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :pull_responses, as: 'pullResponses', class: Google::Apis::PubsubV1beta1::PullResponse, decorator: Google::Apis::PubsubV1beta1::PullResponseRepresentation
      end

      # @private
      class PullRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :return_immediately, as: 'returnImmediately'
        property :subscription, as: 'subscription'
      end

      # @private
      class PullResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :ack_id, as: 'ackId'
        property :pubsub_event, as: 'pubsubEvent', class: Google::Apis::PubsubV1beta1::Event, decorator: Google::Apis::PubsubV1beta1::EventRepresentation
      end

      # @private
      class PushConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :push_endpoint, as: 'pushEndpoint'
      end

      # @private
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
        property :name, as: 'name'
        property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1beta1::PushConfig, decorator: Google::Apis::PubsubV1beta1::PushConfigRepresentation
        
        property :topic, as: 'topic'
      end

      # @private
      class TopicRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :name, as: 'name'
      end
    end
  end
end
