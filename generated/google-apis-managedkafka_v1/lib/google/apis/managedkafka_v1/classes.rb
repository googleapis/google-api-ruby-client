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
    module ManagedkafkaV1
      
      # The configuration of access to the Kafka cluster.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # Required. Virtual Private Cloud (VPC) networks that must be granted direct
        # access to the Kafka cluster. Minimum of 1 network is required. Maximum 10
        # networks can be specified.
        # Corresponds to the JSON property `networkConfigs`
        # @return [Array<Google::Apis::ManagedkafkaV1::NetworkConfig>]
        attr_accessor :network_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_configs = args[:network_configs] if args.key?(:network_configs)
        end
      end
      
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
      
      # A capacity configuration of a Kafka cluster.
      class CapacityConfig
        include Google::Apis::Core::Hashable
      
        # Required. The memory to provision for the cluster in bytes. The CPU:memory
        # ratio (vCPU:GiB) must be between 1:1 and 1:8. Minimum: 3221225472 (3 GiB).
        # Corresponds to the JSON property `memoryBytes`
        # @return [Fixnum]
        attr_accessor :memory_bytes
      
        # Required. The number of vCPUs to provision for the cluster. Minimum: 3.
        # Corresponds to the JSON property `vcpuCount`
        # @return [Fixnum]
        attr_accessor :vcpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_bytes = args[:memory_bytes] if args.key?(:memory_bytes)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
        end
      end
      
      # An Apache Kafka cluster deployed in a location.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # A capacity configuration of a Kafka cluster.
        # Corresponds to the JSON property `capacityConfig`
        # @return [Google::Apis::ManagedkafkaV1::CapacityConfig]
        attr_accessor :capacity_config
      
        # Output only. The time when the cluster was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
        # Corresponds to the JSON property `gcpConfig`
        # @return [Google::Apis::ManagedkafkaV1::GcpConfig]
        attr_accessor :gcp_config
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The name of the cluster. Structured like: projects/`project_number`
        # /locations/`location`/clusters/`cluster_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines rebalancing behavior of a Kafka cluster.
        # Corresponds to the JSON property `rebalanceConfig`
        # @return [Google::Apis::ManagedkafkaV1::RebalanceConfig]
        attr_accessor :rebalance_config
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The current state of the cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the cluster was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_config = args[:capacity_config] if args.key?(:capacity_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gcp_config = args[:gcp_config] if args.key?(:gcp_config)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @rebalance_config = args[:rebalance_config] if args.key?(:rebalance_config)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Kafka consumer group in a given cluster.
      class ConsumerGroup
        include Google::Apis::Core::Hashable
      
        # Identifier. The name of the consumer group. The `consumer_group` segment is
        # used when connecting directly to the cluster. Structured like: projects/`
        # project`/locations/`location`/clusters/`cluster`/consumerGroups/`
        # consumer_group`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Metadata for this consumer group for all topics it has metadata for.
        # The key of the map is a topic name, structured like: projects/`project`/
        # locations/`location`/clusters/`cluster`/topics/`topic`
        # Corresponds to the JSON property `topics`
        # @return [Hash<String,Google::Apis::ManagedkafkaV1::ConsumerTopicMetadata>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # Metadata for a consumer group corresponding to a specific partition.
      class ConsumerPartitionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The associated metadata for this partition, or empty if it does not
        # exist.
        # Corresponds to the JSON property `metadata`
        # @return [String]
        attr_accessor :metadata
      
        # Required. The current offset for this partition, or 0 if no offset has been
        # committed.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @offset = args[:offset] if args.key?(:offset)
        end
      end
      
      # Metadata for a consumer group corresponding to a specific topic.
      class ConsumerTopicMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Metadata for this consumer group and topic for all partition indexes
        # it has metadata for.
        # Corresponds to the JSON property `partitions`
        # @return [Hash<String,Google::Apis::ManagedkafkaV1::ConsumerPartitionMetadata>]
        attr_accessor :partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitions = args[:partitions] if args.key?(:partitions)
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
      
      # Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
      class GcpConfig
        include Google::Apis::Core::Hashable
      
        # The configuration of access to the Kafka cluster.
        # Corresponds to the JSON property `accessConfig`
        # @return [Google::Apis::ManagedkafkaV1::AccessConfig]
        attr_accessor :access_config
      
        # Optional. Immutable. The Cloud KMS Key name to use for encryption. The key
        # must be located in the same region as the cluster and cannot be changed.
        # Structured like: projects/`project`/locations/`location`/keyRings/`key_ring`/
        # cryptoKeys/`crypto_key`.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_config = args[:access_config] if args.key?(:access_config)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
        end
      end
      
      # Response for ListClusters.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of Clusters in the requested parent.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ManagedkafkaV1::Cluster>]
        attr_accessor :clusters
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListConsumerGroups.
      class ListConsumerGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of consumer group in the requested parent. The order of the consumer
        # groups is unspecified.
        # Corresponds to the JSON property `consumerGroups`
        # @return [Array<Google::Apis::ManagedkafkaV1::ConsumerGroup>]
        attr_accessor :consumer_groups
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_groups = args[:consumer_groups] if args.key?(:consumer_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ManagedkafkaV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Array<Google::Apis::ManagedkafkaV1::Operation>]
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
      
      # Response for ListTopics.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page of results.
        # If this field is omitted, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of topics in the requested parent. The order of the topics is
        # unspecified.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::ManagedkafkaV1::Topic>]
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
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The configuration of a Virtual Private Cloud (VPC) network that can access the
      # Kafka cluster.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the VPC subnet in which to create Private Service Connect (
        # PSC) endpoints for the Kafka brokers and bootstrap address. Structured like:
        # projects/`project`/regions/`region`/subnetworks/`subnet_id` The subnet must be
        # located in the same region as the Kafka cluster. The project may differ.
        # Multiple subnets from the same parent network must not be specified.
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnet = args[:subnet] if args.key?(:subnet)
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
        # @return [Google::Apis::ManagedkafkaV1::Status]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Defines rebalancing behavior of a Kafka cluster.
      class RebalanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The rebalance behavior for the cluster. When not specified, defaults
        # to `NO_REBALANCE`.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
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
      
      # A Kafka topic in a given cluster.
      class Topic
        include Google::Apis::Core::Hashable
      
        # Optional. Configurations for the topic that are overridden from the cluster
        # defaults. The key of the map is a Kafka topic property name, for example: `
        # cleanup.policy`, `compression.type`.
        # Corresponds to the JSON property `configs`
        # @return [Hash<String,String>]
        attr_accessor :configs
      
        # Identifier. The name of the topic. The `topic` segment is used when connecting
        # directly to the cluster. Structured like: projects/`project`/locations/`
        # location`/clusters/`cluster`/topics/`topic`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The number of partitions this topic has. The partition count can
        # only be increased, not decreased. Please note that if partitions are increased
        # for a topic that has a key, the partitioning logic or the ordering of the
        # messages will be affected.
        # Corresponds to the JSON property `partitionCount`
        # @return [Fixnum]
        attr_accessor :partition_count
      
        # Required. Immutable. The number of replicas of each partition. A replication
        # factor of 3 is recommended for high availability.
        # Corresponds to the JSON property `replicationFactor`
        # @return [Fixnum]
        attr_accessor :replication_factor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
          @name = args[:name] if args.key?(:name)
          @partition_count = args[:partition_count] if args.key?(:partition_count)
          @replication_factor = args[:replication_factor] if args.key?(:replication_factor)
        end
      end
    end
  end
end
