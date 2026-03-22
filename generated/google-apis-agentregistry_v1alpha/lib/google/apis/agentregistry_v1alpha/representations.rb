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
    module AgentregistryV1alpha
      
      class Agent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Card
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEndpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMcpServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class McpServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class McpServerSpec
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
      
      class Protocol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Skill
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Agent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          hash :attributes, as: 'attributes'
          property :card, as: 'card', class: Google::Apis::AgentregistryV1alpha::Card, decorator: Google::Apis::AgentregistryV1alpha::Card::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :location, as: 'location'
          property :name, as: 'name'
          collection :protocols, as: 'protocols', class: Google::Apis::AgentregistryV1alpha::Protocol, decorator: Google::Apis::AgentregistryV1alpha::Protocol::Representation
      
          collection :skills, as: 'skills', class: Google::Apis::AgentregistryV1alpha::Skill, decorator: Google::Apis::AgentregistryV1alpha::Skill::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
        end
      end
      
      class AgentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :content, as: 'content'
          property :type, as: 'type'
        end
      end
      
      class Annotations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destructive_hint, as: 'destructiveHint'
          property :idempotent_hint, as: 'idempotentHint'
          property :open_world_hint, as: 'openWorldHint'
          property :read_only_hint, as: 'readOnlyHint'
          property :title, as: 'title'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Card
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :content, as: 'content'
          property :type, as: 'type'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :endpoint_id, as: 'endpointId'
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1alpha::Interface, decorator: Google::Apis::AgentregistryV1alpha::Interface::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class EndpointSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :content, as: 'content'
          property :type, as: 'type'
        end
      end
      
      class Interface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protocol_binding, as: 'protocolBinding'
          property :url, as: 'url'
        end
      end
      
      class ListAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::AgentregistryV1alpha::Agent, decorator: Google::Apis::AgentregistryV1alpha::Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEndpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoints, as: 'endpoints', class: Google::Apis::AgentregistryV1alpha::Endpoint, decorator: Google::Apis::AgentregistryV1alpha::Endpoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AgentregistryV1alpha::Location, decorator: Google::Apis::AgentregistryV1alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMcpServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mcp_servers, as: 'mcpServers', class: Google::Apis::AgentregistryV1alpha::McpServer, decorator: Google::Apis::AgentregistryV1alpha::McpServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AgentregistryV1alpha::Operation, decorator: Google::Apis::AgentregistryV1alpha::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::AgentregistryV1alpha::Service, decorator: Google::Apis::AgentregistryV1alpha::Service::Representation
      
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
      
      class McpServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1alpha::Interface, decorator: Google::Apis::AgentregistryV1alpha::Interface::Representation
      
          property :mcp_server_id, as: 'mcpServerId'
          property :name, as: 'name'
          collection :tools, as: 'tools', class: Google::Apis::AgentregistryV1alpha::Tool, decorator: Google::Apis::AgentregistryV1alpha::Tool::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class McpServerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :content, as: 'content'
          property :type, as: 'type'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AgentregistryV1alpha::Status, decorator: Google::Apis::AgentregistryV1alpha::Status::Representation
      
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
      
      class Protocol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1alpha::Interface, decorator: Google::Apis::AgentregistryV1alpha::Interface::Representation
      
          property :protocol_version, as: 'protocolVersion'
          property :type, as: 'type'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_spec, as: 'agentSpec', class: Google::Apis::AgentregistryV1alpha::AgentSpec, decorator: Google::Apis::AgentregistryV1alpha::AgentSpec::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :endpoint_spec, as: 'endpointSpec', class: Google::Apis::AgentregistryV1alpha::EndpointSpec, decorator: Google::Apis::AgentregistryV1alpha::EndpointSpec::Representation
      
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1alpha::Interface, decorator: Google::Apis::AgentregistryV1alpha::Interface::Representation
      
          property :mcp_server_spec, as: 'mcpServerSpec', class: Google::Apis::AgentregistryV1alpha::McpServerSpec, decorator: Google::Apis::AgentregistryV1alpha::McpServerSpec::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Skill
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :examples, as: 'examples'
          property :id, as: 'id'
          property :name, as: 'name'
          collection :tags, as: 'tags'
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
      
      class Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::AgentregistryV1alpha::Annotations, decorator: Google::Apis::AgentregistryV1alpha::Annotations::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
        end
      end
    end
  end
end
