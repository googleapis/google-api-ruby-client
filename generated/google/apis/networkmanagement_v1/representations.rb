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
    module NetworkmanagementV1
      
      class AbortInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class ConnectivityTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliverInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DropInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRuleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectivityTestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadBalancerBackend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadBalancerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInfo
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
      
      class ReachabilityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RerunConnectivityTestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteInfo
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
      
      class Step
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
      
      class Trace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbortInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworkmanagementV1::AuditLogConfig, decorator: Google::Apis::NetworkmanagementV1::AuditLogConfig::Representation
      
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
          property :binding_id, as: 'bindingId'
          property :condition, as: 'condition', class: Google::Apis::NetworkmanagementV1::Expr, decorator: Google::Apis::NetworkmanagementV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConnectivityTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :destination, as: 'destination', class: Google::Apis::NetworkmanagementV1::Endpoint, decorator: Google::Apis::NetworkmanagementV1::Endpoint::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :protocol, as: 'protocol'
          property :reachability_details, as: 'reachabilityDetails', class: Google::Apis::NetworkmanagementV1::ReachabilityDetails, decorator: Google::Apis::NetworkmanagementV1::ReachabilityDetails::Representation
      
          collection :related_projects, as: 'relatedProjects'
          property :source, as: 'source', class: Google::Apis::NetworkmanagementV1::Endpoint, decorator: Google::Apis::NetworkmanagementV1::Endpoint::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DeliverInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_uri, as: 'resourceUri'
          property :target, as: 'target'
        end
      end
      
      class DropInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
          property :ip_address, as: 'ipAddress'
          property :network, as: 'network'
          property :network_type, as: 'networkType'
          property :port, as: 'port'
          property :project_id, as: 'projectId'
        end
      end
      
      class EndpointInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_ip, as: 'destinationIp'
          property :destination_network_uri, as: 'destinationNetworkUri'
          property :destination_port, as: 'destinationPort'
          property :protocol, as: 'protocol'
          property :source_ip, as: 'sourceIp'
          property :source_network_uri, as: 'sourceNetworkUri'
          property :source_port, as: 'sourcePort'
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
      
      class FirewallInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :direction, as: 'direction'
          property :display_name, as: 'displayName'
          property :network_uri, as: 'networkUri'
          property :priority, as: 'priority'
          collection :target_service_accounts, as: 'targetServiceAccounts'
          collection :target_tags, as: 'targetTags'
          property :uri, as: 'uri'
        end
      end
      
      class ForwardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_uri, as: 'resourceUri'
          property :target, as: 'target'
        end
      end
      
      class ForwardingRuleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :matched_port_range, as: 'matchedPortRange'
          property :matched_protocol, as: 'matchedProtocol'
          property :network_uri, as: 'networkUri'
          property :target, as: 'target'
          property :uri, as: 'uri'
          property :vip, as: 'vip'
        end
      end
      
      class InstanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :external_ip, as: 'externalIp'
          property :interface, as: 'interface'
          property :internal_ip, as: 'internalIp'
          collection :network_tags, as: 'networkTags'
          property :network_uri, as: 'networkUri'
          property :service_account, as: 'serviceAccount'
          property :uri, as: 'uri'
        end
      end
      
      class ListConnectivityTestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::NetworkmanagementV1::ConnectivityTest, decorator: Google::Apis::NetworkmanagementV1::ConnectivityTest::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworkmanagementV1::Location, decorator: Google::Apis::NetworkmanagementV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworkmanagementV1::Operation, decorator: Google::Apis::NetworkmanagementV1::Operation::Representation
      
        end
      end
      
      class LoadBalancerBackend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :health_check_allowing_firewall_rules, as: 'healthCheckAllowingFirewallRules'
          collection :health_check_blocking_firewall_rules, as: 'healthCheckBlockingFirewallRules'
          property :health_check_firewall_state, as: 'healthCheckFirewallState'
          property :uri, as: 'uri'
        end
      end
      
      class LoadBalancerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_type, as: 'backendType'
          property :backend_uri, as: 'backendUri'
          collection :backends, as: 'backends', class: Google::Apis::NetworkmanagementV1::LoadBalancerBackend, decorator: Google::Apis::NetworkmanagementV1::LoadBalancerBackend::Representation
      
          property :health_check_uri, as: 'healthCheckUri'
          property :load_balancer_type, as: 'loadBalancerType'
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
      
      class NetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :matched_ip_range, as: 'matchedIpRange'
          property :uri, as: 'uri'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworkmanagementV1::Status, decorator: Google::Apis::NetworkmanagementV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworkmanagementV1::AuditConfig, decorator: Google::Apis::NetworkmanagementV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworkmanagementV1::Binding, decorator: Google::Apis::NetworkmanagementV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ReachabilityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::NetworkmanagementV1::Status, decorator: Google::Apis::NetworkmanagementV1::Status::Representation
      
          property :result, as: 'result'
          collection :traces, as: 'traces', class: Google::Apis::NetworkmanagementV1::Trace, decorator: Google::Apis::NetworkmanagementV1::Trace::Representation
      
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class RerunConnectivityTestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RouteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dest_ip_range, as: 'destIpRange'
          property :display_name, as: 'displayName'
          collection :instance_tags, as: 'instanceTags'
          property :network_uri, as: 'networkUri'
          property :next_hop, as: 'nextHop'
          property :next_hop_type, as: 'nextHopType'
          property :priority, as: 'priority'
          property :route_type, as: 'routeType'
          property :uri, as: 'uri'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworkmanagementV1::Policy, decorator: Google::Apis::NetworkmanagementV1::Policy::Representation
      
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
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abort, as: 'abort', class: Google::Apis::NetworkmanagementV1::AbortInfo, decorator: Google::Apis::NetworkmanagementV1::AbortInfo::Representation
      
          property :causes_drop, as: 'causesDrop'
          property :deliver, as: 'deliver', class: Google::Apis::NetworkmanagementV1::DeliverInfo, decorator: Google::Apis::NetworkmanagementV1::DeliverInfo::Representation
      
          property :description, as: 'description'
          property :drop, as: 'drop', class: Google::Apis::NetworkmanagementV1::DropInfo, decorator: Google::Apis::NetworkmanagementV1::DropInfo::Representation
      
          property :endpoint, as: 'endpoint', class: Google::Apis::NetworkmanagementV1::EndpointInfo, decorator: Google::Apis::NetworkmanagementV1::EndpointInfo::Representation
      
          property :firewall, as: 'firewall', class: Google::Apis::NetworkmanagementV1::FirewallInfo, decorator: Google::Apis::NetworkmanagementV1::FirewallInfo::Representation
      
          property :forward, as: 'forward', class: Google::Apis::NetworkmanagementV1::ForwardInfo, decorator: Google::Apis::NetworkmanagementV1::ForwardInfo::Representation
      
          property :forwarding_rule, as: 'forwardingRule', class: Google::Apis::NetworkmanagementV1::ForwardingRuleInfo, decorator: Google::Apis::NetworkmanagementV1::ForwardingRuleInfo::Representation
      
          property :instance, as: 'instance', class: Google::Apis::NetworkmanagementV1::InstanceInfo, decorator: Google::Apis::NetworkmanagementV1::InstanceInfo::Representation
      
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::NetworkmanagementV1::LoadBalancerInfo, decorator: Google::Apis::NetworkmanagementV1::LoadBalancerInfo::Representation
      
          property :network, as: 'network', class: Google::Apis::NetworkmanagementV1::NetworkInfo, decorator: Google::Apis::NetworkmanagementV1::NetworkInfo::Representation
      
          property :project_id, as: 'projectId'
          property :route, as: 'route', class: Google::Apis::NetworkmanagementV1::RouteInfo, decorator: Google::Apis::NetworkmanagementV1::RouteInfo::Representation
      
          property :state, as: 'state'
          property :vpn_gateway, as: 'vpnGateway', class: Google::Apis::NetworkmanagementV1::VpnGatewayInfo, decorator: Google::Apis::NetworkmanagementV1::VpnGatewayInfo::Representation
      
          property :vpn_tunnel, as: 'vpnTunnel', class: Google::Apis::NetworkmanagementV1::VpnTunnelInfo, decorator: Google::Apis::NetworkmanagementV1::VpnTunnelInfo::Representation
      
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
      
      class Trace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_info, as: 'endpointInfo', class: Google::Apis::NetworkmanagementV1::EndpointInfo, decorator: Google::Apis::NetworkmanagementV1::EndpointInfo::Representation
      
          collection :steps, as: 'steps', class: Google::Apis::NetworkmanagementV1::Step, decorator: Google::Apis::NetworkmanagementV1::Step::Representation
      
        end
      end
      
      class VpnGatewayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :ip_address, as: 'ipAddress'
          property :network_uri, as: 'networkUri'
          property :region, as: 'region'
          property :uri, as: 'uri'
          property :vpn_tunnel_uri, as: 'vpnTunnelUri'
        end
      end
      
      class VpnTunnelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :network_uri, as: 'networkUri'
          property :region, as: 'region'
          property :remote_gateway, as: 'remoteGateway'
          property :remote_gateway_ip, as: 'remoteGatewayIp'
          property :routing_type, as: 'routingType'
          property :source_gateway, as: 'sourceGateway'
          property :source_gateway_ip, as: 'sourceGatewayIp'
          property :uri, as: 'uri'
        end
      end
    end
  end
end
