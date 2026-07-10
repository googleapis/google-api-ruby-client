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
    module AgentregistryV1
      
      class A2ASkill
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class AuthProviderBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
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
      
      class FetchAvailableBindingsResponse
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
      
      class ListBindingsResponse
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
      
      class SearchAgentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchMcpServersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchMcpServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Target
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class A2ASkill
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :examples, as: 'examples'
          property :id, as: 'id'
          property :name, as: 'name'
          collection :tags, as: 'tags'
        end
      end
      
      class Agent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          hash :attributes, as: 'attributes'
          property :card, as: 'card', class: Google::Apis::AgentregistryV1::Card, decorator: Google::Apis::AgentregistryV1::Card::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :location, as: 'location'
          property :name, as: 'name'
          collection :protocols, as: 'protocols', class: Google::Apis::AgentregistryV1::Protocol, decorator: Google::Apis::AgentregistryV1::Protocol::Representation
      
          collection :skills, as: 'skills', class: Google::Apis::AgentregistryV1::A2ASkill, decorator: Google::Apis::AgentregistryV1::A2ASkill::Representation
      
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
      
      class AuthProviderBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_provider, as: 'authProvider'
          property :continue_uri, as: 'continueUri'
          collection :scopes, as: 'scopes'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_provider_binding, as: 'authProviderBinding', class: Google::Apis::AgentregistryV1::AuthProviderBinding, decorator: Google::Apis::AgentregistryV1::AuthProviderBinding::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :source, as: 'source', class: Google::Apis::AgentregistryV1::Source, decorator: Google::Apis::AgentregistryV1::Source::Representation
      
          property :target, as: 'target', class: Google::Apis::AgentregistryV1::Target, decorator: Google::Apis::AgentregistryV1::Target::Representation
      
          property :update_time, as: 'updateTime'
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
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1::Interface, decorator: Google::Apis::AgentregistryV1::Interface::Representation
      
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
      
      class FetchAvailableBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::AgentregistryV1::Binding, decorator: Google::Apis::AgentregistryV1::Binding::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
          collection :agents, as: 'agents', class: Google::Apis::AgentregistryV1::Agent, decorator: Google::Apis::AgentregistryV1::Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::AgentregistryV1::Binding, decorator: Google::Apis::AgentregistryV1::Binding::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEndpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoints, as: 'endpoints', class: Google::Apis::AgentregistryV1::Endpoint, decorator: Google::Apis::AgentregistryV1::Endpoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AgentregistryV1::Location, decorator: Google::Apis::AgentregistryV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMcpServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mcp_servers, as: 'mcpServers', class: Google::Apis::AgentregistryV1::McpServer, decorator: Google::Apis::AgentregistryV1::McpServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AgentregistryV1::Operation, decorator: Google::Apis::AgentregistryV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::AgentregistryV1::Service, decorator: Google::Apis::AgentregistryV1::Service::Representation
      
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
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1::Interface, decorator: Google::Apis::AgentregistryV1::Interface::Representation
      
          property :mcp_server_id, as: 'mcpServerId'
          property :name, as: 'name'
          collection :tools, as: 'tools', class: Google::Apis::AgentregistryV1::Tool, decorator: Google::Apis::AgentregistryV1::Tool::Representation
      
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
          property :error, as: 'error', class: Google::Apis::AgentregistryV1::Status, decorator: Google::Apis::AgentregistryV1::Status::Representation
      
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
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1::Interface, decorator: Google::Apis::AgentregistryV1::Interface::Representation
      
          property :protocol_version, as: 'protocolVersion'
          property :type, as: 'type'
        end
      end
      
      class SearchAgentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :search_string, as: 'searchString'
        end
      end
      
      class SearchAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::AgentregistryV1::Agent, decorator: Google::Apis::AgentregistryV1::Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchMcpServersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :search_string, as: 'searchString'
        end
      end
      
      class SearchMcpServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mcp_servers, as: 'mcpServers', class: Google::Apis::AgentregistryV1::McpServer, decorator: Google::Apis::AgentregistryV1::McpServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_spec, as: 'agentSpec', class: Google::Apis::AgentregistryV1::AgentSpec, decorator: Google::Apis::AgentregistryV1::AgentSpec::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :endpoint_spec, as: 'endpointSpec', class: Google::Apis::AgentregistryV1::EndpointSpec, decorator: Google::Apis::AgentregistryV1::EndpointSpec::Representation
      
          collection :interfaces, as: 'interfaces', class: Google::Apis::AgentregistryV1::Interface, decorator: Google::Apis::AgentregistryV1::Interface::Representation
      
          property :mcp_server_spec, as: 'mcpServerSpec', class: Google::Apis::AgentregistryV1::McpServerSpec, decorator: Google::Apis::AgentregistryV1::McpServerSpec::Representation
      
          property :name, as: 'name'
          property :registry_resource, as: 'registryResource'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identifier, as: 'identifier'
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
      
      class Target
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identifier, as: 'identifier'
        end
      end
      
      class Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::AgentregistryV1::Annotations, decorator: Google::Apis::AgentregistryV1::Annotations::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
        end
      end
    end
  end
end
