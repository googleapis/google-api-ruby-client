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
    module ServicecontrolV2
      
      # This message defines attributes associated with API operations, such as a
      # network API request. The terminology is based on the conventions used by
      # Google APIs, Istio, and OpenAPI.
      class Api
        include Google::Apis::Core::Hashable
      
        # The API operation name. For gRPC requests, it is the fully qualified API
        # method name, such as "google.pubsub.v1.Publisher.Publish". For OpenAPI
        # requests, it is the `operationId`, such as "getPet".
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The API protocol used for sending the request, such as "http", "https", "grpc",
        # or "internal".
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The API service name. It is a logical identifier for a networked API, such as "
        # pubsub.googleapis.com". The naming syntax depends on the API management system
        # being used for handling the request.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The API version associated with the API operation above, such as "v1" or "
        # v1alpha1".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @protocol = args[:protocol] if args.key?(:protocol)
          @service = args[:service] if args.key?(:service)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # This message defines the standard attribute vocabulary for Google APIs. An
      # attribute is a piece of metadata that describes an activity on a network
      # service. For example, the size of an HTTP request, or the status code of an
      # HTTP response. Each attribute has a type and a name, which is logically
      # defined as a proto message field in `AttributeContext`. The field type becomes
      # the attribute type, and the field path becomes the attribute name. For example,
      # the attribute `source.ip` maps to field `AttributeContext.source.ip`. This
      # message definition is guaranteed not to have any wire breaking change. So you
      # can use it directly for passing attributes across different systems. NOTE:
      # Different system may generate different subset of attributes. Please verify
      # the system specification before relying on an attribute generated a system.
      class AttributeContext
        include Google::Apis::Core::Hashable
      
        # This message defines attributes associated with API operations, such as a
        # network API request. The terminology is based on the conventions used by
        # Google APIs, Istio, and OpenAPI.
        # Corresponds to the JSON property `api`
        # @return [Google::Apis::ServicecontrolV2::Api]
        attr_accessor :api
      
        # This message defines attributes for a node that handles a network request. The
        # node can be either a service or an application that sends, forwards, or
        # receives the request. Service peers should fill in `principal` and `labels` as
        # appropriate.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::ServicecontrolV2::Peer]
        attr_accessor :destination
      
        # Supports extensions for advanced use cases, such as logs and metrics.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        # This message defines attributes for a node that handles a network request. The
        # node can be either a service or an application that sends, forwards, or
        # receives the request. Service peers should fill in `principal` and `labels` as
        # appropriate.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::ServicecontrolV2::Peer]
        attr_accessor :origin
      
        # This message defines attributes for an HTTP request. If the actual request is
        # not an HTTP request, the runtime system should try to map the actual request
        # to an equivalent HTTP request.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ServicecontrolV2::Request]
        attr_accessor :request
      
        # This message defines core attributes for a resource. A resource is an
        # addressable (named) entity provided by the destination service. For example, a
        # file stored on a network storage service.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ServicecontrolV2::Resource]
        attr_accessor :resource
      
        # This message defines attributes for a typical network response. It generally
        # models semantics of an HTTP response.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::ServicecontrolV2::Response]
        attr_accessor :response
      
        # This message defines attributes for a node that handles a network request. The
        # node can be either a service or an application that sends, forwards, or
        # receives the request. Service peers should fill in `principal` and `labels` as
        # appropriate.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::ServicecontrolV2::Peer]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @destination = args[:destination] if args.key?(:destination)
          @extensions = args[:extensions] if args.key?(:extensions)
          @origin = args[:origin] if args.key?(:origin)
          @request = args[:request] if args.key?(:request)
          @resource = args[:resource] if args.key?(:resource)
          @response = args[:response] if args.key?(:response)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Common audit log format for Google Cloud Platform API operations.
      class AuditLog
        include Google::Apis::Core::Hashable
      
        # Authentication information for the operation.
        # Corresponds to the JSON property `authenticationInfo`
        # @return [Google::Apis::ServicecontrolV2::AuthenticationInfo]
        attr_accessor :authentication_info
      
        # Authorization information. If there are multiple resources or permissions
        # involved, then there is one AuthorizationInfo element for each `resource,
        # permission` tuple.
        # Corresponds to the JSON property `authorizationInfo`
        # @return [Array<Google::Apis::ServicecontrolV2::AuthorizationInfo>]
        attr_accessor :authorization_info
      
        # Other service-specific data about the request, response, and other information
        # associated with the current audited event.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The name of the service method or operation. For API calls, this should be the
        # name of the API method. For example, "google.cloud.bigquery.v2.TableService.
        # InsertTable" "google.logging.v2.ConfigServiceV2.CreateSink"
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # The number of items returned from a List or Query API method, if applicable.
        # Corresponds to the JSON property `numResponseItems`
        # @return [Fixnum]
        attr_accessor :num_response_items
      
        # The operation request. This may not include all request parameters, such as
        # those that are too large, privacy-sensitive, or duplicated elsewhere in the
        # log record. It should never include user-generated data, such as file contents.
        # When the JSON object represented here has a proto equivalent, the proto name
        # will be indicated in the `@type` property.
        # Corresponds to the JSON property `request`
        # @return [Hash<String,Object>]
        attr_accessor :request
      
        # Metadata about the request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ServicecontrolV2::RequestMetadata]
        attr_accessor :request_metadata
      
        # Location information about a resource.
        # Corresponds to the JSON property `resourceLocation`
        # @return [Google::Apis::ServicecontrolV2::ResourceLocation]
        attr_accessor :resource_location
      
        # The resource or collection that is the target of the operation. The name is a
        # scheme-less URI, not including the API service name. For example: "projects/
        # PROJECT_ID/zones/us-central1-a/instances" "projects/PROJECT_ID/datasets/
        # DATASET_ID"
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The resource's original state before mutation. Present only for operations
        # which have successfully modified the targeted resource(s). In general, this
        # field should contain all changed fields, except those that are already been
        # included in `request`, `response`, `metadata` or `service_data` fields. When
        # the JSON object represented here has a proto equivalent, the proto name will
        # be indicated in the `@type` property.
        # Corresponds to the JSON property `resourceOriginalState`
        # @return [Hash<String,Object>]
        attr_accessor :resource_original_state
      
        # The operation response. This may not include all response elements, such as
        # those that are too large, privacy-sensitive, or duplicated elsewhere in the
        # log record. It should never include user-generated data, such as file contents.
        # When the JSON object represented here has a proto equivalent, the proto name
        # will be indicated in the `@type` property.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        # Deprecated. Use the `metadata` field instead. Other service-specific data
        # about the request, response, and other activities.
        # Corresponds to the JSON property `serviceData`
        # @return [Hash<String,Object>]
        attr_accessor :service_data
      
        # The name of the API service performing the operation. For example, `"compute.
        # googleapis.com"`.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ServicecontrolV2::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_info = args[:authentication_info] if args.key?(:authentication_info)
          @authorization_info = args[:authorization_info] if args.key?(:authorization_info)
          @metadata = args[:metadata] if args.key?(:metadata)
          @method_name = args[:method_name] if args.key?(:method_name)
          @num_response_items = args[:num_response_items] if args.key?(:num_response_items)
          @request = args[:request] if args.key?(:request)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @resource_location = args[:resource_location] if args.key?(:resource_location)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_original_state = args[:resource_original_state] if args.key?(:resource_original_state)
          @response = args[:response] if args.key?(:response)
          @service_data = args[:service_data] if args.key?(:service_data)
          @service_name = args[:service_name] if args.key?(:service_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # This message defines request authentication attributes. Terminology is based
      # on the JSON Web Token (JWT) standard, but the terms also correlate to concepts
      # in other standards.
      class Auth
        include Google::Apis::Core::Hashable
      
        # A list of access level resource names that allow resources to be accessed by
        # authenticated requester. It is part of Secure GCP processing for the incoming
        # request. An access level string has the format: "//`api_service_name`/
        # accessPolicies/`policy_id`/accessLevels/`short_name`" Example: "//
        # accesscontextmanager.googleapis.com/accessPolicies/MY_POLICY_ID/accessLevels/
        # MY_LEVEL"
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<String>]
        attr_accessor :access_levels
      
        # The intended audience(s) for this authentication information. Reflects the
        # audience (`aud`) claim within a JWT. The audience value(s) depends on the `
        # issuer`, but typically include one or more of the following pieces of
        # information: * The services intended to receive the credential. For example, ["
        # https://pubsub.googleapis.com/", "https://storage.googleapis.com/"]. * A set
        # of service-based scopes. For example, ["https://www.googleapis.com/auth/cloud-
        # platform"]. * The client id of an app, such as the Firebase project id for
        # JWTs from Firebase Auth. Consult the documentation for the credential issuer
        # to determine the information provided.
        # Corresponds to the JSON property `audiences`
        # @return [Array<String>]
        attr_accessor :audiences
      
        # Structured claims presented with the credential. JWTs include ``key: value``
        # pairs for standard and private claims. The following is a subset of the
        # standard required and optional claims that would typically be presented for a
        # Google-based JWT: `'iss': 'accounts.google.com', 'sub': '113289723416554971153'
        # , 'aud': ['123456789012', 'pubsub.googleapis.com'], 'azp': '123456789012.apps.
        # googleusercontent.com', 'email': 'jsmith@example.com', 'iat': 1353601026, 'exp'
        # : 1353604926` SAML assertions are similarly specified, but with an identity
        # provider dependent structure.
        # Corresponds to the JSON property `claims`
        # @return [Hash<String,Object>]
        attr_accessor :claims
      
        # The authorized presenter of the credential. Reflects the optional Authorized
        # Presenter (`azp`) claim within a JWT or the OAuth client id. For example, a
        # Google Cloud Platform client id looks as follows: "123456789012.apps.
        # googleusercontent.com".
        # Corresponds to the JSON property `presenter`
        # @return [String]
        attr_accessor :presenter
      
        # The authenticated principal. Reflects the issuer (`iss`) and subject (`sub`)
        # claims within a JWT. The issuer and subject should be `/` delimited, with `/`
        # percent-encoded within the subject fragment. For Google accounts, the
        # principal format is: "https://accounts.google.com/`id`"
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @audiences = args[:audiences] if args.key?(:audiences)
          @claims = args[:claims] if args.key?(:claims)
          @presenter = args[:presenter] if args.key?(:presenter)
          @principal = args[:principal] if args.key?(:principal)
        end
      end
      
      # Authentication information for the operation.
      class AuthenticationInfo
        include Google::Apis::Core::Hashable
      
        # The authority selector specified by the requestor, if any. It is not
        # guaranteed that the principal was allowed to use this authority.
        # Corresponds to the JSON property `authoritySelector`
        # @return [String]
        attr_accessor :authority_selector
      
        # The email address of the authenticated user (or service account on behalf of
        # third party principal) making the request. For third party identity callers,
        # the `principal_subject` field is populated instead of this field. For privacy
        # reasons, the principal email address is sometimes redacted. For more
        # information, see [Caller identities in audit logs](https://cloud.google.com/
        # logging/docs/audit#user-id).
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # String representation of identity of requesting party. Populated for both
        # first and third party identities.
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        # Identity delegation history of an authenticated service account that makes the
        # request. It contains information on the real authorities that try to access
        # GCP resources by delegating on a service account. When multiple authorities
        # present, they are guaranteed to be sorted based on the original ordering of
        # the identity delegation events.
        # Corresponds to the JSON property `serviceAccountDelegationInfo`
        # @return [Array<Google::Apis::ServicecontrolV2::ServiceAccountDelegationInfo>]
        attr_accessor :service_account_delegation_info
      
        # The name of the service account key used to create or exchange credentials for
        # authenticating the service account making the request. This is a scheme-less
        # URI full resource name. For example: "//iam.googleapis.com/projects/`
        # PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key`"
        # Corresponds to the JSON property `serviceAccountKeyName`
        # @return [String]
        attr_accessor :service_account_key_name
      
        # The third party identification (if any) of the authenticated user making the
        # request. When the JSON object represented here has a proto equivalent, the
        # proto name will be indicated in the `@type` property.
        # Corresponds to the JSON property `thirdPartyPrincipal`
        # @return [Hash<String,Object>]
        attr_accessor :third_party_principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority_selector = args[:authority_selector] if args.key?(:authority_selector)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @service_account_delegation_info = args[:service_account_delegation_info] if args.key?(:service_account_delegation_info)
          @service_account_key_name = args[:service_account_key_name] if args.key?(:service_account_key_name)
          @third_party_principal = args[:third_party_principal] if args.key?(:third_party_principal)
        end
      end
      
      # Authorization information for the operation.
      class AuthorizationInfo
        include Google::Apis::Core::Hashable
      
        # Whether or not authorization for `resource` and `permission` was granted.
        # Corresponds to the JSON property `granted`
        # @return [Boolean]
        attr_accessor :granted
        alias_method :granted?, :granted
      
        # The required IAM permission.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # The resource being accessed, as a REST-style string. For example: bigquery.
        # googleapis.com/projects/PROJECTID/datasets/DATASETID
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # This message defines core attributes for a resource. A resource is an
        # addressable (named) entity provided by the destination service. For example, a
        # file stored on a network storage service.
        # Corresponds to the JSON property `resourceAttributes`
        # @return [Google::Apis::ServicecontrolV2::Resource]
        attr_accessor :resource_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @granted = args[:granted] if args.key?(:granted)
          @permission = args[:permission] if args.key?(:permission)
          @resource = args[:resource] if args.key?(:resource)
          @resource_attributes = args[:resource_attributes] if args.key?(:resource_attributes)
        end
      end
      
      # Request message for the Check method.
      class CheckRequest
        include Google::Apis::Core::Hashable
      
        # This message defines the standard attribute vocabulary for Google APIs. An
        # attribute is a piece of metadata that describes an activity on a network
        # service. For example, the size of an HTTP request, or the status code of an
        # HTTP response. Each attribute has a type and a name, which is logically
        # defined as a proto message field in `AttributeContext`. The field type becomes
        # the attribute type, and the field path becomes the attribute name. For example,
        # the attribute `source.ip` maps to field `AttributeContext.source.ip`. This
        # message definition is guaranteed not to have any wire breaking change. So you
        # can use it directly for passing attributes across different systems. NOTE:
        # Different system may generate different subset of attributes. Please verify
        # the system specification before relying on an attribute generated a system.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::ServicecontrolV2::AttributeContext]
        attr_accessor :attributes
      
        # Describes the resources and the policies applied to each resource.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ServicecontrolV2::ResourceInfo>]
        attr_accessor :resources
      
        # Specifies the version of the service configuration that should be used to
        # process the request. Must not be empty. Set this field to 'latest' to specify
        # using the latest configuration.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @resources = args[:resources] if args.key?(:resources)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for the Check method.
      class CheckResponse
        include Google::Apis::Core::Hashable
      
        # Returns a set of request contexts generated from the `CheckRequest`.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ServicecontrolV2::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # First party identity principal.
      class FirstPartyPrincipal
        include Google::Apis::Core::Hashable
      
        # The email address of a Google account. .
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # Metadata about the service that uses the service account. .
        # Corresponds to the JSON property `serviceMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :service_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @service_metadata = args[:service_metadata] if args.key?(:service_metadata)
        end
      end
      
      # This message defines attributes for a node that handles a network request. The
      # node can be either a service or an application that sends, forwards, or
      # receives the request. Service peers should fill in `principal` and `labels` as
      # appropriate.
      class Peer
        include Google::Apis::Core::Hashable
      
        # The IP address of the peer.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # The labels associated with the peer.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The network port of the peer.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The identity of this peer. Similar to `Request.auth.principal`, but relative
        # to the peer instead of the request. For example, the idenity associated with a
        # load balancer that forwared the request.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # The CLDR country/region code associated with the above IP address. If the IP
        # address is private, the `region_code` should reflect the physical location
        # where this peer is running.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip = args[:ip] if args.key?(:ip)
          @labels = args[:labels] if args.key?(:labels)
          @port = args[:port] if args.key?(:port)
          @principal = args[:principal] if args.key?(:principal)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Request message for the Report method.
      class ReportRequest
        include Google::Apis::Core::Hashable
      
        # Describes the list of operations to be reported. Each operation is represented
        # as an AttributeContext, and contains all attributes around an API access.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ServicecontrolV2::AttributeContext>]
        attr_accessor :operations
      
        # Specifies the version of the service configuration that should be used to
        # process the request. Must not be empty. Set this field to 'latest' to specify
        # using the latest configuration.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for the Report method. If the request contains any invalid
      # data, the server returns an RPC error.
      class ReportResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # This message defines attributes for an HTTP request. If the actual request is
      # not an HTTP request, the runtime system should try to map the actual request
      # to an equivalent HTTP request.
      class Request
        include Google::Apis::Core::Hashable
      
        # This message defines request authentication attributes. Terminology is based
        # on the JSON Web Token (JWT) standard, but the terms also correlate to concepts
        # in other standards.
        # Corresponds to the JSON property `auth`
        # @return [Google::Apis::ServicecontrolV2::Auth]
        attr_accessor :auth
      
        # The HTTP request headers. If multiple headers share the same key, they must be
        # merged according to the HTTP spec. All header keys must be lowercased, because
        # HTTP header keys are case-insensitive.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The HTTP request `Host` header value.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The unique ID for a request, which can be propagated to downstream systems.
        # The ID should have low probability of collision within a single day for a
        # specific service.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The HTTP request method, such as `GET`, `POST`.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The HTTP URL path.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The network protocol used with the request, such as "http/1.1", "spdy/3", "h2",
        # "h2c", "webrtc", "tcp", "udp", "quic". See https://www.iana.org/assignments/
        # tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for
        # details.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The HTTP URL query in the format of `name1=value1&name2=value2`, as it appears
        # in the first line of the HTTP request. No decoding is performed.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # A special parameter for request reason. It is used by security systems to
        # associate auditing information with a request.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The HTTP URL scheme, such as `http` and `https`.
        # Corresponds to the JSON property `scheme`
        # @return [String]
        attr_accessor :scheme
      
        # The HTTP request size in bytes. If unknown, it must be -1.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        # The timestamp when the `destination` service receives the first byte of the
        # request.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth = args[:auth] if args.key?(:auth)
          @headers = args[:headers] if args.key?(:headers)
          @host = args[:host] if args.key?(:host)
          @id = args[:id] if args.key?(:id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @path = args[:path] if args.key?(:path)
          @protocol = args[:protocol] if args.key?(:protocol)
          @query = args[:query] if args.key?(:query)
          @reason = args[:reason] if args.key?(:reason)
          @scheme = args[:scheme] if args.key?(:scheme)
          @size = args[:size] if args.key?(:size)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Metadata about the request.
      class RequestMetadata
        include Google::Apis::Core::Hashable
      
        # The IP address of the caller. For caller from internet, this will be public
        # IPv4 or IPv6 address. For caller from a Compute Engine VM with external IP
        # address, this will be the VM's external IP address. For caller from a Compute
        # Engine VM without external IP address, if the VM is in the same organization (
        # or project) as the accessed resource, `caller_ip` will be the VM's internal
        # IPv4 address, otherwise the `caller_ip` will be redacted to "gce-internal-ip".
        # See https://cloud.google.com/compute/docs/vpc/ for more information.
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # The network of the caller. Set only if the network host project is part of the
        # same GCP organization (or project) as the accessed resource. See https://cloud.
        # google.com/compute/docs/vpc/ for more information. This is a scheme-less URI
        # full resource name. For example: "//compute.googleapis.com/projects/PROJECT_ID/
        # global/networks/NETWORK_ID"
        # Corresponds to the JSON property `callerNetwork`
        # @return [String]
        attr_accessor :caller_network
      
        # The user agent of the caller. This information is not authenticated and should
        # be treated accordingly. For example: + `google-api-python-client/1.4.0`: The
        # request was made by the Google API client for Python. + `Cloud SDK Command
        # Line Tool apitools-client/1.0 gcloud/0.9.62`: The request was made by the
        # Google Cloud SDK CLI (gcloud). + `AppEngine-Google; (+http://code.google.com/
        # appengine; appid: s~my-project`: The request was made from the `my-project`
        # App Engine app. NOLINT
        # Corresponds to the JSON property `callerSuppliedUserAgent`
        # @return [String]
        attr_accessor :caller_supplied_user_agent
      
        # This message defines attributes for a node that handles a network request. The
        # node can be either a service or an application that sends, forwards, or
        # receives the request. Service peers should fill in `principal` and `labels` as
        # appropriate.
        # Corresponds to the JSON property `destinationAttributes`
        # @return [Google::Apis::ServicecontrolV2::Peer]
        attr_accessor :destination_attributes
      
        # This message defines attributes for an HTTP request. If the actual request is
        # not an HTTP request, the runtime system should try to map the actual request
        # to an equivalent HTTP request.
        # Corresponds to the JSON property `requestAttributes`
        # @return [Google::Apis::ServicecontrolV2::Request]
        attr_accessor :request_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_ip = args[:caller_ip] if args.key?(:caller_ip)
          @caller_network = args[:caller_network] if args.key?(:caller_network)
          @caller_supplied_user_agent = args[:caller_supplied_user_agent] if args.key?(:caller_supplied_user_agent)
          @destination_attributes = args[:destination_attributes] if args.key?(:destination_attributes)
          @request_attributes = args[:request_attributes] if args.key?(:request_attributes)
        end
      end
      
      # This message defines core attributes for a resource. A resource is an
      # addressable (named) entity provided by the destination service. For example, a
      # file stored on a network storage service.
      class Resource
        include Google::Apis::Core::Hashable
      
        # Annotations is an unstructured key-value map stored with a resource that may
        # be set by external tools to store and retrieve arbitrary metadata. They are
        # not queryable and should be preserved when modifying objects. More info: http:/
        # /kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The timestamp when the resource was created. This may be either
        # the time creation was initiated or when it was completed.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The timestamp when the resource was deleted. If the resource is
        # not deleted, this must be empty.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Mutable. The display name set by clients. Must be <= 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The labels or tags on the resource, such as AWS resource tags and Kubernetes
        # resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The stable identifier (name) of a resource on the `service`. A resource can be
        # logically identified as "//`resource.service`/`resource.name`". The
        # differences between a resource name and a URI are: * Resource name is a
        # logical identifier, independent of network protocol and API version. For
        # example, `//pubsub.googleapis.com/projects/123/topics/news-feed`. * URI often
        # includes protocol and version information, so it can be used directly by
        # applications. For example, `https://pubsub.googleapis.com/v1/projects/123/
        # topics/news-feed`. See https://cloud.google.com/apis/design/resource_names for
        # details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the service that this resource belongs to, such as `pubsub.
        # googleapis.com`. The service may be different from the DNS hostname that
        # actually serves the request.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The type of the resource. The syntax is platform-specific because different
        # platforms define their resources differently. For Google APIs, the type format
        # must be "`service`/`kind`".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The unique identifier of the resource. UID is unique in the time and space for
        # this resource within the scope of the service. It is typically generated by
        # the server on successful creation of a resource and must not be changed. UID
        # is used to uniquely identify resources with resource name reuses. This should
        # be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service = args[:service] if args.key?(:service)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Describes a resource referenced in the request.
      class ResourceInfo
        include Google::Apis::Core::Hashable
      
        # The name of the resource referenced in the request.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource permission needed for this request. The format must be "`service`/
        # `plural`.`verb`".
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # The resource type in the format of "`service`/`kind`".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @permission = args[:permission] if args.key?(:permission)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Location information about a resource.
      class ResourceLocation
        include Google::Apis::Core::Hashable
      
        # The locations of a resource after the execution of the operation. Requests to
        # create or delete a location based resource must populate the '
        # current_locations' field and not the 'original_locations' field. For example: "
        # europe-west1-a" "us-east1" "nam3"
        # Corresponds to the JSON property `currentLocations`
        # @return [Array<String>]
        attr_accessor :current_locations
      
        # The locations of a resource prior to the execution of the operation. Requests
        # that mutate the resource's location must populate both the 'original_locations'
        # as well as the 'current_locations' fields. For example: "europe-west1-a" "us-
        # east1" "nam3"
        # Corresponds to the JSON property `originalLocations`
        # @return [Array<String>]
        attr_accessor :original_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_locations = args[:current_locations] if args.key?(:current_locations)
          @original_locations = args[:original_locations] if args.key?(:original_locations)
        end
      end
      
      # This message defines attributes for a typical network response. It generally
      # models semantics of an HTTP response.
      class Response
        include Google::Apis::Core::Hashable
      
        # The HTTP response status code, such as `200` and `404`.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # The HTTP response headers. If multiple headers share the same key, they must
        # be merged according to HTTP spec. All header keys must be lowercased, because
        # HTTP header keys are case-insensitive.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The HTTP response size in bytes. If unknown, it must be -1.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        # The timestamp when the `destination` service generates the first byte of the
        # response.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @headers = args[:headers] if args.key?(:headers)
          @size = args[:size] if args.key?(:size)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Identity delegation history of an authenticated service account.
      class ServiceAccountDelegationInfo
        include Google::Apis::Core::Hashable
      
        # First party identity principal.
        # Corresponds to the JSON property `firstPartyPrincipal`
        # @return [Google::Apis::ServicecontrolV2::FirstPartyPrincipal]
        attr_accessor :first_party_principal
      
        # A string representing the principal_subject associated with the identity. See
        # go/3pical for more info on how principal_subject is formatted.
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        # Third party identity principal.
        # Corresponds to the JSON property `thirdPartyPrincipal`
        # @return [Google::Apis::ServicecontrolV2::ThirdPartyPrincipal]
        attr_accessor :third_party_principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_party_principal = args[:first_party_principal] if args.key?(:first_party_principal)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @third_party_principal = args[:third_party_principal] if args.key?(:third_party_principal)
        end
      end
      
      # The context of a span, attached to Exemplars in Distribution values during
      # aggregation. It contains the name of a span with format: projects/[
      # PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]
      class SpanContext
        include Google::Apis::Core::Hashable
      
        # The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/
        # traces/[TRACE_ID]/spans/[SPAN_ID] `[TRACE_ID]` is a unique identifier for a
        # trace within a project; it is a 32-character hexadecimal encoding of a 16-byte
        # array. `[SPAN_ID]` is a unique identifier for a span within a trace; it is a
        # 16-character hexadecimal encoding of an 8-byte array.
        # Corresponds to the JSON property `spanName`
        # @return [String]
        attr_accessor :span_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @span_name = args[:span_name] if args.key?(:span_name)
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
      
      # Third party identity principal.
      class ThirdPartyPrincipal
        include Google::Apis::Core::Hashable
      
        # Metadata about third party identity.
        # Corresponds to the JSON property `thirdPartyClaims`
        # @return [Hash<String,Object>]
        attr_accessor :third_party_claims
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @third_party_claims = args[:third_party_claims] if args.key?(:third_party_claims)
        end
      end
    end
  end
end
