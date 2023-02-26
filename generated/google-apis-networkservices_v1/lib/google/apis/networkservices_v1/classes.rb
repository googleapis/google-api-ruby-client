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
    module NetworkservicesV1
      
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
        # @return [Array<Google::Apis::NetworkservicesV1::AuditLogConfig>]
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
        # @return [Google::Apis::NetworkservicesV1::Expr]
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
        # @return [Google::Apis::NetworkservicesV1::EndpointMatcherMetadataLabelMatcher]
        attr_accessor :metadata_label_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_label_matcher = args[:metadata_label_matcher] if args.key?(:metadata_label_matcher)
        end
      end
      
      # The matcher that is based on node metadata presented by xDS clients.
      class EndpointMatcherMetadataLabelMatcher
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
        # with selector exists and if a client with label connects), an error will be
        # thrown.
        # Corresponds to the JSON property `metadataLabelMatchCriteria`
        # @return [String]
        attr_accessor :metadata_label_match_criteria
      
        # The list of label value pairs that must match labels in the provided metadata
        # based on filterMatchCriteria This list can have at most 64 entries. The list
        # can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (
        # i.e this matches any client).
        # Corresponds to the JSON property `metadataLabels`
        # @return [Array<Google::Apis::NetworkservicesV1::EndpointMatcherMetadataLabelMatcherMetadataLabels>]
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
      class EndpointMatcherMetadataLabelMatcherMetadataLabels
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
        # @return [Google::Apis::NetworkservicesV1::EndpointMatcher]
        attr_accessor :endpoint_matcher
      
        # Optional. Set of label tags associated with the EndpointPolicy resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the EndpointPolicy resource. It matches pattern `projects/`
        # project`/locations/global/endpointPolicies/`endpoint_policy``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used
        # to determine the authentication policy to be applied to terminate the inbound
        # traffic at the identified backends. If this field is not set, authentication
        # is disabled(open) for this endpoint.
        # Corresponds to the JSON property `serverTlsPolicy`
        # @return [String]
        attr_accessor :server_tls_policy
      
        # Specification of a port-based selector.
        # Corresponds to the JSON property `trafficPortSelector`
        # @return [Google::Apis::NetworkservicesV1::TrafficPortSelector]
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
          @server_tls_policy = args[:server_tls_policy] if args.key?(:server_tls_policy)
          @traffic_port_selector = args[:traffic_port_selector] if args.key?(:traffic_port_selector)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Gateway represents the configuration for a proxy, typically a load balancer.
      # It captures the ip:port over which the services are exposed by the proxy,
      # along with any policy configurations. Routes have reference to to Gateways to
      # dictate how requests should be routed by this Gateway.
      class Gateway
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A free-text description of the resource. Max length 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Set of label tags associated with the Gateway resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the Gateway resource. It matches pattern `projects/*/
        # locations/*/gateways/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. One or more port numbers (1-65535), on which the Gateway will
        # receive traffic. The proxy binds to the specified ports. Gateways of type '
        # SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen
        # on 0.0.0.0 and support multiple ports.
        # Corresponds to the JSON property `ports`
        # @return [Array<Fixnum>]
        attr_accessor :ports
      
        # Optional. Scope determines how configuration across multiple Gateway instances
        # are merged. The configuration for multiple Gateway instances with the same
        # scope will be merged as presented as a single coniguration to the proxy/load
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @ports = args[:ports] if args.key?(:ports)
          @scope = args[:scope] if args.key?(:scope)
          @self_link = args[:self_link] if args.key?(:self_link)
          @server_tls_policy = args[:server_tls_policy] if args.key?(:server_tls_policy)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # wildcard label (*.). The wildcard label must appear by itself as the first
        # label. Hostname can be "precise" which is a domain name without the
        # terminating dot of a network host (e.g. "foo.example.com") or "wildcard",
        # which is a domain name prefixed with a single wildcard label (e.g. *.example.
        # com). Note that as per RFC1035 and RFC1123, a label must consist of lower case
        # alphanumeric characters or '-', and must start and end with an alphanumeric
        # character. No other punctuation is allowed. The routes associated with a Mesh
        # or Gateway must have unique hostnames. If you attempt to attach multiple
        # routes with conflicting hostnames, the configuration will be rejected. For
        # example, while it is acceptable for routes for the hostnames "*.foo.bar.com"
        # and "*.bar.com" to be associated with the same route, it is not possible to
        # associate two routes both with "*.bar.com" or both with "bar.com". If a port
        # is specified, then gRPC clients must use the channel URI with the port to
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
      
        # Required. Name of the GrpcRoute resource. It matches pattern `projects/*/
        # locations/global/grpcRoutes/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. A list of detailed rules defining how to route traffic. Within a
        # single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching
        # GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1::GrpcRouteRouteRule>]
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
        # referenced by the serviceName field. This is computed as: weight/Sum(weights
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
        # @return [Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicyAbort]
        attr_accessor :abort
      
        # Specification of how client requests are delayed as part of fault injection
        # before being sent to a destination.
        # Corresponds to the JSON property `delay`
        # @return [Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicyDelay]
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
      
      # The specifications for retries.
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
        # @return [Array<Google::Apis::NetworkservicesV1::GrpcRouteDestination>]
        attr_accessor :destinations
      
        # The specification for fault injection introduced into traffic to test the
        # resiliency of clients to destination service failure. As part of fault
        # injection, when clients send requests to a destination, delays can be
        # introduced on a percentage of requests before sending those requests to the
        # destination service. Similarly requests from clients can be aborted by for a
        # percentage of requests.
        # Corresponds to the JSON property `faultInjectionPolicy`
        # @return [Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicy]
        attr_accessor :fault_injection_policy
      
        # The specifications for retries.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::NetworkservicesV1::GrpcRouteRetryPolicy]
        attr_accessor :retry_policy
      
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
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Criteria for matching traffic. A RouteMatch will be considered to match when
      # all supplied fields match.
      class GrpcRouteRouteMatch
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies a collection of headers to match.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::NetworkservicesV1::GrpcRouteHeaderMatch>]
        attr_accessor :headers
      
        # Specifies a match against a method.
        # Corresponds to the JSON property `method`
        # @return [Google::Apis::NetworkservicesV1::GrpcRouteMethodMatch]
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
        # @return [Google::Apis::NetworkservicesV1::GrpcRouteRouteAction]
        attr_accessor :action
      
        # Optional. Matches define conditions used for matching the rule against
        # incoming gRPC requests. Each match is independent, i.e. this rule will be
        # matched if ANY one of the matches is satisfied. If no matches field is
        # specified, this rule will unconditionally match traffic.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1::GrpcRouteRouteMatch>]
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
        # wildcard label (*.). The wildcard label must appear by itself as the first
        # label. Hostname can be "precise" which is a domain name without the
        # terminating dot of a network host (e.g. "foo.example.com") or "wildcard",
        # which is a domain name prefixed with a single wildcard label (e.g. *.example.
        # com). Note that as per RFC1035 and RFC1123, a label must consist of lower case
        # alphanumeric characters or '-', and must start and end with an alphanumeric
        # character. No other punctuation is allowed. The routes associated with a Mesh
        # or Gateways must have unique hostnames. If you attempt to attach multiple
        # routes with conflicting hostnames, the configuration will be rejected. For
        # example, while it is acceptable for routes for the hostnames "*.foo.bar.com"
        # and "*.bar.com" to be associated with the same Mesh (or Gateways under the
        # same scope), it is not possible to associate two routes both with "*.bar.com"
        # or both with "bar.com".
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
      
        # Required. Name of the HttpRoute resource. It matches pattern `projects/*/
        # locations/global/httpRoutes/http_route_name>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Rules that define how traffic is routed and handled. Rules will be
        # matched sequentially based on the RouteMatch specified for the rule.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1::HttpRouteRouteRule>]
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
      
        # The URL of a BackendService to route traffic to.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Specifies the proportion of requests forwarded to the backend referenced by
        # the serviceName field. This is computed as: weight/Sum(weights in this
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
        # @return [Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicyAbort]
        attr_accessor :abort
      
        # Specification of how client requests are delayed as part of fault injection
        # before being sent to a destination.
        # Corresponds to the JSON property `delay`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicyDelay]
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
        # @return [Google::Apis::NetworkservicesV1::HttpRouteHeaderMatchIntegerRange]
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
      # header is suffixed with -shadow.
      class HttpRouteRequestMirrorPolicy
        include Google::Apis::Core::Hashable
      
        # Specifications of a destination to which the request should be routed to.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteDestination]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
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
        # @return [Google::Apis::NetworkservicesV1::HttpRouteCorsPolicy]
        attr_accessor :cors_policy
      
        # The destination to which traffic should be forwarded.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworkservicesV1::HttpRouteDestination>]
        attr_accessor :destinations
      
        # The specification for fault injection introduced into traffic to test the
        # resiliency of clients to destination service failure. As part of fault
        # injection, when clients send requests to a destination, delays can be
        # introduced by client proxy on a percentage of requests before sending those
        # requests to the destination service. Similarly requests can be aborted by
        # client proxy for a percentage of requests.
        # Corresponds to the JSON property `faultInjectionPolicy`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicy]
        attr_accessor :fault_injection_policy
      
        # The specification for redirecting traffic.
        # Corresponds to the JSON property `redirect`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteRedirect]
        attr_accessor :redirect
      
        # The specification for modifying HTTP header in HTTP request and HTTP response.
        # Corresponds to the JSON property `requestHeaderModifier`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteHeaderModifier]
        attr_accessor :request_header_modifier
      
        # Specifies the policy on how requests are shadowed to a separate mirrored
        # destination service. The proxy does not wait for responses from the shadow
        # service. Prior to sending traffic to the shadow service, the host/authority
        # header is suffixed with -shadow.
        # Corresponds to the JSON property `requestMirrorPolicy`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteRequestMirrorPolicy]
        attr_accessor :request_mirror_policy
      
        # The specification for modifying HTTP header in HTTP request and HTTP response.
        # Corresponds to the JSON property `responseHeaderModifier`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteHeaderModifier]
        attr_accessor :response_header_modifier
      
        # The specifications for retries.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteRetryPolicy]
        attr_accessor :retry_policy
      
        # Specifies the timeout for selected route. Timeout is computed from the time
        # the request has been fully processed (i.e. end of stream) up until the
        # response has been completely processed. Timeout includes all retries.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # The specification for modifying the URL of the request, prior to forwarding
        # the request to the destination.
        # Corresponds to the JSON property `urlRewrite`
        # @return [Google::Apis::NetworkservicesV1::HttpRouteUrlRewrite]
        attr_accessor :url_rewrite
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cors_policy = args[:cors_policy] if args.key?(:cors_policy)
          @destinations = args[:destinations] if args.key?(:destinations)
          @fault_injection_policy = args[:fault_injection_policy] if args.key?(:fault_injection_policy)
          @redirect = args[:redirect] if args.key?(:redirect)
          @request_header_modifier = args[:request_header_modifier] if args.key?(:request_header_modifier)
          @request_mirror_policy = args[:request_mirror_policy] if args.key?(:request_mirror_policy)
          @response_header_modifier = args[:response_header_modifier] if args.key?(:response_header_modifier)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
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
        # @return [Array<Google::Apis::NetworkservicesV1::HttpRouteHeaderMatch>]
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
        # @return [Array<Google::Apis::NetworkservicesV1::HttpRouteQueryParameterMatch>]
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
        # @return [Google::Apis::NetworkservicesV1::HttpRouteRouteAction]
        attr_accessor :action
      
        # A list of matches define conditions used for matching the rule against
        # incoming HTTP requests. Each match is independent, i.e. this rule will be
        # matched if ANY one of the matches is satisfied. If no matches field is
        # specified, this rule will unconditionally match traffic. If a default rule is
        # desired to be configured, add a rule with no matches specified to the end of
        # the rules list.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1::HttpRouteRouteMatch>]
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
      
      # Response returned by the ListEndpointPolicies method.
      class ListEndpointPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # List of EndpointPolicy resources.
        # Corresponds to the JSON property `endpointPolicies`
        # @return [Array<Google::Apis::NetworkservicesV1::EndpointPolicy>]
        attr_accessor :endpoint_policies
      
        # If there might be more results than those appearing in this response, then `
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
          @endpoint_policies = args[:endpoint_policies] if args.key?(:endpoint_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response returned by the ListGateways method.
      class ListGatewaysResponse
        include Google::Apis::Core::Hashable
      
        # List of Gateway resources.
        # Corresponds to the JSON property `gateways`
        # @return [Array<Google::Apis::NetworkservicesV1::Gateway>]
        attr_accessor :gateways
      
        # If there might be more results than those appearing in this response, then `
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
          @gateways = args[:gateways] if args.key?(:gateways)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response returned by the ListGrpcRoutes method.
      class ListGrpcRoutesResponse
        include Google::Apis::Core::Hashable
      
        # List of GrpcRoute resources.
        # Corresponds to the JSON property `grpcRoutes`
        # @return [Array<Google::Apis::NetworkservicesV1::GrpcRoute>]
        attr_accessor :grpc_routes
      
        # If there might be more results than those appearing in this response, then `
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
          @grpc_routes = args[:grpc_routes] if args.key?(:grpc_routes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response returned by the ListHttpRoutes method.
      class ListHttpRoutesResponse
        include Google::Apis::Core::Hashable
      
        # List of HttpRoute resources.
        # Corresponds to the JSON property `httpRoutes`
        # @return [Array<Google::Apis::NetworkservicesV1::HttpRoute>]
        attr_accessor :http_routes
      
        # If there might be more results than those appearing in this response, then `
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
          @http_routes = args[:http_routes] if args.key?(:http_routes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworkservicesV1::Location>]
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
      
      # Response returned by the ListMeshes method.
      class ListMeshesResponse
        include Google::Apis::Core::Hashable
      
        # List of Mesh resources.
        # Corresponds to the JSON property `meshes`
        # @return [Array<Google::Apis::NetworkservicesV1::Mesh>]
        attr_accessor :meshes
      
        # If there might be more results than those appearing in this response, then `
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
          @meshes = args[:meshes] if args.key?(:meshes)
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
        # @return [Array<Google::Apis::NetworkservicesV1::Operation>]
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
        # @return [Array<Google::Apis::NetworkservicesV1::ServiceBinding>]
        attr_accessor :service_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_bindings = args[:service_bindings] if args.key?(:service_bindings)
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
        # @return [Array<Google::Apis::NetworkservicesV1::TcpRoute>]
        attr_accessor :tcp_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tcp_routes = args[:tcp_routes] if args.key?(:tcp_routes)
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
        # @return [Array<Google::Apis::NetworkservicesV1::TlsRoute>]
        attr_accessor :tls_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tls_routes = args[:tls_routes] if args.key?(:tls_routes)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
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
      
        # Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to
        # listen on the specified port of localhost (127.0.0.1) address. The SIDECAR
        # proxy will expect all traffic to be redirected to this port regardless of its
        # actual ip:port destination. If unset, a port '15001' is used as the
        # interception port. This will is applicable only for sidecar proxy deployments.
        # Corresponds to the JSON property `interceptionPort`
        # @return [Fixnum]
        attr_accessor :interception_port
      
        # Optional. Set of label tags associated with the Mesh resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the Mesh resource. It matches pattern `projects/*/locations/
        # global/meshes/`.
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
          @interception_port = args[:interception_port] if args.key?(:interception_port)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Google::Apis::NetworkservicesV1::Status]
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
        # @return [Array<Google::Apis::NetworkservicesV1::AuditConfig>]
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
        # @return [Array<Google::Apis::NetworkservicesV1::Binding>]
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
      
      # ServiceBinding is the resource that defines a Service Directory Service to be
      # used in a BackendService resource.
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
      
        # Required. Name of the ServiceBinding resource. It matches pattern `projects/*/
        # locations/global/serviceBindings/service_binding_name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The full Service Directory Service name of the format projects/*/
        # locations/*/namespaces/*/services/*
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
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
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Google::Apis::NetworkservicesV1::Policy]
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
      
        # Required. Name of the TcpRoute resource. It matches pattern `projects/*/
        # locations/global/tcpRoutes/tcp_route_name>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Rules that define how traffic is routed and handled. At least one
        # RouteRule must be supplied. If there are multiple rules then the action taken
        # will be the first rule to match.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1::TcpRouteRouteRule>]
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
        # least one destination service is required.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworkservicesV1::TcpRouteRouteDestination>]
        attr_accessor :destinations
      
        # Optional. If true, Router will use the destination IP and port of the original
        # connection as the destination of the request. Default is false.
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
        # referenced by the serviceName field. This is computed as: weight/Sum(weights
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
        # @return [Google::Apis::NetworkservicesV1::TcpRouteRouteAction]
        attr_accessor :action
      
        # Optional. RouteMatch defines the predicate used to match requests to a given
        # action. Multiple match types are "OR"ed for evaluation. If no routeMatch field
        # is specified, this rule will unconditionally match traffic.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1::TcpRouteRouteMatch>]
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
      
        # Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one
        # of the routing rules to route the requests served by the mesh. Each mesh
        # reference should match the pattern: `projects/*/locations/global/meshes/` The
        # attached Mesh should be of a type SIDECAR
        # Corresponds to the JSON property `meshes`
        # @return [Array<String>]
        attr_accessor :meshes
      
        # Required. Name of the TlsRoute resource. It matches pattern `projects/*/
        # locations/global/tlsRoutes/tls_route_name>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Rules that define how traffic is routed and handled. At least one
        # RouteRule must be supplied. If there are multiple rules then the action taken
        # will be the first rule to match.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworkservicesV1::TlsRouteRouteRule>]
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
        # @return [Array<Google::Apis::NetworkservicesV1::TlsRouteRouteDestination>]
        attr_accessor :destinations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
        end
      end
      
      # Describe the destination for traffic to be routed to.
      class TlsRouteRouteDestination
        include Google::Apis::Core::Hashable
      
        # Required. The URL of a BackendService to route traffic to.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Optional. Specifies the proportion of requests forwareded to the backend
        # referenced by the service_name field. This is computed as: weight/Sum(weights
        # in destinations) Weights in all destinations does not need to sum up to 100.
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
      # Multiple match types are "AND"ed for evaluation. If no routeMatch field is
      # specified, this rule will unconditionally match traffic.
      class TlsRouteRouteMatch
        include Google::Apis::Core::Hashable
      
        # Optional. ALPN (Application-Layer Protocol Negotiation) to match against.
        # Examples: "http/1.1", "h2". At least one of sni_host and alpn is required. Up
        # to 5 alpns across all matches can be set.
        # Corresponds to the JSON property `alpn`
        # @return [Array<String>]
        attr_accessor :alpn
      
        # Optional. SNI (server name indicator) to match against. SNI will be matched
        # against all wildcard domains, i.e. www.example.com will be first matched
        # against www.example.com, then *.example.com, then *.com. Partial wildcards are
        # not supported, and values like *w.example.com are invalid. At least one of
        # sni_host and alpn is required. Up to 5 sni hosts across all matches can be set.
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
        # @return [Google::Apis::NetworkservicesV1::TlsRouteRouteAction]
        attr_accessor :action
      
        # Required. RouteMatch defines the predicate used to match requests to a given
        # action. Multiple match types are "OR"ed for evaluation.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::NetworkservicesV1::TlsRouteRouteMatch>]
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
    end
  end
end
