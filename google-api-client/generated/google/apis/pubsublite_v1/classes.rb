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
    module PubsubliteV1
      
      # The throughput capacity configuration for each partition.
      class Capacity
        include Google::Apis::Core::Hashable
      
        # Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
        # Corresponds to the JSON property `publishMibPerSec`
        # @return [Fixnum]
        attr_accessor :publish_mib_per_sec
      
        # Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
        # Corresponds to the JSON property `subscribeMibPerSec`
        # @return [Fixnum]
        attr_accessor :subscribe_mib_per_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @publish_mib_per_sec = args[:publish_mib_per_sec] if args.key?(:publish_mib_per_sec)
          @subscribe_mib_per_sec = args[:subscribe_mib_per_sec] if args.key?(:subscribe_mib_per_sec)
        end
      end
      
      # Compute statistics about a range of messages in a given topic and partition.
      class ComputeMessageStatsRequest
        include Google::Apis::Core::Hashable
      
        # A cursor that describes the position of a message within a topic partition.
        # Corresponds to the JSON property `endCursor`
        # @return [Google::Apis::PubsubliteV1::Cursor]
        attr_accessor :end_cursor
      
        # Required. The partition for which we should compute message stats.
        # Corresponds to the JSON property `partition`
        # @return [Fixnum]
        attr_accessor :partition
      
        # A cursor that describes the position of a message within a topic partition.
        # Corresponds to the JSON property `startCursor`
        # @return [Google::Apis::PubsubliteV1::Cursor]
        attr_accessor :start_cursor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_cursor = args[:end_cursor] if args.key?(:end_cursor)
          @partition = args[:partition] if args.key?(:partition)
          @start_cursor = args[:start_cursor] if args.key?(:start_cursor)
        end
      end
      
      # Response containing stats for messages in the requested topic and partition.
      class ComputeMessageStatsResponse
        include Google::Apis::Core::Hashable
      
        # The number of quota bytes accounted to these messages.
        # Corresponds to the JSON property `messageBytes`
        # @return [Fixnum]
        attr_accessor :message_bytes
      
        # The count of messages.
        # Corresponds to the JSON property `messageCount`
        # @return [Fixnum]
        attr_accessor :message_count
      
        # The minimum event timestamp across these messages. For the purposes of this
        # computation, if a message does not have an event time, we use the publish time.
        # The timestamp will be unset if there are no messages.
        # Corresponds to the JSON property `minimumEventTime`
        # @return [String]
        attr_accessor :minimum_event_time
      
        # The minimum publish timestamp across these messages. Note that publish
        # timestamps within a partition are not guaranteed to be non-decreasing. The
        # timestamp will be unset if there are no messages.
        # Corresponds to the JSON property `minimumPublishTime`
        # @return [String]
        attr_accessor :minimum_publish_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_bytes = args[:message_bytes] if args.key?(:message_bytes)
          @message_count = args[:message_count] if args.key?(:message_count)
          @minimum_event_time = args[:minimum_event_time] if args.key?(:minimum_event_time)
          @minimum_publish_time = args[:minimum_publish_time] if args.key?(:minimum_publish_time)
        end
      end
      
      # A cursor that describes the position of a message within a topic partition.
      class Cursor
        include Google::Apis::Core::Hashable
      
        # The offset of a message within a topic partition. Must be greater than or
        # equal 0.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offset = args[:offset] if args.key?(:offset)
        end
      end
      
      # The settings for a subscription's message delivery.
      class DeliveryConfig
        include Google::Apis::Core::Hashable
      
        # The DeliveryRequirement for this subscription.
        # Corresponds to the JSON property `deliveryRequirement`
        # @return [String]
        attr_accessor :delivery_requirement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_requirement = args[:delivery_requirement] if args.key?(:delivery_requirement)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for ListPartitionCursors
      class ListPartitionCursorsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The partition cursors from this request.
        # Corresponds to the JSON property `partitionCursors`
        # @return [Array<Google::Apis::PubsubliteV1::PartitionCursor>]
        attr_accessor :partition_cursors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partition_cursors = args[:partition_cursors] if args.key?(:partition_cursors)
        end
      end
      
      # Response for ListSubscriptions.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of subscriptions in the requested parent. The order of the
        # subscriptions is unspecified.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::PubsubliteV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for ListTopicSubscriptions.
      class ListTopicSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The names of subscriptions attached to the topic. The order of the
        # subscriptions is unspecified.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<String>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for ListTopics.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of topic in the requested parent. The order of the topics is
        # unspecified.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::PubsubliteV1::Topic>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # The settings for a topic's partitions.
      class PartitionConfig
        include Google::Apis::Core::Hashable
      
        # The throughput capacity configuration for each partition.
        # Corresponds to the JSON property `capacity`
        # @return [Google::Apis::PubsubliteV1::Capacity]
        attr_accessor :capacity
      
        # The number of partitions in the topic. Must be at least 1.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # DEPRECATED: Use capacity instead which can express a superset of
        # configurations. Every partition in the topic is allocated throughput
        # equivalent to `scale` times the standard partition throughput (4 MiB/s). This
        # is also reflected in the cost of this topic; a topic with `scale` of 2 and
        # count of 10 is charged for 20 partitions. This value must be in the range [1,4]
        # .
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity = args[:capacity] if args.key?(:capacity)
          @count = args[:count] if args.key?(:count)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # A pair of a Cursor and the partition it is for.
      class PartitionCursor
        include Google::Apis::Core::Hashable
      
        # A cursor that describes the position of a message within a topic partition.
        # Corresponds to the JSON property `cursor`
        # @return [Google::Apis::PubsubliteV1::Cursor]
        attr_accessor :cursor
      
        # The partition this is for.
        # Corresponds to the JSON property `partition`
        # @return [Fixnum]
        attr_accessor :partition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cursor = args[:cursor] if args.key?(:cursor)
          @partition = args[:partition] if args.key?(:partition)
        end
      end
      
      # The settings for a topic's message retention.
      class RetentionConfig
        include Google::Apis::Core::Hashable
      
        # The provisioned storage, in bytes, per partition. If the number of bytes
        # stored in any of the topic's partitions grows beyond this value, older
        # messages will be dropped to make room for newer ones, regardless of the value
        # of `period`.
        # Corresponds to the JSON property `perPartitionBytes`
        # @return [Fixnum]
        attr_accessor :per_partition_bytes
      
        # How long a published message is retained. If unset, messages will be retained
        # as long as the bytes retained for each partition is below `per_partition_bytes`
        # .
        # Corresponds to the JSON property `period`
        # @return [String]
        attr_accessor :period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @per_partition_bytes = args[:per_partition_bytes] if args.key?(:per_partition_bytes)
          @period = args[:period] if args.key?(:period)
        end
      end
      
      # Metadata about a subscription resource.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # The settings for a subscription's message delivery.
        # Corresponds to the JSON property `deliveryConfig`
        # @return [Google::Apis::PubsubliteV1::DeliveryConfig]
        attr_accessor :delivery_config
      
        # The name of the subscription. Structured like: projects/`project_number`/
        # locations/`location`/subscriptions/`subscription_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the topic this subscription is attached to. Structured like:
        # projects/`project_number`/locations/`location`/topics/`topic_id`
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_config = args[:delivery_config] if args.key?(:delivery_config)
          @name = args[:name] if args.key?(:name)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Metadata about a topic resource.
      class Topic
        include Google::Apis::Core::Hashable
      
        # The name of the topic. Structured like: projects/`project_number`/locations/`
        # location`/topics/`topic_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The settings for a topic's partitions.
        # Corresponds to the JSON property `partitionConfig`
        # @return [Google::Apis::PubsubliteV1::PartitionConfig]
        attr_accessor :partition_config
      
        # The settings for a topic's message retention.
        # Corresponds to the JSON property `retentionConfig`
        # @return [Google::Apis::PubsubliteV1::RetentionConfig]
        attr_accessor :retention_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @partition_config = args[:partition_config] if args.key?(:partition_config)
          @retention_config = args[:retention_config] if args.key?(:retention_config)
        end
      end
      
      # Response for GetTopicPartitions.
      class TopicPartitions
        include Google::Apis::Core::Hashable
      
        # The number of partitions in the topic.
        # Corresponds to the JSON property `partitionCount`
        # @return [Fixnum]
        attr_accessor :partition_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_count = args[:partition_count] if args.key?(:partition_count)
        end
      end
    end
  end
end
