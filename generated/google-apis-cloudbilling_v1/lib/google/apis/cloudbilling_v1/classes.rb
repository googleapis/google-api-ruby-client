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
    module CloudbillingV1
      
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
        # @return [Array<Google::Apis::CloudbillingV1::AgentExtension>]
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
        # @return [Array<Google::Apis::CloudbillingV1::AgentInterface>]
        attr_accessor :additional_interfaces
      
        # Defines the A2A feature set supported by the agent
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::CloudbillingV1::AgentCapabilities]
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
        # @return [Google::Apis::CloudbillingV1::AgentProvider]
        attr_accessor :provider
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security requirements for
        # contacting the agent. This list can be seen as an OR of ANDs. Each object in
        # the list describes one possible set of security requirements that must be
        # present on a request. This allows specifying, for example, "callers must
        # either use OAuth OR an API Key AND mTLS." Example: security ` schemes ` key: "
        # oauth" value ` list: ["read"] ` ` ` security ` schemes ` key: "api-key" `
        # schemes ` key: "mtls" ` `
        # Corresponds to the JSON property `security`
        # @return [Array<Google::Apis::CloudbillingV1::Security>]
        attr_accessor :security
      
        # The security scheme details used for authenticating with this agent.
        # Corresponds to the JSON property `securitySchemes`
        # @return [Hash<String,Google::Apis::CloudbillingV1::SecurityScheme>]
        attr_accessor :security_schemes
      
        # JSON Web Signatures computed for this AgentCard.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::CloudbillingV1::AgentCardSignature>]
        attr_accessor :signatures
      
        # Skills represent a unit of ability an agent can perform. This may somewhat
        # abstract but represents a more focused set of actions that the agent is highly
        # likely to succeed at.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::CloudbillingV1::AgentSkill>]
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
      
        # Tenant to be set in the request when calling the agent. Experimental, might
        # still change for 1.0 release.
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
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
          @tenant = args[:tenant] if args.key?(:tenant)
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
        # @return [Array<Google::Apis::CloudbillingV1::Security>]
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
      
      # Represents the aggregation level and interval for pricing of a single SKU.
      class AggregationInfo
        include Google::Apis::Core::Hashable
      
        # The number of intervals to aggregate over. Example: If aggregation_level is "
        # DAILY" and aggregation_count is 14, aggregation will be over 14 days.
        # Corresponds to the JSON property `aggregationCount`
        # @return [Fixnum]
        attr_accessor :aggregation_count
      
        # 
        # Corresponds to the JSON property `aggregationInterval`
        # @return [String]
        attr_accessor :aggregation_interval
      
        # 
        # Corresponds to the JSON property `aggregationLevel`
        # @return [String]
        attr_accessor :aggregation_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_count = args[:aggregation_count] if args.key?(:aggregation_count)
          @aggregation_interval = args[:aggregation_interval] if args.key?(:aggregation_interval)
          @aggregation_level = args[:aggregation_level] if args.key?(:aggregation_level)
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
        # @return [Array<Google::Apis::CloudbillingV1::Part>]
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
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::CloudbillingV1::AuditLogConfig>]
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
      class AuditLogConfig
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
      
      # A billing account in the [Google Cloud Console](https://console.cloud.google.
      # com/). You can assign a billing account to one or more projects.
      class BillingAccount
        include Google::Apis::Core::Hashable
      
        # Optional. The currency in which the billing account is billed and charged,
        # represented as an ISO 4217 code such as `USD`. Billing account currency is
        # determined at the time of billing account creation and cannot be updated
        # subsequently, so this field should not be set on update requests. In addition,
        # a subaccount always matches the currency of its parent billing account, so
        # this field should not be set on subaccount creation requests. Clients can read
        # this field to determine the currency of an existing billing account.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The display name given to the billing account, such as `My Billing Account`.
        # This name is displayed in the Google Cloud Console.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # If this account is a [subaccount](https://cloud.google.com/billing/docs/
        # concepts), then this will be the resource name of the parent billing account
        # that it is being resold through. Otherwise this will be empty.
        # Corresponds to the JSON property `masterBillingAccount`
        # @return [String]
        attr_accessor :master_billing_account
      
        # Output only. The resource name of the billing account. The resource name has
        # the form `billingAccounts/`billing_account_id``. For example, `billingAccounts/
        # 012345-567890-ABCDEF` would be the resource name for billing account `012345-
        # 567890-ABCDEF`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. True if the billing account is open, and will therefore be
        # charged for any usage on associated projects. False if the billing account is
        # closed, and therefore projects associated with it are unable to use paid
        # services.
        # Corresponds to the JSON property `open`
        # @return [Boolean]
        attr_accessor :open
        alias_method :open?, :open
      
        # Output only. The billing account's parent resource identifier. Use the `
        # MoveBillingAccount` method to update the account's parent resource if it is a
        # organization. Format: - `organizations/`organization_id``, for example, `
        # organizations/12345678` - `billingAccounts/`billing_account_id``, for example,
        # `billingAccounts/012345-567890-ABCDEF`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @display_name = args[:display_name] if args.key?(:display_name)
          @master_billing_account = args[:master_billing_account] if args.key?(:master_billing_account)
          @name = args[:name] if args.key?(:name)
          @open = args[:open] if args.key?(:open)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
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
        # @return [Google::Apis::CloudbillingV1::Expr]
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
      
      # 
      class CancelTaskRequest
        include Google::Apis::Core::Hashable
      
        # Optional tenant, provided as a path parameter. Experimental, might still
        # change for 1.0 release.
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tenant = args[:tenant] if args.key?(:tenant)
        end
      end
      
      # Represents the category hierarchy of a SKU.
      class Category
        include Google::Apis::Core::Hashable
      
        # The type of product the SKU refers to. Example: "Compute", "Storage", "Network"
        # , "ApplicationServices" etc.
        # Corresponds to the JSON property `resourceFamily`
        # @return [String]
        attr_accessor :resource_family
      
        # A group classification for related SKUs. Example: "RAM", "GPU", "Prediction", "
        # Ops", "GoogleEgress" etc.
        # Corresponds to the JSON property `resourceGroup`
        # @return [String]
        attr_accessor :resource_group
      
        # The display name of the service this SKU belongs to.
        # Corresponds to the JSON property `serviceDisplayName`
        # @return [String]
        attr_accessor :service_display_name
      
        # Represents how the SKU is consumed. Example: "OnDemand", "Preemptible", "
        # Commit1Mo", "Commit1Yr" etc.
        # Corresponds to the JSON property `usageType`
        # @return [String]
        attr_accessor :usage_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_family = args[:resource_family] if args.key?(:resource_family)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @service_display_name = args[:service_display_name] if args.key?(:service_display_name)
          @usage_type = args[:usage_type] if args.key?(:usage_type)
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
      
      # Encapsulates the geographic taxonomy data for a sku.
      class GeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # The list of regions associated with a sku. Empty for Global skus, which are
        # associated with all Google Cloud regions.
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        # The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
          @type = args[:type] if args.key?(:type)
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
      
      # Response message for `ListBillingAccounts`.
      class ListBillingAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A list of billing accounts.
        # Corresponds to the JSON property `billingAccounts`
        # @return [Array<Google::Apis::CloudbillingV1::BillingAccount>]
        attr_accessor :billing_accounts
      
        # A token to retrieve the next page of results. To retrieve the next page, call `
        # ListBillingAccounts` again with the `page_token` field set to this value. This
        # field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_accounts = args[:billing_accounts] if args.key?(:billing_accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for `ListProjectBillingInfoResponse`.
      class ListProjectBillingInfoResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. To retrieve the next page, call `
        # ListProjectBillingInfo` again with the `page_token` field set to this value.
        # This field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of `ProjectBillingInfo` resources representing the projects associated
        # with the billing account.
        # Corresponds to the JSON property `projectBillingInfo`
        # @return [Array<Google::Apis::CloudbillingV1::ProjectBillingInfo>]
        attr_accessor :project_billing_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @project_billing_info = args[:project_billing_info] if args.key?(:project_billing_info)
        end
      end
      
      # Response message for `ListServices`.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. To retrieve the next page, call `
        # ListServices` again with the `page_token` field set to this value. This field
        # is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of services.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::CloudbillingV1::Service>]
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
      
      # Response message for `ListSkus`.
      class ListSkusResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. To retrieve the next page, call `
        # ListSkus` again with the `page_token` field set to this value. This field is
        # empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of public SKUs of the given service.
        # Corresponds to the JSON property `skus`
        # @return [Array<Google::Apis::CloudbillingV1::Sku>]
        attr_accessor :skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @skus = args[:skus] if args.key?(:skus)
        end
      end
      
      # 
      class ListTaskPushNotificationConfigResponse
        include Google::Apis::Core::Hashable
      
        # The list of push notification configurations.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::CloudbillingV1::TaskPushNotificationConfig>]
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
        # @return [Array<Google::Apis::CloudbillingV1::Part>]
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
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Request message for `MoveBillingAccount` RPC.
      class MoveBillingAccountRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the Organization to move the billing account
        # under. Must be of the form `organizations/`organization_id``.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
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
      
      # 
      class OAuth2SecurityScheme
        include Google::Apis::Core::Hashable
      
        # Description of this security scheme.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An object containing configuration information for the flow types supported
        # Corresponds to the JSON property `flows`
        # @return [Google::Apis::CloudbillingV1::OAuthFlows]
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
        # @return [Google::Apis::CloudbillingV1::AuthorizationCodeOAuthFlow]
        attr_accessor :authorization_code
      
        # 
        # Corresponds to the JSON property `clientCredentials`
        # @return [Google::Apis::CloudbillingV1::ClientCredentialsOAuthFlow]
        attr_accessor :client_credentials
      
        # 
        # Corresponds to the JSON property `implicit`
        # @return [Google::Apis::CloudbillingV1::ImplicitOAuthFlow]
        attr_accessor :implicit
      
        # 
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::CloudbillingV1::PasswordOAuthFlow]
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
      
      # Part represents a container for a section of communication content. Parts can
      # be purely textual, some sort of file (image, video, etc) or a structured data
      # blob (i.e. JSON).
      class Part
        include Google::Apis::Core::Hashable
      
        # DataPart represents a structured blob. This is most commonly a JSON payload.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::CloudbillingV1::DataPart]
        attr_accessor :data
      
        # FilePart represents the different ways files can be provided. If files are
        # small, directly feeding the bytes is supported via file_with_bytes. If the
        # file is large, the agent should read the content as appropriate directly from
        # the file_with_uri source.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::CloudbillingV1::FilePart]
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
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::CloudbillingV1::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudbillingV1::Binding>]
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
      
      # Expresses a mathematical pricing formula. For Example:- `usage_unit: GBy` `
      # tiered_rates:` `[start_usage_amount: 20, unit_price: $10]` `[
      # start_usage_amount: 100, unit_price: $5]` The above expresses a pricing
      # formula where the first 20GB is free, the next 80GB is priced at $10 per GB
      # followed by $5 per GB for additional usage.
      class PricingExpression
        include Google::Apis::Core::Hashable
      
        # The base unit for the SKU which is the unit used in usage exports. Example: "
        # By"
        # Corresponds to the JSON property `baseUnit`
        # @return [String]
        attr_accessor :base_unit
      
        # Conversion factor for converting from price per usage_unit to price per
        # base_unit, and start_usage_amount to start_usage_amount in base_unit.
        # unit_price / base_unit_conversion_factor = price per base_unit.
        # start_usage_amount * base_unit_conversion_factor = start_usage_amount in
        # base_unit.
        # Corresponds to the JSON property `baseUnitConversionFactor`
        # @return [Float]
        attr_accessor :base_unit_conversion_factor
      
        # The base unit in human readable form. Example: "byte".
        # Corresponds to the JSON property `baseUnitDescription`
        # @return [String]
        attr_accessor :base_unit_description
      
        # The recommended quantity of units for displaying pricing info. When displaying
        # pricing info it is recommended to display: (unit_price * display_quantity) per
        # display_quantity usage_unit. This field does not affect the pricing formula
        # and is for display purposes only. Example: If the unit_price is "0.0001 USD",
        # the usage_unit is "GB" and the display_quantity is "1000" then the recommended
        # way of displaying the pricing info is "0.10 USD per 1000 GB"
        # Corresponds to the JSON property `displayQuantity`
        # @return [Float]
        attr_accessor :display_quantity
      
        # The list of tiered rates for this pricing. The total cost is computed by
        # applying each of the tiered rates on usage. This repeated list is sorted by
        # ascending order of start_usage_amount.
        # Corresponds to the JSON property `tieredRates`
        # @return [Array<Google::Apis::CloudbillingV1::TierRate>]
        attr_accessor :tiered_rates
      
        # The short hand for unit of usage this pricing is specified in. Example:
        # usage_unit of "GiBy" means that usage is specified in "Gibi Byte".
        # Corresponds to the JSON property `usageUnit`
        # @return [String]
        attr_accessor :usage_unit
      
        # The unit of usage in human readable form. Example: "gibi byte".
        # Corresponds to the JSON property `usageUnitDescription`
        # @return [String]
        attr_accessor :usage_unit_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_unit = args[:base_unit] if args.key?(:base_unit)
          @base_unit_conversion_factor = args[:base_unit_conversion_factor] if args.key?(:base_unit_conversion_factor)
          @base_unit_description = args[:base_unit_description] if args.key?(:base_unit_description)
          @display_quantity = args[:display_quantity] if args.key?(:display_quantity)
          @tiered_rates = args[:tiered_rates] if args.key?(:tiered_rates)
          @usage_unit = args[:usage_unit] if args.key?(:usage_unit)
          @usage_unit_description = args[:usage_unit_description] if args.key?(:usage_unit_description)
        end
      end
      
      # Represents the pricing information for a SKU at a single point of time.
      class PricingInfo
        include Google::Apis::Core::Hashable
      
        # Represents the aggregation level and interval for pricing of a single SKU.
        # Corresponds to the JSON property `aggregationInfo`
        # @return [Google::Apis::CloudbillingV1::AggregationInfo]
        attr_accessor :aggregation_info
      
        # Conversion rate used for currency conversion, from USD to the currency
        # specified in the request. This includes any surcharge collected for billing in
        # non USD currency. If a currency is not specified in the request this defaults
        # to 1.0. Example: USD * currency_conversion_rate = JPY
        # Corresponds to the JSON property `currencyConversionRate`
        # @return [Float]
        attr_accessor :currency_conversion_rate
      
        # The timestamp from which this pricing was effective within the requested time
        # range. This is guaranteed to be greater than or equal to the start_time field
        # in the request and less than the end_time field in the request. If a time
        # range was not specified in the request this field will be equivalent to a time
        # within the last 12 hours, indicating the latest pricing info.
        # Corresponds to the JSON property `effectiveTime`
        # @return [String]
        attr_accessor :effective_time
      
        # Expresses a mathematical pricing formula. For Example:- `usage_unit: GBy` `
        # tiered_rates:` `[start_usage_amount: 20, unit_price: $10]` `[
        # start_usage_amount: 100, unit_price: $5]` The above expresses a pricing
        # formula where the first 20GB is free, the next 80GB is priced at $10 per GB
        # followed by $5 per GB for additional usage.
        # Corresponds to the JSON property `pricingExpression`
        # @return [Google::Apis::CloudbillingV1::PricingExpression]
        attr_accessor :pricing_expression
      
        # An optional human readable summary of the pricing information, has a maximum
        # length of 256 characters.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_info = args[:aggregation_info] if args.key?(:aggregation_info)
          @currency_conversion_rate = args[:currency_conversion_rate] if args.key?(:currency_conversion_rate)
          @effective_time = args[:effective_time] if args.key?(:effective_time)
          @pricing_expression = args[:pricing_expression] if args.key?(:pricing_expression)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Encapsulation of billing information for a Google Cloud Console project. A
      # project has at most one associated billing account at a time (but a billing
      # account can be assigned to multiple projects).
      class ProjectBillingInfo
        include Google::Apis::Core::Hashable
      
        # The resource name of the billing account associated with the project, if any.
        # For example, `billingAccounts/012345-567890-ABCDEF`.
        # Corresponds to the JSON property `billingAccountName`
        # @return [String]
        attr_accessor :billing_account_name
      
        # Output only. True if the project is associated with an open billing account,
        # to which usage on the project is charged. False if the project is associated
        # with a closed billing account, or no billing account at all, and therefore
        # cannot use paid services.
        # Corresponds to the JSON property `billingEnabled`
        # @return [Boolean]
        attr_accessor :billing_enabled
        alias_method :billing_enabled?, :billing_enabled
      
        # Output only. The resource name for the `ProjectBillingInfo`; has the form `
        # projects/`project_id`/billingInfo`. For example, the resource name for the
        # billing information for project `tokyo-rain-123` would be `projects/tokyo-rain-
        # 123/billingInfo`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The ID of the project that this `ProjectBillingInfo` represents,
        # such as `tokyo-rain-123`. This is a convenience field so that you don't need
        # to parse the `name` field to obtain a project ID.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_name = args[:billing_account_name] if args.key?(:billing_account_name)
          @billing_enabled = args[:billing_enabled] if args.key?(:billing_enabled)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Configuration for setting up push notifications for task updates.
      class PushNotificationConfig
        include Google::Apis::Core::Hashable
      
        # Defines authentication details, used for push notifications.
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::CloudbillingV1::AuthenticationInfo]
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
      
      # 
      class Security
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `schemes`
        # @return [Hash<String,Google::Apis::CloudbillingV1::StringList>]
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
        # @return [Google::Apis::CloudbillingV1::ApiKeySecurityScheme]
        attr_accessor :api_key_security_scheme
      
        # 
        # Corresponds to the JSON property `httpAuthSecurityScheme`
        # @return [Google::Apis::CloudbillingV1::HttpAuthSecurityScheme]
        attr_accessor :http_auth_security_scheme
      
        # 
        # Corresponds to the JSON property `mtlsSecurityScheme`
        # @return [Google::Apis::CloudbillingV1::MutualTlsSecurityScheme]
        attr_accessor :mtls_security_scheme
      
        # 
        # Corresponds to the JSON property `oauth2SecurityScheme`
        # @return [Google::Apis::CloudbillingV1::OAuth2SecurityScheme]
        attr_accessor :oauth2_security_scheme
      
        # 
        # Corresponds to the JSON property `openIdConnectSecurityScheme`
        # @return [Google::Apis::CloudbillingV1::OpenIdConnectSecurityScheme]
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
        # @return [Google::Apis::CloudbillingV1::PushNotificationConfig]
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
        # @return [Google::Apis::CloudbillingV1::SendMessageConfiguration]
        attr_accessor :configuration
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::CloudbillingV1::Message]
        attr_accessor :message
      
        # Optional metadata for the request.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Optional tenant, provided as a path parameter. Experimental, might still
        # change for 1.0 release.
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration = args[:configuration] if args.key?(:configuration)
          @message = args[:message] if args.key?(:message)
          @metadata = args[:metadata] if args.key?(:metadata)
          @tenant = args[:tenant] if args.key?(:tenant)
        end
      end
      
      # ////// Response Messages ///////////
      class SendMessageResponse
        include Google::Apis::Core::Hashable
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::CloudbillingV1::Message]
        attr_accessor :message
      
        # Task is the core unit of action for A2A. It has a current status and when
        # results are created for the task they are stored in the artifact. If there are
        # multiple turns for a task, these are stored in history.
        # Corresponds to the JSON property `task`
        # @return [Google::Apis::CloudbillingV1::Task]
        attr_accessor :task
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @task = args[:task] if args.key?(:task)
        end
      end
      
      # Encapsulates a single service in Google Cloud Platform.
      class Service
        include Google::Apis::Core::Hashable
      
        # The business under which the service is offered. Ex. "businessEntities/GCP", "
        # businessEntities/Maps"
        # Corresponds to the JSON property `businessEntityName`
        # @return [String]
        attr_accessor :business_entity_name
      
        # A human readable display name for this service.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name for the service. Example: "services/6F81-5844-456A"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The identifier for the service. Example: "6F81-5844-456A"
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_entity_name = args[:business_entity_name] if args.key?(:business_entity_name)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @service_id = args[:service_id] if args.key?(:service_id)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
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
        # @return [Google::Apis::CloudbillingV1::Policy]
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
      
      # Encapsulates a single SKU in Google Cloud
      class Sku
        include Google::Apis::Core::Hashable
      
        # Represents the category hierarchy of a SKU.
        # Corresponds to the JSON property `category`
        # @return [Google::Apis::CloudbillingV1::Category]
        attr_accessor :category
      
        # A human readable description of the SKU, has a maximum length of 256
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Encapsulates the geographic taxonomy data for a sku.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1::GeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # The resource name for the SKU. Example: "services/6F81-5844-456A/skus/D041-
        # B8A1-6E0B"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A timeline of pricing info for this SKU in chronological order.
        # Corresponds to the JSON property `pricingInfo`
        # @return [Array<Google::Apis::CloudbillingV1::PricingInfo>]
        attr_accessor :pricing_info
      
        # Identifies the service provider. This is 'Google' for first party services in
        # Google Cloud Platform.
        # Corresponds to the JSON property `serviceProviderName`
        # @return [String]
        attr_accessor :service_provider_name
      
        # List of service regions this SKU is offered at. Example: "asia-east1" Service
        # regions can be found at https://cloud.google.com/about/locations/
        # Corresponds to the JSON property `serviceRegions`
        # @return [Array<String>]
        attr_accessor :service_regions
      
        # The identifier for the SKU. Example: "D041-B8A1-6E0B"
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @description = args[:description] if args.key?(:description)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @pricing_info = args[:pricing_info] if args.key?(:pricing_info)
          @service_provider_name = args[:service_provider_name] if args.key?(:service_provider_name)
          @service_regions = args[:service_regions] if args.key?(:service_regions)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
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
        # @return [Google::Apis::CloudbillingV1::TaskArtifactUpdateEvent]
        attr_accessor :artifact_update
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::CloudbillingV1::Message]
        attr_accessor :message
      
        # TaskStatusUpdateEvent is a delta even on a task indicating that a task has
        # changed.
        # Corresponds to the JSON property `statusUpdate`
        # @return [Google::Apis::CloudbillingV1::TaskStatusUpdateEvent]
        attr_accessor :status_update
      
        # Task is the core unit of action for A2A. It has a current status and when
        # results are created for the task they are stored in the artifact. If there are
        # multiple turns for a task, these are stored in history.
        # Corresponds to the JSON property `task`
        # @return [Google::Apis::CloudbillingV1::Task]
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
      
      # Task is the core unit of action for A2A. It has a current status and when
      # results are created for the task they are stored in the artifact. If there are
      # multiple turns for a task, these are stored in history.
      class Task
        include Google::Apis::Core::Hashable
      
        # A set of output artifacts for a Task.
        # Corresponds to the JSON property `artifacts`
        # @return [Array<Google::Apis::CloudbillingV1::Artifact>]
        attr_accessor :artifacts
      
        # Unique identifier (e.g. UUID) for the contextual collection of interactions (
        # tasks and messages). Created by the A2A server.
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of interactions
        # from a task.
        # Corresponds to the JSON property `history`
        # @return [Array<Google::Apis::CloudbillingV1::Message>]
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
        # @return [Google::Apis::CloudbillingV1::TaskStatus]
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
        # @return [Google::Apis::CloudbillingV1::Artifact]
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
        # @return [Google::Apis::CloudbillingV1::PushNotificationConfig]
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
        # @return [Google::Apis::CloudbillingV1::Message]
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
        # @return [Google::Apis::CloudbillingV1::TaskStatus]
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
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
      class TestIamPermissionsResponse
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
      
      # The price rate indicating starting usage and its corresponding price.
      class TierRate
        include Google::Apis::Core::Hashable
      
        # Usage is priced at this rate only after this amount. Example:
        # start_usage_amount of 10 indicates that the usage will be priced at the
        # unit_price after the first 10 usage_units.
        # Corresponds to the JSON property `startUsageAmount`
        # @return [Float]
        attr_accessor :start_usage_amount
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `unitPrice`
        # @return [Google::Apis::CloudbillingV1::Money]
        attr_accessor :unit_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_usage_amount = args[:start_usage_amount] if args.key?(:start_usage_amount)
          @unit_price = args[:unit_price] if args.key?(:unit_price)
        end
      end
    end
  end
end
