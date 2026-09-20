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
      
      # Represents the skills of an Agent.
      class A2ASkill
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
        # @return [Array<Google::Apis::AgentregistryV1alpha::A2ASkill>]
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
        # meaningful only when `read_only_hint == false` Default: false
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
      
      # Direct write-only raw archive payload upload.
      class ArchiveUploadSource
        include Google::Apis::Core::Hashable
      
        # Required. Input only. Write-only raw ZIP/TAR archive payload bytes containing
        # the skill package.
        # Corresponds to the JSON property `archiveContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :archive_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_content = args[:archive_content] if args.key?(:archive_content)
        end
      end
      
      # The AuthProvider of the Binding.
      class AuthProviderBinding
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the target AuthProvider. Format: * `projects/`
        # project`/locations/`location`/authProviders/`auth_provider``
        # Corresponds to the JSON property `authProvider`
        # @return [String]
        attr_accessor :auth_provider
      
        # Optional. The continue URI of the AuthProvider. The URI is used to
        # reauthenticate the user and finalize the managed OAuth flow.
        # Corresponds to the JSON property `continueUri`
        # @return [String]
        attr_accessor :continue_uri
      
        # Optional. The list of OAuth2 scopes of the AuthProvider.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_provider = args[:auth_provider] if args.key?(:auth_provider)
          @continue_uri = args[:continue_uri] if args.key?(:continue_uri)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Represents a user-defined Binding.
      class Binding
        include Google::Apis::Core::Hashable
      
        # The AuthProvider of the Binding.
        # Corresponds to the JSON property `authProviderBinding`
        # @return [Google::Apis::AgentregistryV1alpha::AuthProviderBinding]
        attr_accessor :auth_provider_binding
      
        # Output only. Timestamp when this binding was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-defined description of a Binding. Can have a maximum length of `
        # 2048` characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User-defined display name for the Binding. Can have a maximum length
        # of `63` characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Identifier. The resource name of the Binding. Format: `projects/`
        # project`/locations/`location`/bindings/`binding``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The source of the Binding.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::AgentregistryV1alpha::Source]
        attr_accessor :source
      
        # The target of the Binding.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::AgentregistryV1alpha::Target]
        attr_accessor :target
      
        # Output only. Timestamp when this binding was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_provider_binding = args[:auth_provider_binding] if args.key?(:auth_provider_binding)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Message for response to fetching available Bindings.
      class FetchAvailableBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Bindings.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Binding>]
        attr_accessor :bindings
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Structured metadata attributes extracted from the package's local SKILL.md
      # frontmatter.
      class Frontmatter
        include Google::Apis::Core::Hashable
      
        # Optional. Environmental dependencies or local sidecars.
        # Corresponds to the JSON property `compatibility`
        # @return [String]
        attr_accessor :compatibility
      
        # Required. Functional description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. License.
        # Corresponds to the JSON property `license`
        # @return [String]
        attr_accessor :license
      
        # Optional. Extensible flattened map mapping custom tags, authors, and version
        # parameters.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Required. The name of the skill.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compatibility = args[:compatibility] if args.key?(:compatibility)
          @description = args[:description] if args.key?(:description)
          @license = args[:license] if args.key?(:license)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Specifications for Cloud Storage objects.
      class GcsSource
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud Storage object generation ID. If not specified, the latest
        # generation is used.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Required. Cloud Storage object URI. Format: `gs://`bucket_name`/`object_name``
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generation = args[:generation] if args.key?(:generation)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::AgentregistryV1alpha::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::AgentregistryV1alpha::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::AgentregistryV1alpha::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::AgentregistryV1alpha::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::AgentregistryV1alpha::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
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
      
      # Message for response to listing Bindings
      class ListBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Binding resources matching the parent and filter criteria in the
        # request. Each Binding resource follows the format: `projects/`project`/
        # locations/`location`/bindings/`binding``.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Binding>]
        attr_accessor :bindings
      
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
          @bindings = args[:bindings] if args.key?(:bindings)
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
      
      # Response listing Publishers.
      class ListPublishersResponse
        include Google::Apis::Core::Hashable
      
        # Page offset continuation token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of Publishers.
        # Corresponds to the JSON property `publishers`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Publisher>]
        attr_accessor :publishers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @publishers = args[:publishers] if args.key?(:publishers)
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
      
      # Response listing Revisions.
      class ListSkillRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # Page offset continuation token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned version snapshot list.
        # Corresponds to the JSON property `skillRevisions`
        # @return [Array<Google::Apis::AgentregistryV1alpha::SkillRevision>]
        attr_accessor :skill_revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @skill_revisions = args[:skill_revisions] if args.key?(:skill_revisions)
        end
      end
      
      # Response structure listing logical Skills.
      class ListSkillsResponse
        include Google::Apis::Core::Hashable
      
        # Page continuation continuation token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned container list.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Skill>]
        attr_accessor :skills
      
        # Unreachable locations or failures.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @skills = args[:skills] if args.key?(:skills)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # Represents a verified Publisher of Skills. Prepopulated publishers include `
      # publishers/cloud.google.com` and `publishers/workspace.google.com`.
      class Publisher
        include Google::Apis::Core::Hashable
      
        # Optional. Human readable display name of the publisher.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. URI pointing to official publisher documentation.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # Identifier. Resource name of the publisher. Format: `projects/`project`/
        # locations/`location`/publishers/`publisher``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The curation tier of the publisher.
        # Corresponds to the JSON property `publisherTier`
        # @return [String]
        attr_accessor :publisher_tier
      
        # Optional. URI pointing to the support portal or email.
        # Corresponds to the JSON property `supportUri`
        # @return [String]
        attr_accessor :support_uri
      
        # Required. The verified prefix (e.g. "snowflake-", "google-") associated with
        # this publisher. The system uses this prefix to enforce name-squatting rules
        # during Skill registration. Must be globally unique across all publishers.
        # Corresponds to the JSON property `verifiedPrefix`
        # @return [String]
        attr_accessor :verified_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @name = args[:name] if args.key?(:name)
          @publisher_tier = args[:publisher_tier] if args.key?(:publisher_tier)
          @support_uri = args[:support_uri] if args.key?(:support_uri)
          @verified_prefix = args[:verified_prefix] if args.key?(:verified_prefix)
        end
      end
      
      # Message for searching Agents
      class SearchAgentsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of search results to return per page. The page
        # size is capped at `100`, even if a larger value is specified. A negative value
        # will result in an `INVALID_ARGUMENT` error. If unspecified or set to `0`, a
        # default value of `20` will be used. The server may return fewer results than
        # requested.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. If present, retrieve the next batch of results from the preceding
        # call to this method. `page_token` must be the value of `next_page_token` from
        # the previous response. The values of all other method parameters, must be
        # identical to those in the previous call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Search criteria used to select the Agents to return. If no search
        # criteria is specified then all accessible Agents will be returned. Search
        # expressions can be used to restrict results based upon searchable fields,
        # where the operators can be used along with the suffix wildcard symbol `*`. See
        # [instructions](https://docs.cloud.google.com/agent-registry/search-agents-and-
        # tools) for more details. Allowed operators: `=`, `:`, `NOT`, `AND`, `OR`, and `
        # ()`. Searchable fields: | Field | `=` | `:` | `*` | Keyword Search | |---------
        # -----------|-----|-----|-----|----------------| | agentId | Yes | Yes | Yes |
        # Included | | name | No | Yes | Yes | Included | | displayName | No | Yes | Yes
        # | Included | | description | No | Yes | No | Included | | skills | No | Yes |
        # No | Included | | skills.id | No | Yes | No | Included | | skills.name | No |
        # Yes | No | Included | | skills.description | No | Yes | No | Included | |
        # skills.tags | No | Yes | No | Included | | skills.examples | No | Yes | No |
        # Included | Examples: * `agentId="urn:agent:projects-123:projects:123:locations:
        # us-central1:reasoningEngines:1234"` to find the agent with the specified agent
        # ID. * `name:important` to find agents whose name contains `important` as a
        # word. * `displayName:works*` to find agents whose display name contains words
        # that start with `works`. * `skills.tags:test` to find agents whose skills tags
        # contain `test`. * `planner OR booking` to find agents whose metadata contains
        # the words `planner` or `booking`.
        # Corresponds to the JSON property `searchString`
        # @return [String]
        attr_accessor :search_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @search_string = args[:search_string] if args.key?(:search_string)
        end
      end
      
      # Message for response to searching Agents
      class SearchAgentsResponse
        include Google::Apis::Core::Hashable
      
        # A list of Agents that match the `search_string`.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Agent>]
        attr_accessor :agents
      
        # If there are more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
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
      
      # Message for searching MCP Servers
      class SearchMcpServersRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of search results to return per page. The page
        # size is capped at `100`, even if a larger value is specified. A negative value
        # will result in an `INVALID_ARGUMENT` error. If unspecified or set to `0`, a
        # default value of `20` will be used. The server may return fewer results than
        # requested.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. If present, retrieve the next batch of results from the preceding
        # call to this method. `page_token` must be the value of `next_page_token` from
        # the previous response. The values of all other method parameters, must be
        # identical to those in the previous call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Search criteria used to select the MCP Servers to return. If no
        # search criteria is specified then all accessible MCP Servers will be returned.
        # Search expressions can be used to restrict results based upon searchable
        # fields, where the operators can be used along with the suffix wildcard symbol `
        # *`. See [instructions](https://docs.cloud.google.com/agent-registry/search-
        # agents-and-tools) for more details. Allowed operators: `=`, `:`, `NOT`, `AND`,
        # `OR`, and `()`. Searchable fields: | Field | `=` | `:` | `*` | Keyword Search |
        # |--------------------|-----|-----|-----|----------------| | mcpServerId | Yes
        # | Yes | Yes | Included | | name | No | Yes | Yes | Included | | displayName |
        # No | Yes | Yes | Included | Examples: * `mcpServerId="urn:mcp:projects-123:
        # projects:123:locations:us-central1:agentregistry:services:service-id"` to find
        # the MCP Server with the specified MCP Server ID. * `name:important` to find
        # MCP Servers whose name contains `important` as a word. * `displayName:works*`
        # to find MCP Servers whose display name contains words that start with `works`.
        # * `planner OR booking` to find MCP Servers whose metadata contains the words `
        # planner` or `booking`. * `mcpServerId:service-id AND (displayName:planner OR
        # displayName:booking)` to find MCP Servers whose MCP Server ID contains `
        # service-id` and whose display name contains `planner` or `booking`.
        # Corresponds to the JSON property `searchString`
        # @return [String]
        attr_accessor :search_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @search_string = args[:search_string] if args.key?(:search_string)
        end
      end
      
      # Message for response to searching MCP Servers
      class SearchMcpServersResponse
        include Google::Apis::Core::Hashable
      
        # A list of McpServers that match the `search_string`.
        # Corresponds to the JSON property `mcpServers`
        # @return [Array<Google::Apis::AgentregistryV1alpha::McpServer>]
        attr_accessor :mcp_servers
      
        # If there are more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
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
      
      # Response listing searched Skills.
      class SearchSkillsResponse
        include Google::Apis::Core::Hashable
      
        # Query page offset continuation token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Matched Skills list.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::AgentregistryV1alpha::Skill>]
        attr_accessor :skills
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @skills = args[:skills] if args.key?(:skills)
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
      
        # Output only. The resource name of the resulting Agent, MCP Server, or Endpoint.
        # Format: * `projects/`project`/locations/`location`/mcpServers/`mcp_server`` *
        # `projects/`project`/locations/`location`/agents/`agent`` * `projects/`project`/
        # locations/`location`/endpoints/`endpoint``
        # Corresponds to the JSON property `registryResource`
        # @return [String]
        attr_accessor :registry_resource
      
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
          @registry_resource = args[:registry_resource] if args.key?(:registry_resource)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents an Executable Agent Skill or a Composite Tool Suite (Bundle).
      # Sibling resource with Agent and McpServer under agentregistry.googleapis.com.
      class Skill
        include Google::Apis::Core::Hashable
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The full resource name of the revision currently served by default (
        # floating track). Format: `projects/`project`/locations/`location`/skills/`
        # skill`/revisions/`revision``
        # Corresponds to the JSON property `defaultRevision`
        # @return [String]
        attr_accessor :default_revision
      
        # Optional. Brief summary describing the capabilities of the skill. Maximum
        # length is 2048 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Human-readable display name of the skill. Maximum length is 128
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Structured metadata attributes extracted from the package's local SKILL.md
        # frontmatter.
        # Corresponds to the JSON property `frontmatter`
        # @return [Google::Apis::AgentregistryV1alpha::Frontmatter]
        attr_accessor :frontmatter
      
        # Represents an immutable, versioned snapshot of a Skill package.
        # Corresponds to the JSON property `initialRevision`
        # @return [Google::Apis::AgentregistryV1alpha::SkillRevision]
        attr_accessor :initial_revision
      
        # Identifier. Resource name of the Skill. Format: `projects/`project`/locations/`
        # location`/skills/`skill`` The ``skill`` segment acts as the resource ID. If
        # the skill is associated with a Publisher, this segment typically uses a
        # hyphenated namespace prefix corresponding to the publisher (e.g., `google-
        # workspace-create-docs`).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The publisher resource associated with this skill. Format: `projects/
        # `project`/locations/`location`/publishers/`publisher`` The publisher dictates
        # the allowed namespace prefixes for the skill's name and logical `skill_id` (e.
        # g., Publisher `google` authorizes the `google-*` prefix).
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # Output only. A stable, globally unique logical identifier for the skill. It is
        # securely constructed by the backend by combining the associated `publisher`'s
        # verified namespace and the skill's resource ID to enforce strict ownership.
        # For example, the prefix `google-` is reserved exclusively for first-party
        # Google publishers to prevent namespace squatting. Example: `urn:skill:google-
        # workspace:create-docs`
        # Corresponds to the JSON property `skillId`
        # @return [String]
        attr_accessor :skill_id
      
        # Output only. The system-managed state of the skill.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. User-managed target state of the skill.
        # Corresponds to the JSON property `targetState`
        # @return [String]
        attr_accessor :target_state
      
        # Required. Structural deployment type (SIMPLE leaf vs COMPOSITE bundle).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Universally unique identifier (UUID4) for the logical container.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_revision = args[:default_revision] if args.key?(:default_revision)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @frontmatter = args[:frontmatter] if args.key?(:frontmatter)
          @initial_revision = args[:initial_revision] if args.key?(:initial_revision)
          @name = args[:name] if args.key?(:name)
          @publisher = args[:publisher] if args.key?(:publisher)
          @skill_id = args[:skill_id] if args.key?(:skill_id)
          @state = args[:state] if args.key?(:state)
          @target_state = args[:target_state] if args.key?(:target_state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents an immutable, versioned snapshot of a Skill package.
      class SkillRevision
        include Google::Apis::Core::Hashable
      
        # Direct write-only raw archive payload upload.
        # Corresponds to the JSON property `archiveUploadSource`
        # @return [Google::Apis::AgentregistryV1alpha::ArchiveUploadSource]
        attr_accessor :archive_upload_source
      
        # Output only. Revision creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Structured metadata attributes extracted from the package's local SKILL.md
        # frontmatter.
        # Corresponds to the JSON property `frontmatter`
        # @return [Google::Apis::AgentregistryV1alpha::Frontmatter]
        attr_accessor :frontmatter
      
        # Specifications for Cloud Storage objects.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::AgentregistryV1alpha::GcsSource]
        attr_accessor :gcs_source
      
        # Identifier. Resource name of the SkillRevision. Format: `projects/`project`/
        # locations/`location`/skills/`skill`/revisions/`revision``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Cryptographic SHA-256 integrity and deduplication digest of the
        # payload zip.
        # Corresponds to the JSON property `sha256Hash`
        # @return [String]
        attr_accessor :sha256_hash
      
        # Output only. Size of the compiled zip payload in bytes (assists client
        # download progress).
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. The system-managed lifecycle state of this revision.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Universally unique identifier (UUID4) for the skill revision.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_upload_source = args[:archive_upload_source] if args.key?(:archive_upload_source)
          @create_time = args[:create_time] if args.key?(:create_time)
          @frontmatter = args[:frontmatter] if args.key?(:frontmatter)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @name = args[:name] if args.key?(:name)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # The source of the Binding.
      class Source
        include Google::Apis::Core::Hashable
      
        # The identifier of the source Agent. Format: * `urn:agent:`publisher`:`
        # namespace`:`name``
        # Corresponds to the JSON property `identifier`
        # @return [String]
        attr_accessor :identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifier = args[:identifier] if args.key?(:identifier)
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
      
      # The target of the Binding.
      class Target
        include Google::Apis::Core::Hashable
      
        # The identifier of the target Agent, MCP Server, or Endpoint. Format: * `urn:
        # agent:`publisher`:`namespace`:`name`` * `urn:mcp:`publisher`:`namespace`:`name`
        # ` * `urn:endpoint:`publisher`:`namespace`:`name``
        # Corresponds to the JSON property `identifier`
        # @return [String]
        attr_accessor :identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifier = args[:identifier] if args.key?(:identifier)
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
