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
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Capacity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitCursorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitCursorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeHeadCursorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeHeadCursorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeMessageStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeMessageStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeTimeCursorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeTimeCursorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cursor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPartitionCursorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReservationTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReservationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionCursor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubSubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetentionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeekSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeekSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopicPartitions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Capacity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :publish_mib_per_sec, as: 'publishMibPerSec'
          property :subscribe_mib_per_sec, as: 'subscribeMibPerSec'
        end
      end
      
      class CommitCursorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cursor, as: 'cursor', class: Google::Apis::PubsubliteV1::Cursor, decorator: Google::Apis::PubsubliteV1::Cursor::Representation
      
          property :partition, :numeric_string => true, as: 'partition'
        end
      end
      
      class CommitCursorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ComputeHeadCursorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition, :numeric_string => true, as: 'partition'
        end
      end
      
      class ComputeHeadCursorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :head_cursor, as: 'headCursor', class: Google::Apis::PubsubliteV1::Cursor, decorator: Google::Apis::PubsubliteV1::Cursor::Representation
      
        end
      end
      
      class ComputeMessageStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_cursor, as: 'endCursor', class: Google::Apis::PubsubliteV1::Cursor, decorator: Google::Apis::PubsubliteV1::Cursor::Representation
      
          property :partition, :numeric_string => true, as: 'partition'
          property :start_cursor, as: 'startCursor', class: Google::Apis::PubsubliteV1::Cursor, decorator: Google::Apis::PubsubliteV1::Cursor::Representation
      
        end
      end
      
      class ComputeMessageStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_bytes, :numeric_string => true, as: 'messageBytes'
          property :message_count, :numeric_string => true, as: 'messageCount'
          property :minimum_event_time, as: 'minimumEventTime'
          property :minimum_publish_time, as: 'minimumPublishTime'
        end
      end
      
      class ComputeTimeCursorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition, :numeric_string => true, as: 'partition'
          property :target, as: 'target', class: Google::Apis::PubsubliteV1::TimeTarget, decorator: Google::Apis::PubsubliteV1::TimeTarget::Representation
      
        end
      end
      
      class ComputeTimeCursorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cursor, as: 'cursor', class: Google::Apis::PubsubliteV1::Cursor, decorator: Google::Apis::PubsubliteV1::Cursor::Representation
      
        end
      end
      
      class Cursor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, :numeric_string => true, as: 'offset'
        end
      end
      
      class DeliveryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_requirement, as: 'deliveryRequirement'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_state, as: 'currentState'
          property :dead_letter_topic, as: 'deadLetterTopic'
          property :desired_state, as: 'desiredState'
          property :pubsub_config, as: 'pubsubConfig', class: Google::Apis::PubsubliteV1::PubSubConfig, decorator: Google::Apis::PubsubliteV1::PubSubConfig::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::PubsubliteV1::Operation, decorator: Google::Apis::PubsubliteV1::Operation::Representation
      
        end
      end
      
      class ListPartitionCursorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partition_cursors, as: 'partitionCursors', class: Google::Apis::PubsubliteV1::PartitionCursor, decorator: Google::Apis::PubsubliteV1::PartitionCursor::Representation
      
        end
      end
      
      class ListReservationTopicsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topics, as: 'topics'
        end
      end
      
      class ListReservationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reservations, as: 'reservations', class: Google::Apis::PubsubliteV1::Reservation, decorator: Google::Apis::PubsubliteV1::Reservation::Representation
      
        end
      end
      
      class ListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::PubsubliteV1::Subscription, decorator: Google::Apis::PubsubliteV1::Subscription::Representation
      
        end
      end
      
      class ListTopicSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions'
        end
      end
      
      class ListTopicsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topics, as: 'topics', class: Google::Apis::PubsubliteV1::Topic, decorator: Google::Apis::PubsubliteV1::Topic::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::PubsubliteV1::Status, decorator: Google::Apis::PubsubliteV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PartitionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity, as: 'capacity', class: Google::Apis::PubsubliteV1::Capacity, decorator: Google::Apis::PubsubliteV1::Capacity::Representation
      
          property :count, :numeric_string => true, as: 'count'
          property :scale, as: 'scale'
        end
      end
      
      class PartitionCursor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cursor, as: 'cursor', class: Google::Apis::PubsubliteV1::Cursor, decorator: Google::Apis::PubsubliteV1::Cursor::Representation
      
          property :partition, :numeric_string => true, as: 'partition'
        end
      end
      
      class PubSubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class Reservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :throughput_capacity, :numeric_string => true, as: 'throughputCapacity'
        end
      end
      
      class ReservationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :throughput_reservation, as: 'throughputReservation'
        end
      end
      
      class RetentionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :per_partition_bytes, :numeric_string => true, as: 'perPartitionBytes'
          property :period, as: 'period'
        end
      end
      
      class SeekSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :named_target, as: 'namedTarget'
          property :time_target, as: 'timeTarget', class: Google::Apis::PubsubliteV1::TimeTarget, decorator: Google::Apis::PubsubliteV1::TimeTarget::Representation
      
        end
      end
      
      class SeekSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_config, as: 'deliveryConfig', class: Google::Apis::PubsubliteV1::DeliveryConfig, decorator: Google::Apis::PubsubliteV1::DeliveryConfig::Representation
      
          property :export_config, as: 'exportConfig', class: Google::Apis::PubsubliteV1::ExportConfig, decorator: Google::Apis::PubsubliteV1::ExportConfig::Representation
      
          property :name, as: 'name'
          property :topic, as: 'topic'
        end
      end
      
      class TimeTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_time, as: 'eventTime'
          property :publish_time, as: 'publishTime'
        end
      end
      
      class Topic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :partition_config, as: 'partitionConfig', class: Google::Apis::PubsubliteV1::PartitionConfig, decorator: Google::Apis::PubsubliteV1::PartitionConfig::Representation
      
          property :reservation_config, as: 'reservationConfig', class: Google::Apis::PubsubliteV1::ReservationConfig, decorator: Google::Apis::PubsubliteV1::ReservationConfig::Representation
      
          property :retention_config, as: 'retentionConfig', class: Google::Apis::PubsubliteV1::RetentionConfig, decorator: Google::Apis::PubsubliteV1::RetentionConfig::Representation
      
        end
      end
      
      class TopicPartitions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_count, :numeric_string => true, as: 'partitionCount'
        end
      end
    end
  end
end
