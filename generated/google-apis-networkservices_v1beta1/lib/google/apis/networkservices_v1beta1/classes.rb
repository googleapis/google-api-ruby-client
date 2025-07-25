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
    module NetworkservicesV1beta1
      
      # `AuthzExtension` is a resource that allows traffic forwarding to a callout
      # backend service to make an authorization decision.
      class AuthzExtension
        include Google::Apis::Core::Hashable
      
        # Required. The `:authority` header in the gRPC request sent from Envoy to the
        # extension service.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Determines how the proxy behaves if the call to the extension fails
        # or times out. When set to `TRUE`, request or response processing continues
        # without error. Any subsequent extensions in the extension chain are also
        # executed. When set to `FALSE` or the default setting of `FALSE` is used, one
        # of the following happens: * If response headers have not been delivered to the
        # downstream client, a generic 500 error is returned to the client. The error
        # response can be tailored by configuring a custom error response in the load
        # balancer. * If response headers have been delivered, then the HTTP stream to
        # the downstream client is reset.
        # Corresponds to the JSON property `failOpen`
        # @return [Boolean]
        attr_accessor :fail_open
        alias_method :fail_open?, :fail_open
      
        # Optional. List of the HTTP headers to forward to the extension (from the
        # client). If omitted, all headers are sent. Each element is a string indicating
        # the header name.
        # Corresponds to the JSON property `forwardHeaders`
        # @return [Array<String>]
        attr_accessor :forward_headers
      
        # Optional. Set of labels associated with the `AuthzExtension` resource. The
        # format must comply with [the requirements for labels](/compute/docs/labeling-
        # resources#requirements) for Google Cloud resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. All backend services and forwarding rules referenced by this
        # extension must share the same load balancing scheme. Supported values: `
        # INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Backend
        # services overview](https://cloud.google.com/load-balancing/docs/backend-
        # service).
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Optional. The metadata provided here is included as part of the `
        # metadata_context` (of type `google.protobuf.Struct`) in the `ProcessingRequest`
        # message sent to the extension server. The metadata is available under the
        # namespace `com.google.authz_extension.`. The following variables are supported
        # in the metadata Struct: ``forwarding_rule_id`` - substituted with the
        # forwarding rule's fully qualified resource name.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Required. Identifier. Name of the `AuthzExtension` resource in the following
        # format: `projects/`project`/locations/`location`/authzExtensions/`
        # authz_extension``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The reference to the service that runs the extension. To configure a
        # callout extension, `service` must be a fully-qualified reference to a [backend
        # service](https://cloud.google.com/compute/docs/reference/rest/v1/
        # backendServices) in the format: `https://www.googleapis.com/compute/v1/
        # projects/`project`/regions/`region`/backendServices/`backendService`` or `
        # https://www.googleapis.com/compute/v1/projects/`project`/global/
        # backendServices/`backendService``.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Required. Specifies the timeout for each individual message on the stream. The
        # timeout must be between 10-10000 milliseconds.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The format of communication supported by the callout extension. If
        # not specified, the default value `EXT_PROC_GRPC` is used.
        # Corresponds to the JSON property `wireFormat`
        # @return [String]
        attr_accessor :wire_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @fail_open = args[:fail_open] if args.key?(:fail_open)
          @forward_headers = args[:forward_headers] if args.key?(:forward_headers)
          @labels = args[:labels] if args.key?(:labels)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @service = args[:service] if args.key?(:service)
          @timeout = args[:timeout] if args.key?(:timeout)
          @update_time = args[:update_time] if args.key?(:update_time)
          @wire_format = args[:wire_format] if args.key?(:wire_format)
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
      
      # A definition of a matcher that selects endpoints to which the policies should
      # be applied.
      class EndpointMatcher
        include Google::Apis::Core::Hashable
      
        # The matcher that is based on node metadata presented by xDS clients.
        # Corresponds to the JSON property `metadataLabelMatcher`
        # @return [Google::Apis::NetworkservicesV1beta1::MetadataLabelMatcher]
        attr_accessor :metadata_label_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_label_matcher = args[:metadata_label_matcher] if args.key?(:metadata_label_matcher)
        end
      end
      
      # EndpointPolicy is a resource that helps apply desired configuration on the
      # endpoints that match specific criteria. For example, this resource can be used
      # to apply "authentication config" an all endpoints that serve on port 8080.
      class EndpointPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. This field specifies the URL of AuthorizationPolicy resource that
        # applies authorization policies to the inbound traffic at the matched endpoints.
        # Refer to Authorization. If this field is not specified, authorization is
        # disabled(no authz checks) for this endpoint.
        # Corresponds to the JSON property `authorizationPolicy`
        # @return [String]
        attr_accessor :authorization_policy
      
        # Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can
        # be set to specify the authentication for traffic from the proxy to the actual
        # endpoints. More specifically, it is applied to the outgoing traffic from the
        # proxy to the endpoint. This is typically used for sidecar model where the
        # proxy identifies itself as endpoint to the control plane, with the connection
        # between sidecar and endpoint requiring authentication. If this field is not
        # set, authentication is disabled(open). Applicable only when EndpointPolicyType
        # is SIDECAR_PROXY.
        # Corresponds to the JSON property `clientTlsPolicy`
        # @return [String]
        attr_accessor :client_tls_policy
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A definition of a matcher that selects endpoints to which the policies should
        # be applied.
        # Corresponds to the JSON property `endpointMatcher`
        # @return [Google::Apis::NetworkservicesV1beta1::EndpointMatcher]
        attr_accessor :endpoint_matcher
      
        # Optional. Set of label tags associated with the EndpointPolicy resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Name of the EndpointPolicy resource. It matches pattern `projects/`
        # project`/locations/global/endpointPolicies/`endpoint_policy``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A URL referring to a SecurityPolicy resource. SecurityPolicy is used
        # to enforce rate limiting policy on the inbound traffic at the identified
        # backends. If this field is not set, rate limiting is disabled for this
        # endpoint.
        # Corresponds to the JSON property `securityPolicy`
        # @return [String]
        attr_accessor :security_policy
      
        # Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used
        # to determine the authentication policy to be applied to terminate the inbound
        # traffic at the identified backends. If this field is not set, authentication
        # is disabled(open) for this endpoint.
        # Corresponds to the JSON property `serverTlsPolicy`
        # @return [String]
        attr_accessor :server_tls_policy
      
        # Specification of a port-based selector.
        # Corresponds to the JSON property `trafficPortSelector`
        # @return [Google::Apis::NetworkservicesV1beta1::TrafficPortSelector]
        attr_accessor :traffic_port_selector
      
        # Required. The type of endpoint policy. This is primarily used to validate the
        # configuration.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_policy = args[:authorization_policy] if args.key?(:authorization_policy)
          @client_tls_policy = args[:client_tls_policy] if args.key?(:client_tls_policy)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @endpoint_matcher = args[:endpoint_matcher] if args.key?(:endpoint_matcher)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
          @server_tls_policy = args[:server_tls_policy] if args.key?(:server_tls_policy)
          @traffic_port_selector = args[:traffic_port_selector] if args.key?(:traffic_port_selector)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A single extension chain wrapper that contains the match conditions and
      # extensions to execute.
      class ExtensionChain
        include Google::Apis::Core::Hashable
      
        # Required. A set of extensions to execute for the matching request. At least
        # one extension is required. Up to 3 extensions can be defined for each
        # extension chain for `LbTrafficExtension` resource. `LbRouteExtension` and `
        # LbEdgeExtension` chains are limited to 1 extension per extension chain.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::ExtensionChainExtension>]
        attr_accessor :extensions
      
        # Conditions under which this chain is invoked for a request.
        # Corresponds to the JSON property `matchCondition`
        # @return [Google::Apis::NetworkservicesV1beta1::ExtensionChainMatchCondition]
        attr_accessor :match_condition
      
        # Required. The name for this extension chain. The name is logged as part of the
        # HTTP request logs. The name must conform with RFC-1034, is restricted to lower-
        # cased letters, numbers and hyphens, and can have a maximum length of 63
        # characters. Additionally, the first character must be a letter and the last a
        # letter or a number.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extensions = args[:extensions] if args.key?(:extensions)
          @match_condition = args[:match_condition] if args.key?(:match_condition)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A single extension in the chain to execute for the matching request.
      class ExtensionChainExtension
        include Google::Apis::Core::Hashable
      
        # Optional. When set to `TRUE`, the response from an extension service is
        # allowed to set the `com.google.envoy.dynamic_forwarding` namespace in the
        # dynamic metadata. This field is not supported for plugin extensions. Setting
        # it results in a validation error.
        # Corresponds to the JSON property `allowDynamicForwarding`
        # @return [Boolean]
        attr_accessor :allow_dynamic_forwarding
        alias_method :allow_dynamic_forwarding?, :allow_dynamic_forwarding
      
        # Optional. The `:authority` header in the gRPC request sent from Envoy to the
        # extension service. Required for Callout extensions. This field is not
        # supported for plugin extensions. Setting it results in a validation error.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # Optional. Determines how the proxy behaves if the call to the extension fails
        # or times out. When set to `TRUE`, request or response processing continues
        # without error. Any subsequent extensions in the extension chain are also
        # executed. When set to `FALSE` or the default setting of `FALSE` is used, one
        # of the following happens: * If response headers have not been delivered to the
        # downstream client, a generic 500 error is returned to the client. The error
        # response can be tailored by configuring a custom error response in the load
        # balancer. * If response headers have been delivered, then the HTTP stream to
        # the downstream client is reset.
        # Corresponds to the JSON property `failOpen`
        # @return [Boolean]
        attr_accessor :fail_open
        alias_method :fail_open?, :fail_open
      
        # Optional. List of the HTTP headers to forward to the extension (from the
        # client or backend). If omitted, all headers are sent. Each element is a string
        # indicating the header name.
        # Corresponds to the JSON property `forwardHeaders`
        # @return [Array<String>]
        attr_accessor :forward_headers
      
        # Optional. The metadata provided here is included as part of the `
        # metadata_context` (of type `google.protobuf.Struct`) in the `ProcessingRequest`
        # message sent to the extension server. The metadata is available under the
        # namespace `com.google....`. For example: `com.google.lb_traffic_extension.
        # lbtrafficextension1.chain1.ext1`. The following variables are supported in the
        # metadata: ``forwarding_rule_id`` - substituted with the forwarding rule's
        # fully qualified resource name. This field must not be set for plugin
        # extensions. Setting it results in a validation error. You can set metadata at
        # either the resource level or the extension level. The extension level metadata
        # is recommended because you can pass a different set of metadata through each
        # extension to the backend. This field is subject to following limitations: *
        # The total size of the metadata must be less than 1KiB. * The total number of
        # keys in the metadata must be less than 16. * The length of each key must be
        # less than 64 characters. * The length of each value must be less than 1024
        # characters. * All values must be strings.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Required. The name for this extension. The name is logged as part of the HTTP
        # request logs. The name must conform with RFC-1034, is restricted to lower-
        # cased letters, numbers and hyphens, and can have a maximum length of 63
        # characters. Additionally, the first character must be a letter and the last a
        # letter or a number.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Configures the send mode for request body processing. The field can
        # only be set if `supported_events` includes `REQUEST_BODY`. If `
        # supported_events` includes `REQUEST_BODY`, but `request_body_send_mode` is
        # unset, the default value `STREAMED` is used. When this field is set to `
        # FULL_DUPLEX_STREAMED`, `supported_events` must include both `REQUEST_BODY` and
        # `REQUEST_TRAILERS`. This field can be set only for `LbTrafficExtension` and `
        # LbRouteExtension` resources, and only when the `service` field of the
        # extension points to a `BackendService`. Only `FULL_DUPLEX_STREAMED` mode is
        # supported for `LbRouteExtension` resources.
        # Corresponds to the JSON property `requestBodySendMode`
        # @return [String]
        attr_accessor :request_body_send_mode
      
        # Optional. Configures the send mode for response processing. If unspecified,
        # the default value `STREAMED` is used. When this field is set to `
        # FULL_DUPLEX_STREAMED`, `supported_events` must include both `RESPONSE_BODY`
        # and `RESPONSE_TRAILERS`. This field can be set only for `LbTrafficExtension`
        # resources, and only when the `service` field of the extension points to a `
        # BackendService`.
        # Corresponds to the JSON property `responseBodySendMode`
        # @return [String]
        attr_accessor :response_body_send_mode
      
        # Required. The reference to the service that runs the extension. To configure a
        # callout extension, `service` must be a fully-qualified reference to a [backend
        # service](https://cloud.google.com/compute/docs/reference/rest/v1/
        # backendServices) in the format: `https://www.googleapis.com/compute/v1/
        # projects/`project`/regions/`region`/backendServices/`backendService`` or `
        # https://www.googleapis.com/compute/v1/projects/`project`/global/
        # backendServices/`backendService``. To configure a plugin extension, `service`
        # must be a reference to a [`WasmPlugin` resource](https://cloud.google.com/
        # service-extensions/docs/reference/rest/v1beta1/projects.locations.wasmPlugins)
        # in the format: `projects/`project`/locations/`location`/wasmPlugins/`plugin``
        # or `//networkservices.googleapis.com/projects/`project`/locations/`location`/
        # wasmPlugins/`wasmPlugin``. Plugin extensions are currently supported for the `
        # LbTrafficExtension`, the `LbRouteExtension`, and the `LbEdgeExtension`
        # resources.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Optional. A set of events during request or response processing for which this
        # extension is called. For the `LbTrafficExtension` resource, this field is
        # required. For the `LbRouteExtension` resource, this field is optional. If
        # unspecified, `REQUEST_HEADERS` event is assumed as supported. For the `
        # LbEdgeExtension` resource, this field is required and must only contain `
        # REQUEST_HEADERS` event.
        # Corresponds to the JSON property `supportedEvents`
        # @return [Array<String>]
        attr_accessor :supported_events
      
        # Optional. Specifies the timeout for each individual message on the stream. The
        # timeout must be between `10`-`10000` milliseconds. Required for callout
        # extensions. This field is not supported for plugin extensions. Setting it
        # results in a validation error.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_dynamic_forwarding = args[:allow_dynamic_forwarding] if args.key?(:allow_dynamic_forwarding)
          @authority = args[:authority] if args.key?(:authority)
          @fail_open = args[:fail_open] if args.key?(:fail_open)
          @forward_headers = args[:forward_headers] if args.key?(:forward_headers)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @request_body_send_mode = args[:request_body_send_mode] if args.key?(:request_body_send_mode)
          @response_body_send_mode = args[:response_body_send_mode] if args.key?(:response_body_send_mode)
          @service = args[:service] if args.key?(:service)
          @supported_events = args[:supported_events] if args.key?(:supported_events)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Conditions under which this chain is invoked for a request.
      class ExtensionChainMatchCondition
        include Google::Apis::Core::Hashable
      
        # Required. A Common Expression Language (CEL) expression that is used to match
        # requests for which the extension chain is executed. For more information, see [
        # CEL matcher language reference](https://cloud.google.com/service-extensions/
        # docs/cel-matcher-language-reference).
        # Corresponds to the JSON property `celExpression`
        # @return [String]
        attr_accessor :cel_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cel_expression = args[:cel_expression] if args.key?(:cel_expression)
        end
      end
      
      # Gateway represents the configuration for a proxy, typically a load balancer.
      # It captures the ip:port over which the services are exposed by the proxy,
      # along with any policy configurations. Routes have reference to to Gateways to
      # dictate how requests should be routed by this Gateway.
      class Gateway
        include Google::Apis::Core::Hashable
      
        # Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive
        # the traffic. When no address is provided, an IP from the subnetwork is
        # allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'.
        # Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
        # Corresponds to the JSON property `addresses`
        # @return [Array<String>]
        attr_accessor :addresses
      
        # Optional. A fully-qualified Certificates URL reference. The proxy presents a
        # Certificate (selected based on SNI) when establishing a TLS connection. This
        # feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
        # Corresponds to the JSON property `certificateUrls`
        # @return [Array<String>]
        attr_accessor :certificate_urls
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Determines if envoy will insert internal debug headers into upstream
        # requests. Other Envoy headers may still be injected. By default, envoy will
        # not insert any debug headers.
        # Corresponds to the JSON property `envoyHeaders`
        # @return [String]
        attr_accessor :envoy_headers
      
        # Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a
        # server should apply security policy to inbound (VM to Proxy) initiated
        # connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-
        # policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
        # Corresponds to the JSON property `gatewaySecurityPolicy`
        # @return [String]
        attr_accessor :gateway_security_policy
      
        # Optional. The IP Version that will be used by this gateway. Valid options are
        # IPV4 or IPV6. Default is IPV4.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # Optional. Set of label tags associated with the Gateway resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Name of the Gateway resource. It matches pattern `projects/*/
        # locations/*/gateways/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The relative resource name identifying the VPC network that is using
        # this configuration. For example: `projects/*/global/networks/network-1`.
        # Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Required. One or more port numbers (1-65535), on which the Gateway will
        # receive traffic. The proxy binds to the specified ports. Gateways of type '
        # SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen
        # on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
        # Corresponds to the JSON property `ports`
        # @return [Array<Fixnum>]
        attr_accessor :ports
      
        # Optional. The routing mode of the Gateway. This field is configurable only for
        # gateways of type SECURE_WEB_GATEWAY. This field is required for gateways of
        # type SECURE_WEB_GATEWAY.
        # Corresponds to the JSON property `routingMode`
        # @return [String]
        attr_accessor :routing_mode
      
        # Optional. Scope determines how configuration across multiple Gateway instances
        # are merged. The configuration for multiple Gateway instances with the same
        # scope will be merged as presented as a single configuration to the proxy/load
        # balancer. Max length 64 characters. Scope should start with a letter and can
        # only have letters, numbers, hyphens.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Output only. Server-defined URL of this resource
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS
        # traffic is terminated. If empty, TLS termination is disabled.
        # Corresponds to the JSON property `serverTlsPolicy`
        # @return [String]
        attr_accessor :server_tls_policy
      
        # Optional. The relative resource name identifying the subnetwork in which this
        # SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/
        # network-1` Currently, this field is specific to gateways of type '
        # SECURE_WEB_GATEWAY".
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Immutable. The type of the customer managed gateway. This field is required.
        # If unspecified, an error is returned.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @certificate_urls = args[:certificate_urls] if args.key?(:certificate_urls)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @envoy_headers = args[:envoy_headers] if args.key?(:envoy_headers)
          @gateway_security_policy = args[:gateway_security_policy] if args.key?(:gateway_security_policy)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @ports = args[:ports] if args.key?(:ports)
          @routing_mode = args[:routing_mode] if args.key?(:routing_mode)
          @scope = args[:scope] if args.key?(:scope)
          @self_link = args[:self_link] if args.key?(:self_link)
          @server_tls_policy = args[:server_tls_policy] if args.key?(:server_tls_policy)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # GatewayRouteView defines view-only resource for Routes to a Gateway
      class GatewayRouteView
        include Google::Apis::Core::Hashable
      
        # Output only. Identifier. Full path name of the GatewayRouteView resource.
        # Format: projects/`project_number`/locations/`location`/gateways/`gateway`/
        # routeViews/`route_view`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource id for the route.
        # Corresponds to the JSON property `routeId`
        # @return [String]
        attr_accessor :route_id
      
        # Output only. Location where the route exists.
        # Corresponds to the JSON property `routeLocation`
        # @return [String]
        attr_accessor :route_location
      
        # Output only. Project number where the route exists.
        # Corresponds to the JSON property `routeProjectNumber`
        # @return [Fixnum]
        attr_accessor :route_project_number
      
        # Output only. Type of the route: HttpRoute,GrpcRoute,TcpRoute, or TlsRoute
        # Corresponds to the JSON property `routeType`
        # @return [String]
        attr_accessor :route_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @route_id = args[:route_id] if args.key?(:route_id)
          @route_location = args[:route_location] if args.key?(:route_location)
          @route_project_number = args[:route_project_number] if args.key?(:route_project_number)
          @route_type = args[:route_type] if args.key?(:route_type)
        end
      end
      
      # GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or
      # Gateway resource is routed.
      class GrpcRoute
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Gateways defines a list of gateways this GrpcRoute is attached to,
        # as one of the routing rules to route the requests served by the gateway. Each
        # gateway reference should match the pattern: `projects/*/locations/global/
        # gateways/`
        # Corresponds to the JSON property `gateways`
        # @return [Array<String>]
        attr_accessor :gateways
      
        # Required. Service hostnames with an optional port for which this route
        # describes traffic. Format: [:] Hostname is the fully qualified domain name of
        # a network host. This matches the RFC 1123 definition of a hostname with 2
        # notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a
        # wildcard label (`*.`). The wildcard label must appear by itself as the first
        # label. Hostname can be "precise" which is a domain name without the
        # terminating dot of a network host (e.g. `foo.example.com`) or "wildcard",
        # which is a domain name prefixed with a single wildcard label (e.g. `*.example.
        # com`). Note that as per RFC1035 and RFC1123, a label must consist of lower
        # case alphanumeric characters or '-', and must start and end with an
        # alphanumeric character. No other punctuation is allowed. The routes associated
        # with a Mesh or Gateway must have unique hostnames. If you attempt to attach
        # multiple routes with conflicting hostnames, the configuration will be rejected.
        # For example, while it is acceptable for routes for the hostnames `*.foo.bar.
        # com` and `*.bar.com` to be associated with the same route, it is not possible
        # to associate two routes both with `*.bar.com` or both with `bar.com`. If a
        # port is specified, then gRPC clients must use the channel URI with the port to
        # match this rule (i.e. "xds:///service:123"), otherwise they must supply the
        # URI without a port (i.e. "xds:///service").
        # Corresponds to the JSON property `hostnames`
        # @return [Array<String>]
        attr_accessor :hostnames
      
        # Optional. Set of label tags associated with the GrpcRoute resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as
        # one of the routing rules to route the requests served by the mesh. Each mesh
        # reference should match the pattern: `projects/*/locations/global/meshes/`
        # Corresponds to the JSON property `meshes`
        # @return [Array<String>]
        attr_accessor :meshes
      
        # Identifier. Name of the GrpcRoute resource. It matches pattern `projects/*/
        # locations/global/grpcRoutes/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. A list of detailed rules defining how to route traffic. Within a
        # single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching
        # GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::GrpcRouteRouteRule>]
        attr_accessor :rules
      
        # Output only. Server-defined URL of this resource
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The timestamp when the resource was updated.
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
          @gateways = args[:gateways] if args.key?(:gateways)
          @hostnames = args[:hostnames] if args.key?(:hostnames)
          @labels = args[:labels] if args.key?(:labels)
          @meshes = args[:meshes] if args.key?(:meshes)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The destination to which traffic will be routed.
      class GrpcRouteDestination
        include Google::Apis::Core::Hashable
      
        # Required. The URL of a destination service to which to route traffic. Must
        # refer to either a BackendService or ServiceDirectoryService.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Optional. Specifies the proportion of requests forwarded to the backend
        # referenced by the serviceName field. This is computed as: - weight/Sum(weights
        # in this destination list). For non-zero values, there may be some epsilon from
        # the exact proportion defined here depending on the precision an implementation
        # supports. If only one serviceName is specified and it has a weight greater
        # than 0, 100% of the traffic is forwarded to that backend. If weights are
        # specified for any one service name, they need to be specified for all of them.
        # If weights are unspecified for all services, then, traffic is distributed in
        # equal proportions to all of them.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_name = args[:service_name] if args.key?(:service_name)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # The specification for fault injection introduced into traffic to test the
      # resiliency of clients to destination service failure. As part of fault
      # injection, when clients send requests to a destination, delays can be
      # introduced on a percentage of requests before sending those requests to the
      # destination service. Similarly requests from clients can be aborted by for a
      # percentage of requests.
      class GrpcRouteFaultInjectionPolicy
        include Google::Apis::Core::Hashable
      
        # Specification of how client requests are aborted as part of fault injection
        # before being sent to a destination.
        # Corresponds to the JSON property `abort`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteFaultInjectionPolicyAbort]
        attr_accessor :abort
      
        # Specification of how client requests are delayed as part of fault injection
        # before being sent to a destination.
        # Corresponds to the JSON property `delay`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteFaultInjectionPolicyDelay]
        attr_accessor :delay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abort = args[:abort] if args.key?(:abort)
          @delay = args[:delay] if args.key?(:delay)
        end
      end
      
      # Specification of how client requests are aborted as part of fault injection
      # before being sent to a destination.
      class GrpcRouteFaultInjectionPolicyAbort
        include Google::Apis::Core::Hashable
      
        # The HTTP status code used to abort the request. The value must be between 200
        # and 599 inclusive.
        # Corresponds to the JSON property `httpStatus`
        # @return [Fixnum]
        attr_accessor :http_status
      
        # The percentage of traffic which will be aborted. The value must be between [0,
        # 100]
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_status = args[:http_status] if args.key?(:http_status)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # Specification of how client requests are delayed as part of fault injection
      # before being sent to a destination.
      class GrpcRouteFaultInjectionPolicyDelay
        include Google::Apis::Core::Hashable
      
        # Specify a fixed delay before forwarding the request.
        # Corresponds to the JSON property `fixedDelay`
        # @return [String]
        attr_accessor :fixed_delay
      
        # The percentage of traffic on which delay will be injected. The value must be
        # between [0, 100]
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_delay = args[:fixed_delay] if args.key?(:fixed_delay)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # A match against a collection of headers.
      class GrpcRouteHeaderMatch
        include Google::Apis::Core::Hashable
      
        # Required. The key of the header.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Specifies how to match against the value of the header. If not
        # specified, a default value of EXACT is used.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. The value of the header.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Specifies a match against a method.
      class GrpcRouteMethodMatch
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies that matches are case sensitive. The default value is true.
        # case_sensitive must not be used with a type of REGULAR_EXPRESSION.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Required. Name of the method to match against. If unspecified, will match all
        # methods.
        # Corresponds to the JSON property `grpcMethod`
        # @return [String]
        attr_accessor :grpc_method
      
        # Required. Name of the service to match against. If unspecified, will match all
        # services.
        # Corresponds to the JSON property `grpcService`
        # @return [String]
        attr_accessor :grpc_service
      
        # Optional. Specifies how to match against the name. If not specified, a default
        # value of "EXACT" is used.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @grpc_method = args[:grpc_method] if args.key?(:grpc_method)
          @grpc_service = args[:grpc_service] if args.key?(:grpc_service)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The specifications for retries. Specifies one or more conditions for which
      # this retry rule applies. Valid values are:
      class GrpcRouteRetryPolicy
        include Google::Apis::Core::Hashable
      
        # Specifies the allowed number of retries. This number must be > 0. If not
        # specified, default to 1.
        # Corresponds to the JSON property `numRetries`
        # @return [Fixnum]
        attr_accessor :num_retries
      
        # - connect-failure: Router will retry on failures connecting to Backend
        # Services, for example due to connection timeouts. - refused-stream: Router
        # will retry if the backend service resets the stream with a REFUSED_STREAM
        # error code. This reset type indicates that it is safe to retry. - cancelled:
        # Router will retry if the gRPC status code in the response header is set to
        # cancelled - deadline-exceeded: Router will retry if the gRPC status code in
        # the response header is set to deadline-exceeded - resource-exhausted: Router
        # will retry if the gRPC status code in the response header is set to resource-
        # exhausted - unavailable: Router will retry if the gRPC status code in the
        # response header is set to unavailable
        # Corresponds to the JSON property `retryConditions`
        # @return [Array<String>]
        attr_accessor :retry_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_retries = args[:num_retries] if args.key?(:num_retries)
          @retry_conditions = args[:retry_conditions] if args.key?(:retry_conditions)
        end
      end
      
      # Specifies how to route matched traffic.
      class GrpcRouteRouteAction
        include Google::Apis::Core::Hashable
      
        # Optional. The destination services to which traffic should be forwarded. If
        # multiple destinations are specified, traffic will be split between Backend
        # Service(s) according to the weight field of these destinations.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::GrpcRouteDestination>]
        attr_accessor :destinations
      
        # The specification for fault injection introduced into traffic to test the
        # resiliency of clients to destination service failure. As part of fault
        # injection, when clients send requests to a destination, delays can be
        # introduced on a percentage of requests before sending those requests to the
        # destination service. Similarly requests from clients can be aborted by for a
        # percentage of requests.
        # Corresponds to the JSON property `faultInjectionPolicy`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteFaultInjectionPolicy]
        attr_accessor :fault_injection_policy
      
        # Optional. Specifies the idle timeout for the selected route. The idle timeout
        # is defined as the period in which there are no bytes sent or received on
        # either the upstream or downstream connection. If not set, the default idle
        # timeout is 1 hour. If set to 0s, the timeout will be disabled.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        # The specifications for retries. Specifies one or more conditions for which
        # this retry rule applies. Valid values are:
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteRetryPolicy]
        attr_accessor :retry_policy
      
        # The specification for cookie-based stateful session affinity where the date
        # plane supplies a “session cookie” with the name "GSSA" which encodes a
        # specific destination host and each request containing that cookie will be
        # directed to that host as long as the destination host remains up and healthy.
        # The gRPC proxyless mesh library or sidecar proxy will manage the session
        # cookie but the client application code is responsible for copying the cookie
        # from each RPC in the session to the next.
        # Corresponds to the JSON property `statefulSessionAffinity`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteStatefulSessionAffinityPolicy]
        attr_accessor :stateful_session_affinity
      
        # Optional. Specifies the timeout for selected route. Timeout is computed from
        # the time the request has been fully processed (i.e. end of stream) up until
        # the response has been completely processed. Timeout includes all retries.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @fault_injection_policy = args[:fault_injection_policy] if args.key?(:fault_injection_policy)
          @idle_timeout = args[:idle_timeout] if args.key?(:idle_timeout)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @stateful_session_affinity = args[:stateful_session_affinity] if args.key?(:stateful_session_affinity)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Criteria for matching traffic. A RouteMatch will be considered to match when
      # all supplied fields match.
      class GrpcRouteRouteMatch
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies a collection of headers to match.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::GrpcRouteHeaderMatch>]
        attr_accessor :headers
      
        # Specifies a match against a method.
        # Corresponds to the JSON property `method`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteMethodMatch]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # Describes how to route traffic.
      class GrpcRouteRouteRule
        include Google::Apis::Core::Hashable
      
        # Specifies how to route matched traffic.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::NetworkservicesV1beta1::GrpcRouteRouteAction]
        attr_accessor :action
      
        # Optional. Matches define conditions used for matching the rule against
        # incoming gRPC requests. Each match is independent, i.e. this rule will be
        # matched if ANY one of the matches is satisfied. If no matches field is
        # specified, this rule will unconditionally match traffic.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::GrpcRouteRouteMatch>]
        attr_accessor :matches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @matches = args[:matches] if args.key?(:matches)
        end
      end
      
      # The specification for cookie-based stateful session affinity where the date
      # plane supplies a “session cookie” with the name "GSSA" which encodes a
      # specific destination host and each request containing that cookie will be
      # directed to that host as long as the destination host remains up and healthy.
      # The gRPC proxyless mesh library or sidecar proxy will manage the session
      # cookie but the client application code is responsible for copying the cookie
      # from each RPC in the session to the next.
      class GrpcRouteStatefulSessionAffinityPolicy
        include Google::Apis::Core::Hashable
      
        # Required. The cookie TTL value for the Set-Cookie header generated by the data
        # plane. The lifetime of the cookie may be set to a value from 0 to 86400
        # seconds (24 hours) inclusive. Set this to 0s to use a session cookie and
        # disable cookie expiration.
        # Corresponds to the JSON property `cookieTtl`
        # @return [String]
        attr_accessor :cookie_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cookie_ttl = args[:cookie_ttl] if args.key?(:cookie_ttl)
        end
      end
      
      # HttpRoute is the resource defining how HTTP traffic should be routed by a Mesh
      # or Gateway resource.
      class HttpRoute
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Gateways defines a list of gateways this HttpRoute is attached to,
        # as one of the routing rules to route the requests served by the gateway. Each
        # gateway reference should match the pattern: `projects/*/locations/global/
        # gateways/`
        # Corresponds to the JSON property `gateways`
        # @return [Array<String>]
        attr_accessor :gateways
      
        # Required. Hostnames define a set of hosts that should match against the HTTP
        # host header to select a HttpRoute to process the request. Hostname is the
        # fully qualified domain name of a network host, as defined by RFC 1123 with the
        # exception that: - IPs are not allowed. - A hostname may be prefixed with a
        # wildcard label (`*.`). The wildcard label must appear by itself as the first
        # label. Hostname can be "precise" which is a domain name without the
        # terminating dot of a network host (e.g. `foo.example.com`) or "wildcard",
        # which is a domain name prefixed with a single wildcard label (e.g. `*.example.
        # com`). Note that as per RFC1035 and RFC1123, a label must consist of lower
        # case alphanumeric characters or '-', and must start and end with an
        # alphanumeric character. No other punctuation is allowed. The routes associated
        # with a Mesh or Gateways must have unique hostnames. If you attempt to attach
        # multiple routes with conflicting hostnames, the configuration will be rejected.
        # For example, while it is acceptable for routes for the hostnames `*.foo.bar.
        # com` and `*.bar.com` to be associated with the same Mesh (or Gateways under
        # the same scope), it is not possible to associate two routes both with `*.bar.
        # com` or both with `bar.com`.
        # Corresponds to the JSON property `hostnames`
        # @return [Array<String>]
        attr_accessor :hostnames
      
        # Optional. Set of label tags associated with the HttpRoute resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Meshes defines a list of meshes this HttpRoute is attached to, as
        # one of the routing rules to route the requests served by the mesh. Each mesh
        # reference should match the pattern: `projects/*/locations/global/meshes/` The
        # attached Mesh should be of a type SIDECAR
        # Corresponds to the JSON property `meshes`
        # @return [Array<String>]
        attr_accessor :meshes
      
        # Identifier. Name of the HttpRoute resource. It matches pattern `projects/*/
        # locations/global/httpRoutes/http_route_name>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Rules that define how traffic is routed and handled. Rules will be
        # matched sequentially based on the RouteMatch specified for the rule.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::HttpRouteRouteRule>]
        attr_accessor :rules
      
        # Output only. Server-defined URL of this resource
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The timestamp when the resource was updated.
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
          @gateways = args[:gateways] if args.key?(:gateways)
          @hostnames = args[:hostnames] if args.key?(:hostnames)
          @labels = args[:labels] if args.key?(:labels)
          @meshes = args[:meshes] if args.key?(:meshes)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The Specification for allowing client side cross-origin requests.
      class HttpRouteCorsPolicy
        include Google::Apis::Core::Hashable
      
        # In response to a preflight request, setting this to true indicates that the
        # actual request can include user credentials. This translates to the Access-
        # Control-Allow-Credentials header. Default value is false.
        # Corresponds to the JSON property `allowCredentials`
        # @return [Boolean]
        attr_accessor :allow_credentials
        alias_method :allow_credentials?, :allow_credentials
      
        # Specifies the content for Access-Control-Allow-Headers header.
        # Corresponds to the JSON property `allowHeaders`
        # @return [Array<String>]
        attr_accessor :allow_headers
      
        # Specifies the content for Access-Control-Allow-Methods header.
        # Corresponds to the JSON property `allowMethods`
        # @return [Array<String>]
        attr_accessor :allow_methods
      
        # Specifies the regular expression patterns that match allowed origins. For
        # regular expression grammar, please see https://github.com/google/re2/wiki/
        # Syntax.
        # Corresponds to the JSON property `allowOriginRegexes`
        # @return [Array<String>]
        attr_accessor :allow_origin_regexes
      
        # Specifies the list of origins that will be allowed to do CORS requests. An
        # origin is allowed if it matches either an item in allow_origins or an item in
        # allow_origin_regexes.
        # Corresponds to the JSON property `allowOrigins`
        # @return [Array<String>]
        attr_accessor :allow_origins
      
        # If true, the CORS policy is disabled. The default value is false, which
        # indicates that the CORS policy is in effect.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Specifies the content for Access-Control-Expose-Headers header.
        # Corresponds to the JSON property `exposeHeaders`
        # @return [Array<String>]
        attr_accessor :expose_headers
      
        # Specifies how long result of a preflight request can be cached in seconds.
        # This translates to the Access-Control-Max-Age header.
        # Corresponds to the JSON property `maxAge`
        # @return [String]
        attr_accessor :max_age
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_credentials = args[:allow_credentials] if args.key?(:allow_credentials)
          @allow_headers = args[:allow_headers] if args.key?(:allow_headers)
          @allow_methods = args[:allow_methods] if args.key?(:allow_methods)
          @allow_origin_regexes = args[:allow_origin_regexes] if args.key?(:allow_origin_regexes)
          @allow_origins = args[:allow_origins] if args.key?(:allow_origins)
          @disabled = args[:disabled] if args.key?(:disabled)
          @expose_headers = args[:expose_headers] if args.key?(:expose_headers)
          @max_age = args[:max_age] if args.key?(:max_age)
        end
      end
      
      # Specifications of a destination to which the request should be routed to.
      class HttpRouteDestination
        include Google::Apis::Core::Hashable
      
        # The specification for modifying HTTP header in HTTP request and HTTP response.
        # Corresponds to the JSON property `requestHeaderModifier`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteHeaderModifier]
        attr_accessor :request_header_modifier
      
        # The specification for modifying HTTP header in HTTP request and HTTP response.
        # Corresponds to the JSON property `responseHeaderModifier`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteHeaderModifier]
        attr_accessor :response_header_modifier
      
        # The URL of a BackendService to route traffic to.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Specifies the proportion of requests forwarded to the backend referenced by
        # the serviceName field. This is computed as: - weight/Sum(weights in this
        # destination list). For non-zero values, there may be some epsilon from the
        # exact proportion defined here depending on the precision an implementation
        # supports. If only one serviceName is specified and it has a weight greater
        # than 0, 100% of the traffic is forwarded to that backend. If weights are
        # specified for any one service name, they need to be specified for all of them.
        # If weights are unspecified for all services, then, traffic is distributed in
        # equal proportions to all of them.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_header_modifier = args[:request_header_modifier] if args.key?(:request_header_modifier)
          @response_header_modifier = args[:response_header_modifier] if args.key?(:response_header_modifier)
          @service_name = args[:service_name] if args.key?(:service_name)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # The specification for fault injection introduced into traffic to test the
      # resiliency of clients to destination service failure. As part of fault
      # injection, when clients send requests to a destination, delays can be
      # introduced by client proxy on a percentage of requests before sending those
      # requests to the destination service. Similarly requests can be aborted by
      # client proxy for a percentage of requests.
      class HttpRouteFaultInjectionPolicy
        include Google::Apis::Core::Hashable
      
        # Specification of how client requests are aborted as part of fault injection
        # before being sent to a destination.
        # Corresponds to the JSON property `abort`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteFaultInjectionPolicyAbort]
        attr_accessor :abort
      
        # Specification of how client requests are delayed as part of fault injection
        # before being sent to a destination.
        # Corresponds to the JSON property `delay`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteFaultInjectionPolicyDelay]
        attr_accessor :delay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abort = args[:abort] if args.key?(:abort)
          @delay = args[:delay] if args.key?(:delay)
        end
      end
      
      # Specification of how client requests are aborted as part of fault injection
      # before being sent to a destination.
      class HttpRouteFaultInjectionPolicyAbort
        include Google::Apis::Core::Hashable
      
        # The HTTP status code used to abort the request. The value must be between 200
        # and 599 inclusive.
        # Corresponds to the JSON property `httpStatus`
        # @return [Fixnum]
        attr_accessor :http_status
      
        # The percentage of traffic which will be aborted. The value must be between [0,
        # 100]
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_status = args[:http_status] if args.key?(:http_status)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # Specification of how client requests are delayed as part of fault injection
      # before being sent to a destination.
      class HttpRouteFaultInjectionPolicyDelay
        include Google::Apis::Core::Hashable
      
        # Specify a fixed delay before forwarding the request.
        # Corresponds to the JSON property `fixedDelay`
        # @return [String]
        attr_accessor :fixed_delay
      
        # The percentage of traffic on which delay will be injected. The value must be
        # between [0, 100]
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_delay = args[:fixed_delay] if args.key?(:fixed_delay)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # Specifies how to select a route rule based on HTTP request headers.
      class HttpRouteHeaderMatch
        include Google::Apis::Core::Hashable
      
        # The value of the header should match exactly the content of exact_match.
        # Corresponds to the JSON property `exactMatch`
        # @return [String]
        attr_accessor :exact_match
      
        # The name of the HTTP header to match against.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # If specified, the match result will be inverted before checking. Default value
        # is set to false.
        # Corresponds to the JSON property `invertMatch`
        # @return [Boolean]
        attr_accessor :invert_match
        alias_method :invert_match?, :invert_match
      
        # The value of the header must start with the contents of prefix_match.
        # Corresponds to the JSON property `prefixMatch`
        # @return [String]
        attr_accessor :prefix_match
      
        # A header with header_name must exist. The match takes place whether or not the
        # header has a value.
        # Corresponds to the JSON property `presentMatch`
        # @return [Boolean]
        attr_accessor :present_match
        alias_method :present_match?, :present_match
      
        # Represents an integer value range.
        # Corresponds to the JSON property `rangeMatch`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteHeaderMatchIntegerRange]
        attr_accessor :range_match
      
        # The value of the header must match the regular expression specified in
        # regex_match. For regular expression grammar, please see: https://github.com/
        # google/re2/wiki/Syntax
        # Corresponds to the JSON property `regexMatch`
        # @return [String]
        attr_accessor :regex_match
      
        # The value of the header must end with the contents of suffix_match.
        # Corresponds to the JSON property `suffixMatch`
        # @return [String]
        attr_accessor :suffix_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match = args[:exact_match] if args.key?(:exact_match)
          @header = args[:header] if args.key?(:header)
          @invert_match = args[:invert_match] if args.key?(:invert_match)
          @prefix_match = args[:prefix_match] if args.key?(:prefix_match)
          @present_match = args[:present_match] if args.key?(:present_match)
          @range_match = args[:range_match] if args.key?(:range_match)
          @regex_match = args[:regex_match] if args.key?(:regex_match)
          @suffix_match = args[:suffix_match] if args.key?(:suffix_match)
        end
      end
      
      # Represents an integer value range.
      class HttpRouteHeaderMatchIntegerRange
        include Google::Apis::Core::Hashable
      
        # End of the range (exclusive)
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Start of the range (inclusive)
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # The specification for modifying HTTP header in HTTP request and HTTP response.
      class HttpRouteHeaderModifier
        include Google::Apis::Core::Hashable
      
        # Add the headers with given map where key is the name of the header, value is
        # the value of the header.
        # Corresponds to the JSON property `add`
        # @return [Hash<String,String>]
        attr_accessor :add
      
        # Remove headers (matching by header names) specified in the list.
        # Corresponds to the JSON property `remove`
        # @return [Array<String>]
        attr_accessor :remove
      
        # Completely overwrite/replace the headers with given map where key is the name
        # of the header, value is the value of the header.
        # Corresponds to the JSON property `set`
        # @return [Hash<String,String>]
        attr_accessor :set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add = args[:add] if args.key?(:add)
          @remove = args[:remove] if args.key?(:remove)
          @set = args[:set] if args.key?(:set)
        end
      end
      
      # Static HTTP response object to be returned.
      class HttpRouteHttpDirectResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Response body as bytes. Maximum body size is 4096B.
        # Corresponds to the JSON property `bytesBody`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_body
      
        # Required. Status to return as part of HTTP Response. Must be a positive
        # integer.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # Optional. Response body as a string. Maximum body length is 1024 characters.
        # Corresponds to the JSON property `stringBody`
        # @return [String]
        attr_accessor :string_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_body = args[:bytes_body] if args.key?(:bytes_body)
          @status = args[:status] if args.key?(:status)
          @string_body = args[:string_body] if args.key?(:string_body)
        end
      end
      
      # Specifications to match a query parameter in the request.
      class HttpRouteQueryParameterMatch
        include Google::Apis::Core::Hashable
      
        # The value of the query parameter must exactly match the contents of
        # exact_match. Only one of exact_match, regex_match, or present_match must be
        # set.
        # Corresponds to the JSON property `exactMatch`
        # @return [String]
        attr_accessor :exact_match
      
        # Specifies that the QueryParameterMatcher matches if request contains query
        # parameter, irrespective of whether the parameter has a value or not. Only one
        # of exact_match, regex_match, or present_match must be set.
        # Corresponds to the JSON property `presentMatch`
        # @return [Boolean]
        attr_accessor :present_match
        alias_method :present_match?, :present_match
      
        # The name of the query parameter to match.
        # Corresponds to the JSON property `queryParameter`
        # @return [String]
        attr_accessor :query_parameter
      
        # The value of the query parameter must match the regular expression specified
        # by regex_match. For regular expression grammar, please see https://github.com/
        # google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match
        # must be set.
        # Corresponds to the JSON property `regexMatch`
        # @return [String]
        attr_accessor :regex_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match = args[:exact_match] if args.key?(:exact_match)
          @present_match = args[:present_match] if args.key?(:present_match)
          @query_parameter = args[:query_parameter] if args.key?(:query_parameter)
          @regex_match = args[:regex_match] if args.key?(:regex_match)
        end
      end
      
      # The specification for redirecting traffic.
      class HttpRouteRedirect
        include Google::Apis::Core::Hashable
      
        # The host that will be used in the redirect response instead of the one that
        # was supplied in the request.
        # Corresponds to the JSON property `hostRedirect`
        # @return [String]
        attr_accessor :host_redirect
      
        # If set to true, the URL scheme in the redirected request is set to https. If
        # set to false, the URL scheme of the redirected request will remain the same as
        # that of the request. The default is set to false.
        # Corresponds to the JSON property `httpsRedirect`
        # @return [Boolean]
        attr_accessor :https_redirect
        alias_method :https_redirect?, :https_redirect
      
        # The path that will be used in the redirect response instead of the one that
        # was supplied in the request. path_redirect can not be supplied together with
        # prefix_redirect. Supply one alone or neither. If neither is supplied, the path
        # of the original request will be used for the redirect.
        # Corresponds to the JSON property `pathRedirect`
        # @return [String]
        attr_accessor :path_redirect
      
        # The port that will be used in the redirected request instead of the one that
        # was supplied in the request.
        # Corresponds to the JSON property `portRedirect`
        # @return [Fixnum]
        attr_accessor :port_redirect
      
        # Indicates that during redirection, the matched prefix (or path) should be
        # swapped with this value. This option allows URLs be dynamically created based
        # on the request.
        # Corresponds to the JSON property `prefixRewrite`
        # @return [String]
        attr_accessor :prefix_rewrite
      
        # The HTTP Status code to use for the redirect.
        # Corresponds to the JSON property `responseCode`
        # @return [String]
        attr_accessor :response_code
      
        # if set to true, any accompanying query portion of the original URL is removed
        # prior to redirecting the request. If set to false, the query portion of the
        # original URL is retained. The default is set to false.
        # Corresponds to the JSON property `stripQuery`
        # @return [Boolean]
        attr_accessor :strip_query
        alias_method :strip_query?, :strip_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_redirect = args[:host_redirect] if args.key?(:host_redirect)
          @https_redirect = args[:https_redirect] if args.key?(:https_redirect)
          @path_redirect = args[:path_redirect] if args.key?(:path_redirect)
          @port_redirect = args[:port_redirect] if args.key?(:port_redirect)
          @prefix_rewrite = args[:prefix_rewrite] if args.key?(:prefix_rewrite)
          @response_code = args[:response_code] if args.key?(:response_code)
          @strip_query = args[:strip_query] if args.key?(:strip_query)
        end
      end
      
      # Specifies the policy on how requests are shadowed to a separate mirrored
      # destination service. The proxy does not wait for responses from the shadow
      # service. Prior to sending traffic to the shadow service, the host/authority
      # header is suffixed with -shadow. Mirroring is currently not supported for
      # Cloud Run destinations.
      class HttpRouteRequestMirrorPolicy
        include Google::Apis::Core::Hashable
      
        # Specifications of a destination to which the request should be routed to.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteDestination]
        attr_accessor :destination
      
        # Optional. The percentage of requests to get mirrored to the desired
        # destination.
        # Corresponds to the JSON property `mirrorPercent`
        # @return [Float]
        attr_accessor :mirror_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @mirror_percent = args[:mirror_percent] if args.key?(:mirror_percent)
        end
      end
      
      # The specifications for retries.
      class HttpRouteRetryPolicy
        include Google::Apis::Core::Hashable
      
        # Specifies the allowed number of retries. This number must be > 0. If not
        # specified, default to 1.
        # Corresponds to the JSON property `numRetries`
        # @return [Fixnum]
        attr_accessor :num_retries
      
        # Specifies a non-zero timeout per retry attempt.
        # Corresponds to the JSON property `perTryTimeout`
        # @return [String]
        attr_accessor :per_try_timeout
      
        # Specifies one or more conditions when this retry policy applies. Valid values
        # are: 5xx: Proxy will attempt a retry if the destination service responds with
        # any 5xx response code, of if the destination service does not respond at all,
        # example: disconnect, reset, read timeout, connection failure and refused
        # streams. gateway-error: Similar to 5xx, but only applies to response codes 502,
        # 503, 504. reset: Proxy will attempt a retry if the destination service does
        # not respond at all (disconnect/reset/read timeout) connect-failure: Proxy will
        # retry on failures connecting to destination for example due to connection
        # timeouts. retriable-4xx: Proxy will retry fro retriable 4xx response codes.
        # Currently the only retriable error supported is 409. refused-stream: Proxy
        # will retry if the destination resets the stream with a REFUSED_STREAM error
        # code. This reset type indicates that it is safe to retry.
        # Corresponds to the JSON property `retryConditions`
        # @return [Array<String>]
        attr_accessor :retry_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_retries = args[:num_retries] if args.key?(:num_retries)
          @per_try_timeout = args[:per_try_timeout] if args.key?(:per_try_timeout)
          @retry_conditions = args[:retry_conditions] if args.key?(:retry_conditions)
        end
      end
      
      # The specifications for routing traffic and applying associated policies.
      class HttpRouteRouteAction
        include Google::Apis::Core::Hashable
      
        # The Specification for allowing client side cross-origin requests.
        # Corresponds to the JSON property `corsPolicy`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteCorsPolicy]
        attr_accessor :cors_policy
      
        # The destination to which traffic should be forwarded.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::HttpRouteDestination>]
        attr_accessor :destinations
      
        # Static HTTP response object to be returned.
        # Corresponds to the JSON property `directResponse`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteHttpDirectResponse]
        attr_accessor :direct_response
      
        # The specification for fault injection introduced into traffic to test the
        # resiliency of clients to destination service failure. As part of fault
        # injection, when clients send requests to a destination, delays can be
        # introduced by client proxy on a percentage of requests before sending those
        # requests to the destination service. Similarly requests can be aborted by
        # client proxy for a percentage of requests.
        # Corresponds to the JSON property `faultInjectionPolicy`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteFaultInjectionPolicy]
        attr_accessor :fault_injection_policy
      
        # Optional. Specifies the idle timeout for the selected route. The idle timeout
        # is defined as the period in which there are no bytes sent or received on
        # either the upstream or downstream connection. If not set, the default idle
        # timeout is 1 hour. If set to 0s, the timeout will be disabled.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        # The specification for redirecting traffic.
        # Corresponds to the JSON property `redirect`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteRedirect]
        attr_accessor :redirect
      
        # The specification for modifying HTTP header in HTTP request and HTTP response.
        # Corresponds to the JSON property `requestHeaderModifier`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteHeaderModifier]
        attr_accessor :request_header_modifier
      
        # Specifies the policy on how requests are shadowed to a separate mirrored
        # destination service. The proxy does not wait for responses from the shadow
        # service. Prior to sending traffic to the shadow service, the host/authority
        # header is suffixed with -shadow. Mirroring is currently not supported for
        # Cloud Run destinations.
        # Corresponds to the JSON property `requestMirrorPolicy`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteRequestMirrorPolicy]
        attr_accessor :request_mirror_policy
      
        # The specification for modifying HTTP header in HTTP request and HTTP response.
        # Corresponds to the JSON property `responseHeaderModifier`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteHeaderModifier]
        attr_accessor :response_header_modifier
      
        # The specifications for retries.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteRetryPolicy]
        attr_accessor :retry_policy
      
        # The specification for cookie-based stateful session affinity where the date
        # plane supplies a “session cookie” with the name "GSSA" which encodes a
        # specific destination host and each request containing that cookie will be
        # directed to that host as long as the destination host remains up and healthy.
        # The gRPC proxyless mesh library or sidecar proxy will manage the session
        # cookie but the client application code is responsible for copying the cookie
        # from each RPC in the session to the next.
        # Corresponds to the JSON property `statefulSessionAffinity`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteStatefulSessionAffinityPolicy]
        attr_accessor :stateful_session_affinity
      
        # Specifies the timeout for selected route. Timeout is computed from the time
        # the request has been fully processed (i.e. end of stream) up until the
        # response has been completely processed. Timeout includes all retries.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # The specification for modifying the URL of the request, prior to forwarding
        # the request to the destination.
        # Corresponds to the JSON property `urlRewrite`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteUrlRewrite]
        attr_accessor :url_rewrite
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cors_policy = args[:cors_policy] if args.key?(:cors_policy)
          @destinations = args[:destinations] if args.key?(:destinations)
          @direct_response = args[:direct_response] if args.key?(:direct_response)
          @fault_injection_policy = args[:fault_injection_policy] if args.key?(:fault_injection_policy)
          @idle_timeout = args[:idle_timeout] if args.key?(:idle_timeout)
          @redirect = args[:redirect] if args.key?(:redirect)
          @request_header_modifier = args[:request_header_modifier] if args.key?(:request_header_modifier)
          @request_mirror_policy = args[:request_mirror_policy] if args.key?(:request_mirror_policy)
          @response_header_modifier = args[:response_header_modifier] if args.key?(:response_header_modifier)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @stateful_session_affinity = args[:stateful_session_affinity] if args.key?(:stateful_session_affinity)
          @timeout = args[:timeout] if args.key?(:timeout)
          @url_rewrite = args[:url_rewrite] if args.key?(:url_rewrite)
        end
      end
      
      # RouteMatch defines specifications used to match requests. If multiple match
      # types are set, this RouteMatch will match if ALL type of matches are matched.
      class HttpRouteRouteMatch
        include Google::Apis::Core::Hashable
      
        # The HTTP request path value should exactly match this value. Only one of
        # full_path_match, prefix_match, or regex_match should be used.
        # Corresponds to the JSON property `fullPathMatch`
        # @return [String]
        attr_accessor :full_path_match
      
        # Specifies a list of HTTP request headers to match against. ALL of the supplied
        # headers must be matched.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::HttpRouteHeaderMatch>]
        attr_accessor :headers
      
        # Specifies if prefix_match and full_path_match matches are case sensitive. The
        # default value is false.
        # Corresponds to the JSON property `ignoreCase`
        # @return [Boolean]
        attr_accessor :ignore_case
        alias_method :ignore_case?, :ignore_case
      
        # The HTTP request path value must begin with specified prefix_match.
        # prefix_match must begin with a /. Only one of full_path_match, prefix_match,
        # or regex_match should be used.
        # Corresponds to the JSON property `prefixMatch`
        # @return [String]
        attr_accessor :prefix_match
      
        # Specifies a list of query parameters to match against. ALL of the query
        # parameters must be matched.
        # Corresponds to the JSON property `queryParameters`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::HttpRouteQueryParameterMatch>]
        attr_accessor :query_parameters
      
        # The HTTP request path value must satisfy the regular expression specified by
        # regex_match after removing any query parameters and anchor supplied with the
        # original URL. For regular expression grammar, please see https://github.com/
        # google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or
        # regex_match should be used.
        # Corresponds to the JSON property `regexMatch`
        # @return [String]
        attr_accessor :regex_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_path_match = args[:full_path_match] if args.key?(:full_path_match)
          @headers = args[:headers] if args.key?(:headers)
          @ignore_case = args[:ignore_case] if args.key?(:ignore_case)
          @prefix_match = args[:prefix_match] if args.key?(:prefix_match)
          @query_parameters = args[:query_parameters] if args.key?(:query_parameters)
          @regex_match = args[:regex_match] if args.key?(:regex_match)
        end
      end
      
      # Specifies how to match traffic and how to route traffic when traffic is
      # matched.
      class HttpRouteRouteRule
        include Google::Apis::Core::Hashable
      
        # The specifications for routing traffic and applying associated policies.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::NetworkservicesV1beta1::HttpRouteRouteAction]
        attr_accessor :action
      
        # A list of matches define conditions used for matching the rule against
        # incoming HTTP requests. Each match is independent, i.e. this rule will be
        # matched if ANY one of the matches is satisfied. If no matches field is
        # specified, this rule will unconditionally match traffic. If a default rule is
        # desired to be configured, add a rule with no matches specified to the end of
        # the rules list.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::HttpRouteRouteMatch>]
        attr_accessor :matches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @matches = args[:matches] if args.key?(:matches)
        end
      end
      
      # The specification for cookie-based stateful session affinity where the date
      # plane supplies a “session cookie” with the name "GSSA" which encodes a
      # specific destination host and each request containing that cookie will be
      # directed to that host as long as the destination host remains up and healthy.
      # The gRPC proxyless mesh library or sidecar proxy will manage the session
      # cookie but the client application code is responsible for copying the cookie
      # from each RPC in the session to the next.
      class HttpRouteStatefulSessionAffinityPolicy
        include Google::Apis::Core::Hashable
      
        # Required. The cookie TTL value for the Set-Cookie header generated by the data
        # plane. The lifetime of the cookie may be set to a value from 0 to 86400
        # seconds (24 hours) inclusive. Set this to 0s to use a session cookie and
        # disable cookie expiration.
        # Corresponds to the JSON property `cookieTtl`
        # @return [String]
        attr_accessor :cookie_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cookie_ttl = args[:cookie_ttl] if args.key?(:cookie_ttl)
        end
      end
      
      # The specification for modifying the URL of the request, prior to forwarding
      # the request to the destination.
      class HttpRouteUrlRewrite
        include Google::Apis::Core::Hashable
      
        # Prior to forwarding the request to the selected destination, the requests host
        # header is replaced by this value.
        # Corresponds to the JSON property `hostRewrite`
        # @return [String]
        attr_accessor :host_rewrite
      
        # Prior to forwarding the request to the selected destination, the matching
        # portion of the requests path is replaced by this value.
        # Corresponds to the JSON property `pathPrefixRewrite`
        # @return [String]
        attr_accessor :path_prefix_rewrite
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_rewrite = args[:host_rewrite] if args.key?(:host_rewrite)
          @path_prefix_rewrite = args[:path_prefix_rewrite] if args.key?(:path_prefix_rewrite)
        end
      end
      
      # `LbEdgeExtension` is a resource that lets the extension service influence the
      # selection of backend services and Cloud CDN cache keys by modifying request
      # headers.
      class LbEdgeExtension
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A set of ordered extension chains that contain the match conditions
        # and extensions to execute. Match conditions for each extension chain are
        # evaluated in sequence for a given request. The first extension chain that has
        # a condition that matches the request is executed. Any subsequent extension
        # chains do not execute. Limited to 5 extension chains per resource.
        # Corresponds to the JSON property `extensionChains`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::ExtensionChain>]
        attr_accessor :extension_chains
      
        # Required. A list of references to the forwarding rules to which this service
        # extension is attached. At least one forwarding rule is required. Only one `
        # LbEdgeExtension` resource can be associated with a forwarding rule.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<String>]
        attr_accessor :forwarding_rules
      
        # Optional. Set of labels associated with the `LbEdgeExtension` resource. The
        # format must comply with [the requirements for labels](https://cloud.google.com/
        # compute/docs/labeling-resources#requirements) for Google Cloud resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. All forwarding rules referenced by this extension must share the
        # same load balancing scheme. Supported values: `EXTERNAL_MANAGED`.
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Required. Identifier. Name of the `LbEdgeExtension` resource in the following
        # format: `projects/`project`/locations/`location`/lbEdgeExtensions/`
        # lb_edge_extension``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the resource was updated.
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
          @extension_chains = args[:extension_chains] if args.key?(:extension_chains)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @labels = args[:labels] if args.key?(:labels)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # `LbRouteExtension` is a resource that lets you control where traffic is routed
      # to for a given request.
      class LbRouteExtension
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A set of ordered extension chains that contain the match conditions
        # and extensions to execute. Match conditions for each extension chain are
        # evaluated in sequence for a given request. The first extension chain that has
        # a condition that matches the request is executed. Any subsequent extension
        # chains do not execute. Limited to 5 extension chains per resource.
        # Corresponds to the JSON property `extensionChains`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::ExtensionChain>]
        attr_accessor :extension_chains
      
        # Required. A list of references to the forwarding rules to which this service
        # extension is attached. At least one forwarding rule is required. Only one `
        # LbRouteExtension` resource can be associated with a forwarding rule.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<String>]
        attr_accessor :forwarding_rules
      
        # Optional. Set of labels associated with the `LbRouteExtension` resource. The
        # format must comply with [the requirements for labels](https://cloud.google.com/
        # compute/docs/labeling-resources#requirements) for Google Cloud resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. All backend services and forwarding rules referenced by this
        # extension must share the same load balancing scheme. Supported values: `
        # INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Backend
        # services overview](https://cloud.google.com/load-balancing/docs/backend-
        # service).
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Optional. The metadata provided here is included as part of the `
        # metadata_context` (of type `google.protobuf.Struct`) in the `ProcessingRequest`
        # message sent to the extension server. The metadata applies to all extensions
        # in all extensions chains in this resource. The metadata is available under the
        # key `com.google.lb_route_extension.`. The following variables are supported in
        # the metadata: ``forwarding_rule_id`` - substituted with the forwarding rule's
        # fully qualified resource name. This field must not be set if at least one of
        # the extension chains contains plugin extensions. Setting it results in a
        # validation error. You can set metadata at either the resource level or the
        # extension level. The extension level metadata is recommended because you can
        # pass a different set of metadata through each extension to the backend.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Required. Identifier. Name of the `LbRouteExtension` resource in the following
        # format: `projects/`project`/locations/`location`/lbRouteExtensions/`
        # lb_route_extension``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the resource was updated.
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
          @extension_chains = args[:extension_chains] if args.key?(:extension_chains)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @labels = args[:labels] if args.key?(:labels)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # `LbTrafficExtension` is a resource that lets the extension service modify the
      # headers and payloads of both requests and responses without impacting the
      # choice of backend services or any other security policies associated with the
      # backend service.
      class LbTrafficExtension
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A set of ordered extension chains that contain the match conditions
        # and extensions to execute. Match conditions for each extension chain are
        # evaluated in sequence for a given request. The first extension chain that has
        # a condition that matches the request is executed. Any subsequent extension
        # chains do not execute. Limited to 5 extension chains per resource.
        # Corresponds to the JSON property `extensionChains`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::ExtensionChain>]
        attr_accessor :extension_chains
      
        # Optional. A list of references to the forwarding rules to which this service
        # extension is attached. At least one forwarding rule is required. Only one `
        # LbTrafficExtension` resource can be associated with a forwarding rule.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<String>]
        attr_accessor :forwarding_rules
      
        # Optional. Set of labels associated with the `LbTrafficExtension` resource. The
        # format must comply with [the requirements for labels](https://cloud.google.com/
        # compute/docs/labeling-resources#requirements) for Google Cloud resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. All backend services and forwarding rules referenced by this
        # extension must share the same load balancing scheme. Supported values: `
        # INTERNAL_MANAGED` and `EXTERNAL_MANAGED`. For more information, refer to [
        # Backend services overview](https://cloud.google.com/load-balancing/docs/
        # backend-service).
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Optional. The metadata provided here is included as part of the `
        # metadata_context` (of type `google.protobuf.Struct`) in the `ProcessingRequest`
        # message sent to the extension server. The metadata applies to all extensions
        # in all extensions chains in this resource. The metadata is available under the
        # key `com.google.lb_traffic_extension.`. The following variables are supported
        # in the metadata: ``forwarding_rule_id`` - substituted with the forwarding rule'
        # s fully qualified resource name. This field must not be set if at least one of
        # the extension chains contains plugin extensions. Setting it results in a
        # validation error. You can set metadata at either the resource level or the
        # extension level. The extension level metadata is recommended because you can
        # pass a different set of metadata through each extension to the backend.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Required. Identifier. Name of the `LbTrafficExtension` resource in the
        # following format: `projects/`project`/locations/`location`/lbTrafficExtensions/
        # `lb_traffic_extension``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the resource was updated.
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
          @extension_chains = args[:extension_chains] if args.key?(:extension_chains)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @labels = args[:labels] if args.key?(:labels)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message for response to listing `AuthzExtension` resources.
      class ListAuthzExtensionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of `AuthzExtension` resources.
        # Corresponds to the JSON property `authzExtensions`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::AuthzExtension>]
        attr_accessor :authz_extensions
      
        # A token identifying a page of results that the server returns.
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
          @authz_extensions = args[:authz_extensions] if args.key?(:authz_extensions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListEndpointPolicies method.
      class ListEndpointPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # List of EndpointPolicy resources.
        # Corresponds to the JSON property `endpointPolicies`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::EndpointPolicy>]
        attr_accessor :endpoint_policies
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request opts into
        # return_partial_success and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_policies = args[:endpoint_policies] if args.key?(:endpoint_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListGatewayRouteViews method.
      class ListGatewayRouteViewsResponse
        include Google::Apis::Core::Hashable
      
        # List of GatewayRouteView resources.
        # Corresponds to the JSON property `gatewayRouteViews`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::GatewayRouteView>]
        attr_accessor :gateway_route_views
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request attempts to list all
        # resources across all supported locations, while some locations are temporarily
        # unavailable.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gateway_route_views = args[:gateway_route_views] if args.key?(:gateway_route_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListGateways method.
      class ListGatewaysResponse
        include Google::Apis::Core::Hashable
      
        # List of Gateway resources.
        # Corresponds to the JSON property `gateways`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::Gateway>]
        attr_accessor :gateways
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
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
          @gateways = args[:gateways] if args.key?(:gateways)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListGrpcRoutes method.
      class ListGrpcRoutesResponse
        include Google::Apis::Core::Hashable
      
        # List of GrpcRoute resources.
        # Corresponds to the JSON property `grpcRoutes`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::GrpcRoute>]
        attr_accessor :grpc_routes
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request opts into
        # return_partial_success and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grpc_routes = args[:grpc_routes] if args.key?(:grpc_routes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListHttpRoutes method.
      class ListHttpRoutesResponse
        include Google::Apis::Core::Hashable
      
        # List of HttpRoute resources.
        # Corresponds to the JSON property `httpRoutes`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::HttpRoute>]
        attr_accessor :http_routes
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request opts into
        # return_partial_success and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_routes = args[:http_routes] if args.key?(:http_routes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing `LbEdgeExtension` resources.
      class ListLbEdgeExtensionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of `LbEdgeExtension` resources.
        # Corresponds to the JSON property `lbEdgeExtensions`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::LbEdgeExtension>]
        attr_accessor :lb_edge_extensions
      
        # A token identifying a page of results that the server returns.
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
          @lb_edge_extensions = args[:lb_edge_extensions] if args.key?(:lb_edge_extensions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing `LbRouteExtension` resources.
      class ListLbRouteExtensionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of `LbRouteExtension` resources.
        # Corresponds to the JSON property `lbRouteExtensions`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::LbRouteExtension>]
        attr_accessor :lb_route_extensions
      
        # A token identifying a page of results that the server returns.
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
          @lb_route_extensions = args[:lb_route_extensions] if args.key?(:lb_route_extensions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing `LbTrafficExtension` resources.
      class ListLbTrafficExtensionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of `LbTrafficExtension` resources.
        # Corresponds to the JSON property `lbTrafficExtensions`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::LbTrafficExtension>]
        attr_accessor :lb_traffic_extensions
      
        # A token identifying a page of results that the server returns.
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
          @lb_traffic_extensions = args[:lb_traffic_extensions] if args.key?(:lb_traffic_extensions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::Location>]
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
      
      # Response returned by the ListMeshRouteViews method.
      class ListMeshRouteViewsResponse
        include Google::Apis::Core::Hashable
      
        # List of MeshRouteView resources.
        # Corresponds to the JSON property `meshRouteViews`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::MeshRouteView>]
        attr_accessor :mesh_route_views
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request attempts to list all
        # resources across all supported locations, while some locations are temporarily
        # unavailable.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mesh_route_views = args[:mesh_route_views] if args.key?(:mesh_route_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListMeshes method.
      class ListMeshesResponse
        include Google::Apis::Core::Hashable
      
        # List of Mesh resources.
        # Corresponds to the JSON property `meshes`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::Mesh>]
        attr_accessor :meshes
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request opts into `
        # return_partial_success` and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meshes = args[:meshes] if args.key?(:meshes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Array<Google::Apis::NetworkservicesV1beta1::Operation>]
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
      
      # Response returned by the ListServiceBindings method.
      class ListServiceBindingsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of ServiceBinding resources.
        # Corresponds to the JSON property `serviceBindings`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::ServiceBinding>]
        attr_accessor :service_bindings
      
        # Unreachable resources. Populated when the request attempts to list all
        # resources across all supported locations, while some locations are temporarily
        # unavailable.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_bindings = args[:service_bindings] if args.key?(:service_bindings)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListServiceLbPolicies method.
      class ListServiceLbPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of ServiceLbPolicy resources.
        # Corresponds to the JSON property `serviceLbPolicies`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::ServiceLbPolicy>]
        attr_accessor :service_lb_policies
      
        # Unreachable resources. Populated when the request attempts to list all
        # resources across all supported locations, while some locations are temporarily
        # unavailable.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_lb_policies = args[:service_lb_policies] if args.key?(:service_lb_policies)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListTcpRoutes method.
      class ListTcpRoutesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of TcpRoute resources.
        # Corresponds to the JSON property `tcpRoutes`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TcpRoute>]
        attr_accessor :tcp_routes
      
        # Unreachable resources. Populated when the request opts into
        # return_partial_success and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tcp_routes = args[:tcp_routes] if args.key?(:tcp_routes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListTlsRoutes method.
      class ListTlsRoutesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of TlsRoute resources.
        # Corresponds to the JSON property `tlsRoutes`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TlsRoute>]
        attr_accessor :tls_routes
      
        # Unreachable resources. Populated when the request opts into
        # return_partial_success and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tls_routes = args[:tls_routes] if args.key?(:tls_routes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the `ListWasmPluginVersions` method.
      class ListWasmPluginVersionsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request attempts to list all
        # resources across all supported locations, while some locations are temporarily
        # unavailable.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of `WasmPluginVersion` resources.
        # Corresponds to the JSON property `wasmPluginVersions`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::WasmPluginVersion>]
        attr_accessor :wasm_plugin_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @wasm_plugin_versions = args[:wasm_plugin_versions] if args.key?(:wasm_plugin_versions)
        end
      end
      
      # Response returned by the `ListWasmPlugins` method.
      class ListWasmPluginsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources. Populated when the request attempts to list all
        # resources across all supported locations, while some locations are temporarily
        # unavailable.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of `WasmPlugin` resources.
        # Corresponds to the JSON property `wasmPlugins`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::WasmPlugin>]
        attr_accessor :wasm_plugins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @wasm_plugins = args[:wasm_plugins] if args.key?(:wasm_plugins)
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
      
      # The configuration for Platform Telemetry logging for Eventarc Advanced
      # resources.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The minimum severity of logs that will be sent to Stackdriver/
        # Platform Telemetry. Logs at severitiy ≥ this value will be sent, unless it is
        # NONE.
        # Corresponds to the JSON property `logSeverity`
        # @return [String]
        attr_accessor :log_severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_severity = args[:log_severity] if args.key?(:log_severity)
        end
      end
      
      # Mesh represents a logical configuration grouping for workload to workload
      # communication within a service mesh. Routes that point to mesh dictate how
      # requests are routed within this logical mesh boundary.
      class Mesh
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Determines if envoy will insert internal debug headers into upstream
        # requests. Other Envoy headers may still be injected. By default, envoy will
        # not insert any debug headers.
        # Corresponds to the JSON property `envoyHeaders`
        # @return [String]
        attr_accessor :envoy_headers
      
        # Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to
        # listen on the specified port of localhost (127.0.0.1) address. The SIDECAR
        # proxy will expect all traffic to be redirected to this port regardless of its
        # actual ip:port destination. If unset, a port '15001' is used as the
        # interception port. This is applicable only for sidecar proxy deployments.
        # Corresponds to the JSON property `interceptionPort`
        # @return [Fixnum]
        attr_accessor :interception_port
      
        # Optional. Set of label tags associated with the Mesh resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Name of the Mesh resource. It matches pattern `projects/*/
        # locations/global/meshes/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server-defined URL of this resource
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The timestamp when the resource was updated.
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
          @envoy_headers = args[:envoy_headers] if args.key?(:envoy_headers)
          @interception_port = args[:interception_port] if args.key?(:interception_port)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # MeshRouteView defines view-only resource for Routes to a Mesh
      class MeshRouteView
        include Google::Apis::Core::Hashable
      
        # Output only. Identifier. Full path name of the MeshRouteView resource. Format:
        # projects/`project_number`/locations/`location`/meshes/`mesh`/routeViews/`
        # route_view`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource id for the route.
        # Corresponds to the JSON property `routeId`
        # @return [String]
        attr_accessor :route_id
      
        # Output only. Location where the route exists.
        # Corresponds to the JSON property `routeLocation`
        # @return [String]
        attr_accessor :route_location
      
        # Output only. Project number where the route exists.
        # Corresponds to the JSON property `routeProjectNumber`
        # @return [Fixnum]
        attr_accessor :route_project_number
      
        # Output only. Type of the route: HttpRoute,GrpcRoute,TcpRoute, or TlsRoute
        # Corresponds to the JSON property `routeType`
        # @return [String]
        attr_accessor :route_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @route_id = args[:route_id] if args.key?(:route_id)
          @route_location = args[:route_location] if args.key?(:route_location)
          @route_project_number = args[:route_project_number] if args.key?(:route_project_number)
          @route_type = args[:route_type] if args.key?(:route_type)
        end
      end
      
      # The matcher that is based on node metadata presented by xDS clients.
      class MetadataLabelMatcher
        include Google::Apis::Core::Hashable
      
        # Specifies how matching should be done. Supported values are: MATCH_ANY: At
        # least one of the Labels specified in the matcher should match the metadata
        # presented by xDS client. MATCH_ALL: The metadata presented by the xDS client
        # should contain all of the labels specified here. The selection is determined
        # based on the best match. For example, suppose there are three EndpointPolicy
        # resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has
        # MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config
        # from P1 will be selected. If a client with label connects, the config from P2
        # will be selected. If a client with label connects, the config from P3 will be
        # selected. If there is more than one best match, (for example, if a config P4
        # with selector exists and if a client with label connects), pick up the one
        # with older creation time.
        # Corresponds to the JSON property `metadataLabelMatchCriteria`
        # @return [String]
        attr_accessor :metadata_label_match_criteria
      
        # The list of label value pairs that must match labels in the provided metadata
        # based on filterMatchCriteria This list can have at most 64 entries. The list
        # can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (
        # i.e this matches any client).
        # Corresponds to the JSON property `metadataLabels`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::MetadataLabels>]
        attr_accessor :metadata_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_label_match_criteria = args[:metadata_label_match_criteria] if args.key?(:metadata_label_match_criteria)
          @metadata_labels = args[:metadata_labels] if args.key?(:metadata_labels)
        end
      end
      
      # Defines a name-pair value for a single label.
      class MetadataLabels
        include Google::Apis::Core::Hashable
      
        # Required. Label name presented as key in xDS Node Metadata.
        # Corresponds to the JSON property `labelName`
        # @return [String]
        attr_accessor :label_name
      
        # Required. Label value presented as value corresponding to the above key, in
        # xDS Node Metadata.
        # Corresponds to the JSON property `labelValue`
        # @return [String]
        attr_accessor :label_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_name = args[:label_name] if args.key?(:label_name)
          @label_value = args[:label_value] if args.key?(:label_value)
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
        # @return [Google::Apis::NetworkservicesV1beta1::Status]
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
      
      # 
      class RetryFilterPerRouteConfig
        include Google::Apis::Core::Hashable
      
        # The name of the crypto key to use for encrypting event data.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
        end
      end
      
      # ServiceBinding can be used to: - Bind a Service Directory Service to be used
      # in a BackendService resource. This feature will be deprecated soon. - Bind a
      # Private Service Connect producer service to be used in consumer Cloud Service
      # Mesh or Application Load Balancers. - Bind a Cloud Run service to be used in
      # consumer Cloud Service Mesh or Application Load Balancers.
      class ServiceBinding
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Set of label tags associated with the ServiceBinding resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Name of the ServiceBinding resource. It matches pattern `projects/*
        # /locations/*/serviceBindings/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The full Service Directory Service name of the format `projects/*/
        # locations/*/namespaces/*/services/*`. This field is for Service Directory
        # integration which will be deprecated soon.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Output only. The unique identifier of the Service Directory Service against
        # which the ServiceBinding resource is validated. This is populated when the
        # Service Binding resource is used in another resource (like Backend Service).
        # This is of the UUID4 format. This field is for Service Directory integration
        # which will be deprecated soon.
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        # Output only. The timestamp when the resource was updated.
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
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service = args[:service] if args.key?(:service)
          @service_id = args[:service_id] if args.key?(:service_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ServiceLbPolicy holds global load balancing and traffic distribution
      # configuration that can be applied to a BackendService.
      class ServiceLbPolicy
        include Google::Apis::Core::Hashable
      
        # Option to specify if an unhealthy IG/NEG should be considered for global load
        # balancing and traffic routing.
        # Corresponds to the JSON property `autoCapacityDrain`
        # @return [Google::Apis::NetworkservicesV1beta1::ServiceLbPolicyAutoCapacityDrain]
        attr_accessor :auto_capacity_drain
      
        # Output only. The timestamp when this resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Option to specify health based failover behavior. This is not related to
        # Network load balancer FailoverPolicy.
        # Corresponds to the JSON property `failoverConfig`
        # @return [Google::Apis::NetworkservicesV1beta1::ServiceLbPolicyFailoverConfig]
        attr_accessor :failover_config
      
        # Configuration to provide isolation support for the associated Backend Service.
        # Corresponds to the JSON property `isolationConfig`
        # @return [Google::Apis::NetworkservicesV1beta1::ServiceLbPolicyIsolationConfig]
        attr_accessor :isolation_config
      
        # Optional. Set of label tags associated with the ServiceLbPolicy resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The type of load balancing algorithm to be used. The default
        # behavior is WATERFALL_BY_REGION.
        # Corresponds to the JSON property `loadBalancingAlgorithm`
        # @return [String]
        attr_accessor :load_balancing_algorithm
      
        # Identifier. Name of the ServiceLbPolicy resource. It matches pattern `projects/
        # `project`/locations/`location`/serviceLbPolicies/`service_lb_policy_name``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when this resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_capacity_drain = args[:auto_capacity_drain] if args.key?(:auto_capacity_drain)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @failover_config = args[:failover_config] if args.key?(:failover_config)
          @isolation_config = args[:isolation_config] if args.key?(:isolation_config)
          @labels = args[:labels] if args.key?(:labels)
          @load_balancing_algorithm = args[:load_balancing_algorithm] if args.key?(:load_balancing_algorithm)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Option to specify if an unhealthy IG/NEG should be considered for global load
      # balancing and traffic routing.
      class ServiceLbPolicyAutoCapacityDrain
        include Google::Apis::Core::Hashable
      
        # Optional. If set to 'True', an unhealthy IG/NEG will be set as drained. - An
        # IG/NEG is considered unhealthy if less than 25% of the instances/endpoints in
        # the IG/NEG are healthy. - This option will never result in draining more than
        # 50% of the configured IGs/NEGs for the Backend Service.
        # Corresponds to the JSON property `enable`
        # @return [Boolean]
        attr_accessor :enable
        alias_method :enable?, :enable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable = args[:enable] if args.key?(:enable)
        end
      end
      
      # Option to specify health based failover behavior. This is not related to
      # Network load balancer FailoverPolicy.
      class ServiceLbPolicyFailoverConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The percentage threshold that a load balancer will begin to send
        # traffic to failover backends. If the percentage of endpoints in a MIG/NEG is
        # smaller than this value, traffic would be sent to failover backends if
        # possible. This field should be set to a value between 1 and 99. The default
        # value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless
        # service mesh, and 70 for others.
        # Corresponds to the JSON property `failoverHealthThreshold`
        # @return [Fixnum]
        attr_accessor :failover_health_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failover_health_threshold = args[:failover_health_threshold] if args.key?(:failover_health_threshold)
        end
      end
      
      # Configuration to provide isolation support for the associated Backend Service.
      class ServiceLbPolicyIsolationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The isolation granularity of the load balancer.
        # Corresponds to the JSON property `isolationGranularity`
        # @return [String]
        attr_accessor :isolation_granularity
      
        # Optional. The isolation mode of the load balancer.
        # Corresponds to the JSON property `isolationMode`
        # @return [String]
        attr_accessor :isolation_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @isolation_granularity = args[:isolation_granularity] if args.key?(:isolation_granularity)
          @isolation_mode = args[:isolation_mode] if args.key?(:isolation_mode)
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
      
      # TcpRoute is the resource defining how TCP traffic should be routed by a Mesh/
      # Gateway resource.
      class TcpRoute
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Gateways defines a list of gateways this TcpRoute is attached to, as
        # one of the routing rules to route the requests served by the gateway. Each
        # gateway reference should match the pattern: `projects/*/locations/global/
        # gateways/`
        # Corresponds to the JSON property `gateways`
        # @return [Array<String>]
        attr_accessor :gateways
      
        # Optional. Set of label tags associated with the TcpRoute resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one
        # of the routing rules to route the requests served by the mesh. Each mesh
        # reference should match the pattern: `projects/*/locations/global/meshes/` The
        # attached Mesh should be of a type SIDECAR
        # Corresponds to the JSON property `meshes`
        # @return [Array<String>]
        attr_accessor :meshes
      
        # Identifier. Name of the TcpRoute resource. It matches pattern `projects/*/
        # locations/global/tcpRoutes/tcp_route_name>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Rules that define how traffic is routed and handled. At least one
        # RouteRule must be supplied. If there are multiple rules then the action taken
        # will be the first rule to match.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TcpRouteRouteRule>]
        attr_accessor :rules
      
        # Output only. Server-defined URL of this resource
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The timestamp when the resource was updated.
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
          @gateways = args[:gateways] if args.key?(:gateways)
          @labels = args[:labels] if args.key?(:labels)
          @meshes = args[:meshes] if args.key?(:meshes)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The specifications for routing traffic and applying associated policies.
      class TcpRouteRouteAction
        include Google::Apis::Core::Hashable
      
        # Optional. The destination services to which traffic should be forwarded. At
        # least one destination service is required. Only one of route destination or
        # original destination can be set.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TcpRouteRouteDestination>]
        attr_accessor :destinations
      
        # Optional. Specifies the idle timeout for the selected route. The idle timeout
        # is defined as the period in which there are no bytes sent or received on
        # either the upstream or downstream connection. If not set, the default idle
        # timeout is 30 seconds. If set to 0s, the timeout will be disabled.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        # Optional. If true, Router will use the destination IP and port of the original
        # connection as the destination of the request. Default is false. Only one of
        # route destinations or original destination can be set.
        # Corresponds to the JSON property `originalDestination`
        # @return [Boolean]
        attr_accessor :original_destination
        alias_method :original_destination?, :original_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @idle_timeout = args[:idle_timeout] if args.key?(:idle_timeout)
          @original_destination = args[:original_destination] if args.key?(:original_destination)
        end
      end
      
      # Describe the destination for traffic to be routed to.
      class TcpRouteRouteDestination
        include Google::Apis::Core::Hashable
      
        # Required. The URL of a BackendService to route traffic to.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Optional. Specifies the proportion of requests forwarded to the backend
        # referenced by the serviceName field. This is computed as: - weight/Sum(weights
        # in this destination list). For non-zero values, there may be some epsilon from
        # the exact proportion defined here depending on the precision an implementation
        # supports. If only one serviceName is specified and it has a weight greater
        # than 0, 100% of the traffic is forwarded to that backend. If weights are
        # specified for any one service name, they need to be specified for all of them.
        # If weights are unspecified for all services, then, traffic is distributed in
        # equal proportions to all of them.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_name = args[:service_name] if args.key?(:service_name)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # RouteMatch defines the predicate used to match requests to a given action.
      # Multiple match types are "OR"ed for evaluation. If no routeMatch field is
      # specified, this rule will unconditionally match traffic.
      class TcpRouteRouteMatch
        include Google::Apis::Core::Hashable
      
        # Required. Must be specified in the CIDR range format. A CIDR range consists of
        # an IP Address and a prefix length to construct the subnet mask. By default,
        # the prefix length is 32 (i.e. matches a single IP address). Only IPV4
        # addresses are supported. Examples: "10.0.0.1" - matches against this exact IP
        # address. "10.0.0.0/8" - matches against any IP address within the 10.0.0.0
        # subnet and 255.255.255.0 mask. "0.0.0.0/0" - matches against any IP address'.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Required. Specifies the destination port to match against.
        # Corresponds to the JSON property `port`
        # @return [String]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Specifies how to match traffic and how to route traffic when traffic is
      # matched.
      class TcpRouteRouteRule
        include Google::Apis::Core::Hashable
      
        # The specifications for routing traffic and applying associated policies.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::NetworkservicesV1beta1::TcpRouteRouteAction]
        attr_accessor :action
      
        # Optional. RouteMatch defines the predicate used to match requests to a given
        # action. Multiple match types are "OR"ed for evaluation. If no routeMatch field
        # is specified, this rule will unconditionally match traffic.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TcpRouteRouteMatch>]
        attr_accessor :matches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @matches = args[:matches] if args.key?(:matches)
        end
      end
      
      # TlsRoute defines how traffic should be routed based on SNI and other matching
      # L3 attributes.
      class TlsRoute
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Gateways defines a list of gateways this TlsRoute is attached to, as
        # one of the routing rules to route the requests served by the gateway. Each
        # gateway reference should match the pattern: `projects/*/locations/global/
        # gateways/`
        # Corresponds to the JSON property `gateways`
        # @return [Array<String>]
        attr_accessor :gateways
      
        # Optional. Set of label tags associated with the TlsRoute resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one
        # of the routing rules to route the requests served by the mesh. Each mesh
        # reference should match the pattern: `projects/*/locations/global/meshes/` The
        # attached Mesh should be of a type SIDECAR
        # Corresponds to the JSON property `meshes`
        # @return [Array<String>]
        attr_accessor :meshes
      
        # Identifier. Name of the TlsRoute resource. It matches pattern `projects/*/
        # locations/global/tlsRoutes/tls_route_name>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Rules that define how traffic is routed and handled. At least one
        # RouteRule must be supplied. If there are multiple rules then the action taken
        # will be the first rule to match.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TlsRouteRouteRule>]
        attr_accessor :rules
      
        # Output only. Server-defined URL of this resource
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The timestamp when the resource was updated.
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
          @gateways = args[:gateways] if args.key?(:gateways)
          @labels = args[:labels] if args.key?(:labels)
          @meshes = args[:meshes] if args.key?(:meshes)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The specifications for routing traffic and applying associated policies.
      class TlsRouteRouteAction
        include Google::Apis::Core::Hashable
      
        # Required. The destination services to which traffic should be forwarded. At
        # least one destination service is required.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TlsRouteRouteDestination>]
        attr_accessor :destinations
      
        # Optional. Specifies the idle timeout for the selected route. The idle timeout
        # is defined as the period in which there are no bytes sent or received on
        # either the upstream or downstream connection. If not set, the default idle
        # timeout is 1 hour. If set to 0s, the timeout will be disabled.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @idle_timeout = args[:idle_timeout] if args.key?(:idle_timeout)
        end
      end
      
      # Describe the destination for traffic to be routed to.
      class TlsRouteRouteDestination
        include Google::Apis::Core::Hashable
      
        # Required. The URL of a BackendService to route traffic to.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Optional. Specifies the proportion of requests forwarded to the backend
        # referenced by the service_name field. This is computed as: - weight/Sum(
        # weights in destinations) Weights in all destinations does not need to sum up
        # to 100.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_name = args[:service_name] if args.key?(:service_name)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # RouteMatch defines the predicate used to match requests to a given action.
      # Multiple match types are "AND"ed for evaluation.
      class TlsRouteRouteMatch
        include Google::Apis::Core::Hashable
      
        # Optional. ALPN (Application-Layer Protocol Negotiation) to match against.
        # Examples: "http/1.1", "h2". At least one of sni_host and alpn is required. Up
        # to 5 alpns across all matches can be set.
        # Corresponds to the JSON property `alpn`
        # @return [Array<String>]
        attr_accessor :alpn
      
        # Optional. SNI (server name indicator) to match against. SNI will be matched
        # against all wildcard domains, i.e. `www.example.com` will be first matched
        # against `www.example.com`, then `*.example.com`, then `*.com.` Partial
        # wildcards are not supported, and values like *w.example.com are invalid. At
        # least one of sni_host and alpn is required. Up to 100 sni hosts across all
        # matches can be set.
        # Corresponds to the JSON property `sniHost`
        # @return [Array<String>]
        attr_accessor :sni_host
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpn = args[:alpn] if args.key?(:alpn)
          @sni_host = args[:sni_host] if args.key?(:sni_host)
        end
      end
      
      # Specifies how to match traffic and how to route traffic when traffic is
      # matched.
      class TlsRouteRouteRule
        include Google::Apis::Core::Hashable
      
        # The specifications for routing traffic and applying associated policies.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::NetworkservicesV1beta1::TlsRouteRouteAction]
        attr_accessor :action
      
        # Required. RouteMatch defines the predicate used to match requests to a given
        # action. Multiple match types are "OR"ed for evaluation. Atleast one RouteMatch
        # must be supplied.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::TlsRouteRouteMatch>]
        attr_accessor :matches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @matches = args[:matches] if args.key?(:matches)
        end
      end
      
      # Specification of a port-based selector.
      class TrafficPortSelector
        include Google::Apis::Core::Hashable
      
        # Optional. A list of ports. Can be port numbers or port range (example, [80-90]
        # specifies all ports from 80 to 90, including 80 and 90) or named ports or * to
        # specify all ports. If the list is empty, all ports are selected.
        # Corresponds to the JSON property `ports`
        # @return [Array<String>]
        attr_accessor :ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ports = args[:ports] if args.key?(:ports)
        end
      end
      
      # `WasmPlugin` is a resource representing a service executing a customer-
      # provided Wasm module.
      class WasmPlugin
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Set of labels associated with the `WasmPlugin` resource. The format
        # must comply with [the following requirements](/compute/docs/labeling-resources#
        # requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specifies the logging options for the activity performed by this plugin. If
        # logging is enabled, plugin logs are exported to Cloud Logging.
        # Corresponds to the JSON property `logConfig`
        # @return [Google::Apis::NetworkservicesV1beta1::WasmPluginLogConfig]
        attr_accessor :log_config
      
        # Optional. The ID of the `WasmPluginVersion` resource that is the currently
        # serving one. The version referred to must be a child of this `WasmPlugin`
        # resource.
        # Corresponds to the JSON property `mainVersionId`
        # @return [String]
        attr_accessor :main_version_id
      
        # Identifier. Name of the `WasmPlugin` resource in the following format: `
        # projects/`project`/locations/`location`/wasmPlugins/`wasm_plugin``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. List of all [extensions](https://cloud.google.com/service-
        # extensions/docs/overview) that use this `WasmPlugin` resource.
        # Corresponds to the JSON property `usedBy`
        # @return [Array<Google::Apis::NetworkservicesV1beta1::WasmPluginUsedBy>]
        attr_accessor :used_by
      
        # Optional. All versions of this `WasmPlugin` resource in the key-value format.
        # The key is the resource ID, and the value is the `VersionDetails` object. Lets
        # you create or update a `WasmPlugin` resource and its versions in a single
        # request. When the `main_version_id` field is not empty, it must point to one
        # of the `VersionDetails` objects in the map. If provided in a `PATCH` request,
        # the new versions replace the previous set. Any version omitted from the `
        # versions` field is removed. Because the `WasmPluginVersion` resource is
        # immutable, if a `WasmPluginVersion` resource with the same name already exists
        # and differs, the request fails. Note: In a `GET` request, this field is
        # populated only if the field `GetWasmPluginRequest.view` is set to `
        # WASM_PLUGIN_VIEW_FULL`.
        # Corresponds to the JSON property `versions`
        # @return [Hash<String,Google::Apis::NetworkservicesV1beta1::WasmPluginVersionDetails>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @log_config = args[:log_config] if args.key?(:log_config)
          @main_version_id = args[:main_version_id] if args.key?(:main_version_id)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @used_by = args[:used_by] if args.key?(:used_by)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Specifies the logging options for the activity performed by this plugin. If
      # logging is enabled, plugin logs are exported to Cloud Logging.
      class WasmPluginLogConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies whether to enable logging for activity by this plugin.
        # Defaults to `false`.
        # Corresponds to the JSON property `enable`
        # @return [Boolean]
        attr_accessor :enable
        alias_method :enable?, :enable
      
        # Non-empty default. Specificies the lowest level of the plugin logs that are
        # exported to Cloud Logging. This setting relates to the logs generated by using
        # logging statements in your Wasm code. This field is can be set only if logging
        # is enabled for the plugin. If the field is not provided when logging is
        # enabled, it is set to `INFO` by default.
        # Corresponds to the JSON property `minLogLevel`
        # @return [String]
        attr_accessor :min_log_level
      
        # Non-empty default. Configures the sampling rate of activity logs, where `1.0`
        # means all logged activity is reported and `0.0` means no activity is reported.
        # A floating point value between `0.0` and `1.0` indicates that a percentage of
        # log messages is stored. The default value when logging is enabled is `1.0`.
        # The value of the field must be between `0` and `1` (inclusive). This field can
        # be specified only if logging is enabled for this plugin.
        # Corresponds to the JSON property `sampleRate`
        # @return [Float]
        attr_accessor :sample_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable = args[:enable] if args.key?(:enable)
          @min_log_level = args[:min_log_level] if args.key?(:min_log_level)
          @sample_rate = args[:sample_rate] if args.key?(:sample_rate)
        end
      end
      
      # Defines a resource that uses the `WasmPlugin` resource.
      class WasmPluginUsedBy
        include Google::Apis::Core::Hashable
      
        # Output only. Full name of the resource https://google.aip.dev/122#full-
        # resource-names, for example `//networkservices.googleapis.com/projects/`
        # project`/locations/`location`/lbRouteExtensions/`extension``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A single immutable version of a `WasmPlugin` resource. Defines the Wasm module
      # used and optionally its runtime config.
      class WasmPluginVersion
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The resolved digest for the image specified in the `image` field.
        # The digest is resolved during the creation of `WasmPluginVersion` resource.
        # This field holds the digest value, regardless of whether a tag or digest was
        # originally specified in the `image` field.
        # Corresponds to the JSON property `imageDigest`
        # @return [String]
        attr_accessor :image_digest
      
        # Optional. URI of the container image containing the plugin, stored in the
        # Artifact Registry. When a new `WasmPluginVersion` resource is created, the
        # digest of the container image is saved in the `image_digest` field. When
        # downloading an image, the digest value is used instead of an image tag.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Optional. Set of labels associated with the `WasmPluginVersion` resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Name of the `WasmPluginVersion` resource in the following format: `
        # projects/`project`/locations/`location`/wasmPlugins/`wasm_plugin`/ versions/`
        # wasm_plugin_version``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for the plugin. The configuration is provided to the plugin at
        # runtime through the `ON_CONFIGURE` callback. When a new `WasmPluginVersion`
        # resource is created, the digest of the contents is saved in the `
        # plugin_config_digest` field.
        # Corresponds to the JSON property `pluginConfigData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :plugin_config_data
      
        # Output only. This field holds the digest (usually checksum) value for the
        # plugin configuration. The value is calculated based on the contents of `
        # plugin_config_data` or the container image defined by the `plugin_config_uri`
        # field.
        # Corresponds to the JSON property `pluginConfigDigest`
        # @return [String]
        attr_accessor :plugin_config_digest
      
        # URI of the plugin configuration stored in the Artifact Registry. The
        # configuration is provided to the plugin at runtime through the `ON_CONFIGURE`
        # callback. The container image must contain only a single file with the name `
        # plugin.config`. When a new `WasmPluginVersion` resource is created, the digest
        # of the container image is saved in the `plugin_config_digest` field.
        # Corresponds to the JSON property `pluginConfigUri`
        # @return [String]
        attr_accessor :plugin_config_uri
      
        # Output only. The timestamp when the resource was updated.
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
          @image_digest = args[:image_digest] if args.key?(:image_digest)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @plugin_config_data = args[:plugin_config_data] if args.key?(:plugin_config_data)
          @plugin_config_digest = args[:plugin_config_digest] if args.key?(:plugin_config_digest)
          @plugin_config_uri = args[:plugin_config_uri] if args.key?(:plugin_config_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details of a `WasmPluginVersion` resource to be inlined in the `WasmPlugin`
      # resource.
      class WasmPluginVersionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The resolved digest for the image specified in `image`. The
        # digest is resolved during the creation of a `WasmPluginVersion` resource. This
        # field holds the digest value regardless of whether a tag or digest was
        # originally specified in the `image` field.
        # Corresponds to the JSON property `imageDigest`
        # @return [String]
        attr_accessor :image_digest
      
        # Optional. URI of the container image containing the Wasm module, stored in the
        # Artifact Registry. The container image must contain only a single file with
        # the name `plugin.wasm`. When a new `WasmPluginVersion` resource is created,
        # the URI gets resolved to an image digest and saved in the `image_digest` field.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Optional. Set of labels associated with the `WasmPluginVersion` resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Configuration for the plugin. The configuration is provided to the plugin at
        # runtime through the `ON_CONFIGURE` callback. When a new `WasmPluginVersion`
        # version is created, the digest of the contents is saved in the `
        # plugin_config_digest` field.
        # Corresponds to the JSON property `pluginConfigData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :plugin_config_data
      
        # Output only. This field holds the digest (usually checksum) value for the
        # plugin configuration. The value is calculated based on the contents of the `
        # plugin_config_data` field or the container image defined by the `
        # plugin_config_uri` field.
        # Corresponds to the JSON property `pluginConfigDigest`
        # @return [String]
        attr_accessor :plugin_config_digest
      
        # URI of the plugin configuration stored in the Artifact Registry. The
        # configuration is provided to the plugin at runtime through the `ON_CONFIGURE`
        # callback. The container image must contain only a single file with the name `
        # plugin.config`. When a new `WasmPluginVersion` resource is created, the digest
        # of the container image is saved in the `plugin_config_digest` field.
        # Corresponds to the JSON property `pluginConfigUri`
        # @return [String]
        attr_accessor :plugin_config_uri
      
        # Output only. The timestamp when the resource was updated.
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
          @image_digest = args[:image_digest] if args.key?(:image_digest)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @labels = args[:labels] if args.key?(:labels)
          @plugin_config_data = args[:plugin_config_data] if args.key?(:plugin_config_data)
          @plugin_config_digest = args[:plugin_config_digest] if args.key?(:plugin_config_digest)
          @plugin_config_uri = args[:plugin_config_uri] if args.key?(:plugin_config_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
