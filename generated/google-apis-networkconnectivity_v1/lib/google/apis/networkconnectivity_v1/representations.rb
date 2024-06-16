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
    module NetworkconnectivityV1
      
      class AcceptHubSpokeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptHubSpokeResponse
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
      
      class AutoAccept
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerPscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerPscConnection
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
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InternalRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedInterconnectAttachments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedRouterApplianceInstances
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedVpcNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedVpnTunnels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHubSpokesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHubsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInternalRangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPolicyBasedRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRegionalEndpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRouteTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceClassesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceConnectionMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceConnectionPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceConnectionTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSpokesResponse
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
      
      class NextHopInterconnectAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NextHopRouterApplianceInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NextHopVpnTunnel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NextHopVpcNetwork
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
      
      class PolicyBasedRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProducerPscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RejectHubSpokeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RejectHubSpokeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Route
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterApplianceInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutingVpc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceConnectionMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceConnectionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceConnectionToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Spoke
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpokeStateCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpokeStateReasonCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpokeSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpokeTypeCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateReason
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
      
      class VirtualMachine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Warnings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptHubSpokeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :spoke_uri, as: 'spokeUri'
        end
      end
      
      class AcceptHubSpokeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spoke, as: 'spoke', class: Google::Apis::NetworkconnectivityV1::Spoke, decorator: Google::Apis::NetworkconnectivityV1::Spoke::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworkconnectivityV1::AuditLogConfig, decorator: Google::Apis::NetworkconnectivityV1::AuditLogConfig::Representation
      
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
      
      class AutoAccept
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_accept_projects, as: 'autoAcceptProjects'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::NetworkconnectivityV1::Expr, decorator: Google::Apis::NetworkconnectivityV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ConsumerPscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_global_access, as: 'disableGlobalAccess'
          property :network, as: 'network'
          property :producer_instance_id, as: 'producerInstanceId'
          property :project, as: 'project'
          hash :service_attachment_ip_address_map, as: 'serviceAttachmentIpAddressMap'
          property :state, as: 'state'
        end
      end
      
      class ConsumerPscConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus, decorator: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus::Representation
      
          property :error_info, as: 'errorInfo', class: Google::Apis::NetworkconnectivityV1::GoogleRpcErrorInfo, decorator: Google::Apis::NetworkconnectivityV1::GoogleRpcErrorInfo::Representation
      
          property :error_type, as: 'errorType'
          property :forwarding_rule, as: 'forwardingRule'
          property :gce_operation, as: 'gceOperation'
          property :ip, as: 'ip'
          property :network, as: 'network'
          property :producer_instance_id, as: 'producerInstanceId'
          property :project, as: 'project'
          property :psc_connection_id, as: 'pscConnectionId'
          property :selected_subnetwork, as: 'selectedSubnetwork'
          property :service_attachment_uri, as: 'serviceAttachmentUri'
          property :state, as: 'state'
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
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dest_range, as: 'destRange'
          property :ip_protocol, as: 'ipProtocol'
          property :protocol_version, as: 'protocolVersion'
          property :src_range, as: 'srcRange'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworkconnectivityV1::GoogleLongrunningOperation, decorator: Google::Apis::NetworkconnectivityV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus, decorator: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          hash :metadata, as: 'metadata'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_accept, as: 'autoAccept', class: Google::Apis::NetworkconnectivityV1::AutoAccept, decorator: Google::Apis::NetworkconnectivityV1::AutoAccept::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :route_table, as: 'routeTable'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Hub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :export_psc, as: 'exportPsc'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :policy_mode, as: 'policyMode'
          property :preset_topology, as: 'presetTopology'
          collection :route_tables, as: 'routeTables'
          collection :routing_vpcs, as: 'routingVpcs', class: Google::Apis::NetworkconnectivityV1::RoutingVpc, decorator: Google::Apis::NetworkconnectivityV1::RoutingVpc::Representation
      
          property :spoke_summary, as: 'spokeSummary', class: Google::Apis::NetworkconnectivityV1::SpokeSummary, decorator: Google::Apis::NetworkconnectivityV1::SpokeSummary::Representation
      
          property :state, as: 'state'
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InterconnectAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
        end
      end
      
      class InternalRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :ip_cidr_range, as: 'ipCidrRange'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          collection :overlaps, as: 'overlaps'
          property :peering, as: 'peering'
          property :prefix_length, as: 'prefixLength'
          collection :target_cidr_range, as: 'targetCidrRange'
          property :update_time, as: 'updateTime'
          property :usage, as: 'usage'
          collection :users, as: 'users'
        end
      end
      
      class LinkedInterconnectAttachments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          collection :uris, as: 'uris'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class LinkedRouterApplianceInstances
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::NetworkconnectivityV1::RouterApplianceInstance, decorator: Google::Apis::NetworkconnectivityV1::RouterApplianceInstance::Representation
      
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class LinkedVpcNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclude_export_ranges, as: 'excludeExportRanges'
          collection :include_export_ranges, as: 'includeExportRanges'
          property :uri, as: 'uri'
        end
      end
      
      class LinkedVpnTunnels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          collection :uris, as: 'uris'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::NetworkconnectivityV1::Group, decorator: Google::Apis::NetworkconnectivityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListHubSpokesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spokes, as: 'spokes', class: Google::Apis::NetworkconnectivityV1::Spoke, decorator: Google::Apis::NetworkconnectivityV1::Spoke::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListHubsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hubs, as: 'hubs', class: Google::Apis::NetworkconnectivityV1::Hub, decorator: Google::Apis::NetworkconnectivityV1::Hub::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInternalRangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :internal_ranges, as: 'internalRanges', class: Google::Apis::NetworkconnectivityV1::InternalRange, decorator: Google::Apis::NetworkconnectivityV1::InternalRange::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworkconnectivityV1::Location, decorator: Google::Apis::NetworkconnectivityV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPolicyBasedRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policy_based_routes, as: 'policyBasedRoutes', class: Google::Apis::NetworkconnectivityV1::PolicyBasedRoute, decorator: Google::Apis::NetworkconnectivityV1::PolicyBasedRoute::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRegionalEndpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :regional_endpoints, as: 'regionalEndpoints', class: Google::Apis::NetworkconnectivityV1::RegionalEndpoint, decorator: Google::Apis::NetworkconnectivityV1::RegionalEndpoint::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRouteTablesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :route_tables, as: 'routeTables', class: Google::Apis::NetworkconnectivityV1::RouteTable, decorator: Google::Apis::NetworkconnectivityV1::RouteTable::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :routes, as: 'routes', class: Google::Apis::NetworkconnectivityV1::Route, decorator: Google::Apis::NetworkconnectivityV1::Route::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServiceClassesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_classes, as: 'serviceClasses', class: Google::Apis::NetworkconnectivityV1::ServiceClass, decorator: Google::Apis::NetworkconnectivityV1::ServiceClass::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServiceConnectionMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_connection_maps, as: 'serviceConnectionMaps', class: Google::Apis::NetworkconnectivityV1::ServiceConnectionMap, decorator: Google::Apis::NetworkconnectivityV1::ServiceConnectionMap::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServiceConnectionPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_connection_policies, as: 'serviceConnectionPolicies', class: Google::Apis::NetworkconnectivityV1::ServiceConnectionPolicy, decorator: Google::Apis::NetworkconnectivityV1::ServiceConnectionPolicy::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServiceConnectionTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_connection_tokens, as: 'serviceConnectionTokens', class: Google::Apis::NetworkconnectivityV1::ServiceConnectionToken, decorator: Google::Apis::NetworkconnectivityV1::ServiceConnectionToken::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSpokesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spokes, as: 'spokes', class: Google::Apis::NetworkconnectivityV1::Spoke, decorator: Google::Apis::NetworkconnectivityV1::Spoke::Representation
      
          collection :unreachable, as: 'unreachable'
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
          collection :location_features, as: 'locationFeatures'
        end
      end
      
      class NextHopInterconnectAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          property :uri, as: 'uri'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class NextHopRouterApplianceInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          property :uri, as: 'uri'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class NextHopVpnTunnel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          property :uri, as: 'uri'
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class NextHopVpcNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworkconnectivityV1::AuditConfig, decorator: Google::Apis::NetworkconnectivityV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworkconnectivityV1::Binding, decorator: Google::Apis::NetworkconnectivityV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyBasedRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :filter, as: 'filter', class: Google::Apis::NetworkconnectivityV1::Filter, decorator: Google::Apis::NetworkconnectivityV1::Filter::Representation
      
          property :interconnect_attachment, as: 'interconnectAttachment', class: Google::Apis::NetworkconnectivityV1::InterconnectAttachment, decorator: Google::Apis::NetworkconnectivityV1::InterconnectAttachment::Representation
      
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :next_hop_ilb_ip, as: 'nextHopIlbIp'
          property :next_hop_other_routes, as: 'nextHopOtherRoutes'
          property :priority, as: 'priority'
          property :self_link, as: 'selfLink'
          property :update_time, as: 'updateTime'
          property :virtual_machine, as: 'virtualMachine', class: Google::Apis::NetworkconnectivityV1::VirtualMachine, decorator: Google::Apis::NetworkconnectivityV1::VirtualMachine::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::NetworkconnectivityV1::Warnings, decorator: Google::Apis::NetworkconnectivityV1::Warnings::Representation
      
        end
      end
      
      class ProducerPscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_attachment_uri, as: 'serviceAttachmentUri'
        end
      end
      
      class PscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limit, :numeric_string => true, as: 'limit'
          collection :subnetworks, as: 'subnetworks'
        end
      end
      
      class PscConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_address, as: 'consumerAddress'
          property :consumer_forwarding_rule, as: 'consumerForwardingRule'
          property :consumer_target_project, as: 'consumerTargetProject'
          property :error, as: 'error', class: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus, decorator: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus::Representation
      
          property :error_info, as: 'errorInfo', class: Google::Apis::NetworkconnectivityV1::GoogleRpcErrorInfo, decorator: Google::Apis::NetworkconnectivityV1::GoogleRpcErrorInfo::Representation
      
          property :error_type, as: 'errorType'
          property :gce_operation, as: 'gceOperation'
          property :producer_instance_id, as: 'producerInstanceId'
          property :psc_connection_id, as: 'pscConnectionId'
          property :selected_subnetwork, as: 'selectedSubnetwork'
          property :state, as: 'state'
        end
      end
      
      class RegionalEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :address, as: 'address'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :ip_address, as: 'ipAddress'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :psc_forwarding_rule, as: 'pscForwardingRule'
          property :subnetwork, as: 'subnetwork'
          property :target_google_api, as: 'targetGoogleApi'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RejectHubSpokeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :request_id, as: 'requestId'
          property :spoke_uri, as: 'spokeUri'
        end
      end
      
      class RejectHubSpokeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spoke, as: 'spoke', class: Google::Apis::NetworkconnectivityV1::Spoke, decorator: Google::Apis::NetworkconnectivityV1::Spoke::Representation
      
        end
      end
      
      class Route
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :ip_cidr_range, as: 'ipCidrRange'
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :name, as: 'name'
          property :next_hop_interconnect_attachment, as: 'nextHopInterconnectAttachment', class: Google::Apis::NetworkconnectivityV1::NextHopInterconnectAttachment, decorator: Google::Apis::NetworkconnectivityV1::NextHopInterconnectAttachment::Representation
      
          property :next_hop_router_appliance_instance, as: 'nextHopRouterApplianceInstance', class: Google::Apis::NetworkconnectivityV1::NextHopRouterApplianceInstance, decorator: Google::Apis::NetworkconnectivityV1::NextHopRouterApplianceInstance::Representation
      
          property :next_hop_vpc_network, as: 'nextHopVpcNetwork', class: Google::Apis::NetworkconnectivityV1::NextHopVpcNetwork, decorator: Google::Apis::NetworkconnectivityV1::NextHopVpcNetwork::Representation
      
          property :next_hop_vpn_tunnel, as: 'nextHopVpnTunnel', class: Google::Apis::NetworkconnectivityV1::NextHopVpnTunnel, decorator: Google::Apis::NetworkconnectivityV1::NextHopVpnTunnel::Representation
      
          property :priority, :numeric_string => true, as: 'priority'
          property :spoke, as: 'spoke'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RouteTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RouterApplianceInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :virtual_machine, as: 'virtualMachine'
        end
      end
      
      class RoutingVpc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required_for_new_site_to_site_data_transfer_spokes, as: 'requiredForNewSiteToSiteDataTransferSpokes'
          property :uri, as: 'uri'
        end
      end
      
      class ServiceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_class, as: 'serviceClass'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ServiceConnectionMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_psc_configs, as: 'consumerPscConfigs', class: Google::Apis::NetworkconnectivityV1::ConsumerPscConfig, decorator: Google::Apis::NetworkconnectivityV1::ConsumerPscConfig::Representation
      
          collection :consumer_psc_connections, as: 'consumerPscConnections', class: Google::Apis::NetworkconnectivityV1::ConsumerPscConnection, decorator: Google::Apis::NetworkconnectivityV1::ConsumerPscConnection::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :infrastructure, as: 'infrastructure'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :producer_psc_configs, as: 'producerPscConfigs', class: Google::Apis::NetworkconnectivityV1::ProducerPscConfig, decorator: Google::Apis::NetworkconnectivityV1::ProducerPscConfig::Representation
      
          property :service_class, as: 'serviceClass'
          property :service_class_uri, as: 'serviceClassUri'
          property :token, as: 'token'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ServiceConnectionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :infrastructure, as: 'infrastructure'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :psc_config, as: 'pscConfig', class: Google::Apis::NetworkconnectivityV1::PscConfig, decorator: Google::Apis::NetworkconnectivityV1::PscConfig::Representation
      
          collection :psc_connections, as: 'pscConnections', class: Google::Apis::NetworkconnectivityV1::PscConnection, decorator: Google::Apis::NetworkconnectivityV1::PscConnection::Representation
      
          property :service_class, as: 'serviceClass'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ServiceConnectionToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :token, as: 'token'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworkconnectivityV1::Policy, decorator: Google::Apis::NetworkconnectivityV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Spoke
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :group, as: 'group'
          property :hub, as: 'hub'
          hash :labels, as: 'labels'
          property :linked_interconnect_attachments, as: 'linkedInterconnectAttachments', class: Google::Apis::NetworkconnectivityV1::LinkedInterconnectAttachments, decorator: Google::Apis::NetworkconnectivityV1::LinkedInterconnectAttachments::Representation
      
          property :linked_router_appliance_instances, as: 'linkedRouterApplianceInstances', class: Google::Apis::NetworkconnectivityV1::LinkedRouterApplianceInstances, decorator: Google::Apis::NetworkconnectivityV1::LinkedRouterApplianceInstances::Representation
      
          property :linked_vpc_network, as: 'linkedVpcNetwork', class: Google::Apis::NetworkconnectivityV1::LinkedVpcNetwork, decorator: Google::Apis::NetworkconnectivityV1::LinkedVpcNetwork::Representation
      
          property :linked_vpn_tunnels, as: 'linkedVpnTunnels', class: Google::Apis::NetworkconnectivityV1::LinkedVpnTunnels, decorator: Google::Apis::NetworkconnectivityV1::LinkedVpnTunnels::Representation
      
          property :name, as: 'name'
          collection :reasons, as: 'reasons', class: Google::Apis::NetworkconnectivityV1::StateReason, decorator: Google::Apis::NetworkconnectivityV1::StateReason::Representation
      
          property :spoke_type, as: 'spokeType'
          property :state, as: 'state'
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SpokeStateCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :state, as: 'state'
        end
      end
      
      class SpokeStateReasonCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :state_reason_code, as: 'stateReasonCode'
        end
      end
      
      class SpokeSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :spoke_state_counts, as: 'spokeStateCounts', class: Google::Apis::NetworkconnectivityV1::SpokeStateCount, decorator: Google::Apis::NetworkconnectivityV1::SpokeStateCount::Representation
      
          collection :spoke_state_reason_counts, as: 'spokeStateReasonCounts', class: Google::Apis::NetworkconnectivityV1::SpokeStateReasonCount, decorator: Google::Apis::NetworkconnectivityV1::SpokeStateReasonCount::Representation
      
          collection :spoke_type_counts, as: 'spokeTypeCounts', class: Google::Apis::NetworkconnectivityV1::SpokeTypeCount, decorator: Google::Apis::NetworkconnectivityV1::SpokeTypeCount::Representation
      
        end
      end
      
      class SpokeTypeCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :spoke_type, as: 'spokeType'
        end
      end
      
      class StateReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          property :user_details, as: 'userDetails'
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
      
      class VirtualMachine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags'
        end
      end
      
      class Warnings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          hash :data, as: 'data'
          property :warning_message, as: 'warningMessage'
        end
      end
    end
  end
end
