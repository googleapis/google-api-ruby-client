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
    module VmwareengineV1
      
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
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Credentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsBindPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsForwarding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalAccessRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchNetworkPolicyExternalAddressesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrantDnsBindPermissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hcx
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HcxActivationKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExternalAccessRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExternalAddressesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHcxActivationKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLoggingServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListManagementDnsZoneBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNetworkPeeringsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNetworkPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodeTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPeeringRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPrivateCloudsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPrivateConnectionPeeringRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPrivateConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubnetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVmwareEngineNetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagementCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagementDnsZoneBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPeering
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTypeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Nsx
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
      
      class PeeringRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Principal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateCloud
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepairManagementDnsZoneBindingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetNsxCredentialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetVcenterCredentialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeDnsBindPermissionRequest
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
      
      class StretchedClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subnet
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
      
      class UndeletePrivateCloudRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vcenter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareEngineNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::VmwareengineV1::AuditLogConfig, decorator: Google::Apis::VmwareengineV1::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::VmwareengineV1::Expr, decorator: Google::Apis::VmwareengineV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :management, as: 'management'
          property :name, as: 'name'
          hash :node_type_configs, as: 'nodeTypeConfigs', class: Google::Apis::VmwareengineV1::NodeTypeConfig, decorator: Google::Apis::VmwareengineV1::NodeTypeConfig::Representation
      
          property :state, as: 'state'
          property :stretched_cluster_config, as: 'stretchedClusterConfig', class: Google::Apis::VmwareengineV1::StretchedClusterConfig, decorator: Google::Apis::VmwareengineV1::StretchedClusterConfig::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Credentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class DnsBindPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :principals, as: 'principals', class: Google::Apis::VmwareengineV1::Principal, decorator: Google::Apis::VmwareengineV1::Principal::Representation
      
        end
      end
      
      class DnsForwarding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :forwarding_rules, as: 'forwardingRules', class: Google::Apis::VmwareengineV1::ForwardingRule, decorator: Google::Apis::VmwareengineV1::ForwardingRule::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class ExternalAccessRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :destination_ip_ranges, as: 'destinationIpRanges', class: Google::Apis::VmwareengineV1::IpRange, decorator: Google::Apis::VmwareengineV1::IpRange::Representation
      
          collection :destination_ports, as: 'destinationPorts'
          property :ip_protocol, as: 'ipProtocol'
          property :name, as: 'name'
          property :priority, as: 'priority'
          collection :source_ip_ranges, as: 'sourceIpRanges', class: Google::Apis::VmwareengineV1::IpRange, decorator: Google::Apis::VmwareengineV1::IpRange::Representation
      
          collection :source_ports, as: 'sourcePorts'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ExternalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :external_ip, as: 'externalIp'
          property :internal_ip, as: 'internalIp'
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FetchNetworkPolicyExternalAddressesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :external_addresses, as: 'externalAddresses', class: Google::Apis::VmwareengineV1::ExternalAddress, decorator: Google::Apis::VmwareengineV1::ExternalAddress::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ForwardingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          collection :name_servers, as: 'nameServers'
        end
      end
      
      class GrantDnsBindPermissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal, as: 'principal', class: Google::Apis::VmwareengineV1::Principal, decorator: Google::Apis::VmwareengineV1::Principal::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class Hcx
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fqdn, as: 'fqdn'
          property :internal_ip, as: 'internalIp'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class HcxActivationKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_key, as: 'activationKey'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
        end
      end
      
      class IpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_address, as: 'externalAddress'
          property :ip_address, as: 'ipAddress'
          property :ip_address_range, as: 'ipAddressRange'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::VmwareengineV1::Cluster, decorator: Google::Apis::VmwareengineV1::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListExternalAccessRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :external_access_rules, as: 'externalAccessRules', class: Google::Apis::VmwareengineV1::ExternalAccessRule, decorator: Google::Apis::VmwareengineV1::ExternalAccessRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListExternalAddressesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :external_addresses, as: 'externalAddresses', class: Google::Apis::VmwareengineV1::ExternalAddress, decorator: Google::Apis::VmwareengineV1::ExternalAddress::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListHcxActivationKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hcx_activation_keys, as: 'hcxActivationKeys', class: Google::Apis::VmwareengineV1::HcxActivationKey, decorator: Google::Apis::VmwareengineV1::HcxActivationKey::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::VmwareengineV1::Location, decorator: Google::Apis::VmwareengineV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLoggingServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logging_servers, as: 'loggingServers', class: Google::Apis::VmwareengineV1::LoggingServer, decorator: Google::Apis::VmwareengineV1::LoggingServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListManagementDnsZoneBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :management_dns_zone_bindings, as: 'managementDnsZoneBindings', class: Google::Apis::VmwareengineV1::ManagementDnsZoneBinding, decorator: Google::Apis::VmwareengineV1::ManagementDnsZoneBinding::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListNetworkPeeringsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_peerings, as: 'networkPeerings', class: Google::Apis::VmwareengineV1::NetworkPeering, decorator: Google::Apis::VmwareengineV1::NetworkPeering::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListNetworkPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_policies, as: 'networkPolicies', class: Google::Apis::VmwareengineV1::NetworkPolicy, decorator: Google::Apis::VmwareengineV1::NetworkPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListNodeTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :node_types, as: 'nodeTypes', class: Google::Apis::VmwareengineV1::NodeType, decorator: Google::Apis::VmwareengineV1::NodeType::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListNodesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :nodes, as: 'nodes', class: Google::Apis::VmwareengineV1::Node, decorator: Google::Apis::VmwareengineV1::Node::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::VmwareengineV1::Operation, decorator: Google::Apis::VmwareengineV1::Operation::Representation
      
        end
      end
      
      class ListPeeringRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :peering_routes, as: 'peeringRoutes', class: Google::Apis::VmwareengineV1::PeeringRoute, decorator: Google::Apis::VmwareengineV1::PeeringRoute::Representation
      
        end
      end
      
      class ListPrivateCloudsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :private_clouds, as: 'privateClouds', class: Google::Apis::VmwareengineV1::PrivateCloud, decorator: Google::Apis::VmwareengineV1::PrivateCloud::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListPrivateConnectionPeeringRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :peering_routes, as: 'peeringRoutes', class: Google::Apis::VmwareengineV1::PeeringRoute, decorator: Google::Apis::VmwareengineV1::PeeringRoute::Representation
      
        end
      end
      
      class ListPrivateConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :private_connections, as: 'privateConnections', class: Google::Apis::VmwareengineV1::PrivateConnection, decorator: Google::Apis::VmwareengineV1::PrivateConnection::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSubnetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subnets, as: 'subnets', class: Google::Apis::VmwareengineV1::Subnet, decorator: Google::Apis::VmwareengineV1::Subnet::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListVmwareEngineNetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :vmware_engine_networks, as: 'vmwareEngineNetworks', class: Google::Apis::VmwareengineV1::VmwareEngineNetwork, decorator: Google::Apis::VmwareengineV1::VmwareEngineNetwork::Representation
      
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
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :capabilities, as: 'capabilities'
        end
      end
      
      class LoggingServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :hostname, as: 'hostname'
          property :name, as: 'name'
          property :port, as: 'port'
          property :protocol, as: 'protocol'
          property :source_type, as: 'sourceType'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ManagementCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          hash :node_type_configs, as: 'nodeTypeConfigs', class: Google::Apis::VmwareengineV1::NodeTypeConfig, decorator: Google::Apis::VmwareengineV1::NodeTypeConfig::Representation
      
          property :stretched_cluster_config, as: 'stretchedClusterConfig', class: Google::Apis::VmwareengineV1::StretchedClusterConfig, decorator: Google::Apis::VmwareengineV1::StretchedClusterConfig::Representation
      
        end
      end
      
      class ManagementDnsZoneBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :vmware_engine_network, as: 'vmwareEngineNetwork'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_server_ip, as: 'dnsServerIp'
          property :management_cidr, as: 'managementCidr'
          property :management_ip_address_layout_version, as: 'managementIpAddressLayoutVersion'
          property :vmware_engine_network, as: 'vmwareEngineNetwork'
          property :vmware_engine_network_canonical, as: 'vmwareEngineNetworkCanonical'
        end
      end
      
      class NetworkPeering
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :exchange_subnet_routes, as: 'exchangeSubnetRoutes'
          property :export_custom_routes, as: 'exportCustomRoutes'
          property :export_custom_routes_with_public_ip, as: 'exportCustomRoutesWithPublicIp'
          property :import_custom_routes, as: 'importCustomRoutes'
          property :import_custom_routes_with_public_ip, as: 'importCustomRoutesWithPublicIp'
          property :name, as: 'name'
          property :peer_mtu, as: 'peerMtu'
          property :peer_network, as: 'peerNetwork'
          property :peer_network_type, as: 'peerNetworkType'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :vmware_engine_network, as: 'vmwareEngineNetwork'
        end
      end
      
      class NetworkPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :edge_services_cidr, as: 'edgeServicesCidr'
          property :external_ip, as: 'externalIp', class: Google::Apis::VmwareengineV1::NetworkService, decorator: Google::Apis::VmwareengineV1::NetworkService::Representation
      
          property :internet_access, as: 'internetAccess', class: Google::Apis::VmwareengineV1::NetworkService, decorator: Google::Apis::VmwareengineV1::NetworkService::Representation
      
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :vmware_engine_network, as: 'vmwareEngineNetwork'
          property :vmware_engine_network_canonical, as: 'vmwareEngineNetworkCanonical'
        end
      end
      
      class NetworkService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :state, as: 'state'
        end
      end
      
      class Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_core_count, :numeric_string => true, as: 'customCoreCount'
          property :fqdn, as: 'fqdn'
          property :internal_ip, as: 'internalIp'
          property :name, as: 'name'
          property :node_type_id, as: 'nodeTypeId'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class NodeType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_custom_core_counts, as: 'availableCustomCoreCounts'
          collection :capabilities, as: 'capabilities'
          property :disk_size_gb, as: 'diskSizeGb'
          property :display_name, as: 'displayName'
          property :memory_gb, as: 'memoryGb'
          property :name, as: 'name'
          property :node_type_id, as: 'nodeTypeId'
          property :total_core_count, as: 'totalCoreCount'
          property :virtual_cpu_count, as: 'virtualCpuCount'
        end
      end
      
      class NodeTypeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_core_count, as: 'customCoreCount'
          property :node_count, as: 'nodeCount'
        end
      end
      
      class Nsx
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fqdn, as: 'fqdn'
          property :internal_ip, as: 'internalIp'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::VmwareengineV1::Status, decorator: Google::Apis::VmwareengineV1::Status::Representation
      
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
      
      class PeeringRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dest_range, as: 'destRange'
          property :direction, as: 'direction'
          property :imported, as: 'imported'
          property :next_hop_region, as: 'nextHopRegion'
          property :priority, :numeric_string => true, as: 'priority'
          property :type, as: 'type'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::VmwareengineV1::AuditConfig, decorator: Google::Apis::VmwareengineV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::VmwareengineV1::Binding, decorator: Google::Apis::VmwareengineV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Principal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
          property :user, as: 'user'
        end
      end
      
      class PrivateCloud
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          property :hcx, as: 'hcx', class: Google::Apis::VmwareengineV1::Hcx, decorator: Google::Apis::VmwareengineV1::Hcx::Representation
      
          property :management_cluster, as: 'managementCluster', class: Google::Apis::VmwareengineV1::ManagementCluster, decorator: Google::Apis::VmwareengineV1::ManagementCluster::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::VmwareengineV1::NetworkConfig, decorator: Google::Apis::VmwareengineV1::NetworkConfig::Representation
      
          property :nsx, as: 'nsx', class: Google::Apis::VmwareengineV1::Nsx, decorator: Google::Apis::VmwareengineV1::Nsx::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :vcenter, as: 'vcenter', class: Google::Apis::VmwareengineV1::Vcenter, decorator: Google::Apis::VmwareengineV1::Vcenter::Representation
      
        end
      end
      
      class PrivateConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :peering_id, as: 'peeringId'
          property :peering_state, as: 'peeringState'
          property :routing_mode, as: 'routingMode'
          property :service_network, as: 'serviceNetwork'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :vmware_engine_network, as: 'vmwareEngineNetwork'
          property :vmware_engine_network_canonical, as: 'vmwareEngineNetworkCanonical'
        end
      end
      
      class RepairManagementDnsZoneBindingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class ResetNsxCredentialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class ResetVcenterCredentialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :username, as: 'username'
        end
      end
      
      class RevokeDnsBindPermissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal, as: 'principal', class: Google::Apis::VmwareengineV1::Principal, decorator: Google::Apis::VmwareengineV1::Principal::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::VmwareengineV1::Policy, decorator: Google::Apis::VmwareengineV1::Policy::Representation
      
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
      
      class StretchedClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preferred_location, as: 'preferredLocation'
          property :secondary_location, as: 'secondaryLocation'
        end
      end
      
      class Subnet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gateway_ip, as: 'gatewayIp'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :vlan_id, as: 'vlanId'
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
      
      class UndeletePrivateCloudRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class Vcenter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fqdn, as: 'fqdn'
          property :internal_ip, as: 'internalIp'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class VmwareEngineNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          collection :vpc_networks, as: 'vpcNetworks', class: Google::Apis::VmwareengineV1::VpcNetwork, decorator: Google::Apis::VmwareengineV1::VpcNetwork::Representation
      
        end
      end
      
      class VpcNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :type, as: 'type'
        end
      end
    end
  end
end
