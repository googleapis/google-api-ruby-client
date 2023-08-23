# Copyright 2015 Google Inc.
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
    module ServiceconsumermanagementV1
      
      # Request to add a newly created and configured tenant project to a tenancy unit.
      class AddTenantProjectRequest
        include Google::Apis::Core::Hashable
      
        # This structure defines a tenant project to be added to the specified tenancy
        # unit and its initial configuration and properties. A project lien is created
        # for the tenant project to prevent the tenant project from being deleted
        # accidentally. The lien is deleted as part of tenant project removal.
        # Corresponds to the JSON property `projectConfig`
        # @return [Google::Apis::ServiceconsumermanagementV1::TenantProjectConfig]
        attr_accessor :project_config
      
        # Required. Tag of the added project. Must be less than 128 characters. Required.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_config = args[:project_config] if args.key?(:project_config)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Api is a light-weight descriptor for an API Interface. Interfaces are also
      # described as "protocol buffer services" in some contexts, such as by the "
      # service" keyword in a .proto file, but they are different from API Services,
      # which represent a concrete implementation of an interface as opposed to simply
      # a description of methods and bindings. They are also sometimes simply referred
      # to as "APIs" in other contexts, such as the name of this message itself. See
      # https://cloud.google.com/apis/design/glossary for detailed terminology.
      class Api
        include Google::Apis::Core::Hashable
      
        # The methods of this interface, in unspecified order.
        # Corresponds to the JSON property `methods`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::MethodProp>]
        attr_accessor :methods_prop
      
        # Included interfaces. See Mixin.
        # Corresponds to the JSON property `mixins`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Mixin>]
        attr_accessor :mixins
      
        # The fully qualified name of this interface, including package name followed by
        # the interface's simple name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Any metadata attached to the interface.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Option>]
        attr_accessor :options
      
        # `SourceContext` represents information about the source of a protobuf element,
        # like the file in which it is defined.
        # Corresponds to the JSON property `sourceContext`
        # @return [Google::Apis::ServiceconsumermanagementV1::SourceContext]
        attr_accessor :source_context
      
        # The source syntax of the service.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        # A version string for this interface. If specified, must have the form `major-
        # version.minor-version`, as in `1.10`. If the minor version is omitted, it
        # defaults to zero. If the entire version field is empty, the major version is
        # derived from the package name, as outlined below. If the field is not empty,
        # the version in the package name will be verified to be consistent with what is
        # provided here. The versioning schema uses [semantic versioning](http://semver.
        # org) where the major version number indicates a breaking change and the minor
        # version an additive, non-breaking change. Both version numbers are signals to
        # users what to expect from different versions, and should be carefully chosen
        # based on the product plan. The major version is also reflected in the package
        # name of the interface, which must end in `v`, as in `google.feature.v1`. For
        # major versions 0 and 1, the suffix can be omitted. Zero major versions must
        # only be used for experimental, non-GA interfaces.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @mixins = args[:mixins] if args.key?(:mixins)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request to apply configuration to an existing tenant project.
      class ApplyTenantProjectConfigRequest
        include Google::Apis::Core::Hashable
      
        # This structure defines a tenant project to be added to the specified tenancy
        # unit and its initial configuration and properties. A project lien is created
        # for the tenant project to prevent the tenant project from being deleted
        # accidentally. The lien is deleted as part of tenant project removal.
        # Corresponds to the JSON property `projectConfig`
        # @return [Google::Apis::ServiceconsumermanagementV1::TenantProjectConfig]
        attr_accessor :project_config
      
        # Required. Tag of the project. Must be less than 128 characters. Required.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_config = args[:project_config] if args.key?(:project_config)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Request to attach an existing project to the tenancy unit as a new tenant
      # resource.
      class AttachTenantProjectRequest
        include Google::Apis::Core::Hashable
      
        # When attaching an external project, this is in the format of `projects/`
        # project_number``.
        # Corresponds to the JSON property `externalResource`
        # @return [String]
        attr_accessor :external_resource
      
        # When attaching a reserved project already in tenancy units, this is the tag of
        # a tenant resource under the tenancy unit for the managed service's service
        # producer project. The reserved tenant resource must be in an active state.
        # Corresponds to the JSON property `reservedResource`
        # @return [String]
        attr_accessor :reserved_resource
      
        # Required. Tag of the tenant resource after attachment. Must be less than 128
        # characters. Required.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_resource = args[:external_resource] if args.key?(:external_resource)
          @reserved_resource = args[:reserved_resource] if args.key?(:reserved_resource)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Configuration for an authentication provider, including support for [JSON Web
      # Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
      class AuthProvider
        include Google::Apis::Core::Hashable
      
        # The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-
        # web-token-32#section-4.1.3). that are allowed to access. A JWT containing any
        # of these audiences will be accepted. When this setting is absent, JWTs with
        # audiences: - "https://[service.name]/[google.protobuf.Api.name]" - "https://[
        # service.name]/" will be accepted. For example, if no audiences are in the
        # setting, LibraryService API will accept JWTs with the following audiences: -
        # https://library-example.googleapis.com/google.example.library.v1.
        # LibraryService - https://library-example.googleapis.com/ Example: audiences:
        # bookstore_android.apps.googleusercontent.com, bookstore_web.apps.
        # googleusercontent.com
        # Corresponds to the JSON property `audiences`
        # @return [String]
        attr_accessor :audiences
      
        # Redirect URL if JWT token is required but not present or is expired. Implement
        # authorizationUrl of securityDefinitions in OpenAPI spec.
        # Corresponds to the JSON property `authorizationUrl`
        # @return [String]
        attr_accessor :authorization_url
      
        # The unique identifier of the auth provider. It will be referred to by `
        # AuthRequirement.provider_id`. Example: "bookstore_auth".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies the principal that issued the JWT. See https://tools.ietf.org/html/
        # draft-ietf-oauth-json-web-token-32#section-4.1.1 Usually a URL or an email
        # address. Example: https://securetoken.google.com Example: 1234567-compute@
        # developer.gserviceaccount.com
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # URL of the provider's public key set to validate signature of the JWT. See [
        # OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#
        # ProviderMetadata). Optional if the key set document: - can be retrieved from [
        # OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html)
        # of the issuer. - can be inferred from the email domain of the issuer (e.g. a
        # Google service account). Example: https://www.googleapis.com/oauth2/v1/certs
        # Corresponds to the JSON property `jwksUri`
        # @return [String]
        attr_accessor :jwks_uri
      
        # Defines the locations to extract the JWT. JWT locations can be either from
        # HTTP headers or URL query parameters. The rule is that the first match wins.
        # The checking order is: checking all headers first, then URL query parameters.
        # If not specified, default to use following 3 locations: 1) Authorization:
        # Bearer 2) x-goog-iap-jwt-assertion 3) access_token query parameter Default
        # locations can be specified as followings: jwt_locations: - header:
        # Authorization value_prefix: "Bearer " - header: x-goog-iap-jwt-assertion -
        # query: access_token
        # Corresponds to the JSON property `jwtLocations`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::JwtLocation>]
        attr_accessor :jwt_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audiences = args[:audiences] if args.key?(:audiences)
          @authorization_url = args[:authorization_url] if args.key?(:authorization_url)
          @id = args[:id] if args.key?(:id)
          @issuer = args[:issuer] if args.key?(:issuer)
          @jwks_uri = args[:jwks_uri] if args.key?(:jwks_uri)
          @jwt_locations = args[:jwt_locations] if args.key?(:jwt_locations)
        end
      end
      
      # User-defined authentication requirements, including support for [JSON Web
      # Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
      class AuthRequirement
        include Google::Apis::Core::Hashable
      
        # NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented
        # and accepted in all the runtime components. The list of JWT [audiences](https:/
        # /tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that
        # are allowed to access. A JWT containing any of these audiences will be
        # accepted. When this setting is absent, only JWTs with audience "https://
        # Service_name/API_name" will be accepted. For example, if no audiences are in
        # the setting, LibraryService API will only accept JWTs with the following
        # audience "https://library-example.googleapis.com/google.example.library.v1.
        # LibraryService". Example: audiences: bookstore_android.apps.googleusercontent.
        # com, bookstore_web.apps.googleusercontent.com
        # Corresponds to the JSON property `audiences`
        # @return [String]
        attr_accessor :audiences
      
        # id from authentication provider. Example: provider_id: bookstore_auth
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audiences = args[:audiences] if args.key?(:audiences)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
        end
      end
      
      # `Authentication` defines the authentication configuration for an API. Example
      # for an API targeted for external use: name: calendar.googleapis.com
      # authentication: providers: - id: google_calendar_auth jwks_uri: https://www.
      # googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: -
      # selector: "*" requirements: provider_id: google_calendar_auth
      class Authentication
        include Google::Apis::Core::Hashable
      
        # Defines a set of authentication providers that a service supports.
        # Corresponds to the JSON property `providers`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::AuthProvider>]
        attr_accessor :providers
      
        # A list of authentication rules that apply to individual API methods. **NOTE:**
        # All service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::AuthenticationRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @providers = args[:providers] if args.key?(:providers)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Authentication rules for the service. By default, if a method has any
      # authentication requirements, every request must include a valid credential
      # matching one of the requirements. It's an error to include more than one kind
      # of credential in a single request. If a method doesn't have any auth
      # requirements, request credentials will be ignored.
      class AuthenticationRule
        include Google::Apis::Core::Hashable
      
        # If true, the service accepts API keys without any other credential. This flag
        # only applies to HTTP and gRPC requests.
        # Corresponds to the JSON property `allowWithoutCredential`
        # @return [Boolean]
        attr_accessor :allow_without_credential
        alias_method :allow_without_credential?, :allow_without_credential
      
        # OAuth scopes are a way to define data and permissions on data. For example,
        # there are scopes defined for "Read-only access to Google Calendar" and "Access
        # to Cloud Platform". Users can consent to a scope for an application, giving it
        # permission to access that data on their behalf. OAuth scope specifications
        # should be fairly coarse grained; a user will need to see and understand the
        # text description of what your scope means. In most cases: use one or at most
        # two OAuth scopes for an entire family of products. If your product has
        # multiple APIs, you should probably be sharing the OAuth scope across all of
        # those APIs. When you need finer grained OAuth consent screens: talk with your
        # product management about how developers will use them in practice. Please note
        # that even though each of the canonical scopes is enough for a request to be
        # accepted and passed to the backend, a request can still fail due to the
        # backend requiring additional scopes or permissions.
        # Corresponds to the JSON property `oauth`
        # @return [Google::Apis::ServiceconsumermanagementV1::OAuthRequirements]
        attr_accessor :oauth
      
        # Requirements for additional authentication providers.
        # Corresponds to the JSON property `requirements`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::AuthRequirement>]
        attr_accessor :requirements
      
        # Selects the methods to which this rule applies. Refer to selector for syntax
        # details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_without_credential = args[:allow_without_credential] if args.key?(:allow_without_credential)
          @oauth = args[:oauth] if args.key?(:oauth)
          @requirements = args[:requirements] if args.key?(:requirements)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # `Backend` defines the backend configuration for a service.
      class Backend
        include Google::Apis::Core::Hashable
      
        # A list of API backend rules that apply to individual API methods. **NOTE:**
        # All service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::BackendRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # A backend rule provides configuration for an individual API element.
      class BackendRule
        include Google::Apis::Core::Hashable
      
        # The address of the API backend. The scheme is used to determine the backend
        # protocol and security. The following schemes are accepted: SCHEME PROTOCOL
        # SECURITY http:// HTTP None https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC
        # TLS It is recommended to explicitly include a scheme. Leaving out the scheme
        # may cause constrasting behaviors across platforms. If the port is unspecified,
        # the default is: - 80 for schemes without TLS - 443 for schemes with TLS For
        # HTTP backends, use protocol to specify the protocol version.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The number of seconds to wait for a response from a request. The default
        # varies based on the request protocol and deployment environment.
        # Corresponds to the JSON property `deadline`
        # @return [Float]
        attr_accessor :deadline
      
        # When disable_auth is true, a JWT ID token won't be generated and the original "
        # Authorization" HTTP header will be preserved. If the header is used to carry
        # the original token and is expected by the backend, this field must be set to
        # true to preserve the header.
        # Corresponds to the JSON property `disableAuth`
        # @return [Boolean]
        attr_accessor :disable_auth
        alias_method :disable_auth?, :disable_auth
      
        # The JWT audience is used when generating a JWT ID token for the backend. This
        # ID token will be added in the HTTP "authorization" header, and sent to the
        # backend.
        # Corresponds to the JSON property `jwtAudience`
        # @return [String]
        attr_accessor :jwt_audience
      
        # Minimum deadline in seconds needed for this method. Calls having deadline
        # value lower than this will be rejected.
        # Corresponds to the JSON property `minDeadline`
        # @return [Float]
        attr_accessor :min_deadline
      
        # The number of seconds to wait for the completion of a long running operation.
        # The default is no deadline.
        # Corresponds to the JSON property `operationDeadline`
        # @return [Float]
        attr_accessor :operation_deadline
      
        # 
        # Corresponds to the JSON property `pathTranslation`
        # @return [String]
        attr_accessor :path_translation
      
        # The protocol used for sending a request to the backend. The supported values
        # are "http/1.1" and "h2". The default value is inferred from the scheme in the
        # address field: SCHEME PROTOCOL http:// http/1.1 https:// http/1.1 grpc:// h2
        # grpcs:// h2 For secure HTTP backends (https://) that support HTTP/2, set this
        # field to "h2" for improved performance. Configuring this field to non-default
        # values is only supported for secure HTTP backends. This field will be ignored
        # for all other backends. See https://www.iana.org/assignments/tls-extensiontype-
        # values/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on
        # the supported values.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Selects the methods to which this rule applies. Refer to selector for syntax
        # details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @deadline = args[:deadline] if args.key?(:deadline)
          @disable_auth = args[:disable_auth] if args.key?(:disable_auth)
          @jwt_audience = args[:jwt_audience] if args.key?(:jwt_audience)
          @min_deadline = args[:min_deadline] if args.key?(:min_deadline)
          @operation_deadline = args[:operation_deadline] if args.key?(:operation_deadline)
          @path_translation = args[:path_translation] if args.key?(:path_translation)
          @protocol = args[:protocol] if args.key?(:protocol)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # Billing related configuration of the service. The following example shows how
      # to configure monitored resources and metrics for billing, `
      # consumer_destinations` is the only supported destination and the monitored
      # resources need at least one label key `cloud.googleapis.com/location` to
      # indicate the location of the billing usage, using different monitored
      # resources between monitoring and billing is recommended so they can be evolved
      # independently: monitored_resources: - type: library.googleapis.com/
      # billing_branch labels: - key: cloud.googleapis.com/location description: |
      # Predefined label to support billing location restriction. - key: city
      # description: | Custom label to define the city where the library branch is
      # located in. - key: name description: Custom label to define the name of the
      # library branch. metrics: - name: library.googleapis.com/book/borrowed_count
      # metric_kind: DELTA value_type: INT64 unit: "1" billing: consumer_destinations:
      # - monitored_resource: library.googleapis.com/billing_branch metrics: - library.
      # googleapis.com/book/borrowed_count
      class Billing
        include Google::Apis::Core::Hashable
      
        # Billing configurations for sending metrics to the consumer project. There can
        # be multiple consumer destinations per service, each one must have a different
        # monitored resource type. A metric can be used in at most one consumer
        # destination.
        # Corresponds to the JSON property `consumerDestinations`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::BillingDestination>]
        attr_accessor :consumer_destinations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_destinations = args[:consumer_destinations] if args.key?(:consumer_destinations)
        end
      end
      
      # Describes the billing configuration for a new tenant project.
      class BillingConfig
        include Google::Apis::Core::Hashable
      
        # Name of the billing account. For example `billingAccounts/012345-567890-ABCDEF`
        # .
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
        end
      end
      
      # Configuration of a specific billing destination (Currently only support bill
      # against consumer project).
      class BillingDestination
        include Google::Apis::Core::Hashable
      
        # Names of the metrics to report to this billing destination. Each name must be
        # defined in Service.metrics section.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # The monitored resource type. The type must be defined in Service.
        # monitored_resources section.
        # Corresponds to the JSON property `monitoredResource`
        # @return [String]
        attr_accessor :monitored_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @monitored_resource = args[:monitored_resource] if args.key?(:monitored_resource)
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
      
      # `Context` defines which contexts an API requests. Example: context: rules: -
      # selector: "*" requested: - google.rpc.context.ProjectContext - google.rpc.
      # context.OriginContext The above specifies that all methods in the API request `
      # google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`.
      # Available context types are defined in package `google.rpc.context`. This also
      # provides mechanism to allowlist any protobuf message extension that can be
      # sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format.
      # For example, list any service specific protobuf types that can appear in grpc
      # metadata as follows in your yaml file: Example: context: rules: - selector: "
      # google.example.library.v1.LibraryService.CreateBook"
      # allowed_request_extensions: - google.foo.v1.NewExtension
      # allowed_response_extensions: - google.foo.v1.NewExtension You can also specify
      # extension ID instead of fully qualified extension name here.
      class Context
        include Google::Apis::Core::Hashable
      
        # A list of RPC context rules that apply to individual API methods. **NOTE:**
        # All service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::ContextRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # A context rule provides information about the context for an individual API
      # element.
      class ContextRule
        include Google::Apis::Core::Hashable
      
        # A list of full type names or extension IDs of extensions allowed in grpc side
        # channel from client to backend.
        # Corresponds to the JSON property `allowedRequestExtensions`
        # @return [Array<String>]
        attr_accessor :allowed_request_extensions
      
        # A list of full type names or extension IDs of extensions allowed in grpc side
        # channel from backend to client.
        # Corresponds to the JSON property `allowedResponseExtensions`
        # @return [Array<String>]
        attr_accessor :allowed_response_extensions
      
        # A list of full type names of provided contexts.
        # Corresponds to the JSON property `provided`
        # @return [Array<String>]
        attr_accessor :provided
      
        # A list of full type names of requested contexts.
        # Corresponds to the JSON property `requested`
        # @return [Array<String>]
        attr_accessor :requested
      
        # Selects the methods to which this rule applies. Refer to selector for syntax
        # details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_request_extensions = args[:allowed_request_extensions] if args.key?(:allowed_request_extensions)
          @allowed_response_extensions = args[:allowed_response_extensions] if args.key?(:allowed_response_extensions)
          @provided = args[:provided] if args.key?(:provided)
          @requested = args[:requested] if args.key?(:requested)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # Selects and configures the service controller used by the service. The service
      # controller handles features like abuse, quota, billing, logging, monitoring,
      # etc.
      class Control
        include Google::Apis::Core::Hashable
      
        # The service control environment to use. If empty, no control plane feature (
        # like quota and billing) will be enabled.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # Request to create a tenancy unit for a service consumer of a managed service.
      class CreateTenancyUnitRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Optional service producer-provided identifier of the tenancy unit.
        # Must be no longer than 40 characters and preferably URI friendly. If it isn't
        # provided, a UID for the tenancy unit is automatically generated. The
        # identifier must be unique across a managed service. If the tenancy unit
        # already exists for the managed service and service consumer pair, calling `
        # CreateTenancyUnit` returns the existing tenancy unit if the provided
        # identifier is identical or empty, otherwise the call fails.
        # Corresponds to the JSON property `tenancyUnitId`
        # @return [String]
        attr_accessor :tenancy_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tenancy_unit_id = args[:tenancy_unit_id] if args.key?(:tenancy_unit_id)
        end
      end
      
      # Customize service error responses. For example, list any service specific
      # protobuf types that can appear in error detail lists of error responses.
      # Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.
      # AnotherError
      class CustomError
        include Google::Apis::Core::Hashable
      
        # The list of custom error rules that apply to individual API messages. **NOTE:**
        # All service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::CustomErrorRule>]
        attr_accessor :rules
      
        # The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # A custom error rule.
      class CustomErrorRule
        include Google::Apis::Core::Hashable
      
        # Mark this message as possible payload in error response. Otherwise, objects of
        # this type will be filtered when they appear in error payload.
        # Corresponds to the JSON property `isErrorType`
        # @return [Boolean]
        attr_accessor :is_error_type
        alias_method :is_error_type?, :is_error_type
      
        # Selects messages to which this rule applies. Refer to selector for syntax
        # details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_error_type = args[:is_error_type] if args.key?(:is_error_type)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # A custom pattern is used for defining custom HTTP verb.
      class CustomHttpPattern
        include Google::Apis::Core::Hashable
      
        # The name of this custom HTTP verb.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The path matched by this custom verb.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Request message to delete tenant project resource from the tenancy unit.
      class DeleteTenantProjectRequest
        include Google::Apis::Core::Hashable
      
        # Required. Tag of the resource within the tenancy unit.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # `Documentation` provides the information for describing a service. Example:
      # documentation: summary: > The Google Calendar API gives access to most
      # calendar features. pages: - name: Overview content: (== include google/foo/
      # overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==
      # ) subpages; - name: Java content: (== include google/foo/tutorial_java.md ==)
      # rules: - selector: google.calendar.Calendar.Get description: > ... - selector:
      # google.calendar.Calendar.Put description: > ... Documentation is provided in
      # markdown syntax. In addition to standard markdown features, definition lists,
      # tables and fenced code blocks are supported. Section headers can be provided
      # and are interpreted relative to the section nesting of the context where a
      # documentation fragment is embedded. Documentation from the IDL is merged with
      # documentation defined via the config at normalization time, where
      # documentation provided by config rules overrides IDL provided. A number of
      # constructs specific to the API platform are supported in documentation text.
      # In order to reference a proto element, the following notation can be used: [
      # fully.qualified.proto.name][] To override the display text used for the link,
      # this can be used: [display text][fully.qualified.proto.name] Text can be
      # excluded from doc using the following notation: (-- internal comment --) A few
      # directives are available in documentation. Note that directives must appear on
      # a single line to be properly identified. The `include` directive includes a
      # markdown file from an external source: (== include path/to/file ==) The `
      # resource_for` directive marks a message to be the resource of a collection in
      # REST view. If it is not specified, tools attempt to infer the resource from
      # the operations in a collection: (== resource_for v1.shelves.books ==) The
      # directive `suppress_warning` does not directly affect documentation and is
      # documented together with service config validation.
      class Documentation
        include Google::Apis::Core::Hashable
      
        # The URL to the root of documentation.
        # Corresponds to the JSON property `documentationRootUrl`
        # @return [String]
        attr_accessor :documentation_root_url
      
        # Declares a single overview page. For example: documentation: summary: ...
        # overview: (== include overview.md ==) This is a shortcut for the following
        # declaration (using pages style): documentation: summary: ... pages: - name:
        # Overview content: (== include overview.md ==) Note: you cannot specify both `
        # overview` field and `pages` field.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        # The top level pages for the documentation set.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Page>]
        attr_accessor :pages
      
        # A list of documentation rules that apply to individual API elements. **NOTE:**
        # All service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::DocumentationRule>]
        attr_accessor :rules
      
        # Specifies the service root url if the default one (the service name from the
        # yaml file) is not suitable. This can be seen in any fully specified service
        # urls as well as sections that show a base that other urls are relative to.
        # Corresponds to the JSON property `serviceRootUrl`
        # @return [String]
        attr_accessor :service_root_url
      
        # A short summary of what the service does. Can only be provided by plain text.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documentation_root_url = args[:documentation_root_url] if args.key?(:documentation_root_url)
          @overview = args[:overview] if args.key?(:overview)
          @pages = args[:pages] if args.key?(:pages)
          @rules = args[:rules] if args.key?(:rules)
          @service_root_url = args[:service_root_url] if args.key?(:service_root_url)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # A documentation rule provides information about individual API elements.
      class DocumentationRule
        include Google::Apis::Core::Hashable
      
        # Deprecation description of the selected element(s). It can be provided if an
        # element is marked as `deprecated`.
        # Corresponds to the JSON property `deprecationDescription`
        # @return [String]
        attr_accessor :deprecation_description
      
        # Description of the selected API(s).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The selector is a comma-separated list of patterns. Each pattern is a
        # qualified name of the element which may end in "*", indicating a wildcard.
        # Wildcards are only allowed at the end and for a whole component of the
        # qualified name, i.e. "foo.*" is ok, but not "foo.b*" or "foo.*.bar". A
        # wildcard will match one or more components. To specify a default for all
        # applicable elements, the whole pattern "*" is used.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecation_description = args[:deprecation_description] if args.key?(:deprecation_description)
          @description = args[:description] if args.key?(:description)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # `Endpoint` describes a network endpoint that serves a set of APIs. A service
      # may expose any number of endpoints, and all endpoints share the same service
      # configuration, such as quota configuration and monitoring configuration.
      # Example service configuration: name: library-example.googleapis.com endpoints:
      # # Below entry makes 'google.example.library.v1.Library' # API be served from
      # endpoint address library-example.googleapis.com. # It also allows HTTP OPTIONS
      # calls to be passed to the backend, for # it to decide whether the subsequent
      # cross-origin request is # allowed to proceed. - name: library-example.
      # googleapis.com allow_cors: true
      class Endpoint
        include Google::Apis::Core::Hashable
      
        # DEPRECATED: This field is no longer supported. Instead of using aliases,
        # please specify multiple google.api.Endpoint for each of the intended aliases.
        # Additional names that this endpoint will be hosted on.
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # Allowing [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing),
        # aka cross-domain traffic, would allow the backends served from this endpoint
        # to receive and respond to HTTP OPTIONS requests. The response will be used by
        # the browser to determine whether the subsequent cross-origin request is
        # allowed to proceed.
        # Corresponds to the JSON property `allowCors`
        # @return [Boolean]
        attr_accessor :allow_cors
        alias_method :allow_cors?, :allow_cors
      
        # The canonical name of this endpoint.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The specification of an Internet routable address of API frontend that will
        # handle requests to this [API Endpoint](https://cloud.google.com/apis/design/
        # glossary). It should be either a valid IPv4 address or a fully-qualified
        # domain name. For example, "8.8.8.8" or "myservice.appspot.com".
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @allow_cors = args[:allow_cors] if args.key?(:allow_cors)
          @name = args[:name] if args.key?(:name)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Enum type definition.
      class Enum
        include Google::Apis::Core::Hashable
      
        # Enum value definitions.
        # Corresponds to the JSON property `enumvalue`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::EnumValue>]
        attr_accessor :enumvalue
      
        # Enum type name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Option>]
        attr_accessor :options
      
        # `SourceContext` represents information about the source of a protobuf element,
        # like the file in which it is defined.
        # Corresponds to the JSON property `sourceContext`
        # @return [Google::Apis::ServiceconsumermanagementV1::SourceContext]
        attr_accessor :source_context
      
        # The source syntax.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enumvalue = args[:enumvalue] if args.key?(:enumvalue)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # Enum value definition.
      class EnumValue
        include Google::Apis::Core::Hashable
      
        # Enum value name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Enum value number.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # Protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Option>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # A single field of a message type.
      class Field
        include Google::Apis::Core::Hashable
      
        # The field cardinality.
        # Corresponds to the JSON property `cardinality`
        # @return [String]
        attr_accessor :cardinality
      
        # The string value of the default value of this field. Proto2 syntax only.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # The field JSON name.
        # Corresponds to the JSON property `jsonName`
        # @return [String]
        attr_accessor :json_name
      
        # The field type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The field number.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # The index of the field type in `Type.oneofs`, for message or enumeration types.
        # The first type has index 1; zero means the type is not in the list.
        # Corresponds to the JSON property `oneofIndex`
        # @return [Fixnum]
        attr_accessor :oneof_index
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Option>]
        attr_accessor :options
      
        # Whether to use alternative packed wire representation.
        # Corresponds to the JSON property `packed`
        # @return [Boolean]
        attr_accessor :packed
        alias_method :packed?, :packed
      
        # The field type URL, without the scheme, for message or enumeration types.
        # Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @default_value = args[:default_value] if args.key?(:default_value)
          @json_name = args[:json_name] if args.key?(:json_name)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
          @oneof_index = args[:oneof_index] if args.key?(:oneof_index)
          @options = args[:options] if args.key?(:options)
          @packed = args[:packed] if args.key?(:packed)
          @type_url = args[:type_url] if args.key?(:type_url)
        end
      end
      
      # Defines the HTTP configuration for an API service. It contains a list of
      # HttpRule, each specifying the mapping of an RPC method to one or more HTTP
      # REST API methods.
      class Http
        include Google::Apis::Core::Hashable
      
        # When set to true, URL path parameters will be fully URI-decoded except in
        # cases of single segment matches in reserved expansion, where "%2F" will be
        # left encoded. The default behavior is to not decode RFC 6570 reserved
        # characters in multi segment matches.
        # Corresponds to the JSON property `fullyDecodeReservedExpansion`
        # @return [Boolean]
        attr_accessor :fully_decode_reserved_expansion
        alias_method :fully_decode_reserved_expansion?, :fully_decode_reserved_expansion
      
        # A list of HTTP configuration rules that apply to individual API methods. **
        # NOTE:** All service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::HttpRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fully_decode_reserved_expansion = args[:fully_decode_reserved_expansion] if args.key?(:fully_decode_reserved_expansion)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # # gRPC Transcoding gRPC Transcoding is a feature for mapping between a gRPC
      # method and one or more HTTP REST endpoints. It allows developers to build a
      # single API service that supports both gRPC APIs and REST APIs. Many systems,
      # including [Google APIs](https://github.com/googleapis/googleapis), [Cloud
      # Endpoints](https://cloud.google.com/endpoints), [gRPC Gateway](https://github.
      # com/grpc-ecosystem/grpc-gateway), and [Envoy](https://github.com/envoyproxy/
      # envoy) proxy support this feature and use it for large scale production
      # services. `HttpRule` defines the schema of the gRPC/REST mapping. The mapping
      # specifies how different portions of the gRPC request message are mapped to the
      # URL path, URL query parameters, and HTTP request body. It also controls how
      # the gRPC response message is mapped to the HTTP response body. `HttpRule` is
      # typically specified as an `google.api.http` annotation on the gRPC method.
      # Each mapping specifies a URL path template and an HTTP method. The path
      # template may refer to one or more fields in the gRPC request message, as long
      # as each field is a non-repeated field with a primitive (non-message) type. The
      # path template controls how fields of the request message are mapped to the URL
      # path. Example: service Messaging ` rpc GetMessage(GetMessageRequest) returns (
      # Message) ` option (google.api.http) = ` get: "/v1/`name=messages/*`" `; ` `
      # message GetMessageRequest ` string name = 1; // Mapped to URL path. ` message
      # Message ` string text = 1; // The resource content. ` This enables an HTTP
      # REST to gRPC mapping as below: HTTP | gRPC -----|----- `GET /v1/messages/
      # 123456` | `GetMessage(name: "messages/123456")` Any fields in the request
      # message which are not bound by the path template automatically become HTTP
      # query parameters if there is no HTTP request body. For example: service
      # Messaging ` rpc GetMessage(GetMessageRequest) returns (Message) ` option (
      # google.api.http) = ` get:"/v1/messages/`message_id`" `; ` ` message
      # GetMessageRequest ` message SubMessage ` string subfield = 1; ` string
      # message_id = 1; // Mapped to URL path. int64 revision = 2; // Mapped to URL
      # query parameter `revision`. SubMessage sub = 3; // Mapped to URL query
      # parameter `sub.subfield`. ` This enables a HTTP JSON to RPC mapping as below:
      # HTTP | gRPC -----|----- `GET /v1/messages/123456?revision=2&sub.subfield=foo` |
      # `GetMessage(message_id: "123456" revision: 2 sub: SubMessage(subfield: "foo"))
      # ` Note that fields which are mapped to URL query parameters must have a
      # primitive type or a repeated primitive type or a non-repeated message type. In
      # the case of a repeated type, the parameter can be repeated in the URL as `...?
      # param=A&param=B`. In the case of a message type, each field of the message is
      # mapped to a separate parameter, such as `...?foo.a=A&foo.b=B&foo.c=C`. For
      # HTTP methods that allow a request body, the `body` field specifies the mapping.
      # Consider a REST update method on the message resource collection: service
      # Messaging ` rpc UpdateMessage(UpdateMessageRequest) returns (Message) ` option
      # (google.api.http) = ` patch: "/v1/messages/`message_id`" body: "message" `; ` `
      # message UpdateMessageRequest ` string message_id = 1; // mapped to the URL
      # Message message = 2; // mapped to the body ` The following HTTP JSON to RPC
      # mapping is enabled, where the representation of the JSON in the request body
      # is determined by protos JSON encoding: HTTP | gRPC -----|----- `PATCH /v1/
      # messages/123456 ` "text": "Hi!" `` | `UpdateMessage(message_id: "123456"
      # message ` text: "Hi!" `)` The special name `*` can be used in the body mapping
      # to define that every field not bound by the path template should be mapped to
      # the request body. This enables the following alternative definition of the
      # update method: service Messaging ` rpc UpdateMessage(Message) returns (Message)
      # ` option (google.api.http) = ` patch: "/v1/messages/`message_id`" body: "*" `;
      # ` ` message Message ` string message_id = 1; string text = 2; ` The following
      # HTTP JSON to RPC mapping is enabled: HTTP | gRPC -----|----- `PATCH /v1/
      # messages/123456 ` "text": "Hi!" `` | `UpdateMessage(message_id: "123456" text:
      # "Hi!")` Note that when using `*` in the body mapping, it is not possible to
      # have HTTP parameters, as all fields not bound by the path end in the body.
      # This makes this option more rarely used in practice when defining REST APIs.
      # The common usage of `*` is in custom methods which don't use the URL at all
      # for transferring data. It is possible to define multiple HTTP methods for one
      # RPC by using the `additional_bindings` option. Example: service Messaging `
      # rpc GetMessage(GetMessageRequest) returns (Message) ` option (google.api.http)
      # = ` get: "/v1/messages/`message_id`" additional_bindings ` get: "/v1/users/`
      # user_id`/messages/`message_id`" ` `; ` ` message GetMessageRequest ` string
      # message_id = 1; string user_id = 2; ` This enables the following two
      # alternative HTTP JSON to RPC mappings: HTTP | gRPC -----|----- `GET /v1/
      # messages/123456` | `GetMessage(message_id: "123456")` `GET /v1/users/me/
      # messages/123456` | `GetMessage(user_id: "me" message_id: "123456")` ## Rules
      # for HTTP mapping 1. Leaf request fields (recursive expansion nested messages
      # in the request message) are classified into three categories: - Fields
      # referred by the path template. They are passed via the URL path. - Fields
      # referred by the HttpRule.body. They are passed via the HTTP request body. -
      # All other fields are passed via the URL query parameters, and the parameter
      # name is the field path in the request message. A repeated field can be
      # represented as multiple query parameters under the same name. 2. If HttpRule.
      # body is "*", there is no URL query parameter, all fields are passed via URL
      # path and HTTP request body. 3. If HttpRule.body is omitted, there is no HTTP
      # request body, all fields are passed via URL path and URL query parameters. ###
      # Path template syntax Template = "/" Segments [ Verb ] ; Segments = Segment ` "/
      # " Segment ` ; Segment = "*" | "**" | LITERAL | Variable ; Variable = "`"
      # FieldPath [ "=" Segments ] "`" ; FieldPath = IDENT ` "." IDENT ` ; Verb = ":"
      # LITERAL ; The syntax `*` matches a single URL path segment. The syntax `**`
      # matches zero or more URL path segments, which must be the last part of the URL
      # path except the `Verb`. The syntax `Variable` matches part of the URL path as
      # specified by its template. A variable template must not contain other
      # variables. If a variable matches a single path segment, its template may be
      # omitted, e.g. ``var`` is equivalent to ``var=*``. The syntax `LITERAL` matches
      # literal text in the URL path. If the `LITERAL` contains any reserved character,
      # such characters should be percent-encoded before the matching. If a variable
      # contains exactly one path segment, such as `"`var`"` or `"`var=*`"`, when such
      # a variable is expanded into a URL path on the client side, all characters
      # except `[-_.~0-9a-zA-Z]` are percent-encoded. The server side does the reverse
      # decoding. Such variables show up in the [Discovery Document](https://
      # developers.google.com/discovery/v1/reference/apis) as ``var``. If a variable
      # contains multiple path segments, such as `"`var=foo/*`"` or `"`var=**`"`, when
      # such a variable is expanded into a URL path on the client side, all characters
      # except `[-_.~/0-9a-zA-Z]` are percent-encoded. The server side does the
      # reverse decoding, except "%2F" and "%2f" are left unchanged. Such variables
      # show up in the [Discovery Document](https://developers.google.com/discovery/v1/
      # reference/apis) as ``+var``. ## Using gRPC API Service Configuration gRPC API
      # Service Configuration (service config) is a configuration language for
      # configuring a gRPC service to become a user-facing product. The service config
      # is simply the YAML representation of the `google.api.Service` proto message.
      # As an alternative to annotating your proto file, you can configure gRPC
      # transcoding in your service config YAML files. You do this by specifying a `
      # HttpRule` that maps the gRPC method to a REST endpoint, achieving the same
      # effect as the proto annotation. This can be particularly useful if you have a
      # proto that is reused in multiple services. Note that any transcoding specified
      # in the service config will override any matching transcoding configuration in
      # the proto. Example: http: rules: # Selects a gRPC method and applies HttpRule
      # to it. - selector: example.v1.Messaging.GetMessage get: /v1/messages/`
      # message_id`/`sub.subfield` ## Special notes When gRPC Transcoding is used to
      # map a gRPC to JSON REST endpoints, the proto to JSON conversion must follow
      # the [proto3 specification](https://developers.google.com/protocol-buffers/docs/
      # proto3#json). While the single segment variable follows the semantics of [RFC
      # 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String
      # Expansion, the multi segment variable **does not** follow RFC 6570 Section 3.2.
      # 3 Reserved Expansion. The reason is that the Reserved Expansion does not
      # expand special characters like `?` and `#`, which would lead to invalid URLs.
      # As the result, gRPC Transcoding uses a custom encoding for multi segment
      # variables. The path variables **must not** refer to any repeated or mapped
      # field, because client libraries are not capable of handling such variable
      # expansion. The path variables **must not** capture the leading "/" character.
      # The reason is that the most common use case "`var`" does not capture the
      # leading "/" character. For consistency, all path variables must share the same
      # behavior. Repeated message fields must not be mapped to URL query parameters,
      # because no client library can support such complicated mapping. If an API
      # needs to use a JSON array for request or response body, it can map the request
      # or response body to a repeated field. However, some gRPC Transcoding
      # implementations may not support this feature.
      class HttpRule
        include Google::Apis::Core::Hashable
      
        # Additional HTTP bindings for the selector. Nested bindings must not contain an
        # `additional_bindings` field themselves (that is, the nesting may only be one
        # level deep).
        # Corresponds to the JSON property `additionalBindings`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::HttpRule>]
        attr_accessor :additional_bindings
      
        # The name of the request field whose value is mapped to the HTTP request body,
        # or `*` for mapping all request fields not captured by the path pattern to the
        # HTTP body, or omitted for not having any HTTP request body. NOTE: the referred
        # field must be present at the top-level of the request message type.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # A custom pattern is used for defining custom HTTP verb.
        # Corresponds to the JSON property `custom`
        # @return [Google::Apis::ServiceconsumermanagementV1::CustomHttpPattern]
        attr_accessor :custom
      
        # Maps to HTTP DELETE. Used for deleting a resource.
        # Corresponds to the JSON property `delete`
        # @return [String]
        attr_accessor :delete
      
        # Maps to HTTP GET. Used for listing and getting information about resources.
        # Corresponds to the JSON property `get`
        # @return [String]
        attr_accessor :get
      
        # Maps to HTTP PATCH. Used for updating a resource.
        # Corresponds to the JSON property `patch`
        # @return [String]
        attr_accessor :patch
      
        # Maps to HTTP POST. Used for creating a resource or performing an action.
        # Corresponds to the JSON property `post`
        # @return [String]
        attr_accessor :post
      
        # Maps to HTTP PUT. Used for replacing a resource.
        # Corresponds to the JSON property `put`
        # @return [String]
        attr_accessor :put
      
        # Optional. The name of the response field whose value is mapped to the HTTP
        # response body. When omitted, the entire response message will be used as the
        # HTTP response body. NOTE: The referred field must be present at the top-level
        # of the response message type.
        # Corresponds to the JSON property `responseBody`
        # @return [String]
        attr_accessor :response_body
      
        # Selects a method to which this rule applies. Refer to selector for syntax
        # details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_bindings = args[:additional_bindings] if args.key?(:additional_bindings)
          @body = args[:body] if args.key?(:body)
          @custom = args[:custom] if args.key?(:custom)
          @delete = args[:delete] if args.key?(:delete)
          @get = args[:get] if args.key?(:get)
          @patch = args[:patch] if args.key?(:patch)
          @post = args[:post] if args.key?(:post)
          @put = args[:put] if args.key?(:put)
          @response_body = args[:response_body] if args.key?(:response_body)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # Specifies a location to extract JWT from an API request.
      class JwtLocation
        include Google::Apis::Core::Hashable
      
        # Specifies HTTP header name to extract JWT token.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # Specifies URL query parameter name to extract JWT token.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The value prefix. The value format is "value_prefix`token`" Only applies to "
        # in" header type. Must be empty for "in" query type. If not empty, the header
        # value has to match (case sensitive) this prefix. If not matched, JWT will not
        # be extracted. If matched, JWT will be extracted after the prefix is removed.
        # For example, for "Authorization: Bearer `JWT`", value_prefix="Bearer " with a
        # space at the end.
        # Corresponds to the JSON property `valuePrefix`
        # @return [String]
        attr_accessor :value_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @query = args[:query] if args.key?(:query)
          @value_prefix = args[:value_prefix] if args.key?(:value_prefix)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @key = args[:key] if args.key?(:key)
          @value_type = args[:value_type] if args.key?(:value_type)
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
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Operation>]
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
      
      # Response for the list request.
      class ListTenancyUnitsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token for large results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tenancy units matching the request.
        # Corresponds to the JSON property `tenancyUnits`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::TenancyUnit>]
        attr_accessor :tenancy_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tenancy_units = args[:tenancy_units] if args.key?(:tenancy_units)
        end
      end
      
      # A description of a log type. Example in YAML format: - name: library.
      # googleapis.com/activity_history description: The history of borrowing and
      # returning library items. display_name: Activity labels: - key: /customer_id
      # description: Identifier of a library customer
      class LogDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description of this log. This information appears in the
        # documentation and can contain details.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human-readable name for this log. This information appears on the user
        # interface and should be concise.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The set of labels that are available to describe a specific log entry. Runtime
        # requests that contain labels not specified here are considered invalid.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::LabelDescriptor>]
        attr_accessor :labels
      
        # The name of the log. It must be less than 512 characters long and can include
        # the following characters: upper- and lower-case alphanumeric characters [A-Za-
        # z0-9], and punctuation characters including slash, underscore, hyphen, period [
        # /_-.].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Logging configuration of the service. The following example shows how to
      # configure logs to be sent to the producer and consumer projects. In the
      # example, the `activity_history` log is sent to both the producer and consumer
      # projects, whereas the `purchase_history` log is only sent to the producer
      # project. monitored_resources: - type: library.googleapis.com/branch labels: -
      # key: /city description: The city where the library branch is located in. - key:
      # /name description: The name of the branch. logs: - name: activity_history
      # labels: - key: /customer_id - name: purchase_history logging:
      # producer_destinations: - monitored_resource: library.googleapis.com/branch
      # logs: - activity_history - purchase_history consumer_destinations: -
      # monitored_resource: library.googleapis.com/branch logs: - activity_history
      class Logging
        include Google::Apis::Core::Hashable
      
        # Logging configurations for sending logs to the consumer project. There can be
        # multiple consumer destinations, each one must have a different monitored
        # resource type. A log can be used in at most one consumer destination.
        # Corresponds to the JSON property `consumerDestinations`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::LoggingDestination>]
        attr_accessor :consumer_destinations
      
        # Logging configurations for sending logs to the producer project. There can be
        # multiple producer destinations, each one must have a different monitored
        # resource type. A log can be used in at most one producer destination.
        # Corresponds to the JSON property `producerDestinations`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::LoggingDestination>]
        attr_accessor :producer_destinations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_destinations = args[:consumer_destinations] if args.key?(:consumer_destinations)
          @producer_destinations = args[:producer_destinations] if args.key?(:producer_destinations)
        end
      end
      
      # Configuration of a specific logging destination (the producer project or the
      # consumer project).
      class LoggingDestination
        include Google::Apis::Core::Hashable
      
        # Names of the logs to be sent to this destination. Each name must be defined in
        # the Service.logs section. If the log name is not a domain scoped name, it will
        # be automatically prefixed with the service name followed by "/".
        # Corresponds to the JSON property `logs`
        # @return [Array<String>]
        attr_accessor :logs
      
        # The monitored resource type. The type must be defined in the Service.
        # monitored_resources section.
        # Corresponds to the JSON property `monitoredResource`
        # @return [String]
        attr_accessor :monitored_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logs = args[:logs] if args.key?(:logs)
          @monitored_resource = args[:monitored_resource] if args.key?(:monitored_resource)
        end
      end
      
      # Method represents a method of an API interface.
      class MethodProp
        include Google::Apis::Core::Hashable
      
        # The simple name of this method.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Any metadata attached to the method.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Option>]
        attr_accessor :options
      
        # If true, the request is streamed.
        # Corresponds to the JSON property `requestStreaming`
        # @return [Boolean]
        attr_accessor :request_streaming
        alias_method :request_streaming?, :request_streaming
      
        # A URL of the input message type.
        # Corresponds to the JSON property `requestTypeUrl`
        # @return [String]
        attr_accessor :request_type_url
      
        # If true, the response is streamed.
        # Corresponds to the JSON property `responseStreaming`
        # @return [Boolean]
        attr_accessor :response_streaming
        alias_method :response_streaming?, :response_streaming
      
        # The URL of the output message type.
        # Corresponds to the JSON property `responseTypeUrl`
        # @return [String]
        attr_accessor :response_type_url
      
        # The source syntax of this method.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @request_streaming = args[:request_streaming] if args.key?(:request_streaming)
          @request_type_url = args[:request_type_url] if args.key?(:request_type_url)
          @response_streaming = args[:response_streaming] if args.key?(:response_streaming)
          @response_type_url = args[:response_type_url] if args.key?(:response_type_url)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # Defines a metric type and its schema. Once a metric descriptor is created,
      # deleting or altering it stops data collection and makes the metric type's
      # existing data unusable.
      class MetricDescriptor
        include Google::Apis::Core::Hashable
      
        # A detailed description of the metric, which can be used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A concise name for the metric, which can be displayed in user interfaces. Use
        # sentence case without an ending period, for example "Request count". This
        # field is optional but it is recommended to be set for any metrics associated
        # with user-visible concepts, such as Quota.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The set of labels that can be used to describe a specific instance of this
        # metric type. For example, the `appengine.googleapis.com/http/server/
        # response_latencies` metric type has a label for the HTTP response code, `
        # response_code`, so you can look at latencies for successful responses or just
        # for responses that failed.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The launch stage of the metric definition.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Additional annotations that can be used to guide the usage of a metric.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ServiceconsumermanagementV1::MetricDescriptorMetadata]
        attr_accessor :metadata
      
        # Whether the metric records instantaneous values, changes to a value, etc. Some
        # combinations of `metric_kind` and `value_type` might not be supported.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        # Read-only. If present, then a time series, which is identified partially by a
        # metric type and a MonitoredResourceDescriptor, that is associated with this
        # metric type can only be associated with one of the monitored resource types
        # listed here.
        # Corresponds to the JSON property `monitoredResourceTypes`
        # @return [Array<String>]
        attr_accessor :monitored_resource_types
      
        # The resource name of the metric descriptor.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric type, including its DNS name prefix. The type is not URL-encoded.
        # All user-defined metric types have the DNS name `custom.googleapis.com` or `
        # external.googleapis.com`. Metric types should use a natural hierarchical
        # grouping. For example: "custom.googleapis.com/invoice/paid/amount" "external.
        # googleapis.com/prometheus/up" "appengine.googleapis.com/http/server/
        # response_latencies"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The units in which the metric value is reported. It is only applicable if the `
        # value_type` is `INT64`, `DOUBLE`, or `DISTRIBUTION`. The `unit` defines the
        # representation of the stored metric values. Different systems may scale the
        # values to be more easily displayed (so a value of `0.02KBy` _might_ be
        # displayed as `20By`, and a value of `3523KBy` _might_ be displayed as `3.5MBy`)
        # . However, if the `unit` is `KBy`, then the value of the metric is always in
        # thousands of bytes, no matter how it may be displayed.. If you want a custom
        # metric to record the exact number of CPU-seconds used by a job, you can create
        # an `INT64 CUMULATIVE` metric whose `unit` is `s`CPU`` (or equivalently `1s`CPU`
        # ` or just `s`). If the job uses 12,005 CPU-seconds, then the value is written
        # as `12005`. Alternatively, if you want a custom metric to record data in a
        # more granular way, you can create a `DOUBLE CUMULATIVE` metric whose `unit` is
        # `ks`CPU``, and then write the value `12.005` (which is `12005/1000`), or use `
        # Kis`CPU`` and write `11.723` (which is `12005/1024`). The supported units are
        # a subset of [The Unified Code for Units of Measure](http://unitsofmeasure.org/
        # ucum.html) standard: **Basic units (UNIT)** * `bit` bit * `By` byte * `s`
        # second * `min` minute * `h` hour * `d` day * `1` dimensionless **Prefixes (
        # PREFIX)** * `k` kilo (10^3) * `M` mega (10^6) * `G` giga (10^9) * `T` tera (10^
        # 12) * `P` peta (10^15) * `E` exa (10^18) * `Z` zetta (10^21) * `Y` yotta (10^
        # 24) * `m` milli (10^-3) * `u` micro (10^-6) * `n` nano (10^-9) * `p` pico (10^-
        # 12) * `f` femto (10^-15) * `a` atto (10^-18) * `z` zepto (10^-21) * `y` yocto (
        # 10^-24) * `Ki` kibi (2^10) * `Mi` mebi (2^20) * `Gi` gibi (2^30) * `Ti` tebi (
        # 2^40) * `Pi` pebi (2^50) **Grammar** The grammar also includes these
        # connectors: * `/` division or ratio (as an infix operator). For examples, `kBy/
        # `email`` or `MiBy/10ms` (although you should almost never have `/s` in a
        # metric `unit`; rates should always be computed at query time from the
        # underlying cumulative or delta value). * `.` multiplication or composition (as
        # an infix operator). For examples, `GBy.d` or `k`watt`.h`. The grammar for a
        # unit is as follows: Expression = Component ` "." Component ` ` "/" Component `
        # ; Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ] | Annotation | "1" ;
        # Annotation = "`" NAME "`" ; Notes: * `Annotation` is just a comment if it
        # follows a `UNIT`. If the annotation is used alone, then the unit is equivalent
        # to `1`. For examples, ``request`/s == 1/s`, `By`transmitted`/s == By/s`. * `
        # NAME` is a sequence of non-blank printable ASCII characters not containing ```
        # or ```. * `1` represents a unitary [dimensionless unit](https://en.wikipedia.
        # org/wiki/Dimensionless_quantity) of 1, such as in `1/s`. It is typically used
        # when none of the basic units are appropriate. For example, "new users per day"
        # can be represented as `1/d` or ``new-users`/d` (and a metric value `5` would
        # mean "5 new users). Alternatively, "thousands of page views per day" would be
        # represented as `1000/d` or `k1/d` or `k`page_views`/d` (and a metric value of `
        # 5.3` would mean "5300 page views per day"). * `%` represents dimensionless
        # value of 1/100, and annotates values giving a percentage (so the metric values
        # are typically in the range of 0..100, and a metric value `3` means "3 percent")
        # . * `10^2.%` indicates a metric contains a ratio, typically in the range 0..1,
        # that will be multiplied by 100 and displayed as a percentage (so a metric
        # value `0.03` means "3 percent").
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Whether the measurement is an integer, a floating-point number, etc. Some
        # combinations of `metric_kind` and `value_type` might not be supported.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @monitored_resource_types = args[:monitored_resource_types] if args.key?(:monitored_resource_types)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @unit = args[:unit] if args.key?(:unit)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Additional annotations that can be used to guide the usage of a metric.
      class MetricDescriptorMetadata
        include Google::Apis::Core::Hashable
      
        # The delay of data points caused by ingestion. Data points older than this age
        # are guaranteed to be ingested and available to be read, excluding data loss
        # due to errors.
        # Corresponds to the JSON property `ingestDelay`
        # @return [String]
        attr_accessor :ingest_delay
      
        # Deprecated. Must use the MetricDescriptor.launch_stage instead.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The sampling period of metric data points. For metrics which are written
        # periodically, consecutive data points are stored at this time interval,
        # excluding data loss due to errors. Metrics with a higher granularity have a
        # smaller sampling period.
        # Corresponds to the JSON property `samplePeriod`
        # @return [String]
        attr_accessor :sample_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingest_delay = args[:ingest_delay] if args.key?(:ingest_delay)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @sample_period = args[:sample_period] if args.key?(:sample_period)
        end
      end
      
      # Bind API methods to metrics. Binding a method to a metric causes that metric's
      # configured quota behaviors to apply to the method call.
      class MetricRule
        include Google::Apis::Core::Hashable
      
        # Metrics to update when the selected methods are called, and the associated
        # cost applied to each metric. The key of the map is the metric name, and the
        # values are the amount increased for the metric against which the quota limits
        # are defined. The value must not be negative.
        # Corresponds to the JSON property `metricCosts`
        # @return [Hash<String,Fixnum>]
        attr_accessor :metric_costs
      
        # Selects the methods to which this rule applies. Refer to selector for syntax
        # details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_costs = args[:metric_costs] if args.key?(:metric_costs)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # Declares an API Interface to be included in this interface. The including
      # interface must redeclare all the methods from the included interface, but
      # documentation and options are inherited as follows: - If after comment and
      # whitespace stripping, the documentation string of the redeclared method is
      # empty, it will be inherited from the original method. - Each annotation
      # belonging to the service config (http, visibility) which is not set in the
      # redeclared method will be inherited. - If an http annotation is inherited, the
      # path pattern will be modified as follows. Any version prefix will be replaced
      # by the version of the including interface plus the root path if specified.
      # Example of a simple mixin: package google.acl.v1; service AccessControl ` //
      # Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) `
      # option (google.api.http).get = "/v1/`resource=**`:getAcl"; ` ` package google.
      # storage.v2; service Storage ` // rpc GetAcl(GetAclRequest) returns (Acl); //
      # Get a data record. rpc GetData(GetDataRequest) returns (Data) ` option (google.
      # api.http).get = "/v2/`resource=**`"; ` ` Example of a mixin configuration:
      # apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.
      # AccessControl The mixin construct implies that all methods in `AccessControl`
      # are also declared with same name and request/response types in `Storage`. A
      # documentation generator or annotation processor will see the effective `
      # Storage.GetAcl` method after inheriting documentation and annotations as
      # follows: service Storage ` // Get the underlying ACL object. rpc GetAcl(
      # GetAclRequest) returns (Acl) ` option (google.api.http).get = "/v2/`resource=**
      # `:getAcl"; ` ... ` Note how the version in the path pattern changed from `v1`
      # to `v2`. If the `root` field in the mixin is specified, it should be a
      # relative path under which inherited HTTP paths are placed. Example: apis: -
      # name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl
      # root: acls This implies the following inherited HTTP annotation: service
      # Storage ` // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (
      # Acl) ` option (google.api.http).get = "/v2/acls/`resource=**`:getAcl"; ` ... `
      class Mixin
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the interface which is included.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If non-empty specifies a path under which inherited HTTP paths are rooted.
        # Corresponds to the JSON property `root`
        # @return [String]
        attr_accessor :root
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @root = args[:root] if args.key?(:root)
        end
      end
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of `"gce_instance"` and
      # specifies the use of the labels `"instance_id"` and `"zone"` to identify
      # particular VM instances. Different APIs can support different monitored
      # resource types. APIs generally provide a `list` method that returns the
      # monitored resource descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. It should be a Title Cased Noun Phrase, without
        # any article or other determiners. For example, `"Google Cloud SQL Database"`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels `"database_id"` and `"zone"`.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The launch stage of the monitored resource definition.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Optional. The resource name of the monitored resource descriptor: `"projects/`
        # project_id`/monitoredResourceDescriptors/`type`"` where `type` is the value of
        # the `type` field in this object and `project_id` is a project ID that provides
        # API-specific context for accessing the type. APIs that do not use project
        # information can use the resource name format `"monitoredResourceDescriptors/`
        # type`"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The monitored resource type. For example, the type `"
        # cloudsql_database"` represents databases in Google Cloud SQL.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Monitoring configuration of the service. The example below shows how to
      # configure monitored resources and metrics for monitoring. In the example, a
      # monitored resource and two metrics are defined. The `library.googleapis.com/
      # book/returned_count` metric is sent to both producer and consumer projects,
      # whereas the `library.googleapis.com/book/num_overdue` metric is only sent to
      # the consumer project. monitored_resources: - type: library.googleapis.com/
      # Branch display_name: "Library Branch" description: "A branch of a library."
      # launch_stage: GA labels: - key: resource_container description: "The Cloud
      # container (ie. project id) for the Branch." - key: location description: "The
      # location of the library branch." - key: branch_id description: "The id of the
      # branch." metrics: - name: library.googleapis.com/book/returned_count
      # display_name: "Books Returned" description: "The count of books that have been
      # returned." launch_stage: GA metric_kind: DELTA value_type: INT64 unit: "1"
      # labels: - key: customer_id description: "The id of the customer." - name:
      # library.googleapis.com/book/num_overdue display_name: "Books Overdue"
      # description: "The current number of overdue books." launch_stage: GA
      # metric_kind: GAUGE value_type: INT64 unit: "1" labels: - key: customer_id
      # description: "The id of the customer." monitoring: producer_destinations: -
      # monitored_resource: library.googleapis.com/Branch metrics: - library.
      # googleapis.com/book/returned_count consumer_destinations: - monitored_resource:
      # library.googleapis.com/Branch metrics: - library.googleapis.com/book/
      # returned_count - library.googleapis.com/book/num_overdue
      class Monitoring
        include Google::Apis::Core::Hashable
      
        # Monitoring configurations for sending metrics to the consumer project. There
        # can be multiple consumer destinations. A monitored resource type may appear in
        # multiple monitoring destinations if different aggregations are needed for
        # different sets of metrics associated with that monitored resource type. A
        # monitored resource and metric pair may only be used once in the Monitoring
        # configuration.
        # Corresponds to the JSON property `consumerDestinations`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::MonitoringDestination>]
        attr_accessor :consumer_destinations
      
        # Monitoring configurations for sending metrics to the producer project. There
        # can be multiple producer destinations. A monitored resource type may appear in
        # multiple monitoring destinations if different aggregations are needed for
        # different sets of metrics associated with that monitored resource type. A
        # monitored resource and metric pair may only be used once in the Monitoring
        # configuration.
        # Corresponds to the JSON property `producerDestinations`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::MonitoringDestination>]
        attr_accessor :producer_destinations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_destinations = args[:consumer_destinations] if args.key?(:consumer_destinations)
          @producer_destinations = args[:producer_destinations] if args.key?(:producer_destinations)
        end
      end
      
      # Configuration of a specific monitoring destination (the producer project or
      # the consumer project).
      class MonitoringDestination
        include Google::Apis::Core::Hashable
      
        # Types of the metrics to report to this monitoring destination. Each type must
        # be defined in Service.metrics section.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # The monitored resource type. The type must be defined in Service.
        # monitored_resources section.
        # Corresponds to the JSON property `monitoredResource`
        # @return [String]
        attr_accessor :monitored_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @monitored_resource = args[:monitored_resource] if args.key?(:monitored_resource)
        end
      end
      
      # OAuth scopes are a way to define data and permissions on data. For example,
      # there are scopes defined for "Read-only access to Google Calendar" and "Access
      # to Cloud Platform". Users can consent to a scope for an application, giving it
      # permission to access that data on their behalf. OAuth scope specifications
      # should be fairly coarse grained; a user will need to see and understand the
      # text description of what your scope means. In most cases: use one or at most
      # two OAuth scopes for an entire family of products. If your product has
      # multiple APIs, you should probably be sharing the OAuth scope across all of
      # those APIs. When you need finer grained OAuth consent screens: talk with your
      # product management about how developers will use them in practice. Please note
      # that even though each of the canonical scopes is enough for a request to be
      # accepted and passed to the backend, a request can still fail due to the
      # backend requiring additional scopes or permissions.
      class OAuthRequirements
        include Google::Apis::Core::Hashable
      
        # The list of publicly documented OAuth scopes that are allowed access. An OAuth
        # token containing any of these scopes will be accepted. Example:
        # canonical_scopes: https://www.googleapis.com/auth/calendar, https://www.
        # googleapis.com/auth/calendar.read
        # Corresponds to the JSON property `canonicalScopes`
        # @return [String]
        attr_accessor :canonical_scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_scopes = args[:canonical_scopes] if args.key?(:canonical_scopes)
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
        # @return [Google::Apis::ServiceconsumermanagementV1::Status]
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
      
      # A protocol buffer option, which can be attached to a message, field,
      # enumeration, etc.
      class Option
        include Google::Apis::Core::Hashable
      
        # The option's name. For protobuf built-in options (options defined in
        # descriptor.proto), this is the short name. For example, `"map_entry"`. For
        # custom options, it should be the fully-qualified name. For example, `"google.
        # api.http"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The option's value packed in an Any message. If the value is a primitive, the
        # corresponding wrapper type defined in google/protobuf/wrappers.proto should be
        # used. If the value is an enum, it should be stored as an int32 value using the
        # google.protobuf.Int32Value type.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a documentation page. A page can contain subpages to represent
      # nested documentation set structure.
      class Page
        include Google::Apis::Core::Hashable
      
        # The Markdown content of the page. You can use (== include `path` ==) to
        # include content from a Markdown file.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The name of the page. It will be used as an identity of the page to generate
        # URI of the page, text of the link to this page in navigation, etc. The full
        # page name (start from the root page name to this page concatenated with `.`)
        # can be used as reference to the page in your documentation. For example: pages:
        # - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java
        # content: (== include tutorial_java.md ==) You can reference `Java` page using
        # Markdown reference link syntax: `Java`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Subpages of this page. The order of subpages specified here will be honored in
        # the generated docset.
        # Corresponds to the JSON property `subpages`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Page>]
        attr_accessor :subpages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @name = args[:name] if args.key?(:name)
          @subpages = args[:subpages] if args.key?(:subpages)
        end
      end
      
      # Translates to IAM Policy bindings (without auditing at this level)
      class PolicyBinding
        include Google::Apis::Core::Hashable
      
        # Uses the same format as in IAM policy. `member` must include both a prefix and
        # ID. For example, `user:`emailId``, `serviceAccount:`emailId``, `group:`emailId`
        # `.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role. (https://cloud.google.com/iam/docs/understanding-roles) For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Quota configuration helps to achieve fairness and budgeting in service usage.
      # The metric based quota configuration works this way: - The service
      # configuration defines a set of metrics. - For API calls, the quota.
      # metric_rules maps methods to metrics with corresponding costs. - The quota.
      # limits defines limits on the metrics, which will be used for quota checks at
      # runtime. An example quota configuration in yaml format: quota: limits: - name:
      # apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: "1/min/`
      # project`" # rate limit for consumer projects values: STANDARD: 10000 # The
      # metric rules bind all methods to the read_calls metric, # except for the
      # UpdateBook and DeleteBook methods. These two methods # are mapped to the
      # write_calls metric, with the UpdateBook method # consuming at twice rate as
      # the DeleteBook method. metric_rules: - selector: "*" metric_costs: library.
      # googleapis.com/read_calls: 1 - selector: google.example.library.v1.
      # LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 -
      # selector: google.example.library.v1.LibraryService.DeleteBook metric_costs:
      # library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics:
      # - name: library.googleapis.com/read_calls display_name: Read requests
      # metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/
      # write_calls display_name: Write requests metric_kind: DELTA value_type: INT64
      class Quota
        include Google::Apis::Core::Hashable
      
        # List of `QuotaLimit` definitions for the service.
        # Corresponds to the JSON property `limits`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::QuotaLimit>]
        attr_accessor :limits
      
        # List of `MetricRule` definitions, each one mapping a selected method to one or
        # more metrics.
        # Corresponds to the JSON property `metricRules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::MetricRule>]
        attr_accessor :metric_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limits = args[:limits] if args.key?(:limits)
          @metric_rules = args[:metric_rules] if args.key?(:metric_rules)
        end
      end
      
      # `QuotaLimit` defines a specific limit that applies over a specified duration
      # for a limit type. There can be at most one limit for a duration and limit type
      # combination defined within a `QuotaGroup`.
      class QuotaLimit
        include Google::Apis::Core::Hashable
      
        # Default number of tokens that can be consumed during the specified duration.
        # This is the number of tokens assigned when a client application developer
        # activates the service for his/her project. Specifying a value of 0 will block
        # all requests. This can be used if you are provisioning quota to selected
        # consumers and blocking others. Similarly, a value of -1 will indicate an
        # unlimited quota. No other negative values are allowed. Used by group-based
        # quotas only.
        # Corresponds to the JSON property `defaultLimit`
        # @return [Fixnum]
        attr_accessor :default_limit
      
        # Optional. User-visible, extended description for this quota limit. Should be
        # used only when more context is needed to understand this limit than provided
        # by the limit's display name (see: `display_name`).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-visible display name for this limit. Optional. If not set, the UI will
        # provide a default display name based on the quota configuration. This field
        # can be used to override the default display name generated from the
        # configuration.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Duration of this limit in textual notation. Must be "100s" or "1d". Used by
        # group-based quotas only.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Free tier value displayed in the Developers Console for this limit. The free
        # tier is the number of tokens that will be subtracted from the billed amount
        # when billing is enabled. This field can only be set on a limit with duration "
        # 1d", in a billable group; it is invalid on any other limit. If this field is
        # not set, it defaults to 0, indicating that there is no free tier for this
        # service. Used by group-based quotas only.
        # Corresponds to the JSON property `freeTier`
        # @return [Fixnum]
        attr_accessor :free_tier
      
        # Maximum number of tokens that can be consumed during the specified duration.
        # Client application developers can override the default limit up to this
        # maximum. If specified, this value cannot be set to a value less than the
        # default limit. If not specified, it is set to the default limit. To allow
        # clients to apply overrides with no upper bound, set this to -1, indicating
        # unlimited maximum quota. Used by group-based quotas only.
        # Corresponds to the JSON property `maxLimit`
        # @return [Fixnum]
        attr_accessor :max_limit
      
        # The name of the metric this quota limit applies to. The quota limits with the
        # same metric will be checked together during runtime. The metric must be
        # defined within the service config.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Name of the quota limit. The name must be provided, and it must be unique
        # within the service. The name can only include alphanumeric characters as well
        # as '-'. The maximum length of the limit name is 64 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specify the unit of the quota limit. It uses the same syntax as Metric.unit.
        # The supported unit kinds are determined by the quota backend system. Here are
        # some examples: * "1/min/`project`" for quota per minute per project. Note: the
        # order of unit components is insignificant. The "1" at the beginning is
        # required to follow the metric unit syntax.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Tiered limit values. You must specify this as a key:value pair, with an
        # integer value that is the maximum number of requests allowed for the specified
        # unit. Currently only STANDARD is supported.
        # Corresponds to the JSON property `values`
        # @return [Hash<String,Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_limit = args[:default_limit] if args.key?(:default_limit)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @duration = args[:duration] if args.key?(:duration)
          @free_tier = args[:free_tier] if args.key?(:free_tier)
          @max_limit = args[:max_limit] if args.key?(:max_limit)
          @metric = args[:metric] if args.key?(:metric)
          @name = args[:name] if args.key?(:name)
          @unit = args[:unit] if args.key?(:unit)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Request message to remove a tenant project resource from the tenancy unit.
      class RemoveTenantProjectRequest
        include Google::Apis::Core::Hashable
      
        # Required. Tag of the resource within the tenancy unit.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Response for the search query.
      class SearchTenancyUnitsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token for large results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tenancy Units matching the request.
        # Corresponds to the JSON property `tenancyUnits`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::TenancyUnit>]
        attr_accessor :tenancy_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tenancy_units = args[:tenancy_units] if args.key?(:tenancy_units)
        end
      end
      
      # `Service` is the root object of Google service configuration schema. It
      # describes basic information about a service, such as the name and the title,
      # and delegates other aspects to sub-sections. Each sub-section is either a
      # proto message or a repeated proto message that configures a specific aspect,
      # such as auth. See each proto message definition for details. Example: type:
      # google.api.Service config_version: 3 name: calendar.googleapis.com title:
      # Google Calendar API apis: - name: google.calendar.v3.Calendar authentication:
      # providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/
      # oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*"
      # requirements: provider_id: google_calendar_auth
      class Service
        include Google::Apis::Core::Hashable
      
        # A list of API interfaces exported by this service. Only the `name` field of
        # the google.protobuf.Api needs to be provided by the configuration author, as
        # the remaining fields will be derived from the IDL during the normalization
        # process. It is an error to specify an API interface here which cannot be
        # resolved against the associated IDL files.
        # Corresponds to the JSON property `apis`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Api>]
        attr_accessor :apis
      
        # `Authentication` defines the authentication configuration for an API. Example
        # for an API targeted for external use: name: calendar.googleapis.com
        # authentication: providers: - id: google_calendar_auth jwks_uri: https://www.
        # googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: -
        # selector: "*" requirements: provider_id: google_calendar_auth
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::ServiceconsumermanagementV1::Authentication]
        attr_accessor :authentication
      
        # `Backend` defines the backend configuration for a service.
        # Corresponds to the JSON property `backend`
        # @return [Google::Apis::ServiceconsumermanagementV1::Backend]
        attr_accessor :backend
      
        # Billing related configuration of the service. The following example shows how
        # to configure monitored resources and metrics for billing, `
        # consumer_destinations` is the only supported destination and the monitored
        # resources need at least one label key `cloud.googleapis.com/location` to
        # indicate the location of the billing usage, using different monitored
        # resources between monitoring and billing is recommended so they can be evolved
        # independently: monitored_resources: - type: library.googleapis.com/
        # billing_branch labels: - key: cloud.googleapis.com/location description: |
        # Predefined label to support billing location restriction. - key: city
        # description: | Custom label to define the city where the library branch is
        # located in. - key: name description: Custom label to define the name of the
        # library branch. metrics: - name: library.googleapis.com/book/borrowed_count
        # metric_kind: DELTA value_type: INT64 unit: "1" billing: consumer_destinations:
        # - monitored_resource: library.googleapis.com/billing_branch metrics: - library.
        # googleapis.com/book/borrowed_count
        # Corresponds to the JSON property `billing`
        # @return [Google::Apis::ServiceconsumermanagementV1::Billing]
        attr_accessor :billing
      
        # This field is obsolete. Its value must be set to `3`.
        # Corresponds to the JSON property `configVersion`
        # @return [Fixnum]
        attr_accessor :config_version
      
        # `Context` defines which contexts an API requests. Example: context: rules: -
        # selector: "*" requested: - google.rpc.context.ProjectContext - google.rpc.
        # context.OriginContext The above specifies that all methods in the API request `
        # google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`.
        # Available context types are defined in package `google.rpc.context`. This also
        # provides mechanism to allowlist any protobuf message extension that can be
        # sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format.
        # For example, list any service specific protobuf types that can appear in grpc
        # metadata as follows in your yaml file: Example: context: rules: - selector: "
        # google.example.library.v1.LibraryService.CreateBook"
        # allowed_request_extensions: - google.foo.v1.NewExtension
        # allowed_response_extensions: - google.foo.v1.NewExtension You can also specify
        # extension ID instead of fully qualified extension name here.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::ServiceconsumermanagementV1::Context]
        attr_accessor :context
      
        # Selects and configures the service controller used by the service. The service
        # controller handles features like abuse, quota, billing, logging, monitoring,
        # etc.
        # Corresponds to the JSON property `control`
        # @return [Google::Apis::ServiceconsumermanagementV1::Control]
        attr_accessor :control
      
        # Customize service error responses. For example, list any service specific
        # protobuf types that can appear in error detail lists of error responses.
        # Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.
        # AnotherError
        # Corresponds to the JSON property `customError`
        # @return [Google::Apis::ServiceconsumermanagementV1::CustomError]
        attr_accessor :custom_error
      
        # `Documentation` provides the information for describing a service. Example:
        # documentation: summary: > The Google Calendar API gives access to most
        # calendar features. pages: - name: Overview content: (== include google/foo/
        # overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==
        # ) subpages; - name: Java content: (== include google/foo/tutorial_java.md ==)
        # rules: - selector: google.calendar.Calendar.Get description: > ... - selector:
        # google.calendar.Calendar.Put description: > ... Documentation is provided in
        # markdown syntax. In addition to standard markdown features, definition lists,
        # tables and fenced code blocks are supported. Section headers can be provided
        # and are interpreted relative to the section nesting of the context where a
        # documentation fragment is embedded. Documentation from the IDL is merged with
        # documentation defined via the config at normalization time, where
        # documentation provided by config rules overrides IDL provided. A number of
        # constructs specific to the API platform are supported in documentation text.
        # In order to reference a proto element, the following notation can be used: [
        # fully.qualified.proto.name][] To override the display text used for the link,
        # this can be used: [display text][fully.qualified.proto.name] Text can be
        # excluded from doc using the following notation: (-- internal comment --) A few
        # directives are available in documentation. Note that directives must appear on
        # a single line to be properly identified. The `include` directive includes a
        # markdown file from an external source: (== include path/to/file ==) The `
        # resource_for` directive marks a message to be the resource of a collection in
        # REST view. If it is not specified, tools attempt to infer the resource from
        # the operations in a collection: (== resource_for v1.shelves.books ==) The
        # directive `suppress_warning` does not directly affect documentation and is
        # documented together with service config validation.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ServiceconsumermanagementV1::Documentation]
        attr_accessor :documentation
      
        # Configuration for network endpoints. If this is empty, then an endpoint with
        # the same name as the service is automatically generated to service all defined
        # APIs.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Endpoint>]
        attr_accessor :endpoints
      
        # A list of all enum types included in this API service. Enums referenced
        # directly or indirectly by the `apis` are automatically included. Enums which
        # are not referenced but shall be included should be listed here by name.
        # Example: enums: - name: google.someapi.v1.SomeEnum
        # Corresponds to the JSON property `enums`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Enum>]
        attr_accessor :enums
      
        # Defines the HTTP configuration for an API service. It contains a list of
        # HttpRule, each specifying the mapping of an RPC method to one or more HTTP
        # REST API methods.
        # Corresponds to the JSON property `http`
        # @return [Google::Apis::ServiceconsumermanagementV1::Http]
        attr_accessor :http
      
        # A unique ID for a specific instance of this message, typically assigned by the
        # client for tracking purpose. Must be no longer than 63 characters and only
        # lower case letters, digits, '.', '_' and '-' are allowed. If empty, the server
        # may choose to generate one instead.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Logging configuration of the service. The following example shows how to
        # configure logs to be sent to the producer and consumer projects. In the
        # example, the `activity_history` log is sent to both the producer and consumer
        # projects, whereas the `purchase_history` log is only sent to the producer
        # project. monitored_resources: - type: library.googleapis.com/branch labels: -
        # key: /city description: The city where the library branch is located in. - key:
        # /name description: The name of the branch. logs: - name: activity_history
        # labels: - key: /customer_id - name: purchase_history logging:
        # producer_destinations: - monitored_resource: library.googleapis.com/branch
        # logs: - activity_history - purchase_history consumer_destinations: -
        # monitored_resource: library.googleapis.com/branch logs: - activity_history
        # Corresponds to the JSON property `logging`
        # @return [Google::Apis::ServiceconsumermanagementV1::Logging]
        attr_accessor :logging
      
        # Defines the logs used by this service.
        # Corresponds to the JSON property `logs`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::LogDescriptor>]
        attr_accessor :logs
      
        # Defines the metrics used by this service.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::MetricDescriptor>]
        attr_accessor :metrics
      
        # Defines the monitored resources used by this service. This is required by the
        # Service.monitoring and Service.logging configurations.
        # Corresponds to the JSON property `monitoredResources`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::MonitoredResourceDescriptor>]
        attr_accessor :monitored_resources
      
        # Monitoring configuration of the service. The example below shows how to
        # configure monitored resources and metrics for monitoring. In the example, a
        # monitored resource and two metrics are defined. The `library.googleapis.com/
        # book/returned_count` metric is sent to both producer and consumer projects,
        # whereas the `library.googleapis.com/book/num_overdue` metric is only sent to
        # the consumer project. monitored_resources: - type: library.googleapis.com/
        # Branch display_name: "Library Branch" description: "A branch of a library."
        # launch_stage: GA labels: - key: resource_container description: "The Cloud
        # container (ie. project id) for the Branch." - key: location description: "The
        # location of the library branch." - key: branch_id description: "The id of the
        # branch." metrics: - name: library.googleapis.com/book/returned_count
        # display_name: "Books Returned" description: "The count of books that have been
        # returned." launch_stage: GA metric_kind: DELTA value_type: INT64 unit: "1"
        # labels: - key: customer_id description: "The id of the customer." - name:
        # library.googleapis.com/book/num_overdue display_name: "Books Overdue"
        # description: "The current number of overdue books." launch_stage: GA
        # metric_kind: GAUGE value_type: INT64 unit: "1" labels: - key: customer_id
        # description: "The id of the customer." monitoring: producer_destinations: -
        # monitored_resource: library.googleapis.com/Branch metrics: - library.
        # googleapis.com/book/returned_count consumer_destinations: - monitored_resource:
        # library.googleapis.com/Branch metrics: - library.googleapis.com/book/
        # returned_count - library.googleapis.com/book/num_overdue
        # Corresponds to the JSON property `monitoring`
        # @return [Google::Apis::ServiceconsumermanagementV1::Monitoring]
        attr_accessor :monitoring
      
        # The service name, which is a DNS-like logical identifier for the service, such
        # as `calendar.googleapis.com`. The service name typically goes through DNS
        # verification to make sure the owner of the service also owns the DNS name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Google project that owns this service.
        # Corresponds to the JSON property `producerProjectId`
        # @return [String]
        attr_accessor :producer_project_id
      
        # Quota configuration helps to achieve fairness and budgeting in service usage.
        # The metric based quota configuration works this way: - The service
        # configuration defines a set of metrics. - For API calls, the quota.
        # metric_rules maps methods to metrics with corresponding costs. - The quota.
        # limits defines limits on the metrics, which will be used for quota checks at
        # runtime. An example quota configuration in yaml format: quota: limits: - name:
        # apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: "1/min/`
        # project`" # rate limit for consumer projects values: STANDARD: 10000 # The
        # metric rules bind all methods to the read_calls metric, # except for the
        # UpdateBook and DeleteBook methods. These two methods # are mapped to the
        # write_calls metric, with the UpdateBook method # consuming at twice rate as
        # the DeleteBook method. metric_rules: - selector: "*" metric_costs: library.
        # googleapis.com/read_calls: 1 - selector: google.example.library.v1.
        # LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 -
        # selector: google.example.library.v1.LibraryService.DeleteBook metric_costs:
        # library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics:
        # - name: library.googleapis.com/read_calls display_name: Read requests
        # metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/
        # write_calls display_name: Write requests metric_kind: DELTA value_type: INT64
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::ServiceconsumermanagementV1::Quota]
        attr_accessor :quota
      
        # Source information used to create a Service Config
        # Corresponds to the JSON property `sourceInfo`
        # @return [Google::Apis::ServiceconsumermanagementV1::SourceInfo]
        attr_accessor :source_info
      
        # ### System parameter configuration A system parameter is a special kind of
        # parameter defined by the API system, not by an individual API. It is typically
        # mapped to an HTTP header and/or a URL query parameter. This configuration
        # specifies which methods change the names of the system parameters.
        # Corresponds to the JSON property `systemParameters`
        # @return [Google::Apis::ServiceconsumermanagementV1::SystemParameters]
        attr_accessor :system_parameters
      
        # A list of all proto message types included in this API service. It serves
        # similar purpose as [google.api.Service.types], except that these types are not
        # needed by user-defined APIs. Therefore, they will not show up in the generated
        # discovery doc. This field should only be used to define system APIs in ESF.
        # Corresponds to the JSON property `systemTypes`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Type>]
        attr_accessor :system_types
      
        # The product title for this service.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # A list of all proto message types included in this API service. Types
        # referenced directly or indirectly by the `apis` are automatically included.
        # Messages which are not referenced but shall be included, such as types used by
        # the `google.protobuf.Any` type, should be listed here by name. Example: types:
        # - name: google.protobuf.Int32
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Type>]
        attr_accessor :types
      
        # Configuration controlling usage of a service.
        # Corresponds to the JSON property `usage`
        # @return [Google::Apis::ServiceconsumermanagementV1::Usage]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apis = args[:apis] if args.key?(:apis)
          @authentication = args[:authentication] if args.key?(:authentication)
          @backend = args[:backend] if args.key?(:backend)
          @billing = args[:billing] if args.key?(:billing)
          @config_version = args[:config_version] if args.key?(:config_version)
          @context = args[:context] if args.key?(:context)
          @control = args[:control] if args.key?(:control)
          @custom_error = args[:custom_error] if args.key?(:custom_error)
          @documentation = args[:documentation] if args.key?(:documentation)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @enums = args[:enums] if args.key?(:enums)
          @http = args[:http] if args.key?(:http)
          @id = args[:id] if args.key?(:id)
          @logging = args[:logging] if args.key?(:logging)
          @logs = args[:logs] if args.key?(:logs)
          @metrics = args[:metrics] if args.key?(:metrics)
          @monitored_resources = args[:monitored_resources] if args.key?(:monitored_resources)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
          @name = args[:name] if args.key?(:name)
          @producer_project_id = args[:producer_project_id] if args.key?(:producer_project_id)
          @quota = args[:quota] if args.key?(:quota)
          @source_info = args[:source_info] if args.key?(:source_info)
          @system_parameters = args[:system_parameters] if args.key?(:system_parameters)
          @system_types = args[:system_types] if args.key?(:system_types)
          @title = args[:title] if args.key?(:title)
          @types = args[:types] if args.key?(:types)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # Describes the service account configuration for the tenant project.
      class ServiceAccountConfig
        include Google::Apis::Core::Hashable
      
        # ID of the IAM service account to be created in tenant project. The email
        # format of the service account is "@.iam.gserviceaccount.com". This account ID
        # must be unique within tenant project and service producers have to guarantee
        # it. The ID must be 6-30 characters long, and match the following regular
        # expression: `[a-z]([-a-z0-9]*[a-z0-9])`.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Roles for the associated service account for the tenant project.
        # Corresponds to the JSON property `tenantProjectRoles`
        # @return [Array<String>]
        attr_accessor :tenant_project_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @tenant_project_roles = args[:tenant_project_roles] if args.key?(:tenant_project_roles)
        end
      end
      
      # `SourceContext` represents information about the source of a protobuf element,
      # like the file in which it is defined.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # The path-qualified name of the .proto file that contained the associated
        # protobuf element. For example: `"google/protobuf/source_context.proto"`.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_name = args[:file_name] if args.key?(:file_name)
        end
      end
      
      # Source information used to create a Service Config
      class SourceInfo
        include Google::Apis::Core::Hashable
      
        # All files used during config generation.
        # Corresponds to the JSON property `sourceFiles`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :source_files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_files = args[:source_files] if args.key?(:source_files)
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
      
      # Define a parameter's name and location. The parameter may be passed as either
      # an HTTP header or a URL query parameter, and if both are passed the behavior
      # is implementation-dependent.
      class SystemParameter
        include Google::Apis::Core::Hashable
      
        # Define the HTTP header name to use for the parameter. It is case insensitive.
        # Corresponds to the JSON property `httpHeader`
        # @return [String]
        attr_accessor :http_header
      
        # Define the name of the parameter, such as "api_key" . It is case sensitive.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Define the URL query parameter name to use for the parameter. It is case
        # sensitive.
        # Corresponds to the JSON property `urlQueryParameter`
        # @return [String]
        attr_accessor :url_query_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_header = args[:http_header] if args.key?(:http_header)
          @name = args[:name] if args.key?(:name)
          @url_query_parameter = args[:url_query_parameter] if args.key?(:url_query_parameter)
        end
      end
      
      # Define a system parameter rule mapping system parameter definitions to methods.
      class SystemParameterRule
        include Google::Apis::Core::Hashable
      
        # Define parameters. Multiple names may be defined for a parameter. For a given
        # method call, only one of them should be used. If multiple names are used the
        # behavior is implementation-dependent. If none of the specified names are
        # present the behavior is parameter-dependent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::SystemParameter>]
        attr_accessor :parameters
      
        # Selects the methods to which this rule applies. Use '*' to indicate all
        # methods in all APIs. Refer to selector for syntax details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @selector = args[:selector] if args.key?(:selector)
        end
      end
      
      # ### System parameter configuration A system parameter is a special kind of
      # parameter defined by the API system, not by an individual API. It is typically
      # mapped to an HTTP header and/or a URL query parameter. This configuration
      # specifies which methods change the names of the system parameters.
      class SystemParameters
        include Google::Apis::Core::Hashable
      
        # Define system parameters. The parameters defined here will override the
        # default parameters implemented by the system. If this field is missing from
        # the service config, default system parameters will be used. Default system
        # parameters and names is implementation-dependent. Example: define api key for
        # all methods system_parameters rules: - selector: "*" parameters: - name:
        # api_key url_query_parameter: api_key Example: define 2 api key names for a
        # specific method. system_parameters rules: - selector: "/ListShelves"
        # parameters: - name: api_key http_header: Api-Key1 - name: api_key http_header:
        # Api-Key2 **NOTE:** All service configuration rules follow "last one wins"
        # order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::SystemParameterRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Representation of a tenancy unit.
      class TenancyUnit
        include Google::Apis::Core::Hashable
      
        # Output only. @OutputOnly Cloud resource name of the consumer of this service.
        # For example 'projects/123456'.
        # Corresponds to the JSON property `consumer`
        # @return [String]
        attr_accessor :consumer
      
        # Output only. @OutputOnly The time this tenancy unit was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Globally unique identifier of this tenancy unit "services/`service`/`
        # collection id`/`resource id`/tenancyUnits/`unit`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Google Cloud API name of the managed service owning this tenancy
        # unit. For example 'serviceconsumermanagement.googleapis.com'.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Resources constituting the tenancy unit. There can be at most 512 tenant
        # resources in a tenancy unit.
        # Corresponds to the JSON property `tenantResources`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::TenantResource>]
        attr_accessor :tenant_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer = args[:consumer] if args.key?(:consumer)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @service = args[:service] if args.key?(:service)
          @tenant_resources = args[:tenant_resources] if args.key?(:tenant_resources)
        end
      end
      
      # This structure defines a tenant project to be added to the specified tenancy
      # unit and its initial configuration and properties. A project lien is created
      # for the tenant project to prevent the tenant project from being deleted
      # accidentally. The lien is deleted as part of tenant project removal.
      class TenantProjectConfig
        include Google::Apis::Core::Hashable
      
        # Describes the billing configuration for a new tenant project.
        # Corresponds to the JSON property `billingConfig`
        # @return [Google::Apis::ServiceconsumermanagementV1::BillingConfig]
        attr_accessor :billing_config
      
        # Folder where project in this tenancy unit must be located This folder must
        # have been previously created with the required permissions for the caller to
        # create and configure a project in it. Valid folder resource names have the
        # format `folders/`folder_number`` (for example, `folders/123456`).
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        # Labels that are applied to this project.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Describes the service account configuration for the tenant project.
        # Corresponds to the JSON property `serviceAccountConfig`
        # @return [Google::Apis::ServiceconsumermanagementV1::ServiceAccountConfig]
        attr_accessor :service_account_config
      
        # Google Cloud API names of services that are activated on this project during
        # provisioning. If any of these services can't be activated, the request fails.
        # For example: 'compute.googleapis.com','cloudfunctions.googleapis.com'
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        # Describes policy settings that need to be applied to a newly created tenant
        # project.
        # Corresponds to the JSON property `tenantProjectPolicy`
        # @return [Google::Apis::ServiceconsumermanagementV1::TenantProjectPolicy]
        attr_accessor :tenant_project_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_config = args[:billing_config] if args.key?(:billing_config)
          @folder = args[:folder] if args.key?(:folder)
          @labels = args[:labels] if args.key?(:labels)
          @service_account_config = args[:service_account_config] if args.key?(:service_account_config)
          @services = args[:services] if args.key?(:services)
          @tenant_project_policy = args[:tenant_project_policy] if args.key?(:tenant_project_policy)
        end
      end
      
      # Describes policy settings that need to be applied to a newly created tenant
      # project.
      class TenantProjectPolicy
        include Google::Apis::Core::Hashable
      
        # Policy bindings to be applied to the tenant project, in addition to the 'roles/
        # owner' role granted to the Service Consumer Management service account. At
        # least one binding must have the role `roles/owner`. Among the list of members
        # for `roles/owner`, at least one of them must be either the `user` or `group`
        # type.
        # Corresponds to the JSON property `policyBindings`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::PolicyBinding>]
        attr_accessor :policy_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_bindings = args[:policy_bindings] if args.key?(:policy_bindings)
        end
      end
      
      # Resource constituting the TenancyUnit.
      class TenantResource
        include Google::Apis::Core::Hashable
      
        # Output only. @OutputOnly Identifier of the tenant resource. For cloud projects,
        # it is in the form 'projects/`number`'. For example 'projects/123456'.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Status of tenant resource.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Unique per single tenancy unit.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @status = args[:status] if args.key?(:status)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A protocol buffer message type.
      class Type
        include Google::Apis::Core::Hashable
      
        # The list of fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Field>]
        attr_accessor :fields
      
        # The fully qualified message name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of types appearing in `oneof` definitions in this type.
        # Corresponds to the JSON property `oneofs`
        # @return [Array<String>]
        attr_accessor :oneofs
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::Option>]
        attr_accessor :options
      
        # `SourceContext` represents information about the source of a protobuf element,
        # like the file in which it is defined.
        # Corresponds to the JSON property `sourceContext`
        # @return [Google::Apis::ServiceconsumermanagementV1::SourceContext]
        attr_accessor :source_context
      
        # The source syntax.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @oneofs = args[:oneofs] if args.key?(:oneofs)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # Request message to undelete tenant project resource previously deleted from
      # the tenancy unit.
      class UndeleteTenantProjectRequest
        include Google::Apis::Core::Hashable
      
        # Required. Tag of the resource within the tenancy unit.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Configuration controlling usage of a service.
      class Usage
        include Google::Apis::Core::Hashable
      
        # The full resource name of a channel used for sending notifications to the
        # service producer. Google Service Management currently only supports [Google
        # Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification channel. To
        # use Google Cloud Pub/Sub as the channel, this must be the name of a Cloud Pub/
        # Sub topic that uses the Cloud Pub/Sub topic name format documented in https://
        # cloud.google.com/pubsub/docs/overview.
        # Corresponds to the JSON property `producerNotificationChannel`
        # @return [String]
        attr_accessor :producer_notification_channel
      
        # Requirements that must be satisfied before a consumer project can use the
        # service. Each requirement is of the form /; for example 'serviceusage.
        # googleapis.com/billing-enabled'.
        # Corresponds to the JSON property `requirements`
        # @return [Array<String>]
        attr_accessor :requirements
      
        # A list of usage rules that apply to individual API methods. **NOTE:** All
        # service configuration rules follow "last one wins" order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::UsageRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @producer_notification_channel = args[:producer_notification_channel] if args.key?(:producer_notification_channel)
          @requirements = args[:requirements] if args.key?(:requirements)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Usage configuration rules for the service. NOTE: Under development. Use this
      # rule to configure unregistered calls for the service. Unregistered calls are
      # calls that do not contain consumer project identity. (Example: calls that do
      # not contain an API key). By default, API methods do not allow unregistered
      # calls, and each method call must be identified by a consumer project identity.
      # Use this rule to allow/disallow unregistered calls. Example of an API that
      # wants to allow unregistered calls for entire service. usage: rules: - selector:
      # "*" allow_unregistered_calls: true Example of a method that wants to allow
      # unregistered calls. usage: rules: - selector: "google.example.library.v1.
      # LibraryService.CreateBook" allow_unregistered_calls: true
      class UsageRule
        include Google::Apis::Core::Hashable
      
        # If true, the selected method allows unregistered calls, e.g. calls that don't
        # identify any user or application.
        # Corresponds to the JSON property `allowUnregisteredCalls`
        # @return [Boolean]
        attr_accessor :allow_unregistered_calls
        alias_method :allow_unregistered_calls?, :allow_unregistered_calls
      
        # Selects the methods to which this rule applies. Use '*' to indicate all
        # methods in all APIs. Refer to selector for syntax details.
        # Corresponds to the JSON property `selector`
        # @return [String]
        attr_accessor :selector
      
        # If true, the selected method should skip service control and the control plane
        # features, such as quota and billing, will not be available. This flag is used
        # by Google Cloud Endpoints to bypass checks for internal methods, such as
        # service health check methods.
        # Corresponds to the JSON property `skipServiceControl`
        # @return [Boolean]
        attr_accessor :skip_service_control
        alias_method :skip_service_control?, :skip_service_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_unregistered_calls = args[:allow_unregistered_calls] if args.key?(:allow_unregistered_calls)
          @selector = args[:selector] if args.key?(:selector)
          @skip_service_control = args[:skip_service_control] if args.key?(:skip_service_control)
        end
      end
      
      # Response message for the `AddVisibilityLabels` method. This response message
      # is assigned to the `response` field of the returned Operation when that
      # operation is done.
      class V1AddVisibilityLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The updated set of visibility labels for this consumer on this service.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Response message for BatchCreateProducerOverrides
      class V1Beta1BatchCreateProducerOverridesResponse
        include Google::Apis::Core::Hashable
      
        # The overrides that were created.
        # Corresponds to the JSON property `overrides`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::V1Beta1QuotaOverride>]
        attr_accessor :overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overrides = args[:overrides] if args.key?(:overrides)
        end
      end
      
      # Response message for the `DisableConsumer` method. This response message is
      # assigned to the `response` field of the returned Operation when that operation
      # is done.
      class V1Beta1DisableConsumerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the `EnableConsumer` method. This response message is
      # assigned to the `response` field of the returned Operation when that operation
      # is done.
      class V1Beta1EnableConsumerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the `GenerateServiceIdentity` method. This response
      # message is assigned to the `response` field of the returned Operation when
      # that operation is done.
      class V1Beta1GenerateServiceIdentityResponse
        include Google::Apis::Core::Hashable
      
        # A service identity in the Identity and Access Management API.
        # Corresponds to the JSON property `identity`
        # @return [Google::Apis::ServiceconsumermanagementV1::V1Beta1ServiceIdentity]
        attr_accessor :identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity = args[:identity] if args.key?(:identity)
        end
      end
      
      # Response message for ImportProducerOverrides
      class V1Beta1ImportProducerOverridesResponse
        include Google::Apis::Core::Hashable
      
        # The overrides that were created from the imported data.
        # Corresponds to the JSON property `overrides`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::V1Beta1QuotaOverride>]
        attr_accessor :overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overrides = args[:overrides] if args.key?(:overrides)
        end
      end
      
      # Response message for ImportProducerQuotaPolicies
      class V1Beta1ImportProducerQuotaPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The policies that were created from the imported data.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::ServiceconsumermanagementV1::V1Beta1ProducerQuotaPolicy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # Quota policy created by service producer.
      class V1Beta1ProducerQuotaPolicy
        include Google::Apis::Core::Hashable
      
        # The cloud resource container at which the quota policy is created. The format
        # is `container_type`/`container_number`
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # If this map is nonempty, then this policy applies only to specific values for
        # dimensions defined in the limit unit. For example, an policy on a limit with
        # the unit 1/`project`/`region` could contain an entry with the key "region" and
        # the value "us-east-1"; the policy is only applied to quota consumed in that
        # region. This map has the following restrictions: * Keys that are not defined
        # in the limit's unit are not valid keys. Any string appearing in `brackets` in
        # the unit (besides `project` or `user`) is a defined key. * "project" is not a
        # valid key; the project is already specified in the parent resource name. * "
        # user" is not a valid key; the API does not support quota polcies that apply
        # only to a specific user. * If "region" appears as a key, its value must be a
        # valid Cloud region. * If "zone" appears as a key, its value must be a valid
        # Cloud zone. * If any valid key other than "region" or "zone" appears in the
        # map, then all valid keys other than "region" or "zone" must also appear in the
        # map.
        # Corresponds to the JSON property `dimensions`
        # @return [Hash<String,String>]
        attr_accessor :dimensions
      
        # The name of the metric to which this policy applies. An example name would be:
        # `compute.googleapis.com/cpus`
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The resource name of the producer policy. An example name would be: `services/
        # compute.googleapis.com/organizations/123/consumerQuotaMetrics/compute.
        # googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerQuotaPolicies/
        # 4a3f2c1d`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The quota policy value. Can be any nonnegative integer, or -1 (unlimited quota)
        # .
        # Corresponds to the JSON property `policyValue`
        # @return [Fixnum]
        attr_accessor :policy_value
      
        # The limit unit of the limit to which this policy applies. An example unit
        # would be: `1/`project`/`region`` Note that ``project`` and ``region`` are not
        # placeholders in this example; the literal characters ``` and ``` occur in the
        # string.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container = args[:container] if args.key?(:container)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metric = args[:metric] if args.key?(:metric)
          @name = args[:name] if args.key?(:name)
          @policy_value = args[:policy_value] if args.key?(:policy_value)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # A quota override
      class V1Beta1QuotaOverride
        include Google::Apis::Core::Hashable
      
        # The resource name of the ancestor that requested the override. For example: "
        # organizations/12345" or "folders/67890". Used by admin overrides only.
        # Corresponds to the JSON property `adminOverrideAncestor`
        # @return [String]
        attr_accessor :admin_override_ancestor
      
        # If this map is nonempty, then this override applies only to specific values
        # for dimensions defined in the limit unit. For example, an override on a limit
        # with the unit 1/`project`/`region` could contain an entry with the key "region"
        # and the value "us-east-1"; the override is only applied to quota consumed in
        # that region. This map has the following restrictions: * Keys that are not
        # defined in the limit's unit are not valid keys. Any string appearing in `
        # brackets` in the unit (besides `project` or `user`) is a defined key. * "
        # project" is not a valid key; the project is already specified in the parent
        # resource name. * "user" is not a valid key; the API does not support quota
        # overrides that apply only to a specific user. * If "region" appears as a key,
        # its value must be a valid Cloud region. * If "zone" appears as a key, its
        # value must be a valid Cloud zone. * If any valid key other than "region" or "
        # zone" appears in the map, then all valid keys other than "region" or "zone"
        # must also appear in the map.
        # Corresponds to the JSON property `dimensions`
        # @return [Hash<String,String>]
        attr_accessor :dimensions
      
        # The name of the metric to which this override applies. An example name would
        # be: `compute.googleapis.com/cpus`
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The resource name of the producer override. An example name would be: `
        # services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.
        # googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The overriding quota limit value. Can be any nonnegative integer, or -1 (
        # unlimited quota).
        # Corresponds to the JSON property `overrideValue`
        # @return [Fixnum]
        attr_accessor :override_value
      
        # The limit unit of the limit to which this override applies. An example unit
        # would be: `1/`project`/`region`` Note that ``project`` and ``region`` are not
        # placeholders in this example; the literal characters ``` and ``` occur in the
        # string.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_override_ancestor = args[:admin_override_ancestor] if args.key?(:admin_override_ancestor)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metric = args[:metric] if args.key?(:metric)
          @name = args[:name] if args.key?(:name)
          @override_value = args[:override_value] if args.key?(:override_value)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Response message for the `RefreshConsumer` method. This response message is
      # assigned to the `response` field of the returned Operation when that operation
      # is done.
      class V1Beta1RefreshConsumerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A service identity in the Identity and Access Management API.
      class V1Beta1ServiceIdentity
        include Google::Apis::Core::Hashable
      
        # The email address of the service identity.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # P4 service identity resource name. An example name would be: `services/
        # serviceconsumermanagement.googleapis.com/projects/123/serviceIdentities/
        # default`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The P4 service identity configuration tag. This must be defined in
        # activation_grants. If not specified when creating the account, the tag is set
        # to "default".
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The unique and stable id of the service identity.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @tag = args[:tag] if args.key?(:tag)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
      
      # A default identity in the Identity and Access Management API.
      class V1DefaultIdentity
        include Google::Apis::Core::Hashable
      
        # The email address of the default identity.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Default identity resource name. An example name would be: `services/
        # serviceconsumermanagement.googleapis.com/projects/123/defaultIdentity`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique and stable id of the default identity.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
      
      # Response message for the `DisableConsumer` method. This response message is
      # assigned to the `response` field of the returned Operation when that operation
      # is done.
      class V1DisableConsumerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the `EnableConsumer` method. This response message is
      # assigned to the `response` field of the returned Operation when that operation
      # is done.
      class V1EnableConsumerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the `GenerateDefaultIdentity` method. This response
      # message is assigned to the `response` field of the returned Operation when
      # that operation is done.
      class V1GenerateDefaultIdentityResponse
        include Google::Apis::Core::Hashable
      
        # Status of the role attachment. Under development (go/si-attach-role),
        # currently always return ATTACH_STATUS_UNSPECIFIED)
        # Corresponds to the JSON property `attachStatus`
        # @return [String]
        attr_accessor :attach_status
      
        # A default identity in the Identity and Access Management API.
        # Corresponds to the JSON property `identity`
        # @return [Google::Apis::ServiceconsumermanagementV1::V1DefaultIdentity]
        attr_accessor :identity
      
        # Role attached to consumer project. Empty if not attached in this request. (
        # Under development, currently always return empty.)
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attach_status = args[:attach_status] if args.key?(:attach_status)
          @identity = args[:identity] if args.key?(:identity)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Response message for the `GenerateServiceAccount` method. This response
      # message is assigned to the `response` field of the returned Operation when
      # that operation is done.
      class V1GenerateServiceAccountResponse
        include Google::Apis::Core::Hashable
      
        # A service account in the Identity and Access Management API.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ServiceconsumermanagementV1::V1ServiceAccount]
        attr_accessor :account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
        end
      end
      
      # Response message for the `RefreshConsumer` method. This response message is
      # assigned to the `response` field of the returned Operation when that operation
      # is done.
      class V1RefreshConsumerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the `RemoveVisibilityLabels` method. This response
      # message is assigned to the `response` field of the returned Operation when
      # that operation is done.
      class V1RemoveVisibilityLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The updated set of visibility labels for this consumer on this service.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # A service account in the Identity and Access Management API.
      class V1ServiceAccount
        include Google::Apis::Core::Hashable
      
        # The email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Deprecated. See b/136209818.
        # Corresponds to the JSON property `iamAccountName`
        # @return [String]
        attr_accessor :iam_account_name
      
        # P4 SA resource name. An example name would be: `services/
        # serviceconsumermanagement.googleapis.com/projects/123/serviceAccounts/default`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The P4 SA configuration tag. This must be defined in activation_grants. If not
        # specified when creating the account, the tag is set to "default".
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The unique and stable id of the service account.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @iam_account_name = args[:iam_account_name] if args.key?(:iam_account_name)
          @name = args[:name] if args.key?(:name)
          @tag = args[:tag] if args.key?(:tag)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
    end
  end
end
