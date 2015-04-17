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

      # Request for the Acknowledge method.
      class AcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # The acknowledgment ID for the message being acknowledged. This was returned by
        # the Pub/Sub system in the Pull response.
        # Corresponds to the JSON property `ackId`
        # @return [Array<String>]
        attr_accessor :ack_id
      
        # The subscription whose message is being acknowledged.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
        end
      end

      # A key-value pair applied to a given object.
      class Label
        include Google::Apis::Core::Hashable
      
        # The key of a label is a syntactically valid URL (as per RFC 1738) with the "
        # scheme" and initial slashes omitted and with the additional restrictions noted
        # below. Each key should be globally unique. The "host" portion is called the "
        # namespace" and is not necessarily resolvable to a network endpoint. Instead,
        # the namespace indicates what system or entity defines the semantics of the
        # label. Namespaces do not restrict the set of objects to which a label may be
        # associated.
        # Keys are defined by the following grammar:
        # key = hostname "/" kpath kpath = ksegment *[ "/" ksegment ] ksegment =
        # alphadigit | *[ alphadigit | "-" | "_" | "." ]
        # where "hostname" and "alphadigit" are defined as in RFC 1738.
        # Example key: spanner.google.com/universe
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # An integer value.
        # Corresponds to the JSON property `numValue`
        # @return [String]
        attr_accessor :num_value
      
        # A string value.
        # Corresponds to the JSON property `strValue`
        # @return [String]
        attr_accessor :str_value
      
        def initialize(**args)
          @key = args[:key] unless args[:key].nil?
          @num_value = args[:num_value] unless args[:num_value].nil?
          @str_value = args[:str_value] unless args[:str_value].nil?
        end
      end

      # Response for the ListSubscriptions method.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there are more subscriptions that match the
        # request and this value should be passed to the next ListSubscriptionsRequest
        # to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The subscriptions that match the request.
        # Corresponds to the JSON property `subscription`
        # @return [Array<Google::Apis::PubsubV1beta1::Subscription>]
        attr_accessor :subscription
      
        def initialize(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
        end
      end

      # Response for the ListTopics method.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there are more topics that match the request, and
        # this value should be passed to the next ListTopicsRequest to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting topics.
        # Corresponds to the JSON property `topic`
        # @return [Array<Google::Apis::PubsubV1beta1::Topic>]
        attr_accessor :topic
      
        def initialize(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @topic = args[:topic] unless args[:topic].nil?
        end
      end

      # Request for the ModifyAckDeadline method.
      class ModifyAckDeadlineRequest
        include Google::Apis::Core::Hashable
      
        # The new Ack deadline. Must be >= 0.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # The acknowledgment ID.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # The name of the subscription from which messages are being pulled.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] unless args[:ack_deadline_seconds].nil?
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
        end
      end

      # Request for the ModifyPushConfig method.
      class ModifyPushConfigRequest
        include Google::Apis::Core::Hashable
      
        # An empty push_config indicates that the Pub/Sub system should pause pushing
        # messages from the given subscription.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1beta1::PushConfig]
        attr_accessor :push_config
      
        # The name of the subscription.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
          @push_config = args[:push_config] unless args[:push_config].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
        end
      end

      # Request for the PublishBatch method.
      class PublishBatchRequest
        include Google::Apis::Core::Hashable
      
        # The messages to publish.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::PubsubV1beta1::Message>]
        attr_accessor :messages
      
        # The messages in the request will be published on this topic.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
          @messages = args[:messages] unless args[:messages].nil?
          @topic = args[:topic] unless args[:topic].nil?
        end
      end

      # Response for the PublishBatch method.
      class PublishBatchResponse
        include Google::Apis::Core::Hashable
      
        # The server-assigned ID of each published message, in the same order as the
        # messages in the request. IDs are guaranteed to be unique within the topic.
        # Corresponds to the JSON property `messageIds`
        # @return [Array<String>]
        attr_accessor :message_ids
      
        def initialize(**args)
          @message_ids = args[:message_ids] unless args[:message_ids].nil?
        end
      end

      # Request for the Publish method.
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # The message to publish.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1beta1::Message]
        attr_accessor :message
      
        # The message in the request will be published on this topic.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
          @message = args[:message] unless args[:message].nil?
          @topic = args[:topic] unless args[:topic].nil?
        end
      end

      # An event indicating a received message or truncation event.
      class Event
        include Google::Apis::Core::Hashable
      
        # Indicates that this subscription has been deleted. (Note that pull subscribers
        # will always receive NOT_FOUND in response in their pull request on the
        # subscription, rather than seeing this boolean.)
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # A received message.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1beta1::Message]
        attr_accessor :message
      
        # The subscription that received the event.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        # Indicates that this subscription has been truncated.
        # Corresponds to the JSON property `truncated`
        # @return [Boolean]
        attr_accessor :truncated
        alias_method :truncated?, :truncated
      
        def initialize(**args)
          @deleted = args[:deleted] unless args[:deleted].nil?
          @message = args[:message] unless args[:message].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
          @truncated = args[:truncated] unless args[:truncated].nil?
        end
      end

      # A message data and its labels.
      class Message
        include Google::Apis::Core::Hashable
      
        # The message payload.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Optional list of labels for this message. Keys in this collection must be
        # unique.
        # Corresponds to the JSON property `label`
        # @return [Array<Google::Apis::PubsubV1beta1::Label>]
        attr_accessor :label
      
        # ID of this message assigned by the server at publication time. Guaranteed to
        # be unique within the topic. This value may be read by a subscriber that
        # receives a PubsubMessage via a Pull call or a push delivery. It must not be
        # populated by a publisher in a Publish call.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        def initialize(**args)
          @data = args[:data] unless args[:data].nil?
          @label = args[:label] unless args[:label].nil?
          @message_id = args[:message_id] unless args[:message_id].nil?
        end
      end

      # Request for the PullBatch method.
      class PullBatchRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of PubsubEvents returned for this request. The Pub/Sub
        # system may return fewer than the number of events specified.
        # Corresponds to the JSON property `maxEvents`
        # @return [Fixnum]
        attr_accessor :max_events
      
        # If this is specified as true the system will respond immediately even if it is
        # not able to return a message in the Pull response. Otherwise the system is
        # allowed to wait until at least one message is available rather than returning
        # no messages. The client may cancel the request if it does not wish to wait any
        # longer for the response.
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        # The subscription from which messages should be pulled.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
          @max_events = args[:max_events] unless args[:max_events].nil?
          @return_immediately = args[:return_immediately] unless args[:return_immediately].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
        end
      end

      # Response for the PullBatch method.
      class PullBatchResponse
        include Google::Apis::Core::Hashable
      
        # Received Pub/Sub messages or status events. The Pub/Sub system will return
        # zero messages if there are no more messages available in the backlog. The Pub/
        # Sub system may return fewer than the max_events requested even if there are
        # more messages available in the backlog.
        # Corresponds to the JSON property `pullResponses`
        # @return [Array<Google::Apis::PubsubV1beta1::PullResponse>]
        attr_accessor :pull_responses
      
        def initialize(**args)
          @pull_responses = args[:pull_responses] unless args[:pull_responses].nil?
        end
      end

      # Request for the Pull method.
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # If this is specified as true the system will respond immediately even if it is
        # not able to return a message in the Pull response. Otherwise the system is
        # allowed to wait until at least one message is available rather than returning
        # FAILED_PRECONDITION. The client may cancel the request if it does not wish to
        # wait any longer for the response.
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        # The subscription from which a message should be pulled.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
          @return_immediately = args[:return_immediately] unless args[:return_immediately].nil?
          @subscription = args[:subscription] unless args[:subscription].nil?
        end
      end

      # Either a PubsubMessage or a truncation event. One of these two must be
      # populated.
      class PullResponse
        include Google::Apis::Core::Hashable
      
        # This ID must be used to acknowledge the received event or message.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # A pubsub message or truncation event.
        # Corresponds to the JSON property `pubsubEvent`
        # @return [Google::Apis::PubsubV1beta1::Event]
        attr_accessor :pubsub_event
      
        def initialize(**args)
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
          @pubsub_event = args[:pubsub_event] unless args[:pubsub_event].nil?
        end
      end

      # Configuration for a push delivery endpoint.
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # A URL locating the endpoint to which messages should be pushed. For example, a
        # Webhook endpoint might use "https://example.com/push".
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        def initialize(**args)
          @push_endpoint = args[:push_endpoint] unless args[:push_endpoint].nil?
        end
      end

      # A subscription resource.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # For either push or pull delivery, the value is the maximum time after a
        # subscriber receives a message before the subscriber should acknowledge or Nack
        # the message. If the Ack deadline for a message passes without an Ack or a Nack,
        # the Pub/Sub system will eventually redeliver the message. If a subscriber
        # acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it
        # is possible that the message has been already delivered again. Multiple Acks
        # to the message are allowed and will succeed.
        # For push delivery, this value is used to set the request timeout for the call
        # to the push endpoint.
        # For pull delivery, this value is used as the initial value for the Ack
        # deadline. It may be overridden for a specific pull request (message) with
        # ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered
        # to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/
        # Sub system will not deliver that message to another pull subscriber (on a best-
        # effort basis).
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # Name of the subscription.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If push delivery is used with this subscription, this field is used to
        # configure it.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1beta1::PushConfig]
        attr_accessor :push_config
      
        # The name of the topic from which this subscription is receiving messages.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] unless args[:ack_deadline_seconds].nil?
          @name = args[:name] unless args[:name].nil?
          @push_config = args[:push_config] unless args[:push_config].nil?
          @topic = args[:topic] unless args[:topic].nil?
        end
      end

      # A topic resource.
      class Topic
        include Google::Apis::Core::Hashable
      
        # Name of the topic.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
          @name = args[:name] unless args[:name].nil?
        end
      end
    end
  end
end
