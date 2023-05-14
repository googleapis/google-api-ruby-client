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
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hub
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
      
      class LinkedVpnTunnels
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
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
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
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
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
          property :project, as: 'project'
        end
      end
      
      class ConsumerPscConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus, decorator: Google::Apis::NetworkconnectivityV1::GoogleRpcStatus::Representation
      
          property :error_type, as: 'errorType'
          property :forwarding_rule, as: 'forwardingRule'
          property :gce_operation, as: 'gceOperation'
          property :ip, as: 'ip'
          property :network, as: 'network'
          property :project, as: 'project'
          property :psc_connection_id, as: 'pscConnectionId'
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
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Hub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :routing_vpcs, as: 'routingVpcs', class: Google::Apis::NetworkconnectivityV1::RoutingVpc, decorator: Google::Apis::NetworkconnectivityV1::RoutingVpc::Representation
      
          property :state, as: 'state'
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
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
      
      class LinkedVpnTunnels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_to_site_data_transfer, as: 'siteToSiteDataTransfer'
          collection :uris, as: 'uris'
          property :vpc_network, as: 'vpcNetwork'
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
      
          property :error_type, as: 'errorType'
          property :gce_operation, as: 'gceOperation'
          property :psc_connection_id, as: 'pscConnectionId'
          property :state, as: 'state'
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
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_class, as: 'serviceClass'
          collection :service_connection_maps, as: 'serviceConnectionMaps'
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
          property :hub, as: 'hub'
          hash :labels, as: 'labels'
          property :linked_interconnect_attachments, as: 'linkedInterconnectAttachments', class: Google::Apis::NetworkconnectivityV1::LinkedInterconnectAttachments, decorator: Google::Apis::NetworkconnectivityV1::LinkedInterconnectAttachments::Representation
      
          property :linked_router_appliance_instances, as: 'linkedRouterApplianceInstances', class: Google::Apis::NetworkconnectivityV1::LinkedRouterApplianceInstances, decorator: Google::Apis::NetworkconnectivityV1::LinkedRouterApplianceInstances::Representation
      
          property :linked_vpn_tunnels, as: 'linkedVpnTunnels', class: Google::Apis::NetworkconnectivityV1::LinkedVpnTunnels, decorator: Google::Apis::NetworkconnectivityV1::LinkedVpnTunnels::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
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
    end
  end
end
