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
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointMatcherMetadataLabelMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointMatcherMetadataLabelMatcherMetadataLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Gateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteFaultInjectionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteFaultInjectionPolicyAbort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteFaultInjectionPolicyDelay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteHeaderMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteMethodMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteRetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteRouteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteRouteMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcRouteRouteRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteCorsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteFaultInjectionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteFaultInjectionPolicyAbort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteFaultInjectionPolicyDelay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteHeaderMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteHeaderMatchIntegerRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteHeaderModifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteQueryParameterMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRedirect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRequestMirrorPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRouteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRouteMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRouteRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteUrlRewrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEndpointPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGatewaysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGrpcRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHttpRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMeshesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTcpRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTlsRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mesh
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
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpRouteRouteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpRouteRouteDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpRouteRouteMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpRouteRouteRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsRouteRouteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsRouteRouteDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsRouteRouteMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsRouteRouteRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficPortSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworkservicesV1::AuditLogConfig, decorator: Google::Apis::NetworkservicesV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::NetworkservicesV1::Expr, decorator: Google::Apis::NetworkservicesV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EndpointMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata_label_matcher, as: 'metadataLabelMatcher', class: Google::Apis::NetworkservicesV1::EndpointMatcherMetadataLabelMatcher, decorator: Google::Apis::NetworkservicesV1::EndpointMatcherMetadataLabelMatcher::Representation
      
        end
      end
      
      class EndpointMatcherMetadataLabelMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata_label_match_criteria, as: 'metadataLabelMatchCriteria'
          collection :metadata_labels, as: 'metadataLabels', class: Google::Apis::NetworkservicesV1::EndpointMatcherMetadataLabelMatcherMetadataLabels, decorator: Google::Apis::NetworkservicesV1::EndpointMatcherMetadataLabelMatcherMetadataLabels::Representation
      
        end
      end
      
      class EndpointMatcherMetadataLabelMatcherMetadataLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_name, as: 'labelName'
          property :label_value, as: 'labelValue'
        end
      end
      
      class EndpointPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_policy, as: 'authorizationPolicy'
          property :client_tls_policy, as: 'clientTlsPolicy'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :endpoint_matcher, as: 'endpointMatcher', class: Google::Apis::NetworkservicesV1::EndpointMatcher, decorator: Google::Apis::NetworkservicesV1::EndpointMatcher::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :server_tls_policy, as: 'serverTlsPolicy'
          property :traffic_port_selector, as: 'trafficPortSelector', class: Google::Apis::NetworkservicesV1::TrafficPortSelector, decorator: Google::Apis::NetworkservicesV1::TrafficPortSelector::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class Gateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses'
          collection :certificate_urls, as: 'certificateUrls'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :gateway_security_policy, as: 'gatewaySecurityPolicy'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          collection :ports, as: 'ports'
          property :scope, as: 'scope'
          property :self_link, as: 'selfLink'
          property :server_tls_policy, as: 'serverTlsPolicy'
          property :subnetwork, as: 'subnetwork'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GrpcRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :gateways, as: 'gateways'
          collection :hostnames, as: 'hostnames'
          hash :labels, as: 'labels'
          collection :meshes, as: 'meshes'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::NetworkservicesV1::GrpcRouteRouteRule, decorator: Google::Apis::NetworkservicesV1::GrpcRouteRouteRule::Representation
      
          property :self_link, as: 'selfLink'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GrpcRouteDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_name, as: 'serviceName'
          property :weight, as: 'weight'
        end
      end
      
      class GrpcRouteFaultInjectionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abort, as: 'abort', class: Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicyAbort, decorator: Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicyAbort::Representation
      
          property :delay, as: 'delay', class: Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicyDelay, decorator: Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicyDelay::Representation
      
        end
      end
      
      class GrpcRouteFaultInjectionPolicyAbort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_status, as: 'httpStatus'
          property :percentage, as: 'percentage'
        end
      end
      
      class GrpcRouteFaultInjectionPolicyDelay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_delay, as: 'fixedDelay'
          property :percentage, as: 'percentage'
        end
      end
      
      class GrpcRouteHeaderMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class GrpcRouteMethodMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :grpc_method, as: 'grpcMethod'
          property :grpc_service, as: 'grpcService'
          property :type, as: 'type'
        end
      end
      
      class GrpcRouteRetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_retries, as: 'numRetries'
          collection :retry_conditions, as: 'retryConditions'
        end
      end
      
      class GrpcRouteRouteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::NetworkservicesV1::GrpcRouteDestination, decorator: Google::Apis::NetworkservicesV1::GrpcRouteDestination::Representation
      
          property :fault_injection_policy, as: 'faultInjectionPolicy', class: Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicy, decorator: Google::Apis::NetworkservicesV1::GrpcRouteFaultInjectionPolicy::Representation
      
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::NetworkservicesV1::GrpcRouteRetryPolicy, decorator: Google::Apis::NetworkservicesV1::GrpcRouteRetryPolicy::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class GrpcRouteRouteMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::NetworkservicesV1::GrpcRouteHeaderMatch, decorator: Google::Apis::NetworkservicesV1::GrpcRouteHeaderMatch::Representation
      
          property :method_prop, as: 'method', class: Google::Apis::NetworkservicesV1::GrpcRouteMethodMatch, decorator: Google::Apis::NetworkservicesV1::GrpcRouteMethodMatch::Representation
      
        end
      end
      
      class GrpcRouteRouteRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::NetworkservicesV1::GrpcRouteRouteAction, decorator: Google::Apis::NetworkservicesV1::GrpcRouteRouteAction::Representation
      
          collection :matches, as: 'matches', class: Google::Apis::NetworkservicesV1::GrpcRouteRouteMatch, decorator: Google::Apis::NetworkservicesV1::GrpcRouteRouteMatch::Representation
      
        end
      end
      
      class HttpRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :gateways, as: 'gateways'
          collection :hostnames, as: 'hostnames'
          hash :labels, as: 'labels'
          collection :meshes, as: 'meshes'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::NetworkservicesV1::HttpRouteRouteRule, decorator: Google::Apis::NetworkservicesV1::HttpRouteRouteRule::Representation
      
          property :self_link, as: 'selfLink'
          property :update_time, as: 'updateTime'
        end
      end
      
      class HttpRouteCorsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_credentials, as: 'allowCredentials'
          collection :allow_headers, as: 'allowHeaders'
          collection :allow_methods, as: 'allowMethods'
          collection :allow_origin_regexes, as: 'allowOriginRegexes'
          collection :allow_origins, as: 'allowOrigins'
          property :disabled, as: 'disabled'
          collection :expose_headers, as: 'exposeHeaders'
          property :max_age, as: 'maxAge'
        end
      end
      
      class HttpRouteDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_name, as: 'serviceName'
          property :weight, as: 'weight'
        end
      end
      
      class HttpRouteFaultInjectionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abort, as: 'abort', class: Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicyAbort, decorator: Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicyAbort::Representation
      
          property :delay, as: 'delay', class: Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicyDelay, decorator: Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicyDelay::Representation
      
        end
      end
      
      class HttpRouteFaultInjectionPolicyAbort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_status, as: 'httpStatus'
          property :percentage, as: 'percentage'
        end
      end
      
      class HttpRouteFaultInjectionPolicyDelay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_delay, as: 'fixedDelay'
          property :percentage, as: 'percentage'
        end
      end
      
      class HttpRouteHeaderMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :header, as: 'header'
          property :invert_match, as: 'invertMatch'
          property :prefix_match, as: 'prefixMatch'
          property :present_match, as: 'presentMatch'
          property :range_match, as: 'rangeMatch', class: Google::Apis::NetworkservicesV1::HttpRouteHeaderMatchIntegerRange, decorator: Google::Apis::NetworkservicesV1::HttpRouteHeaderMatchIntegerRange::Representation
      
          property :regex_match, as: 'regexMatch'
          property :suffix_match, as: 'suffixMatch'
        end
      end
      
      class HttpRouteHeaderMatchIntegerRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class HttpRouteHeaderModifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :add, as: 'add'
          collection :remove, as: 'remove'
          hash :set, as: 'set'
        end
      end
      
      class HttpRouteQueryParameterMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :present_match, as: 'presentMatch'
          property :query_parameter, as: 'queryParameter'
          property :regex_match, as: 'regexMatch'
        end
      end
      
      class HttpRouteRedirect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_redirect, as: 'hostRedirect'
          property :https_redirect, as: 'httpsRedirect'
          property :path_redirect, as: 'pathRedirect'
          property :port_redirect, as: 'portRedirect'
          property :prefix_rewrite, as: 'prefixRewrite'
          property :response_code, as: 'responseCode'
          property :strip_query, as: 'stripQuery'
        end
      end
      
      class HttpRouteRequestMirrorPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination', class: Google::Apis::NetworkservicesV1::HttpRouteDestination, decorator: Google::Apis::NetworkservicesV1::HttpRouteDestination::Representation
      
        end
      end
      
      class HttpRouteRetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_retries, as: 'numRetries'
          property :per_try_timeout, as: 'perTryTimeout'
          collection :retry_conditions, as: 'retryConditions'
        end
      end
      
      class HttpRouteRouteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cors_policy, as: 'corsPolicy', class: Google::Apis::NetworkservicesV1::HttpRouteCorsPolicy, decorator: Google::Apis::NetworkservicesV1::HttpRouteCorsPolicy::Representation
      
          collection :destinations, as: 'destinations', class: Google::Apis::NetworkservicesV1::HttpRouteDestination, decorator: Google::Apis::NetworkservicesV1::HttpRouteDestination::Representation
      
          property :fault_injection_policy, as: 'faultInjectionPolicy', class: Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicy, decorator: Google::Apis::NetworkservicesV1::HttpRouteFaultInjectionPolicy::Representation
      
          property :redirect, as: 'redirect', class: Google::Apis::NetworkservicesV1::HttpRouteRedirect, decorator: Google::Apis::NetworkservicesV1::HttpRouteRedirect::Representation
      
          property :request_header_modifier, as: 'requestHeaderModifier', class: Google::Apis::NetworkservicesV1::HttpRouteHeaderModifier, decorator: Google::Apis::NetworkservicesV1::HttpRouteHeaderModifier::Representation
      
          property :request_mirror_policy, as: 'requestMirrorPolicy', class: Google::Apis::NetworkservicesV1::HttpRouteRequestMirrorPolicy, decorator: Google::Apis::NetworkservicesV1::HttpRouteRequestMirrorPolicy::Representation
      
          property :response_header_modifier, as: 'responseHeaderModifier', class: Google::Apis::NetworkservicesV1::HttpRouteHeaderModifier, decorator: Google::Apis::NetworkservicesV1::HttpRouteHeaderModifier::Representation
      
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::NetworkservicesV1::HttpRouteRetryPolicy, decorator: Google::Apis::NetworkservicesV1::HttpRouteRetryPolicy::Representation
      
          property :timeout, as: 'timeout'
          property :url_rewrite, as: 'urlRewrite', class: Google::Apis::NetworkservicesV1::HttpRouteUrlRewrite, decorator: Google::Apis::NetworkservicesV1::HttpRouteUrlRewrite::Representation
      
        end
      end
      
      class HttpRouteRouteMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_path_match, as: 'fullPathMatch'
          collection :headers, as: 'headers', class: Google::Apis::NetworkservicesV1::HttpRouteHeaderMatch, decorator: Google::Apis::NetworkservicesV1::HttpRouteHeaderMatch::Representation
      
          property :ignore_case, as: 'ignoreCase'
          property :prefix_match, as: 'prefixMatch'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::NetworkservicesV1::HttpRouteQueryParameterMatch, decorator: Google::Apis::NetworkservicesV1::HttpRouteQueryParameterMatch::Representation
      
          property :regex_match, as: 'regexMatch'
        end
      end
      
      class HttpRouteRouteRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::NetworkservicesV1::HttpRouteRouteAction, decorator: Google::Apis::NetworkservicesV1::HttpRouteRouteAction::Representation
      
          collection :matches, as: 'matches', class: Google::Apis::NetworkservicesV1::HttpRouteRouteMatch, decorator: Google::Apis::NetworkservicesV1::HttpRouteRouteMatch::Representation
      
        end
      end
      
      class HttpRouteUrlRewrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_rewrite, as: 'hostRewrite'
          property :path_prefix_rewrite, as: 'pathPrefixRewrite'
        end
      end
      
      class ListEndpointPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_policies, as: 'endpointPolicies', class: Google::Apis::NetworkservicesV1::EndpointPolicy, decorator: Google::Apis::NetworkservicesV1::EndpointPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGatewaysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gateways, as: 'gateways', class: Google::Apis::NetworkservicesV1::Gateway, decorator: Google::Apis::NetworkservicesV1::Gateway::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGrpcRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :grpc_routes, as: 'grpcRoutes', class: Google::Apis::NetworkservicesV1::GrpcRoute, decorator: Google::Apis::NetworkservicesV1::GrpcRoute::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListHttpRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :http_routes, as: 'httpRoutes', class: Google::Apis::NetworkservicesV1::HttpRoute, decorator: Google::Apis::NetworkservicesV1::HttpRoute::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworkservicesV1::Location, decorator: Google::Apis::NetworkservicesV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMeshesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :meshes, as: 'meshes', class: Google::Apis::NetworkservicesV1::Mesh, decorator: Google::Apis::NetworkservicesV1::Mesh::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworkservicesV1::Operation, decorator: Google::Apis::NetworkservicesV1::Operation::Representation
      
        end
      end
      
      class ListServiceBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_bindings, as: 'serviceBindings', class: Google::Apis::NetworkservicesV1::ServiceBinding, decorator: Google::Apis::NetworkservicesV1::ServiceBinding::Representation
      
        end
      end
      
      class ListTcpRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tcp_routes, as: 'tcpRoutes', class: Google::Apis::NetworkservicesV1::TcpRoute, decorator: Google::Apis::NetworkservicesV1::TcpRoute::Representation
      
        end
      end
      
      class ListTlsRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tls_routes, as: 'tlsRoutes', class: Google::Apis::NetworkservicesV1::TlsRoute, decorator: Google::Apis::NetworkservicesV1::TlsRoute::Representation
      
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
      
      class Mesh
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :interception_port, as: 'interceptionPort'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworkservicesV1::Status, decorator: Google::Apis::NetworkservicesV1::Status::Representation
      
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworkservicesV1::AuditConfig, decorator: Google::Apis::NetworkservicesV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworkservicesV1::Binding, decorator: Google::Apis::NetworkservicesV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ServiceBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service, as: 'service'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworkservicesV1::Policy, decorator: Google::Apis::NetworkservicesV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class TcpRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :gateways, as: 'gateways'
          hash :labels, as: 'labels'
          collection :meshes, as: 'meshes'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::NetworkservicesV1::TcpRouteRouteRule, decorator: Google::Apis::NetworkservicesV1::TcpRouteRouteRule::Representation
      
          property :self_link, as: 'selfLink'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TcpRouteRouteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::NetworkservicesV1::TcpRouteRouteDestination, decorator: Google::Apis::NetworkservicesV1::TcpRouteRouteDestination::Representation
      
          property :original_destination, as: 'originalDestination'
        end
      end
      
      class TcpRouteRouteDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_name, as: 'serviceName'
          property :weight, as: 'weight'
        end
      end
      
      class TcpRouteRouteMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :port, as: 'port'
        end
      end
      
      class TcpRouteRouteRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::NetworkservicesV1::TcpRouteRouteAction, decorator: Google::Apis::NetworkservicesV1::TcpRouteRouteAction::Representation
      
          collection :matches, as: 'matches', class: Google::Apis::NetworkservicesV1::TcpRouteRouteMatch, decorator: Google::Apis::NetworkservicesV1::TcpRouteRouteMatch::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TlsRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :gateways, as: 'gateways'
          collection :meshes, as: 'meshes'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::NetworkservicesV1::TlsRouteRouteRule, decorator: Google::Apis::NetworkservicesV1::TlsRouteRouteRule::Representation
      
          property :self_link, as: 'selfLink'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TlsRouteRouteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::NetworkservicesV1::TlsRouteRouteDestination, decorator: Google::Apis::NetworkservicesV1::TlsRouteRouteDestination::Representation
      
        end
      end
      
      class TlsRouteRouteDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_name, as: 'serviceName'
          property :weight, as: 'weight'
        end
      end
      
      class TlsRouteRouteMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alpn, as: 'alpn'
          collection :sni_host, as: 'sniHost'
        end
      end
      
      class TlsRouteRouteRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::NetworkservicesV1::TlsRouteRouteAction, decorator: Google::Apis::NetworkservicesV1::TlsRouteRouteAction::Representation
      
          collection :matches, as: 'matches', class: Google::Apis::NetworkservicesV1::TlsRouteRouteMatch, decorator: Google::Apis::NetworkservicesV1::TlsRouteRouteMatch::Representation
      
        end
      end
      
      class TrafficPortSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ports, as: 'ports'
        end
      end
    end
  end
end
