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
      
      class BlockchainNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EthereumDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EthereumEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GethDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBlockchainNodesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidatorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlockchainNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blockchain_type, as: 'blockchainType'
          property :connection_info, as: 'connectionInfo', class: Google::Apis::BlockchainnodeengineV1::ConnectionInfo, decorator: Google::Apis::BlockchainnodeengineV1::ConnectionInfo::Representation
      
          property :create_time, as: 'createTime'
          property :ethereum_details, as: 'ethereumDetails', class: Google::Apis::BlockchainnodeengineV1::EthereumDetails, decorator: Google::Apis::BlockchainnodeengineV1::EthereumDetails::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :private_service_connect_enabled, as: 'privateServiceConnectEnabled'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_info, as: 'endpointInfo', class: Google::Apis::BlockchainnodeengineV1::EndpointInfo, decorator: Google::Apis::BlockchainnodeengineV1::EndpointInfo::Representation
      
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class EndpointInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_rpc_api_endpoint, as: 'jsonRpcApiEndpoint'
          property :websockets_api_endpoint, as: 'websocketsApiEndpoint'
        end
      end
      
      class EthereumDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_endpoints, as: 'additionalEndpoints', class: Google::Apis::BlockchainnodeengineV1::EthereumEndpoints, decorator: Google::Apis::BlockchainnodeengineV1::EthereumEndpoints::Representation
      
          property :api_enable_admin, as: 'apiEnableAdmin'
          property :api_enable_debug, as: 'apiEnableDebug'
          property :beacon_fee_recipient, as: 'beaconFeeRecipient'
          property :consensus_client, as: 'consensusClient'
          property :execution_client, as: 'executionClient'
          property :geth_details, as: 'gethDetails', class: Google::Apis::BlockchainnodeengineV1::GethDetails, decorator: Google::Apis::BlockchainnodeengineV1::GethDetails::Representation
      
          property :network, as: 'network'
          property :node_type, as: 'nodeType'
          property :validator_config, as: 'validatorConfig', class: Google::Apis::BlockchainnodeengineV1::ValidatorConfig, decorator: Google::Apis::BlockchainnodeengineV1::ValidatorConfig::Representation
      
        end
      end
      
      class EthereumEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beacon_api_endpoint, as: 'beaconApiEndpoint'
          property :beacon_prometheus_metrics_api_endpoint, as: 'beaconPrometheusMetricsApiEndpoint'
          property :execution_client_prometheus_metrics_api_endpoint, as: 'executionClientPrometheusMetricsApiEndpoint'
        end
      end
      
      class GethDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :garbage_collection_mode, as: 'garbageCollectionMode'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListBlockchainNodesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blockchain_nodes, as: 'blockchainNodes', class: Google::Apis::BlockchainnodeengineV1::BlockchainNode, decorator: Google::Apis::BlockchainnodeengineV1::BlockchainNode::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BlockchainnodeengineV1::Location, decorator: Google::Apis::BlockchainnodeengineV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BlockchainnodeengineV1::Operation, decorator: Google::Apis::BlockchainnodeengineV1::Operation::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BlockchainnodeengineV1::Status, decorator: Google::Apis::BlockchainnodeengineV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
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
      
      class ValidatorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mev_relay_urls, as: 'mevRelayUrls'
        end
      end
    end
  end
end
