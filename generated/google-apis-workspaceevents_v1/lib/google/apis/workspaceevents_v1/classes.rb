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
    module WorkspaceeventsV1
      
      # 
      class ApiKeySecurityScheme
        include Google::Apis::Core::Hashable
      
        # Description of this security scheme.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Location of the API key, valid values are "query", "header", or "cookie"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the header, query or cookie parameter to be used.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Defines the A2A feature set supported by the agent
      class AgentCapabilities
        include Google::Apis::Core::Hashable
      
        # Extensions supported by this agent.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Google::Apis::WorkspaceeventsV1::AgentExtension>]
        attr_accessor :extensions
      
        # If the agent can send push notifications to the clients webhook
        # Corresponds to the JSON property `pushNotifications`
        # @return [Boolean]
        attr_accessor :push_notifications
        alias_method :push_notifications?, :push_notifications
      
        # If the agent will support streaming responses
        # Corresponds to the JSON property `streaming`
        # @return [Boolean]
        attr_accessor :streaming
        alias_method :streaming?, :streaming
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extensions = args[:extensions] if args.key?(:extensions)
          @push_notifications = args[:push_notifications] if args.key?(:push_notifications)
          @streaming = args[:streaming] if args.key?(:streaming)
        end
      end
      
      # AgentCard conveys key information: - Overall details (version, name,
      # description, uses) - Skills; a set of actions/solutions the agent can perform -
      # Default modalities/content types supported by the agent. - Authentication
      # requirements Next ID: 19
      class AgentCard
        include Google::Apis::Core::Hashable
      
        # Announcement of additional supported transports. Client can use any of the
        # supported transports.
        # Corresponds to the JSON property `additionalInterfaces`
        # @return [Array<Google::Apis::WorkspaceeventsV1::AgentInterface>]
        attr_accessor :additional_interfaces
      
        # Defines the A2A feature set supported by the agent
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::WorkspaceeventsV1::AgentCapabilities]
        attr_accessor :capabilities
      
        # protolint:enable REPEATED_FIELD_NAMES_PLURALIZED The set of interaction modes
        # that the agent supports across all skills. This can be overridden per skill.
        # Defined as mime types.
        # Corresponds to the JSON property `defaultInputModes`
        # @return [Array<String>]
        attr_accessor :default_input_modes
      
        # The mime types supported as outputs from this agent.
        # Corresponds to the JSON property `defaultOutputModes`
        # @return [Array<String>]
        attr_accessor :default_output_modes
      
        # A description of the agent's domain of action/solution space. Example: "Agent
        # that helps users with recipes and cooking."
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A url to provide additional documentation about the agent.
        # Corresponds to the JSON property `documentationUrl`
        # @return [String]
        attr_accessor :documentation_url
      
        # An optional URL to an icon for the agent.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # A human readable name for the agent. Example: "Recipe Agent"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The transport of the preferred endpoint. If empty, defaults to JSONRPC.
        # Corresponds to the JSON property `preferredTransport`
        # @return [String]
        attr_accessor :preferred_transport
      
        # The version of the A2A protocol this agent supports.
        # Corresponds to the JSON property `protocolVersion`
        # @return [String]
        attr_accessor :protocol_version
      
        # Represents information about the service provider of an agent.
        # Corresponds to the JSON property `provider`
        # @return [Google::Apis::WorkspaceeventsV1::AgentProvider]
        attr_accessor :provider
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security requirements for
        # contacting the agent. This list can be seen as an OR of ANDs. Each object in
        # the list describes one possible set of security requirements that must be
        # present on a request. This allows specifying, for example, "callers must
        # either use OAuth OR an API Key AND mTLS." Example: security ` schemes ` key: "
        # oauth" value ` list: ["read"] ` ` ` security ` schemes ` key: "api-key" `
        # schemes ` key: "mtls" ` `
        # Corresponds to the JSON property `security`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Security>]
        attr_accessor :security
      
        # The security scheme details used for authenticating with this agent.
        # Corresponds to the JSON property `securitySchemes`
        # @return [Hash<String,Google::Apis::WorkspaceeventsV1::SecurityScheme>]
        attr_accessor :security_schemes
      
        # JSON Web Signatures computed for this AgentCard.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::WorkspaceeventsV1::AgentCardSignature>]
        attr_accessor :signatures
      
        # Skills represent a unit of ability an agent can perform. This may somewhat
        # abstract but represents a more focused set of actions that the agent is highly
        # likely to succeed at.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::WorkspaceeventsV1::AgentSkill>]
        attr_accessor :skills
      
        # Whether the agent supports providing an extended agent card when the user is
        # authenticated, i.e. is the card from .well-known different than the card from
        # GetAgentCard.
        # Corresponds to the JSON property `supportsAuthenticatedExtendedCard`
        # @return [Boolean]
        attr_accessor :supports_authenticated_extended_card
        alias_method :supports_authenticated_extended_card?, :supports_authenticated_extended_card
      
        # A URL to the address the agent is hosted at. This represents the preferred
        # endpoint as declared by the agent.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # The version of the agent. Example: "1.0.0"
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_interfaces = args[:additional_interfaces] if args.key?(:additional_interfaces)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @default_input_modes = args[:default_input_modes] if args.key?(:default_input_modes)
          @default_output_modes = args[:default_output_modes] if args.key?(:default_output_modes)
          @description = args[:description] if args.key?(:description)
          @documentation_url = args[:documentation_url] if args.key?(:documentation_url)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @name = args[:name] if args.key?(:name)
          @preferred_transport = args[:preferred_transport] if args.key?(:preferred_transport)
          @protocol_version = args[:protocol_version] if args.key?(:protocol_version)
          @provider = args[:provider] if args.key?(:provider)
          @security = args[:security] if args.key?(:security)
          @security_schemes = args[:security_schemes] if args.key?(:security_schemes)
          @signatures = args[:signatures] if args.key?(:signatures)
          @skills = args[:skills] if args.key?(:skills)
          @supports_authenticated_extended_card = args[:supports_authenticated_extended_card] if args.key?(:supports_authenticated_extended_card)
          @url = args[:url] if args.key?(:url)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # AgentCardSignature represents a JWS signature of an AgentCard. This follows
      # the JSON format of an RFC 7515 JSON Web Signature (JWS).
      class AgentCardSignature
        include Google::Apis::Core::Hashable
      
        # The unprotected JWS header values.
        # Corresponds to the JSON property `header`
        # @return [Hash<String,Object>]
        attr_accessor :header
      
        # Required. The protected JWS header for the signature. This is always a
        # base64url-encoded JSON object. Required.
        # Corresponds to the JSON property `protected`
        # @return [String]
        attr_accessor :protected
      
        # Required. The computed signature, base64url-encoded. Required.
        # Corresponds to the JSON property `signature`
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @protected = args[:protected] if args.key?(:protected)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # A declaration of an extension supported by an Agent.
      class AgentExtension
        include Google::Apis::Core::Hashable
      
        # A description of how this agent uses this extension. Example: "Google OAuth 2.
        # 0 authentication"
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional configuration for the extension.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Whether the client must follow specific requirements of the extension. Example:
        # false
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # The URI of the extension. Example: "https://developers.google.com/identity/
        # protocols/oauth2"
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @params = args[:params] if args.key?(:params)
          @required = args[:required] if args.key?(:required)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Defines additional transport information for the agent.
      class AgentInterface
        include Google::Apis::Core::Hashable
      
        # The transport supported this url. This is an open form string, to be easily
        # extended for many transport protocols. The core ones officially supported are
        # JSONRPC, GRPC and HTTP+JSON.
        # Corresponds to the JSON property `transport`
        # @return [String]
        attr_accessor :transport
      
        # The url this interface is found at.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transport = args[:transport] if args.key?(:transport)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents information about the service provider of an agent.
      class AgentProvider
        include Google::Apis::Core::Hashable
      
        # The providers organization name Example: "Google"
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The providers reference url Example: "https://ai.google.dev"
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @organization = args[:organization] if args.key?(:organization)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # AgentSkill represents a unit of action/solution that the agent can perform.
      # One can think of this as a type of highly reliable solution that an agent can
      # be tasked to provide. Agents have the autonomy to choose how and when to use
      # specific skills, but clients should have confidence that if the skill is
      # defined that unit of action can be reliably performed.
      class AgentSkill
        include Google::Apis::Core::Hashable
      
        # A human (or llm) readable description of the skill details and behaviors.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A set of example queries that this skill is designed to address. These
        # examples should help the caller to understand how to craft requests to the
        # agent to achieve specific goals. Example: ["I need a recipe for bread"]
        # Corresponds to the JSON property `examples`
        # @return [Array<String>]
        attr_accessor :examples
      
        # Unique identifier of the skill within this agent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Possible input modalities supported.
        # Corresponds to the JSON property `inputModes`
        # @return [Array<String>]
        attr_accessor :input_modes
      
        # A human readable name for the skill.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Possible output modalities produced
        # Corresponds to the JSON property `outputModes`
        # @return [Array<String>]
        attr_accessor :output_modes
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security schemes necessary
        # for the agent to leverage this skill. As in the overall AgentCard.security,
        # this list represents a logical OR of security requirement objects. Each object
        # is a set of security schemes that must be used together (a logical AND).
        # protolint:enable REPEATED_FIELD_NAMES_PLURALIZED
        # Corresponds to the JSON property `security`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Security>]
        attr_accessor :security
      
        # A set of tags for the skill to enhance categorization/utilization. Example: ["
        # cooking", "customer support", "billing"]
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
          @input_modes = args[:input_modes] if args.key?(:input_modes)
          @name = args[:name] if args.key?(:name)
          @output_modes = args[:output_modes] if args.key?(:output_modes)
          @security = args[:security] if args.key?(:security)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Artifacts are the container for task completed results. These are similar to
      # Messages but are intended to be the product of a task, as opposed to point-to-
      # point communication.
      class Artifact
        include Google::Apis::Core::Hashable
      
        # Unique identifier (e.g. UUID) for the artifact. It must be at least unique
        # within a task.
        # Corresponds to the JSON property `artifactId`
        # @return [String]
        attr_accessor :artifact_id
      
        # A human readable description of the artifact, optional.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The URIs of extensions that are present or contributed to this Artifact.
        # Corresponds to the JSON property `extensions`
        # @return [Array<String>]
        attr_accessor :extensions
      
        # Optional metadata included with the artifact.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A human readable name for the artifact.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The content of the artifact.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Part>]
        attr_accessor :parts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_id = args[:artifact_id] if args.key?(:artifact_id)
          @description = args[:description] if args.key?(:description)
          @extensions = args[:extensions] if args.key?(:extensions)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
        end
      end
      
      # Defines authentication details, used for push notifications.
      class AuthenticationInfo
        include Google::Apis::Core::Hashable
      
        # Optional credentials
        # Corresponds to the JSON property `credentials`
        # @return [String]
        attr_accessor :credentials
      
        # Supported authentication schemes - e.g. Basic, Bearer, etc
        # Corresponds to the JSON property `schemes`
        # @return [Array<String>]
        attr_accessor :schemes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credentials = args[:credentials] if args.key?(:credentials)
          @schemes = args[:schemes] if args.key?(:schemes)
        end
      end
      
      # 
      class AuthorizationCodeOAuthFlow
        include Google::Apis::Core::Hashable
      
        # The authorization URL to be used for this flow. This MUST be in the form of a
        # URL. The OAuth2 standard requires the use of TLS
        # Corresponds to the JSON property `authorizationUrl`
        # @return [String]
        attr_accessor :authorization_url
      
        # The URL to be used for obtaining refresh tokens. This MUST be in the form of a
        # URL. The OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `refreshUrl`
        # @return [String]
        attr_accessor :refresh_url
      
        # The available scopes for the OAuth2 security scheme. A map between the scope
        # name and a short description for it. The map MAY be empty.
        # Corresponds to the JSON property `scopes`
        # @return [Hash<String,String>]
        attr_accessor :scopes
      
        # The token URL to be used for this flow. This MUST be in the form of a URL. The
        # OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `tokenUrl`
        # @return [String]
        attr_accessor :token_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_url = args[:authorization_url] if args.key?(:authorization_url)
          @refresh_url = args[:refresh_url] if args.key?(:refresh_url)
          @scopes = args[:scopes] if args.key?(:scopes)
          @token_url = args[:token_url] if args.key?(:token_url)
        end
      end
      
      # 
      class CancelTaskRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class ClientCredentialsOAuthFlow
        include Google::Apis::Core::Hashable
      
        # The URL to be used for obtaining refresh tokens. This MUST be in the form of a
        # URL. The OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `refreshUrl`
        # @return [String]
        attr_accessor :refresh_url
      
        # The available scopes for the OAuth2 security scheme. A map between the scope
        # name and a short description for it. The map MAY be empty.
        # Corresponds to the JSON property `scopes`
        # @return [Hash<String,String>]
        attr_accessor :scopes
      
        # The token URL to be used for this flow. This MUST be in the form of a URL. The
        # OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `tokenUrl`
        # @return [String]
        attr_accessor :token_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @refresh_url = args[:refresh_url] if args.key?(:refresh_url)
          @scopes = args[:scopes] if args.key?(:scopes)
          @token_url = args[:token_url] if args.key?(:token_url)
        end
      end
      
      # DataPart represents a structured blob. This is most commonly a JSON payload.
      class DataPart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
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
      
      # FilePart represents the different ways files can be provided. If files are
      # small, directly feeding the bytes is supported via file_with_bytes. If the
      # file is large, the agent should read the content as appropriate directly from
      # the file_with_uri source.
      class FilePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fileWithBytes`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :file_with_bytes
      
        # 
        # Corresponds to the JSON property `fileWithUri`
        # @return [String]
        attr_accessor :file_with_uri
      
        # 
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_with_bytes = args[:file_with_bytes] if args.key?(:file_with_bytes)
          @file_with_uri = args[:file_with_uri] if args.key?(:file_with_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class HttpAuthSecurityScheme
        include Google::Apis::Core::Hashable
      
        # A hint to the client to identify how the bearer token is formatted. Bearer
        # tokens are usually generated by an authorization server, so this information
        # is primarily for documentation purposes.
        # Corresponds to the JSON property `bearerFormat`
        # @return [String]
        attr_accessor :bearer_format
      
        # Description of this security scheme.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name of the HTTP Authentication scheme to be used in the Authorization
        # header as defined in RFC7235. The values used SHOULD be registered in the IANA
        # Authentication Scheme registry. The value is case-insensitive, as defined in
        # RFC7235.
        # Corresponds to the JSON property `scheme`
        # @return [String]
        attr_accessor :scheme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bearer_format = args[:bearer_format] if args.key?(:bearer_format)
          @description = args[:description] if args.key?(:description)
          @scheme = args[:scheme] if args.key?(:scheme)
        end
      end
      
      # 
      class ImplicitOAuthFlow
        include Google::Apis::Core::Hashable
      
        # The authorization URL to be used for this flow. This MUST be in the form of a
        # URL. The OAuth2 standard requires the use of TLS
        # Corresponds to the JSON property `authorizationUrl`
        # @return [String]
        attr_accessor :authorization_url
      
        # The URL to be used for obtaining refresh tokens. This MUST be in the form of a
        # URL. The OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `refreshUrl`
        # @return [String]
        attr_accessor :refresh_url
      
        # The available scopes for the OAuth2 security scheme. A map between the scope
        # name and a short description for it. The map MAY be empty.
        # Corresponds to the JSON property `scopes`
        # @return [Hash<String,String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_url = args[:authorization_url] if args.key?(:authorization_url)
          @refresh_url = args[:refresh_url] if args.key?(:refresh_url)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # The response message for SubscriptionsService.ListSubscriptions.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of subscriptions.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Subscription>]
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
      
      # 
      class ListTaskPushNotificationConfigResponse
        include Google::Apis::Core::Hashable
      
        # The list of push notification configurations.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig>]
        attr_accessor :configs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message is one unit of communication between client and server. It is
      # associated with a context and optionally a task. Since the server is
      # responsible for the context definition, it must always provide a context_id in
      # its messages. The client can optionally provide the context_id if it knows the
      # context to associate the message to. Similarly for task_id, except the server
      # decides if a task is created and whether to include the task_id.
      class Message
        include Google::Apis::Core::Hashable
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Content is the container of
        # the message content.
        # Corresponds to the JSON property `content`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Part>]
        attr_accessor :content
      
        # The context id of the message. This is optional and if set, the message will
        # be associated with the given context.
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # The URIs of extensions that are present or contributed to this Message.
        # Corresponds to the JSON property `extensions`
        # @return [Array<String>]
        attr_accessor :extensions
      
        # The unique identifier (e.g. UUID)of the message. This is required and created
        # by the message creator.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # protolint:enable REPEATED_FIELD_NAMES_PLURALIZED Any optional metadata to
        # provide along with the message.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A role for the message.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The task id of the message. This is optional and if set, the message will be
        # associated with the given task.
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @context_id = args[:context_id] if args.key?(:context_id)
          @extensions = args[:extensions] if args.key?(:extensions)
          @message_id = args[:message_id] if args.key?(:message_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @role = args[:role] if args.key?(:role)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # 
      class MutualTlsSecurityScheme
        include Google::Apis::Core::Hashable
      
        # Description of this security scheme.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # The endpoint where the subscription delivers events.
      class NotificationEndpoint
        include Google::Apis::Core::Hashable
      
        # Immutable. The Pub/Sub topic that receives events for the subscription. Format:
        # `projects/`project`/topics/`topic`` You must create the topic in the same
        # Google Cloud project where you create this subscription. Note: The Google
        # Workspace Events API uses [ordering keys](https://cloud.google.com/pubsub/docs/
        # ordering) for the benefit of sequential events. If the Cloud Pub/Sub topic has
        # a [message storage policy](https://cloud.google.com/pubsub/docs/resource-
        # location-restriction#exceptions) configured to exclude the nearest Google
        # Cloud region, publishing events with ordering keys will fail. When the topic
        # receives events, the events are encoded as Pub/Sub messages. For details, see
        # the [Google Cloud Pub/Sub Protocol Binding for CloudEvents](https://github.com/
        # googleapis/google-cloudevents/blob/main/docs/spec/pubsub.md).
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # 
      class OAuth2SecurityScheme
        include Google::Apis::Core::Hashable
      
        # Description of this security scheme.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An object containing configuration information for the flow types supported
        # Corresponds to the JSON property `flows`
        # @return [Google::Apis::WorkspaceeventsV1::OAuthFlows]
        attr_accessor :flows
      
        # URL to the oauth2 authorization server metadata [RFC8414](https://datatracker.
        # ietf.org/doc/html/rfc8414). TLS is required.
        # Corresponds to the JSON property `oauth2MetadataUrl`
        # @return [String]
        attr_accessor :oauth2_metadata_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @flows = args[:flows] if args.key?(:flows)
          @oauth2_metadata_url = args[:oauth2_metadata_url] if args.key?(:oauth2_metadata_url)
        end
      end
      
      # 
      class OAuthFlows
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `authorizationCode`
        # @return [Google::Apis::WorkspaceeventsV1::AuthorizationCodeOAuthFlow]
        attr_accessor :authorization_code
      
        # 
        # Corresponds to the JSON property `clientCredentials`
        # @return [Google::Apis::WorkspaceeventsV1::ClientCredentialsOAuthFlow]
        attr_accessor :client_credentials
      
        # 
        # Corresponds to the JSON property `implicit`
        # @return [Google::Apis::WorkspaceeventsV1::ImplicitOAuthFlow]
        attr_accessor :implicit
      
        # 
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::WorkspaceeventsV1::PasswordOAuthFlow]
        attr_accessor :password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_code = args[:authorization_code] if args.key?(:authorization_code)
          @client_credentials = args[:client_credentials] if args.key?(:client_credentials)
          @implicit = args[:implicit] if args.key?(:implicit)
          @password = args[:password] if args.key?(:password)
        end
      end
      
      # 
      class OpenIdConnectSecurityScheme
        include Google::Apis::Core::Hashable
      
        # Description of this security scheme.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Well-known URL to discover the [[OpenID-Connect-Discovery]] provider metadata.
        # Corresponds to the JSON property `openIdConnectUrl`
        # @return [String]
        attr_accessor :open_id_connect_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @open_id_connect_url = args[:open_id_connect_url] if args.key?(:open_id_connect_url)
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
        # @return [Google::Apis::WorkspaceeventsV1::Status]
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
      
      # Part represents a container for a section of communication content. Parts can
      # be purely textual, some sort of file (image, video, etc) or a structured data
      # blob (i.e. JSON).
      class Part
        include Google::Apis::Core::Hashable
      
        # DataPart represents a structured blob. This is most commonly a JSON payload.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::WorkspaceeventsV1::DataPart]
        attr_accessor :data
      
        # FilePart represents the different ways files can be provided. If files are
        # small, directly feeding the bytes is supported via file_with_bytes. If the
        # file is large, the agent should read the content as appropriate directly from
        # the file_with_uri source.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::WorkspaceeventsV1::FilePart]
        attr_accessor :file
      
        # Optional metadata associated with this part.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @file = args[:file] if args.key?(:file)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class PasswordOAuthFlow
        include Google::Apis::Core::Hashable
      
        # The URL to be used for obtaining refresh tokens. This MUST be in the form of a
        # URL. The OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `refreshUrl`
        # @return [String]
        attr_accessor :refresh_url
      
        # The available scopes for the OAuth2 security scheme. A map between the scope
        # name and a short description for it. The map MAY be empty.
        # Corresponds to the JSON property `scopes`
        # @return [Hash<String,String>]
        attr_accessor :scopes
      
        # The token URL to be used for this flow. This MUST be in the form of a URL. The
        # OAuth2 standard requires the use of TLS.
        # Corresponds to the JSON property `tokenUrl`
        # @return [String]
        attr_accessor :token_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @refresh_url = args[:refresh_url] if args.key?(:refresh_url)
          @scopes = args[:scopes] if args.key?(:scopes)
          @token_url = args[:token_url] if args.key?(:token_url)
        end
      end
      
      # Options about what data to include in the event payload. Only supported for
      # Google Chat and Google Drive events.
      class PayloadOptions
        include Google::Apis::Core::Hashable
      
        # Optional. If `include_resource` is set to `true`, the list of fields to
        # include in the event payload. Separate fields with a comma. For example, to
        # include a Google Chat message's sender and create time, enter `message.sender,
        # message.createTime`. If omitted, the payload includes all fields for the
        # resource. If you specify a field that doesn't exist for the resource, the
        # system ignores the field.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # Optional. Whether the event payload includes data about the resource that
        # changed. For example, for an event where a Google Chat message was created,
        # whether the payload contains data about the [`Message`](https://developers.
        # google.com/chat/api/reference/rest/v1/spaces.messages) resource. If false, the
        # event payload only includes the name of the changed resource.
        # Corresponds to the JSON property `includeResource`
        # @return [Boolean]
        attr_accessor :include_resource
        alias_method :include_resource?, :include_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @include_resource = args[:include_resource] if args.key?(:include_resource)
        end
      end
      
      # Configuration for setting up push notifications for task updates.
      class PushNotificationConfig
        include Google::Apis::Core::Hashable
      
        # Defines authentication details, used for push notifications.
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::WorkspaceeventsV1::AuthenticationInfo]
        attr_accessor :authentication
      
        # A unique identifier (e.g. UUID) for this push notification.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Token unique for this task/session
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Url to send the notification too
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication = args[:authentication] if args.key?(:authentication)
          @id = args[:id] if args.key?(:id)
          @token = args[:token] if args.key?(:token)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # The request message for SubscriptionsService.ReactivateSubscription.
      class ReactivateSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Security
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `schemes`
        # @return [Hash<String,Google::Apis::WorkspaceeventsV1::StringList>]
        attr_accessor :schemes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schemes = args[:schemes] if args.key?(:schemes)
        end
      end
      
      # 
      class SecurityScheme
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `apiKeySecurityScheme`
        # @return [Google::Apis::WorkspaceeventsV1::ApiKeySecurityScheme]
        attr_accessor :api_key_security_scheme
      
        # 
        # Corresponds to the JSON property `httpAuthSecurityScheme`
        # @return [Google::Apis::WorkspaceeventsV1::HttpAuthSecurityScheme]
        attr_accessor :http_auth_security_scheme
      
        # 
        # Corresponds to the JSON property `mtlsSecurityScheme`
        # @return [Google::Apis::WorkspaceeventsV1::MutualTlsSecurityScheme]
        attr_accessor :mtls_security_scheme
      
        # 
        # Corresponds to the JSON property `oauth2SecurityScheme`
        # @return [Google::Apis::WorkspaceeventsV1::OAuth2SecurityScheme]
        attr_accessor :oauth2_security_scheme
      
        # 
        # Corresponds to the JSON property `openIdConnectSecurityScheme`
        # @return [Google::Apis::WorkspaceeventsV1::OpenIdConnectSecurityScheme]
        attr_accessor :open_id_connect_security_scheme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_security_scheme = args[:api_key_security_scheme] if args.key?(:api_key_security_scheme)
          @http_auth_security_scheme = args[:http_auth_security_scheme] if args.key?(:http_auth_security_scheme)
          @mtls_security_scheme = args[:mtls_security_scheme] if args.key?(:mtls_security_scheme)
          @oauth2_security_scheme = args[:oauth2_security_scheme] if args.key?(:oauth2_security_scheme)
          @open_id_connect_security_scheme = args[:open_id_connect_security_scheme] if args.key?(:open_id_connect_security_scheme)
        end
      end
      
      # Configuration of a send message request.
      class SendMessageConfiguration
        include Google::Apis::Core::Hashable
      
        # The output modes that the agent is expected to respond with.
        # Corresponds to the JSON property `acceptedOutputModes`
        # @return [Array<String>]
        attr_accessor :accepted_output_modes
      
        # If true, the message will be blocking until the task is completed. If false,
        # the message will be non-blocking and the task will be returned immediately. It
        # is the caller's responsibility to check for any task updates.
        # Corresponds to the JSON property `blocking`
        # @return [Boolean]
        attr_accessor :blocking
        alias_method :blocking?, :blocking
      
        # The maximum number of messages to include in the history. if 0, the history
        # will be unlimited.
        # Corresponds to the JSON property `historyLength`
        # @return [Fixnum]
        attr_accessor :history_length
      
        # Configuration for setting up push notifications for task updates.
        # Corresponds to the JSON property `pushNotification`
        # @return [Google::Apis::WorkspaceeventsV1::PushNotificationConfig]
        attr_accessor :push_notification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_output_modes = args[:accepted_output_modes] if args.key?(:accepted_output_modes)
          @blocking = args[:blocking] if args.key?(:blocking)
          @history_length = args[:history_length] if args.key?(:history_length)
          @push_notification = args[:push_notification] if args.key?(:push_notification)
        end
      end
      
      # /////////// Request Messages ///////////
      class SendMessageRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of a send message request.
        # Corresponds to the JSON property `configuration`
        # @return [Google::Apis::WorkspaceeventsV1::SendMessageConfiguration]
        attr_accessor :configuration
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkspaceeventsV1::Message]
        attr_accessor :message
      
        # Optional metadata for the request.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration = args[:configuration] if args.key?(:configuration)
          @message = args[:message] if args.key?(:message)
          @metadata = args[:metadata] if args.key?(:metadata)
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
      
      # The stream response for a message. The stream should be one of the following
      # sequences: If the response is a message, the stream should contain one, and
      # only one, message and then close If the response is a task lifecycle, the
      # first response should be a Task object followed by zero or more
      # TaskStatusUpdateEvents and TaskArtifactUpdateEvents. The stream should
      # complete when the Task if in an interrupted or terminal state. A stream that
      # ends before these conditions are met are
      class StreamResponse
        include Google::Apis::Core::Hashable
      
        # TaskArtifactUpdateEvent represents a task delta where an artifact has been
        # generated.
        # Corresponds to the JSON property `artifactUpdate`
        # @return [Google::Apis::WorkspaceeventsV1::TaskArtifactUpdateEvent]
        attr_accessor :artifact_update
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkspaceeventsV1::Message]
        attr_accessor :message
      
        # TaskStatusUpdateEvent is a delta even on a task indicating that a task has
        # changed.
        # Corresponds to the JSON property `statusUpdate`
        # @return [Google::Apis::WorkspaceeventsV1::TaskStatusUpdateEvent]
        attr_accessor :status_update
      
        # Task is the core unit of action for A2A. It has a current status and when
        # results are created for the task they are stored in the artifact. If there are
        # multiple turns for a task, these are stored in history.
        # Corresponds to the JSON property `task`
        # @return [Google::Apis::WorkspaceeventsV1::Task]
        attr_accessor :task
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_update = args[:artifact_update] if args.key?(:artifact_update)
          @message = args[:message] if args.key?(:message)
          @status_update = args[:status_update] if args.key?(:status_update)
          @task = args[:task] if args.key?(:task)
        end
      end
      
      # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED
      class StringList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `list`
        # @return [Array<String>]
        attr_accessor :list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list = args[:list] if args.key?(:list)
        end
      end
      
      # A subscription to receive events about a Google Workspace resource. To learn
      # more about subscriptions, see the [Google Workspace Events API overview](https:
      # //developers.google.com/workspace/events).
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Output only. The user who authorized the creation of the subscription. When a
        # user authorizes the subscription, this field and the `user_authority` field
        # have the same value and the format is: Format: `users/`user`` For Google
        # Workspace users, the ``user`` value is the [`user.id`](https://developers.
        # google.com/admin-sdk/directory/reference/rest/v1/users#User.FIELDS.ids) field
        # from the Directory API. When a Chat app authorizes the subscription, only `
        # service_account_authority` field populates and this field is empty.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # Output only. The time when the subscription is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and might be sent on update requests to ensure the client has an up-to-
        # date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. Unordered list. Input for creating a subscription. Otherwise, output
        # only. One or more types of events to receive about the target resource.
        # Formatted according to the CloudEvents specification. The supported event
        # types depend on the target resource of your subscription. For details, see [
        # Supported Google Workspace events](https://developers.google.com/workspace/
        # events/guides#supported-events). By default, you also receive events about the
        # [lifecycle of your subscription](https://developers.google.com/workspace/
        # events/guides/events-lifecycle). You don't need to specify lifecycle events
        # for this field. If you specify an event type that doesn't exist for the target
        # resource, the request returns an HTTP `400 Bad Request` status code.
        # Corresponds to the JSON property `eventTypes`
        # @return [Array<String>]
        attr_accessor :event_types
      
        # Non-empty default. The timestamp in UTC when the subscription expires. Always
        # displayed on output, regardless of what was used on input.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Identifier. Resource name of the subscription. Format: `subscriptions/`
        # subscription``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The endpoint where the subscription delivers events.
        # Corresponds to the JSON property `notificationEndpoint`
        # @return [Google::Apis::WorkspaceeventsV1::NotificationEndpoint]
        attr_accessor :notification_endpoint
      
        # Options about what data to include in the event payload. Only supported for
        # Google Chat and Google Drive events.
        # Corresponds to the JSON property `payloadOptions`
        # @return [Google::Apis::WorkspaceeventsV1::PayloadOptions]
        attr_accessor :payload_options
      
        # Output only. If `true`, the subscription is in the process of being updated.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The state of the subscription. Determines whether the
        # subscription can receive events and deliver them to the notification endpoint.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The error that suspended the subscription. To reactivate the
        # subscription, resolve the error and call the `ReactivateSubscription` method.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        # Required. Immutable. The Google Workspace resource that's monitored for events,
        # formatted as the [full resource name](https://google.aip.dev/122#full-
        # resource-names). To learn about target resources and the events that they
        # support, see [Supported Google Workspace events](https://developers.google.com/
        # workspace/events#supported-events). A user can only authorize your app to
        # create one subscription for a given target resource. If your app tries to
        # create another subscription with the same user credentials, the request
        # returns an `ALREADY_EXISTS` error.
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        # Input only. The time-to-live (TTL) or duration for the subscription. If
        # unspecified or set to `0`, uses the maximum possible duration.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Output only. System-assigned unique identifier for the subscription.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last time that the subscription is updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @event_types = args[:event_types] if args.key?(:event_types)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @notification_endpoint = args[:notification_endpoint] if args.key?(:notification_endpoint)
          @payload_options = args[:payload_options] if args.key?(:payload_options)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
          @ttl = args[:ttl] if args.key?(:ttl)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Task is the core unit of action for A2A. It has a current status and when
      # results are created for the task they are stored in the artifact. If there are
      # multiple turns for a task, these are stored in history.
      class Task
        include Google::Apis::Core::Hashable
      
        # A set of output artifacts for a Task.
        # Corresponds to the JSON property `artifacts`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Artifact>]
        attr_accessor :artifacts
      
        # Unique identifier (e.g. UUID) for the contextual collection of interactions (
        # tasks and messages). Created by the A2A server.
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of interactions
        # from a task.
        # Corresponds to the JSON property `history`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Message>]
        attr_accessor :history
      
        # Unique identifier (e.g. UUID) for the task, generated by the server for a new
        # task.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # protolint:enable REPEATED_FIELD_NAMES_PLURALIZED A key/value object to store
        # custom metadata about a task.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A container for the status of a task
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::WorkspaceeventsV1::TaskStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @context_id = args[:context_id] if args.key?(:context_id)
          @history = args[:history] if args.key?(:history)
          @id = args[:id] if args.key?(:id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # TaskArtifactUpdateEvent represents a task delta where an artifact has been
      # generated.
      class TaskArtifactUpdateEvent
        include Google::Apis::Core::Hashable
      
        # Whether this should be appended to a prior one produced
        # Corresponds to the JSON property `append`
        # @return [Boolean]
        attr_accessor :append
        alias_method :append?, :append
      
        # Artifacts are the container for task completed results. These are similar to
        # Messages but are intended to be the product of a task, as opposed to point-to-
        # point communication.
        # Corresponds to the JSON property `artifact`
        # @return [Google::Apis::WorkspaceeventsV1::Artifact]
        attr_accessor :artifact
      
        # The id of the context that this task belongs too
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # Whether this represents the last part of an artifact
        # Corresponds to the JSON property `lastChunk`
        # @return [Boolean]
        attr_accessor :last_chunk
        alias_method :last_chunk?, :last_chunk
      
        # Optional metadata associated with the artifact update.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The id of the task for this artifact
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append = args[:append] if args.key?(:append)
          @artifact = args[:artifact] if args.key?(:artifact)
          @context_id = args[:context_id] if args.key?(:context_id)
          @last_chunk = args[:last_chunk] if args.key?(:last_chunk)
          @metadata = args[:metadata] if args.key?(:metadata)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # 
      class TaskPushNotificationConfig
        include Google::Apis::Core::Hashable
      
        # The resource name of the config. Format: tasks/`task_id`/
        # pushNotificationConfigs/`config_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for setting up push notifications for task updates.
        # Corresponds to the JSON property `pushNotificationConfig`
        # @return [Google::Apis::WorkspaceeventsV1::PushNotificationConfig]
        attr_accessor :push_notification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @push_notification_config = args[:push_notification_config] if args.key?(:push_notification_config)
        end
      end
      
      # A container for the status of a task
      class TaskStatus
        include Google::Apis::Core::Hashable
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkspaceeventsV1::Message]
        attr_accessor :message
      
        # The current state of this task
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Timestamp when the status was recorded. Example: "2023-10-27T10:00:00Z"
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # TaskStatusUpdateEvent is a delta even on a task indicating that a task has
      # changed.
      class TaskStatusUpdateEvent
        include Google::Apis::Core::Hashable
      
        # The id of the context that the task belongs to
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # Whether this is the last status update expected for this task.
        # Corresponds to the JSON property `final`
        # @return [Boolean]
        attr_accessor :final
        alias_method :final?, :final
      
        # Optional metadata to associate with the task update.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A container for the status of a task
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::WorkspaceeventsV1::TaskStatus]
        attr_accessor :status
      
        # The id of the task that is changed
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_id = args[:context_id] if args.key?(:context_id)
          @final = args[:final] if args.key?(:final)
          @metadata = args[:metadata] if args.key?(:metadata)
          @status = args[:status] if args.key?(:status)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
    end
  end
end
