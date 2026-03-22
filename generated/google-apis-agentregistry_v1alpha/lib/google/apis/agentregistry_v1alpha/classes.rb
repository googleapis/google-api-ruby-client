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
      
      # Represents an Agent. "A2A" below refers to the Agent-to-Agent protocol.
      class Agent
        include Google::Apis::Core::Hashable
      
        # Output only. A stable, globally unique identifier for agents.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Output only. Attributes of the Agent. Valid values: * `agentregistry.
        # googleapis.com/system/Framework`: `"framework": "google-adk"` - the agent
        # framework used to develop the Agent. Example values: "google-adk", "langchain",
        # "custom". * `agentregistry.googleapis.com/system/RuntimeIdentity`: `"
        # principal": "principal://..."` - the runtime identity associated with the
        # Agent. * `agentregistry.googleapis.com/system/RuntimeReference`: `"uri": "//...
        # "` - the URI of the underlying resource hosting the Agent, for example, the
        # Reasoning Engine URI.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :attributes
      
        # Full Agent Card payload, often obtained from the A2A Agent Card.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::AgentregistryV1alpha::Card]
        attr_accessor :card
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The description of the Agent, often obtained from the A2A Agent
        # Card. Empty if Agent Card has no description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The display name of the agent, often obtained from the A2A Agent
        # Card.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The location where agent is hosted. The value is defined by the
        # hosting environment (i.e. cloud provider).
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Identifier. The resource name of an Agent. Format: `projects/`project`/
        # locations/`location`/agents/`agent``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The connection details for the Agent.
        # Corresponds to the JSON property `protocols`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Protocol>]
        attr_accessor :protocols
      
        # Output only. Skills the agent possesses, often obtained from the A2A Agent
        # Card.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Skill>]
        attr_accessor :skills
      
        # Output only. A universally unique identifier for the Agent.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The version of the Agent, often obtained from the A2A Agent Card.
        # Empty if Agent Card has no version or agent is not an A2A Agent.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @card = args[:card] if args.key?(:card)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @protocols = args[:protocols] if args.key?(:protocols)
          @skills = args[:skills] if args.key?(:skills)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The spec of the agent.
      class AgentSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The content of the Agent spec in the JSON format. This payload is
        # validated against the schema for the specified type. The content size is
        # limited to `10KB`.
        # Corresponds to the JSON property `content`
        # @return [Hash<String,Object>]
        attr_accessor :content
      
        # Required. The type of the agent spec content.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Annotations describing the characteristics and behavior of a tool or operation.
      class Annotations
        include Google::Apis::Core::Hashable
      
        # Output only. If true, the tool may perform destructive updates to its
        # environment. If false, the tool performs only additive updates. NOTE: This
        # property is meaningful only when `read_only_hint == false` Default: true
        # Corresponds to the JSON property `destructiveHint`
        # @return [Boolean]
        attr_accessor :destructive_hint
        alias_method :destructive_hint?, :destructive_hint
      
        # Output only. If true, calling the tool repeatedly with the same arguments will
        # have no additional effect on its environment. NOTE: This property is
        # meaningful only when `read_only_hint == false. Default: false
        # Corresponds to the JSON property `idempotentHint`
        # @return [Boolean]
        attr_accessor :idempotent_hint
        alias_method :idempotent_hint?, :idempotent_hint
      
        # Output only. If true, this tool may interact with an "open world" of external
        # entities. If false, the tool's domain of interaction is closed. For example,
        # the world of a web search tool is open, whereas that of a memory tool is not.
        # Default: true
        # Corresponds to the JSON property `openWorldHint`
        # @return [Boolean]
        attr_accessor :open_world_hint
        alias_method :open_world_hint?, :open_world_hint
      
        # Output only. If true, the tool does not modify its environment. Default: false
        # Corresponds to the JSON property `readOnlyHint`
        # @return [Boolean]
        attr_accessor :read_only_hint
        alias_method :read_only_hint?, :read_only_hint
      
        # Output only. A human-readable title for the tool.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destructive_hint = args[:destructive_hint] if args.key?(:destructive_hint)
          @idempotent_hint = args[:idempotent_hint] if args.key?(:idempotent_hint)
          @open_world_hint = args[:open_world_hint] if args.key?(:open_world_hint)
          @read_only_hint = args[:read_only_hint] if args.key?(:read_only_hint)
          @title = args[:title] if args.key?(:title)
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
      
      # Full Agent Card payload, often obtained from the A2A Agent Card.
      class Card
        include Google::Apis::Core::Hashable
      
        # Output only. The content of the agent card.
        # Corresponds to the JSON property `content`
        # @return [Hash<String,Object>]
        attr_accessor :content
      
        # Output only. The type of agent card.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @type = args[:type] if args.key?(:type)
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
      
      # Represents an Endpoint.
      class Endpoint
        include Google::Apis::Core::Hashable
      
        # Output only. Attributes of the Endpoint. Valid values: * `agentregistry.
        # googleapis.com/system/RuntimeReference`: `"uri": "//..."` - the URI of the
        # underlying resource hosting the Endpoint, for example, the GKE Deployment.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :attributes
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Description of an Endpoint.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Display name for the Endpoint.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stable, globally unique identifier for Endpoint.
        # Corresponds to the JSON property `endpointId`
        # @return [String]
        attr_accessor :endpoint_id
      
        # Required. The connection details for the Endpoint.
        # Corresponds to the JSON property `interfaces`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Interface>]
        attr_accessor :interfaces
      
        # Identifier. The resource name of the Endpoint. Format: `projects/`project`/
        # locations/`location`/endpoints/`endpoint``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @endpoint_id = args[:endpoint_id] if args.key?(:endpoint_id)
          @interfaces = args[:interfaces] if args.key?(:interfaces)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The spec of the endpoint.
      class EndpointSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The content of the endpoint spec. Reserved for future use.
        # Corresponds to the JSON property `content`
        # @return [Hash<String,Object>]
        attr_accessor :content
      
        # Required. The type of the endpoint spec content.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents the connection details for an Agent or MCP Server.
      class Interface
        include Google::Apis::Core::Hashable
      
        # Required. The protocol binding of the interface.
        # Corresponds to the JSON property `protocolBinding`
        # @return [String]
        attr_accessor :protocol_binding
      
        # Required. The destination URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @protocol_binding = args[:protocol_binding] if args.key?(:protocol_binding)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Message for response to listing Agents
      class ListAgentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Agents.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Agent>]
        attr_accessor :agents
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agents = args[:agents] if args.key?(:agents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing Endpoints
      class ListEndpointsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Endpoint resources matching the parent and filter criteria in the
        # request. Each Endpoint resource follows the format: `projects/`project`/
        # locations/`location`/endpoints/`endpoint``.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Endpoint>]
        attr_accessor :endpoints
      
        # A token identifying a page of results the server should return. Used in
        # page_token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Location>]
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
      
      # Message for response to listing McpServers
      class ListMcpServersResponse
        include Google::Apis::Core::Hashable
      
        # The list of McpServers.
        # Corresponds to the JSON property `mcpServers`
        # @return [Array<Google::Apis::AgentregistryV1alpha::McpServer>]
        attr_accessor :mcp_servers
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mcp_servers = args[:mcp_servers] if args.key?(:mcp_servers)
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
        # @return [Array<Google::Apis::AgentregistryV1alpha::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Services
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return. Used in
        # page_token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Service resources matching the parent and filter criteria in the
        # request. Each Service resource follows the format: `projects/`project`/
        # locations/`location`/services/`service``.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Service>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
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
      
      # Represents an MCP (Model Context Protocol) Server.
      class McpServer
        include Google::Apis::Core::Hashable
      
        # Output only. Attributes of the MCP Server. Valid values: * `agentregistry.
        # googleapis.com/system/RuntimeIdentity`: `"principal": "principal://..."` - the
        # runtime identity associated with the MCP Server. * `agentregistry.googleapis.
        # com/system/RuntimeReference`: `"uri": "//..."` - the URI of the underlying
        # resource hosting the MCP Server, for example, the GKE Deployment.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :attributes
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The description of the MCP Server.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The display name of the MCP Server.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The connection details for the MCP Server.
        # Corresponds to the JSON property `interfaces`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Interface>]
        attr_accessor :interfaces
      
        # Output only. A stable, globally unique identifier for MCP Servers.
        # Corresponds to the JSON property `mcpServerId`
        # @return [String]
        attr_accessor :mcp_server_id
      
        # Identifier. The resource name of the MCP Server. Format: `projects/`project`/
        # locations/`location`/mcpServers/`mcp_server``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Tools provided by the MCP Server.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Tool>]
        attr_accessor :tools
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @interfaces = args[:interfaces] if args.key?(:interfaces)
          @mcp_server_id = args[:mcp_server_id] if args.key?(:mcp_server_id)
          @name = args[:name] if args.key?(:name)
          @tools = args[:tools] if args.key?(:tools)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The spec of the MCP Server.
      class McpServerSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The content of the MCP Server spec. This payload is validated
        # against the schema for the specified type. The content size is limited to `
        # 10KB`.
        # Corresponds to the JSON property `content`
        # @return [Hash<String,Object>]
        attr_accessor :content
      
        # Required. The type of the MCP Server spec content.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @type = args[:type] if args.key?(:type)
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
        # @return [Google::Apis::AgentregistryV1alpha::Status]
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
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
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
      
      # Represents the protocol of an Agent.
      class Protocol
        include Google::Apis::Core::Hashable
      
        # Output only. The connection details for the Agent.
        # Corresponds to the JSON property `interfaces`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Interface>]
        attr_accessor :interfaces
      
        # Output only. The version of the protocol, for example, the A2A Agent Card
        # version.
        # Corresponds to the JSON property `protocolVersion`
        # @return [String]
        attr_accessor :protocol_version
      
        # Output only. The type of the protocol.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interfaces = args[:interfaces] if args.key?(:interfaces)
          @protocol_version = args[:protocol_version] if args.key?(:protocol_version)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a user-defined Service.
      class Service
        include Google::Apis::Core::Hashable
      
        # The spec of the agent.
        # Corresponds to the JSON property `agentSpec`
        # @return [Google::Apis::AgentregistryV1alpha::AgentSpec]
        attr_accessor :agent_spec
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-defined description of an Service. Can have a maximum length of
        # `2048` characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User-defined display name for the Service. Can have a maximum length
        # of `63` characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The spec of the endpoint.
        # Corresponds to the JSON property `endpointSpec`
        # @return [Google::Apis::AgentregistryV1alpha::EndpointSpec]
        attr_accessor :endpoint_spec
      
        # Optional. The connection details for the Service.
        # Corresponds to the JSON property `interfaces`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Interface>]
        attr_accessor :interfaces
      
        # The spec of the MCP Server.
        # Corresponds to the JSON property `mcpServerSpec`
        # @return [Google::Apis::AgentregistryV1alpha::McpServerSpec]
        attr_accessor :mcp_server_spec
      
        # Identifier. The resource name of the Service. Format: `projects/`project`/
        # locations/`location`/services/`service``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_spec = args[:agent_spec] if args.key?(:agent_spec)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @endpoint_spec = args[:endpoint_spec] if args.key?(:endpoint_spec)
          @interfaces = args[:interfaces] if args.key?(:interfaces)
          @mcp_server_spec = args[:mcp_server_spec] if args.key?(:mcp_server_spec)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the skills of an Agent.
      class Skill
        include Google::Apis::Core::Hashable
      
        # Output only. A more detailed description of the skill.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Example prompts or scenarios this skill can handle.
        # Corresponds to the JSON property `examples`
        # @return [Array<String>]
        attr_accessor :examples
      
        # Output only. A unique identifier for the agent's skill.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. A human-readable name for the agent's skill.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Keywords describing the skill.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @examples = args[:examples] if args.key?(:examples)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @tags = args[:tags] if args.key?(:tags)
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
      
      # Represents a single tool provided by an MCP Server.
      class Tool
        include Google::Apis::Core::Hashable
      
        # Annotations describing the characteristics and behavior of a tool or operation.
        # Corresponds to the JSON property `annotations`
        # @return [Google::Apis::AgentregistryV1alpha::Annotations]
        attr_accessor :annotations
      
        # Output only. Description of what the tool does.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Human-readable name of the tool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
        end
      end
    end
  end
end
