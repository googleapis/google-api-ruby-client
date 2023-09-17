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
    module BlockchainnodeengineV1
      
      # A representation of a blockchain node.
      class BlockchainNode
        include Google::Apis::Core::Hashable
      
        # Immutable. The blockchain type of the node.
        # Corresponds to the JSON property `blockchainType`
        # @return [String]
        attr_accessor :blockchain_type
      
        # The connection information through which to interact with a blockchain node.
        # Corresponds to the JSON property `connectionInfo`
        # @return [Google::Apis::BlockchainnodeengineV1::ConnectionInfo]
        attr_accessor :connection_info
      
        # Output only. The timestamp at which the blockchain node was first created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Ethereum-specific blockchain node details.
        # Corresponds to the JSON property `ethereumDetails`
        # @return [Google::Apis::BlockchainnodeengineV1::EthereumDetails]
        attr_accessor :ethereum_details
      
        # User-provided key-value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The fully qualified name of the blockchain node. e.g. `projects/
        # my-project/locations/us-central1/blockchainNodes/my-node`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A status representing the state of the node.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp at which the blockchain node was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blockchain_type = args[:blockchain_type] if args.key?(:blockchain_type)
          @connection_info = args[:connection_info] if args.key?(:connection_info)
          @create_time = args[:create_time] if args.key?(:create_time)
          @ethereum_details = args[:ethereum_details] if args.key?(:ethereum_details)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # The connection information through which to interact with a blockchain node.
      class ConnectionInfo
        include Google::Apis::Core::Hashable
      
        # Contains endpoint information through which to interact with a blockchain node.
        # Corresponds to the JSON property `endpointInfo`
        # @return [Google::Apis::BlockchainnodeengineV1::EndpointInfo]
        attr_accessor :endpoint_info
      
        # Output only. A service attachment that exposes a node, and has the following
        # format: projects/`project`/regions/`region`/serviceAttachments/`
        # service_attachment_name`
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_info = args[:endpoint_info] if args.key?(:endpoint_info)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # Contains endpoint information through which to interact with a blockchain node.
      class EndpointInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The assigned URL for the node JSON-RPC API endpoint.
        # Corresponds to the JSON property `jsonRpcApiEndpoint`
        # @return [String]
        attr_accessor :json_rpc_api_endpoint
      
        # Output only. The assigned URL for the node WebSockets API endpoint.
        # Corresponds to the JSON property `websocketsApiEndpoint`
        # @return [String]
        attr_accessor :websockets_api_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @json_rpc_api_endpoint = args[:json_rpc_api_endpoint] if args.key?(:json_rpc_api_endpoint)
          @websockets_api_endpoint = args[:websockets_api_endpoint] if args.key?(:websockets_api_endpoint)
        end
      end
      
      # Ethereum-specific blockchain node details.
      class EthereumDetails
        include Google::Apis::Core::Hashable
      
        # Contains endpoint information specific to Ethereum nodes.
        # Corresponds to the JSON property `additionalEndpoints`
        # @return [Google::Apis::BlockchainnodeengineV1::EthereumEndpoints]
        attr_accessor :additional_endpoints
      
        # Immutable. Enables JSON-RPC access to functions in the `admin` namespace.
        # Defaults to `false`.
        # Corresponds to the JSON property `apiEnableAdmin`
        # @return [Boolean]
        attr_accessor :api_enable_admin
        alias_method :api_enable_admin?, :api_enable_admin
      
        # Immutable. Enables JSON-RPC access to functions in the `debug` namespace.
        # Defaults to `false`.
        # Corresponds to the JSON property `apiEnableDebug`
        # @return [Boolean]
        attr_accessor :api_enable_debug
        alias_method :api_enable_debug?, :api_enable_debug
      
        # Immutable. The consensus client.
        # Corresponds to the JSON property `consensusClient`
        # @return [String]
        attr_accessor :consensus_client
      
        # Immutable. The execution client
        # Corresponds to the JSON property `executionClient`
        # @return [String]
        attr_accessor :execution_client
      
        # Options for the Geth execution client. See [Command-line Options](https://geth.
        # ethereum.org/docs/fundamentals/command-line-options) for more details.
        # Corresponds to the JSON property `gethDetails`
        # @return [Google::Apis::BlockchainnodeengineV1::GethDetails]
        attr_accessor :geth_details
      
        # Immutable. The Ethereum environment being accessed.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Immutable. The type of Ethereum node.
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_endpoints = args[:additional_endpoints] if args.key?(:additional_endpoints)
          @api_enable_admin = args[:api_enable_admin] if args.key?(:api_enable_admin)
          @api_enable_debug = args[:api_enable_debug] if args.key?(:api_enable_debug)
          @consensus_client = args[:consensus_client] if args.key?(:consensus_client)
          @execution_client = args[:execution_client] if args.key?(:execution_client)
          @geth_details = args[:geth_details] if args.key?(:geth_details)
          @network = args[:network] if args.key?(:network)
          @node_type = args[:node_type] if args.key?(:node_type)
        end
      end
      
      # Contains endpoint information specific to Ethereum nodes.
      class EthereumEndpoints
        include Google::Apis::Core::Hashable
      
        # Output only. The assigned URL for the node's Beacon API endpoint.
        # Corresponds to the JSON property `beaconApiEndpoint`
        # @return [String]
        attr_accessor :beacon_api_endpoint
      
        # Output only. The assigned URL for the node's Beacon Prometheus metrics
        # endpoint. See [Prometheus Metrics](https://lighthouse-book.sigmaprime.io/
        # advanced_metrics.html) for more details.
        # Corresponds to the JSON property `beaconPrometheusMetricsApiEndpoint`
        # @return [String]
        attr_accessor :beacon_prometheus_metrics_api_endpoint
      
        # Output only. The assigned URL for the node's execution client's Prometheus
        # metrics endpoint.
        # Corresponds to the JSON property `executionClientPrometheusMetricsApiEndpoint`
        # @return [String]
        attr_accessor :execution_client_prometheus_metrics_api_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beacon_api_endpoint = args[:beacon_api_endpoint] if args.key?(:beacon_api_endpoint)
          @beacon_prometheus_metrics_api_endpoint = args[:beacon_prometheus_metrics_api_endpoint] if args.key?(:beacon_prometheus_metrics_api_endpoint)
          @execution_client_prometheus_metrics_api_endpoint = args[:execution_client_prometheus_metrics_api_endpoint] if args.key?(:execution_client_prometheus_metrics_api_endpoint)
        end
      end
      
      # Options for the Geth execution client. See [Command-line Options](https://geth.
      # ethereum.org/docs/fundamentals/command-line-options) for more details.
      class GethDetails
        include Google::Apis::Core::Hashable
      
        # Immutable. Blockchain garbage collection mode.
        # Corresponds to the JSON property `garbageCollectionMode`
        # @return [String]
        attr_accessor :garbage_collection_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @garbage_collection_mode = args[:garbage_collection_mode] if args.key?(:garbage_collection_mode)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for response to listing blockchain nodes.
      class ListBlockchainNodesResponse
        include Google::Apis::Core::Hashable
      
        # The list of nodes
        # Corresponds to the JSON property `blockchainNodes`
        # @return [Array<Google::Apis::BlockchainnodeengineV1::BlockchainNode>]
        attr_accessor :blockchain_nodes
      
        # A token identifying a page of results the server should return.
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
          @blockchain_nodes = args[:blockchain_nodes] if args.key?(:blockchain_nodes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BlockchainnodeengineV1::Location>]
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
        # @return [Array<Google::Apis::BlockchainnodeengineV1::Operation>]
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
        # @return [Google::Apis::BlockchainnodeengineV1::Status]
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
        # operation. Operations that have been cancelled successfully have `Operation.
        # error` value with a `google.rpc.Status.code` of `1`, corresponding to `Code.
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
    end
  end
end
