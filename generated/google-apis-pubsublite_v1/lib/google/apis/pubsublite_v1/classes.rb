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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PubsubliteV1
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
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
      
      # Request for CommitCursor.
      class CommitCursorRequest
        include Google::Apis::Core::Hashable
      
        # A cursor that describes the position of a message within a topic partition.
        # Corresponds to the JSON property `cursor`
        # @return [Google::Apis::PubsubliteV1::Cursor]
        attr_accessor :cursor
      
        # The partition for which to update the cursor. Partitions are zero indexed, so `
        # partition` must be in the range [0, topic.num_partitions).
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
      
      # Response for CommitCursor.
      class CommitCursorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Compute the current head cursor for a partition.
      class ComputeHeadCursorRequest
        include Google::Apis::Core::Hashable
      
        # Required. The partition for which we should compute the head cursor.
        # Corresponds to the JSON property `partition`
        # @return [Fixnum]
        attr_accessor :partition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition = args[:partition] if args.key?(:partition)
        end
      end
      
      # Response containing the head cursor for the requested topic and partition.
      class ComputeHeadCursorResponse
        include Google::Apis::Core::Hashable
      
        # A cursor that describes the position of a message within a topic partition.
        # Corresponds to the JSON property `headCursor`
        # @return [Google::Apis::PubsubliteV1::Cursor]
        attr_accessor :head_cursor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @head_cursor = args[:head_cursor] if args.key?(:head_cursor)
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
      
      # Compute the corresponding cursor for a publish or event time in a topic
      # partition.
      class ComputeTimeCursorRequest
        include Google::Apis::Core::Hashable
      
        # Required. The partition for which we should compute the cursor.
        # Corresponds to the JSON property `partition`
        # @return [Fixnum]
        attr_accessor :partition
      
        # A target publish or event time. Can be used for seeking to or retrieving the
        # corresponding cursor.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::PubsubliteV1::TimeTarget]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition = args[:partition] if args.key?(:partition)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Response containing the cursor corresponding to a publish or event time in a
      # topic partition.
      class ComputeTimeCursorResponse
        include Google::Apis::Core::Hashable
      
        # A cursor that describes the position of a message within a topic partition.
        # Corresponds to the JSON property `cursor`
        # @return [Google::Apis::PubsubliteV1::Cursor]
        attr_accessor :cursor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cursor = args[:cursor] if args.key?(:cursor)
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
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for a Pub/Sub Lite subscription that writes messages to a
      # destination. User subscriber clients must not connect to this subscription.
      class ExportConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the export, which may be different to the
        # desired state due to errors. This field is output only.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # Optional. The name of an optional Pub/Sub Lite topic to publish messages that
        # can not be exported to the destination. For example, the message can not be
        # published to the Pub/Sub service because it does not satisfy the constraints
        # documented at https://cloud.google.com/pubsub/docs/publisher. Structured like:
        # projects/`project_number`/locations/`location`/topics/`topic_id`. Must be
        # within the same project and location as the subscription. The topic may be
        # changed or removed.
        # Corresponds to the JSON property `deadLetterTopic`
        # @return [String]
        attr_accessor :dead_letter_topic
      
        # The desired state of this export. Setting this to values other than `ACTIVE`
        # and `PAUSED` will result in an error.
        # Corresponds to the JSON property `desiredState`
        # @return [String]
        attr_accessor :desired_state
      
        # Configuration for exporting to a Pub/Sub topic.
        # Corresponds to the JSON property `pubsubConfig`
        # @return [Google::Apis::PubsubliteV1::PubSubConfig]
        attr_accessor :pubsub_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_state = args[:current_state] if args.key?(:current_state)
          @dead_letter_topic = args[:dead_letter_topic] if args.key?(:dead_letter_topic)
          @desired_state = args[:desired_state] if args.key?(:desired_state)
          @pubsub_config = args[:pubsub_config] if args.key?(:pubsub_config)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::PubsubliteV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
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
      
      # Response for ListReservationTopics.
      class ListReservationTopicsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The names of topics attached to the reservation. The order of the topics is
        # unspecified.
        # Corresponds to the JSON property `topics`
        # @return [Array<String>]
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
      
      # Response for ListReservations.
      class ListReservationsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of reservation in the requested parent. The order of the reservations
        # is unspecified.
        # Corresponds to the JSON property `reservations`
        # @return [Array<Google::Apis::PubsubliteV1::Reservation>]
        attr_accessor :reservations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reservations = args[:reservations] if args.key?(:reservations)
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::PubsubliteV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Metadata for long running operations.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running. Not set if the operation has not
        # completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Resource path for the target of the operation. For example, targets of seeks
        # are subscription resources, structured like: projects/`project_number`/
        # locations/`location`/subscriptions/`subscription_id`
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # The settings for a topic's partitions.
      class PartitionConfig
        include Google::Apis::Core::Hashable
      
        # The throughput capacity configuration for each partition.
        # Corresponds to the JSON property `capacity`
        # @return [Google::Apis::PubsubliteV1::Capacity]
        attr_accessor :capacity
      
        # The number of partitions in the topic. Must be at least 1. Once a topic has
        # been created the number of partitions can be increased but not decreased.
        # Message ordering is not guaranteed across a topic resize. For more information
        # see https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity
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
      
      # Configuration for exporting to a Pub/Sub topic.
      class PubSubConfig
        include Google::Apis::Core::Hashable
      
        # The name of the Pub/Sub topic. Structured like: projects/`project_number`/
        # topics/`topic_id`. The topic may be changed.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Metadata about a reservation resource.
      class Reservation
        include Google::Apis::Core::Hashable
      
        # The name of the reservation. Structured like: projects/`project_number`/
        # locations/`location`/reservations/`reservation_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The reserved throughput capacity. Every unit of throughput capacity is
        # equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages.
        # Any topics which are declared as using capacity from a Reservation will
        # consume resources from this reservation instead of being charged individually.
        # Corresponds to the JSON property `throughputCapacity`
        # @return [Fixnum]
        attr_accessor :throughput_capacity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @throughput_capacity = args[:throughput_capacity] if args.key?(:throughput_capacity)
        end
      end
      
      # The settings for this topic's Reservation usage.
      class ReservationConfig
        include Google::Apis::Core::Hashable
      
        # The Reservation to use for this topic's throughput capacity. Structured like:
        # projects/`project_number`/locations/`location`/reservations/`reservation_id`
        # Corresponds to the JSON property `throughputReservation`
        # @return [String]
        attr_accessor :throughput_reservation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @throughput_reservation = args[:throughput_reservation] if args.key?(:throughput_reservation)
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
      
      # Request for SeekSubscription.
      class SeekSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # Seek to a named position with respect to the message backlog.
        # Corresponds to the JSON property `namedTarget`
        # @return [String]
        attr_accessor :named_target
      
        # A target publish or event time. Can be used for seeking to or retrieving the
        # corresponding cursor.
        # Corresponds to the JSON property `timeTarget`
        # @return [Google::Apis::PubsubliteV1::TimeTarget]
        attr_accessor :time_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_target = args[:named_target] if args.key?(:named_target)
          @time_target = args[:time_target] if args.key?(:time_target)
        end
      end
      
      # Response for SeekSubscription long running operation.
      class SeekSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Metadata about a subscription resource.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # The settings for a subscription's message delivery.
        # Corresponds to the JSON property `deliveryConfig`
        # @return [Google::Apis::PubsubliteV1::DeliveryConfig]
        attr_accessor :delivery_config
      
        # Configuration for a Pub/Sub Lite subscription that writes messages to a
        # destination. User subscriber clients must not connect to this subscription.
        # Corresponds to the JSON property `exportConfig`
        # @return [Google::Apis::PubsubliteV1::ExportConfig]
        attr_accessor :export_config
      
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
          @export_config = args[:export_config] if args.key?(:export_config)
          @name = args[:name] if args.key?(:name)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # A target publish or event time. Can be used for seeking to or retrieving the
      # corresponding cursor.
      class TimeTarget
        include Google::Apis::Core::Hashable
      
        # Request the cursor of the first message with event time greater than or equal
        # to `event_time`. If messages are missing an event time, the publish time is
        # used as a fallback. As event times are user supplied, subsequent messages may
        # have event times less than `event_time` and should be filtered by the client,
        # if necessary.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Request the cursor of the first message with publish time greater than or
        # equal to `publish_time`. All messages thereafter are guaranteed to have
        # publish times >= `publish_time`.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_time = args[:event_time] if args.key?(:event_time)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
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
      
        # The settings for this topic's Reservation usage.
        # Corresponds to the JSON property `reservationConfig`
        # @return [Google::Apis::PubsubliteV1::ReservationConfig]
        attr_accessor :reservation_config
      
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
          @reservation_config = args[:reservation_config] if args.key?(:reservation_config)
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
