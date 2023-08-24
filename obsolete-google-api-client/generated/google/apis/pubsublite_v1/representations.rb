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
      
      class Capacity
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
      
      class ListPartitionCursorsResponse
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
      
      class PartitionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionCursor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetentionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
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
      
      class Capacity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :publish_mib_per_sec, as: 'publishMibPerSec'
          property :subscribe_mib_per_sec, as: 'subscribeMibPerSec'
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
      
      class ListPartitionCursorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partition_cursors, as: 'partitionCursors', class: Google::Apis::PubsubliteV1::PartitionCursor, decorator: Google::Apis::PubsubliteV1::PartitionCursor::Representation
      
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
      
      class RetentionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :per_partition_bytes, :numeric_string => true, as: 'perPartitionBytes'
          property :period, as: 'period'
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_config, as: 'deliveryConfig', class: Google::Apis::PubsubliteV1::DeliveryConfig, decorator: Google::Apis::PubsubliteV1::DeliveryConfig::Representation
      
          property :name, as: 'name'
          property :topic, as: 'topic'
        end
      end
      
      class Topic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :partition_config, as: 'partitionConfig', class: Google::Apis::PubsubliteV1::PartitionConfig, decorator: Google::Apis::PubsubliteV1::PartitionConfig::Representation
      
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
