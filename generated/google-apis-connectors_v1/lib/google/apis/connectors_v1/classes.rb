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
    module ConnectorsV1
      
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
        # @return [Array<Google::Apis::ConnectorsV1::AuditLogConfig>]
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
      
      # AuthConfig defines details of a authentication type.
      class AuthConfig
        include Google::Apis::Core::Hashable
      
        # List containing additional auth configs.
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::ConnectorsV1::ConfigVariable>]
        attr_accessor :additional_variables
      
        # Identifier key for auth config
        # Corresponds to the JSON property `authKey`
        # @return [String]
        attr_accessor :auth_key
      
        # The type of authentication configured.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://
        # www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
        # Corresponds to the JSON property `oauth2AuthCodeFlow`
        # @return [Google::Apis::ConnectorsV1::Oauth2AuthCodeFlow]
        attr_accessor :oauth2_auth_code_flow
      
        # Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See
        # https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
        # Corresponds to the JSON property `oauth2ClientCredentials`
        # @return [Google::Apis::ConnectorsV1::Oauth2ClientCredentials]
        attr_accessor :oauth2_client_credentials
      
        # Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization
        # Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more
        # details.
        # Corresponds to the JSON property `oauth2JwtBearer`
        # @return [Google::Apis::ConnectorsV1::Oauth2JwtBearer]
        attr_accessor :oauth2_jwt_bearer
      
        # Parameters to support Ssh public key Authentication.
        # Corresponds to the JSON property `sshPublicKey`
        # @return [Google::Apis::ConnectorsV1::SshPublicKey]
        attr_accessor :ssh_public_key
      
        # Parameters to support Username and Password Authentication.
        # Corresponds to the JSON property `userPassword`
        # @return [Google::Apis::ConnectorsV1::UserPassword]
        attr_accessor :user_password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @auth_key = args[:auth_key] if args.key?(:auth_key)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @oauth2_auth_code_flow = args[:oauth2_auth_code_flow] if args.key?(:oauth2_auth_code_flow)
          @oauth2_client_credentials = args[:oauth2_client_credentials] if args.key?(:oauth2_client_credentials)
          @oauth2_jwt_bearer = args[:oauth2_jwt_bearer] if args.key?(:oauth2_jwt_bearer)
          @ssh_public_key = args[:ssh_public_key] if args.key?(:ssh_public_key)
          @user_password = args[:user_password] if args.key?(:user_password)
        end
      end
      
      # AuthConfigTemplate defines required field over an authentication type.
      class AuthConfigTemplate
        include Google::Apis::Core::Hashable
      
        # Identifier key for auth config
        # Corresponds to the JSON property `authKey`
        # @return [String]
        attr_accessor :auth_key
      
        # The type of authentication configured.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Config variables to describe an `AuthConfig` for a `Connection`.
        # Corresponds to the JSON property `configVariableTemplates`
        # @return [Array<Google::Apis::ConnectorsV1::ConfigVariableTemplate>]
        attr_accessor :config_variable_templates
      
        # Connector specific description for an authentication template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name for authentication template.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_key = args[:auth_key] if args.key?(:auth_key)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @config_variable_templates = args[:config_variable_templates] if args.key?(:config_variable_templates)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # This configuration captures the details required to render an authorization
      # link for the OAuth Authorization Code Flow.
      class AuthorizationCodeLink
        include Google::Apis::Core::Hashable
      
        # The client ID assigned to the GCP Connectors OAuth app for the connector data
        # source.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Whether to enable PKCE for the auth code flow.
        # Corresponds to the JSON property `enablePkce`
        # @return [Boolean]
        attr_accessor :enable_pkce
        alias_method :enable_pkce?, :enable_pkce
      
        # The scopes for which the user will authorize GCP Connectors on the connector
        # data source.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # The base URI the user must click to trigger the authorization code login flow.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @enable_pkce = args[:enable_pkce] if args.key?(:enable_pkce)
          @scopes = args[:scopes] if args.key?(:scopes)
          @uri = args[:uri] if args.key?(:uri)
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
        # @return [Google::Apis::ConnectorsV1::Expr]
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
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # ConfigVariable represents a configuration variable present in a Connection. or
      # AuthConfig.
      class ConfigVariable
        include Google::Apis::Core::Hashable
      
        # Value is a bool.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Value is an integer
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Key of the config variable.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `secretValue`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :secret_value
      
        # Value is a string.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @key = args[:key] if args.key?(:key)
          @secret_value = args[:secret_value] if args.key?(:secret_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # ConfigVariableTemplate provides metadata about a `ConfigVariable` that is used
      # in a Connection.
      class ConfigVariableTemplate
        include Google::Apis::Core::Hashable
      
        # This configuration captures the details required to render an authorization
        # link for the OAuth Authorization Code Flow.
        # Corresponds to the JSON property `authorizationCodeLink`
        # @return [Google::Apis::ConnectorsV1::AuthorizationCodeLink]
        attr_accessor :authorization_code_link
      
        # Description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of the parameter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Enum options. To be populated if `ValueType` is `ENUM`
        # Corresponds to the JSON property `enumOptions`
        # @return [Array<Google::Apis::ConnectorsV1::EnumOption>]
        attr_accessor :enum_options
      
        # Indicates if current template is part of advanced settings
        # Corresponds to the JSON property `isAdvanced`
        # @return [Boolean]
        attr_accessor :is_advanced
        alias_method :is_advanced?, :is_advanced
      
        # Key of the config variable.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Flag represents that this `ConfigVariable` must be provided for a connection.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # This configuration defines all the Cloud IAM roles that needs to be granted to
        # a particular GCP resource for the selected prinicpal like service account.
        # These configurations will let UI display to customers what IAM roles need to
        # be granted by them. Or these configurations can be used by the UI to render a '
        # grant' button to do the same on behalf of the user.
        # Corresponds to the JSON property `roleGrant`
        # @return [Google::Apis::ConnectorsV1::RoleGrant]
        attr_accessor :role_grant
      
        # State of the config variable.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Regular expression in RE2 syntax used for validating the `value` of a `
        # ConfigVariable`.
        # Corresponds to the JSON property `validationRegex`
        # @return [String]
        attr_accessor :validation_regex
      
        # Type of the parameter: string, int, bool etc. consider custom type for the
        # benefit for the validation.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_code_link = args[:authorization_code_link] if args.key?(:authorization_code_link)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enum_options = args[:enum_options] if args.key?(:enum_options)
          @is_advanced = args[:is_advanced] if args.key?(:is_advanced)
          @key = args[:key] if args.key?(:key)
          @required = args[:required] if args.key?(:required)
          @role_grant = args[:role_grant] if args.key?(:role_grant)
          @state = args[:state] if args.key?(:state)
          @validation_regex = args[:validation_regex] if args.key?(:validation_regex)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Connection represents an instance of connector.
      class Connection
        include Google::Apis::Core::Hashable
      
        # AuthConfig defines details of a authentication type.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::ConnectorsV1::AuthConfig]
        attr_accessor :auth_config
      
        # Optional. Configuration for configuring the connection with an external system.
        # Corresponds to the JSON property `configVariables`
        # @return [Array<Google::Apis::ConnectorsV1::ConfigVariable>]
        attr_accessor :config_variables
      
        # Required. Connector version on which the connection is created. The format is:
        # projects/*/locations/*/providers/*/connectors/*/versions/* Only global
        # location is supported for ConnectorVersion resource.
        # Corresponds to the JSON property `connectorVersion`
        # @return [String]
        attr_accessor :connector_version
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Configuration of the Connector's destination. Only accepted for
        # Connectors that accepts user defined destination(s).
        # Corresponds to the JSON property `destinationConfigs`
        # @return [Array<Google::Apis::ConnectorsV1::DestinationConfig>]
        attr_accessor :destination_configs
      
        # Output only. GCR location where the envoy image is stored. formatted like: gcr.
        # io/`bucketName`/`imageName`
        # Corresponds to the JSON property `envoyImageLocation`
        # @return [String]
        attr_accessor :envoy_image_location
      
        # Output only. GCR location where the runtime image is stored. formatted like:
        # gcr.io/`bucketName`/`imageName`
        # Corresponds to the JSON property `imageLocation`
        # @return [String]
        attr_accessor :image_location
      
        # Optional. Resource labels to represent user-provided metadata. Refer to cloud
        # documentation on labels for more details. https://cloud.google.com/compute/
        # docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Determines whether or no a connection is locked. If locked, a reason must be
        # specified.
        # Corresponds to the JSON property `lockConfig`
        # @return [Google::Apis::ConnectorsV1::LockConfig]
        attr_accessor :lock_config
      
        # Log configuration for the connection.
        # Corresponds to the JSON property `logConfig`
        # @return [Google::Apis::ConnectorsV1::ConnectorsLogConfig]
        attr_accessor :log_config
      
        # Output only. Resource name of the Connection. Format: projects/`project`/
        # locations/`location`/connections/`connection`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Node configuration for the connection.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ConnectorsV1::NodeConfig]
        attr_accessor :node_config
      
        # Optional. Service account needed for runtime plane to access GCP resources.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. The name of the Service Directory service name. Used for Private
        # Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-
        # testing/locations/us-central1/namespaces/istio-system/services/istio-
        # ingressgateway-connectors"
        # Corresponds to the JSON property `serviceDirectory`
        # @return [String]
        attr_accessor :service_directory
      
        # SSL Configuration of a connection
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::ConnectorsV1::SslConfig]
        attr_accessor :ssl_config
      
        # ConnectionStatus indicates the state of the connection.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ConnectorsV1::ConnectionStatus]
        attr_accessor :status
      
        # Output only. This subscription type enum states the subscription type of the
        # project.
        # Corresponds to the JSON property `subscriptionType`
        # @return [String]
        attr_accessor :subscription_type
      
        # Optional. Suspended indicates if a user has suspended a connection or not.
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @config_variables = args[:config_variables] if args.key?(:config_variables)
          @connector_version = args[:connector_version] if args.key?(:connector_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_configs = args[:destination_configs] if args.key?(:destination_configs)
          @envoy_image_location = args[:envoy_image_location] if args.key?(:envoy_image_location)
          @image_location = args[:image_location] if args.key?(:image_location)
          @labels = args[:labels] if args.key?(:labels)
          @lock_config = args[:lock_config] if args.key?(:lock_config)
          @log_config = args[:log_config] if args.key?(:log_config)
          @name = args[:name] if args.key?(:name)
          @node_config = args[:node_config] if args.key?(:node_config)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_directory = args[:service_directory] if args.key?(:service_directory)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @status = args[:status] if args.key?(:status)
          @subscription_type = args[:subscription_type] if args.key?(:subscription_type)
          @suspended = args[:suspended] if args.key?(:suspended)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ConnectionSchemaMetadata is the singleton resource of each connection. It
      # includes the entity and action names of runtime resources exposed by a
      # connection backend.
      class ConnectionSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. List of actions.
        # Corresponds to the JSON property `actions`
        # @return [Array<String>]
        attr_accessor :actions
      
        # Output only. List of entity names.
        # Corresponds to the JSON property `entities`
        # @return [Array<String>]
        attr_accessor :entities
      
        # Output only. Resource name. Format: projects/`project`/locations/`location`/
        # connections/`connection`/connectionSchemaMetadata
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the connection runtime schema refresh was
        # triggered.
        # Corresponds to the JSON property `refreshTime`
        # @return [String]
        attr_accessor :refresh_time
      
        # Output only. The current state of runtime schema.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Timestamp when the connection runtime schema was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @entities = args[:entities] if args.key?(:entities)
          @name = args[:name] if args.key?(:name)
          @refresh_time = args[:refresh_time] if args.key?(:refresh_time)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ConnectionStatus indicates the state of the connection.
      class ConnectionStatus
        include Google::Apis::Core::Hashable
      
        # Description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # State.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Status provides detailed information for the state.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Connectors indicates a specific connector type, e.x. Salesforce, SAP etc.
      class Connector
        include Google::Apis::Core::Hashable
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Link to documentation page.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # Output only. Link to external page.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # Output only. Resource labels to represent user-provided metadata. Refer to
        # cloud documentation on labels for more details. https://cloud.google.com/
        # compute/docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Flag to mark the version indicating the launch stage.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Output only. Resource name of the Connector. Format: projects/`project`/
        # locations/`location`/providers/`provider`/connectors/`connector` Only global
        # location is supported for Connector resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Cloud storage location of icons etc consumed by UI.
        # Corresponds to the JSON property `webAssetsLocation`
        # @return [String]
        attr_accessor :web_assets_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @web_assets_location = args[:web_assets_location] if args.key?(:web_assets_location)
        end
      end
      
      # ConnectorVersion indicates a specific version of a connector.
      class ConnectorVersion
        include Google::Apis::Core::Hashable
      
        # Output only. List of auth configs supported by the Connector Version.
        # Corresponds to the JSON property `authConfigTemplates`
        # @return [Array<Google::Apis::ConnectorsV1::AuthConfigTemplate>]
        attr_accessor :auth_config_templates
      
        # Output only. List of config variables needed to create a connection.
        # Corresponds to the JSON property `configVariableTemplates`
        # @return [Array<Google::Apis::ConnectorsV1::ConfigVariableTemplate>]
        attr_accessor :config_variable_templates
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. List of destination configs needed to create a connection.
        # Corresponds to the JSON property `destinationConfigTemplates`
        # @return [Array<Google::Apis::ConnectorsV1::DestinationConfigTemplate>]
        attr_accessor :destination_config_templates
      
        # Output only. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Egress control config for connector runtime. These configurations define the
        # rules to identify which outbound domains/hosts needs to be whitelisted. It may
        # be a static information for a particular connector version or it is derived
        # from the configurations provided by the customer in Connection resource.
        # Corresponds to the JSON property `egressControlConfig`
        # @return [Google::Apis::ConnectorsV1::EgressControlConfig]
        attr_accessor :egress_control_config
      
        # Output only. Resource labels to represent user-provided metadata. Refer to
        # cloud documentation on labels for more details. https://cloud.google.com/
        # compute/docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Flag to mark the version indicating the launch stage.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Output only. Resource name of the Version. Format: projects/`project`/
        # locations/`location`/providers/`provider`/connectors/`connector`/versions/`
        # version` Only global location is supported for Connector resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. ReleaseVersion of the connector, for example: "1.0.1-alpha".
        # Corresponds to the JSON property `releaseVersion`
        # @return [String]
        attr_accessor :release_version
      
        # This configuration defines all the Cloud IAM roles that needs to be granted to
        # a particular GCP resource for the selected prinicpal like service account.
        # These configurations will let UI display to customers what IAM roles need to
        # be granted by them. Or these configurations can be used by the UI to render a '
        # grant' button to do the same on behalf of the user.
        # Corresponds to the JSON property `roleGrant`
        # @return [Google::Apis::ConnectorsV1::RoleGrant]
        attr_accessor :role_grant
      
        # Output only. Role grant configurations for this connector version.
        # Corresponds to the JSON property `roleGrants`
        # @return [Array<Google::Apis::ConnectorsV1::RoleGrant>]
        attr_accessor :role_grants
      
        # Ssl config details of a connector version
        # Corresponds to the JSON property `sslConfigTemplate`
        # @return [Google::Apis::ConnectorsV1::SslConfigTemplate]
        attr_accessor :ssl_config_template
      
        # Supported runtime features of a connector version. This is passed to the
        # management layer to add a new connector version by the connector developer.
        # Details about how this proto is passed to the management layer is covered in
        # this doc - go/runtime-manifest.
        # Corresponds to the JSON property `supportedRuntimeFeatures`
        # @return [Google::Apis::ConnectorsV1::SupportedRuntimeFeatures]
        attr_accessor :supported_runtime_features
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_config_templates = args[:auth_config_templates] if args.key?(:auth_config_templates)
          @config_variable_templates = args[:config_variable_templates] if args.key?(:config_variable_templates)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination_config_templates = args[:destination_config_templates] if args.key?(:destination_config_templates)
          @display_name = args[:display_name] if args.key?(:display_name)
          @egress_control_config = args[:egress_control_config] if args.key?(:egress_control_config)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @release_version = args[:release_version] if args.key?(:release_version)
          @role_grant = args[:role_grant] if args.key?(:role_grant)
          @role_grants = args[:role_grants] if args.key?(:role_grants)
          @ssl_config_template = args[:ssl_config_template] if args.key?(:ssl_config_template)
          @supported_runtime_features = args[:supported_runtime_features] if args.key?(:supported_runtime_features)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Log configuration for the connection.
      class ConnectorsLogConfig
        include Google::Apis::Core::Hashable
      
        # Enabled represents whether logging is enabled or not for a connection.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # 
      class Destination
        include Google::Apis::Core::Hashable
      
        # For publicly routable host.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The port is the target port number that is accepted by the destination.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @port = args[:port] if args.key?(:port)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # Define the Connectors target endpoint.
      class DestinationConfig
        include Google::Apis::Core::Hashable
      
        # The destinations for the key.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::ConnectorsV1::Destination>]
        attr_accessor :destinations
      
        # The key is the destination identifier that is supported by the Connector.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # DestinationConfigTemplate defines required destinations supported by the
      # Connector.
      class DestinationConfigTemplate
        include Google::Apis::Core::Hashable
      
        # The default port.
        # Corresponds to the JSON property `defaultPort`
        # @return [Fixnum]
        attr_accessor :default_port
      
        # Description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of the parameter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether the current destination tempalate is part of Advanced settings
        # Corresponds to the JSON property `isAdvanced`
        # @return [Boolean]
        attr_accessor :is_advanced
        alias_method :is_advanced?, :is_advanced
      
        # Key of the destination.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The maximum number of destinations supported for this key.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # The minimum number of destinations supported for this key.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        # Whether port number should be provided by customers.
        # Corresponds to the JSON property `portFieldType`
        # @return [String]
        attr_accessor :port_field_type
      
        # Regex pattern for host.
        # Corresponds to the JSON property `regexPattern`
        # @return [String]
        attr_accessor :regex_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_port = args[:default_port] if args.key?(:default_port)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_advanced = args[:is_advanced] if args.key?(:is_advanced)
          @key = args[:key] if args.key?(:key)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @port_field_type = args[:port_field_type] if args.key?(:port_field_type)
          @regex_pattern = args[:regex_pattern] if args.key?(:regex_pattern)
        end
      end
      
      # Egress control config for connector runtime. These configurations define the
      # rules to identify which outbound domains/hosts needs to be whitelisted. It may
      # be a static information for a particular connector version or it is derived
      # from the configurations provided by the customer in Connection resource.
      class EgressControlConfig
        include Google::Apis::Core::Hashable
      
        # Static Comma separated backends which are common for all Connection resources.
        # Supported formats for each backend are host:port or just host (host can be ip
        # address or domain name).
        # Corresponds to the JSON property `backends`
        # @return [String]
        attr_accessor :backends
      
        # Extraction Rules to identity the backends from customer provided configuration
        # in Connection resource.
        # Corresponds to the JSON property `extractionRules`
        # @return [Google::Apis::ConnectorsV1::ExtractionRules]
        attr_accessor :extraction_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backends = args[:backends] if args.key?(:backends)
          @extraction_rules = args[:extraction_rules] if args.key?(:extraction_rules)
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
      
      # represents the Connector's Endpoint Attachment resource
      class EndpointAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The Private Service Connect connection endpoint ip
        # Corresponds to the JSON property `endpointIp`
        # @return [String]
        attr_accessor :endpoint_ip
      
        # Optional. Resource labels to represent user-provided metadata. Refer to cloud
        # documentation on labels for more details. https://cloud.google.com/compute/
        # docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of the Endpoint Attachment. Format: projects/`
        # project`/locations/`location`/endpointAttachments/`endpoint_attachment`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The path of the service attachment
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @endpoint_ip = args[:endpoint_ip] if args.key?(:endpoint_ip)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # EnumOption definition
      class EnumOption
        include Google::Apis::Core::Hashable
      
        # Display name of the option.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Id of the option.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
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
      
      # Extraction Rule.
      class ExtractionRule
        include Google::Apis::Core::Hashable
      
        # Regex used to extract backend details from source. If empty, whole source
        # value will be used.
        # Corresponds to the JSON property `extractionRegex`
        # @return [String]
        attr_accessor :extraction_regex
      
        # Source to extract the backend from.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::ConnectorsV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extraction_regex = args[:extraction_regex] if args.key?(:extraction_regex)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Extraction Rules to identity the backends from customer provided configuration
      # in Connection resource.
      class ExtractionRules
        include Google::Apis::Core::Hashable
      
        # Collection of Extraction Rule.
        # Corresponds to the JSON property `extractionRule`
        # @return [Array<Google::Apis::ConnectorsV1::ExtractionRule>]
        attr_accessor :extraction_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extraction_rule = args[:extraction_rule] if args.key?(:extraction_rule)
        end
      end
      
      # Metadata of an entity field.
      class Field
        include Google::Apis::Core::Hashable
      
        # The following map contains fields that are not explicitly mentioned above,this
        # give connectors the flexibility to add new metadata fields.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The data type of the Field.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The following field specifies the default value of the Field provided by the
        # external system if a value is not provided.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A brief description of the Field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the Field.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # The following boolean field specifies if the current Field acts as a primary
        # key or id if the parent is of type entity.
        # Corresponds to the JSON property `key`
        # @return [Boolean]
        attr_accessor :key
        alias_method :key?, :key
      
        # Specifies whether a null value is allowed.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Specifies if the Field is readonly.
        # Corresponds to the JSON property `readonly`
        # @return [Boolean]
        attr_accessor :readonly
        alias_method :readonly?, :readonly
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
          @key = args[:key] if args.key?(:key)
          @nullable = args[:nullable] if args.key?(:nullable)
          @readonly = args[:readonly] if args.key?(:readonly)
        end
      end
      
      # Metadata of an input parameter.
      class InputParameter
        include Google::Apis::Core::Hashable
      
        # The data type of the Parameter.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The following field specifies the default value of the Parameter provided by
        # the external system if a value is not provided.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A brief description of the Parameter.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Specifies whether a null value is allowed.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Name of the Parameter.
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @nullable = args[:nullable] if args.key?(:nullable)
          @parameter = args[:parameter] if args.key?(:parameter)
        end
      end
      
      # JWT claims used for the jwt-bearer authorization grant.
      class JwtClaims
        include Google::Apis::Core::Hashable
      
        # Value for the "aud" claim.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Value for the "iss" claim.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Value for the "sub" claim.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @issuer = args[:issuer] if args.key?(:issuer)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Response message for ConnectorsService.ListConnections
      class ListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # Connections.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::ConnectorsV1::Connection>]
        attr_accessor :connections
      
        # Next page token.
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
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for Connectors.ListConnectorVersions.
      class ListConnectorVersionsResponse
        include Google::Apis::Core::Hashable
      
        # A list of connector versions.
        # Corresponds to the JSON property `connectorVersions`
        # @return [Array<Google::Apis::ConnectorsV1::ConnectorVersion>]
        attr_accessor :connector_versions
      
        # Next page token.
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
          @connector_versions = args[:connector_versions] if args.key?(:connector_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for Connectors.ListConnectors.
      class ListConnectorsResponse
        include Google::Apis::Core::Hashable
      
        # A list of connectors.
        # Corresponds to the JSON property `connectors`
        # @return [Array<Google::Apis::ConnectorsV1::Connector>]
        attr_accessor :connectors
      
        # Next page token.
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
          @connectors = args[:connectors] if args.key?(:connectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ConnectorsService.ListEndpointAttachments
      class ListEndpointAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # EndpointAttachments.
        # Corresponds to the JSON property `endpointAttachments`
        # @return [Array<Google::Apis::ConnectorsV1::EndpointAttachment>]
        attr_accessor :endpoint_attachments
      
        # Next page token.
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
          @endpoint_attachments = args[:endpoint_attachments] if args.key?(:endpoint_attachments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ConnectorsV1::Location>]
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
      
      # Response message for ConnectorsService.ListManagedZones
      class ListManagedZonesResponse
        include Google::Apis::Core::Hashable
      
        # ManagedZones.
        # Corresponds to the JSON property `managedZones`
        # @return [Array<Google::Apis::ConnectorsV1::ManagedZone>]
        attr_accessor :managed_zones
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
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
        # @return [Array<Google::Apis::ConnectorsV1::Operation>]
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
      
      # Response message for Connectors.ListProviders.
      class ListProvidersResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of providers.
        # Corresponds to the JSON property `providers`
        # @return [Array<Google::Apis::ConnectorsV1::Provider>]
        attr_accessor :providers
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @providers = args[:providers] if args.key?(:providers)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ConnectorsService.ListRuntimeActionSchemas.
      class ListRuntimeActionSchemasResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Runtime action schemas.
        # Corresponds to the JSON property `runtimeActionSchemas`
        # @return [Array<Google::Apis::ConnectorsV1::RuntimeActionSchema>]
        attr_accessor :runtime_action_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtime_action_schemas = args[:runtime_action_schemas] if args.key?(:runtime_action_schemas)
        end
      end
      
      # Response message for ConnectorsService.ListRuntimeEntitySchemas.
      class ListRuntimeEntitySchemasResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Runtime entity schemas.
        # Corresponds to the JSON property `runtimeEntitySchemas`
        # @return [Array<Google::Apis::ConnectorsV1::RuntimeEntitySchema>]
        attr_accessor :runtime_entity_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtime_entity_schemas = args[:runtime_entity_schemas] if args.key?(:runtime_entity_schemas)
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
      
      # Determines whether or no a connection is locked. If locked, a reason must be
      # specified.
      class LockConfig
        include Google::Apis::Core::Hashable
      
        # Indicates whether or not the connection is locked.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # Describes why a connection is locked.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locked = args[:locked] if args.key?(:locked)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # represents the Connector's Managed Zone resource
      class ManagedZone
        include Google::Apis::Core::Hashable
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. DNS Name of the resource
        # Corresponds to the JSON property `dns`
        # @return [String]
        attr_accessor :dns
      
        # Optional. Resource labels to represent user-provided metadata. Refer to cloud
        # documentation on labels for more details. https://cloud.google.com/compute/
        # docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of the Managed Zone. Format: projects/`project`/
        # locations/global/managedZones/`managed_zone`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name of the Target Project
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        # Required. The name of the Target Project VPC Network
        # Corresponds to the JSON property `targetVpc`
        # @return [String]
        attr_accessor :target_vpc
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @dns = args[:dns] if args.key?(:dns)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @target_project = args[:target_project] if args.key?(:target_project)
          @target_vpc = args[:target_vpc] if args.key?(:target_vpc)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Node configuration for the connection.
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # Maximum number of nodes in the runtime nodes.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Minimum number of nodes in the runtime nodes.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
        end
      end
      
      # Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://
      # www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
      class Oauth2AuthCodeFlow
        include Google::Apis::Core::Hashable
      
        # Authorization code to be exchanged for access and refresh tokens.
        # Corresponds to the JSON property `authCode`
        # @return [String]
        attr_accessor :auth_code
      
        # Client ID for user-provided OAuth app.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientSecret`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :client_secret
      
        # Whether to enable PKCE when the user performs the auth code flow.
        # Corresponds to the JSON property `enablePkce`
        # @return [Boolean]
        attr_accessor :enable_pkce
        alias_method :enable_pkce?, :enable_pkce
      
        # PKCE verifier to be used during the auth code exchange.
        # Corresponds to the JSON property `pkceVerifier`
        # @return [String]
        attr_accessor :pkce_verifier
      
        # Redirect URI to be provided during the auth code exchange.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # Scopes the connection will request when the user performs the auth code flow.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_code = args[:auth_code] if args.key?(:auth_code)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @enable_pkce = args[:enable_pkce] if args.key?(:enable_pkce)
          @pkce_verifier = args[:pkce_verifier] if args.key?(:pkce_verifier)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See
      # https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
      class Oauth2ClientCredentials
        include Google::Apis::Core::Hashable
      
        # The client identifier.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientSecret`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :client_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
        end
      end
      
      # Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization
      # Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more
      # details.
      class Oauth2JwtBearer
        include Google::Apis::Core::Hashable
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientKey`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :client_key
      
        # JWT claims used for the jwt-bearer authorization grant.
        # Corresponds to the JSON property `jwtClaims`
        # @return [Google::Apis::ConnectorsV1::JwtClaims]
        attr_accessor :jwt_claims
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_key = args[:client_key] if args.key?(:client_key)
          @jwt_claims = args[:jwt_claims] if args.key?(:jwt_claims)
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
        # @return [Google::Apis::ConnectorsV1::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
        # operation. Operations that have successfully been cancelled have Operation.
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::ConnectorsV1::AuditConfig>]
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
        # @return [Array<Google::Apis::ConnectorsV1::Binding>]
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
      
      # Provider indicates the owner who provides the connectors.
      class Provider
        include Google::Apis::Core::Hashable
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Link to documentation page.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # Output only. Link to external page.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # Output only. Resource labels to represent user-provided metadata. Refer to
        # cloud documentation on labels for more details. https://cloud.google.com/
        # compute/docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Flag to mark the version indicating the launch stage.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Output only. Resource name of the Provider. Format: projects/`project`/
        # locations/`location`/providers/`provider` Only global location is supported
        # for Provider resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Cloud storage location of icons etc consumed by UI.
        # Corresponds to the JSON property `webAssetsLocation`
        # @return [String]
        attr_accessor :web_assets_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @web_assets_location = args[:web_assets_location] if args.key?(:web_assets_location)
        end
      end
      
      # Request message for ConnectorsService.RefreshConnectionSchemaMetadata.
      class RefreshConnectionSchemaMetadataRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Resource definition
      class Resource
        include Google::Apis::Core::Hashable
      
        # Template to uniquely represent a GCP resource in a format IAM expects This is
        # a template that can have references to other values provided in the config
        # variable template.
        # Corresponds to the JSON property `pathTemplate`
        # @return [String]
        attr_accessor :path_template
      
        # Different types of resource supported.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path_template = args[:path_template] if args.key?(:path_template)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Metadata of result field.
      class ResultMetadata
        include Google::Apis::Core::Hashable
      
        # The data type of the field.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # A brief description of the field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the result field.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # This configuration defines all the Cloud IAM roles that needs to be granted to
      # a particular GCP resource for the selected prinicpal like service account.
      # These configurations will let UI display to customers what IAM roles need to
      # be granted by them. Or these configurations can be used by the UI to render a '
      # grant' button to do the same on behalf of the user.
      class RoleGrant
        include Google::Apis::Core::Hashable
      
        # Template that UI can use to provide helper text to customers.
        # Corresponds to the JSON property `helperTextTemplate`
        # @return [String]
        attr_accessor :helper_text_template
      
        # Prinicipal/Identity for whom the role need to assigned.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # Resource definition
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ConnectorsV1::Resource]
        attr_accessor :resource
      
        # List of roles that need to be granted.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @helper_text_template = args[:helper_text_template] if args.key?(:helper_text_template)
          @principal = args[:principal] if args.key?(:principal)
          @resource = args[:resource] if args.key?(:resource)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Schema of a runtime action.
      class RuntimeActionSchema
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the action.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. List of input parameter metadata for the action.
        # Corresponds to the JSON property `inputParameters`
        # @return [Array<Google::Apis::ConnectorsV1::InputParameter>]
        attr_accessor :input_parameters
      
        # Output only. List of result field metadata.
        # Corresponds to the JSON property `resultMetadata`
        # @return [Array<Google::Apis::ConnectorsV1::ResultMetadata>]
        attr_accessor :result_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @result_metadata = args[:result_metadata] if args.key?(:result_metadata)
        end
      end
      
      # RuntimeConfig is the singleton resource of each location. It includes generic
      # resource configs consumed by control plane and runtime plane like: pub/sub
      # topic/subscription resource name, Cloud Storage location storing schema etc.
      class RuntimeConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Pub/Sub subscription for connd to receive message. E.g. projects/`
        # project-id`/subscriptions/`topic-id`
        # Corresponds to the JSON property `conndSubscription`
        # @return [String]
        attr_accessor :connd_subscription
      
        # Output only. Pub/Sub topic for connd to send message. E.g. projects/`project-
        # id`/topics/`topic-id`
        # Corresponds to the JSON property `conndTopic`
        # @return [String]
        attr_accessor :connd_topic
      
        # Output only. Pub/Sub subscription for control plane to receive message. E.g.
        # projects/`project-id`/subscriptions/`topic-id`
        # Corresponds to the JSON property `controlPlaneSubscription`
        # @return [String]
        attr_accessor :control_plane_subscription
      
        # Output only. Pub/Sub topic for control plne to send message. communication. E.
        # g. projects/`project-id`/topics/`topic-id`
        # Corresponds to the JSON property `controlPlaneTopic`
        # @return [String]
        attr_accessor :control_plane_topic
      
        # Output only. location_id of the runtime location. E.g. "us-west1".
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Output only. Name of the runtimeConfig resource. Format: projects/`project`/
        # locations/`location`/runtimeConfig
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The endpoint of the connectors runtime ingress.
        # Corresponds to the JSON property `runtimeEndpoint`
        # @return [String]
        attr_accessor :runtime_endpoint
      
        # Output only. The Cloud Storage bucket that stores connector's schema reports.
        # Corresponds to the JSON property `schemaGcsBucket`
        # @return [String]
        attr_accessor :schema_gcs_bucket
      
        # Output only. The name of the Service Directory service name.
        # Corresponds to the JSON property `serviceDirectory`
        # @return [String]
        attr_accessor :service_directory
      
        # Output only. The state of the location.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connd_subscription = args[:connd_subscription] if args.key?(:connd_subscription)
          @connd_topic = args[:connd_topic] if args.key?(:connd_topic)
          @control_plane_subscription = args[:control_plane_subscription] if args.key?(:control_plane_subscription)
          @control_plane_topic = args[:control_plane_topic] if args.key?(:control_plane_topic)
          @location_id = args[:location_id] if args.key?(:location_id)
          @name = args[:name] if args.key?(:name)
          @runtime_endpoint = args[:runtime_endpoint] if args.key?(:runtime_endpoint)
          @schema_gcs_bucket = args[:schema_gcs_bucket] if args.key?(:schema_gcs_bucket)
          @service_directory = args[:service_directory] if args.key?(:service_directory)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Schema of a runtime entity.
      class RuntimeEntitySchema
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the entity.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Output only. List of fields in the entity.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::ConnectorsV1::Field>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Secret provides a reference to entries in Secret Manager.
      class Secret
        include Google::Apis::Core::Hashable
      
        # The resource name of the secret version in the format, format as: `projects/*/
        # secrets/*/versions/*`.
        # Corresponds to the JSON property `secretVersion`
        # @return [String]
        attr_accessor :secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_version = args[:secret_version] if args.key?(:secret_version)
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ConnectorsV1::Policy]
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
      
      # Global Settings details.
      class Settings
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of the Connection. Format: projects/`project`/
        # locations/global/settings`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Flag indicates if user is in PayG model
        # Corresponds to the JSON property `payg`
        # @return [Boolean]
        attr_accessor :payg
        alias_method :payg?, :payg
      
        # Optional. Flag indicates whether vpc-sc is enabled.
        # Corresponds to the JSON property `vpcsc`
        # @return [Boolean]
        attr_accessor :vpcsc
        alias_method :vpcsc?, :vpcsc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @payg = args[:payg] if args.key?(:payg)
          @vpcsc = args[:vpcsc] if args.key?(:vpcsc)
        end
      end
      
      # Source to extract the backend from.
      class Source
        include Google::Apis::Core::Hashable
      
        # Field identifier. For example config vaiable name.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Type of the source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Parameters to support Ssh public key Authentication.
      class SshPublicKey
        include Google::Apis::Core::Hashable
      
        # Format of SSH Client cert.
        # Corresponds to the JSON property `certType`
        # @return [String]
        attr_accessor :cert_type
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `sshClientCert`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :ssh_client_cert
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `sshClientCertPass`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :ssh_client_cert_pass
      
        # The user account used to authenticate.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_type = args[:cert_type] if args.key?(:cert_type)
          @ssh_client_cert = args[:ssh_client_cert] if args.key?(:ssh_client_cert)
          @ssh_client_cert_pass = args[:ssh_client_cert_pass] if args.key?(:ssh_client_cert_pass)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # SSL Configuration of a connection
      class SslConfig
        include Google::Apis::Core::Hashable
      
        # Additional SSL related field values
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::ConnectorsV1::ConfigVariable>]
        attr_accessor :additional_variables
      
        # Type of Client Cert (PEM/JKS/.. etc.)
        # Corresponds to the JSON property `clientCertType`
        # @return [String]
        attr_accessor :client_cert_type
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientCertificate`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :client_certificate
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientPrivateKey`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :client_private_key
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientPrivateKeyPass`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :client_private_key_pass
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `privateServerCertificate`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :private_server_certificate
      
        # Type of Server Cert (PEM/JKS/.. etc.)
        # Corresponds to the JSON property `serverCertType`
        # @return [String]
        attr_accessor :server_cert_type
      
        # Trust Model of the SSL connection
        # Corresponds to the JSON property `trustModel`
        # @return [String]
        attr_accessor :trust_model
      
        # Controls the ssl type for the given connector version.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Bool for enabling SSL
        # Corresponds to the JSON property `useSsl`
        # @return [Boolean]
        attr_accessor :use_ssl
        alias_method :use_ssl?, :use_ssl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @client_cert_type = args[:client_cert_type] if args.key?(:client_cert_type)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_private_key = args[:client_private_key] if args.key?(:client_private_key)
          @client_private_key_pass = args[:client_private_key_pass] if args.key?(:client_private_key_pass)
          @private_server_certificate = args[:private_server_certificate] if args.key?(:private_server_certificate)
          @server_cert_type = args[:server_cert_type] if args.key?(:server_cert_type)
          @trust_model = args[:trust_model] if args.key?(:trust_model)
          @type = args[:type] if args.key?(:type)
          @use_ssl = args[:use_ssl] if args.key?(:use_ssl)
        end
      end
      
      # Ssl config details of a connector version
      class SslConfigTemplate
        include Google::Apis::Core::Hashable
      
        # Any additional fields that need to be rendered
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::ConnectorsV1::ConfigVariableTemplate>]
        attr_accessor :additional_variables
      
        # List of supported Client Cert Types
        # Corresponds to the JSON property `clientCertType`
        # @return [Array<String>]
        attr_accessor :client_cert_type
      
        # Boolean for determining if the connector version mandates TLS.
        # Corresponds to the JSON property `isTlsMandatory`
        # @return [Boolean]
        attr_accessor :is_tls_mandatory
        alias_method :is_tls_mandatory?, :is_tls_mandatory
      
        # List of supported Server Cert Types
        # Corresponds to the JSON property `serverCertType`
        # @return [Array<String>]
        attr_accessor :server_cert_type
      
        # Controls the ssl type for the given connector version
        # Corresponds to the JSON property `sslType`
        # @return [String]
        attr_accessor :ssl_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @client_cert_type = args[:client_cert_type] if args.key?(:client_cert_type)
          @is_tls_mandatory = args[:is_tls_mandatory] if args.key?(:is_tls_mandatory)
          @server_cert_type = args[:server_cert_type] if args.key?(:server_cert_type)
          @ssl_type = args[:ssl_type] if args.key?(:ssl_type)
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
      
      # Supported runtime features of a connector version. This is passed to the
      # management layer to add a new connector version by the connector developer.
      # Details about how this proto is passed to the management layer is covered in
      # this doc - go/runtime-manifest.
      class SupportedRuntimeFeatures
        include Google::Apis::Core::Hashable
      
        # Specifies if the connector supports action apis like 'executeAction'.
        # Corresponds to the JSON property `actionApis`
        # @return [Boolean]
        attr_accessor :action_apis
        alias_method :action_apis?, :action_apis
      
        # Specifies if the connector supports entity apis like 'createEntity'.
        # Corresponds to the JSON property `entityApis`
        # @return [Boolean]
        attr_accessor :entity_apis
        alias_method :entity_apis?, :entity_apis
      
        # Specifies if the connector supports 'ExecuteSqlQuery' operation.
        # Corresponds to the JSON property `sqlQuery`
        # @return [Boolean]
        attr_accessor :sql_query
        alias_method :sql_query?, :sql_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_apis = args[:action_apis] if args.key?(:action_apis)
          @entity_apis = args[:entity_apis] if args.key?(:entity_apis)
          @sql_query = args[:sql_query] if args.key?(:sql_query)
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
      
      # Parameters to support Username and Password Authentication.
      class UserPassword
        include Google::Apis::Core::Hashable
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::ConnectorsV1::Secret]
        attr_accessor :password
      
        # Username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
    end
  end
end
