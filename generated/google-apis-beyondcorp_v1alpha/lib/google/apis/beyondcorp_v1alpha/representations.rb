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
    module BeyondcorpV1alpha
      
      class AllocatedConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppGatewayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientConnectorService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientConnectorServiceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientGatewayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudPubSubNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoConnectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoConnectorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSecurityZerotrustApplinkLogagentProtoLogAgentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerHealthDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Egress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Gateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ContainerHealthDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppgatewaysV1AppGatewayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaAuthenticationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerServiceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaProxyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaTenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1mainPartnerServiceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
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
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Ingress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAppGatewaysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientConnectorServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientGatewaysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PeeredVpc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrincipalInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteAgentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResolveConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResolveInstanceConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tunnelv1ProtoTunnelerError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tunnelv1ProtoTunnelerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocatedConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingress_port, as: 'ingressPort'
          property :psc_uri, as: 'pscUri'
        end
      end
      
      class AppGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allocated_connections, as: 'allocatedConnections', class: Google::Apis::BeyondcorpV1alpha::AllocatedConnection, decorator: Google::Apis::BeyondcorpV1alpha::AllocatedConnection::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :host_type, as: 'hostType'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class AppGatewayOperationMetadata
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
      
      class ApplicationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class ClientConnectorService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :egress, as: 'egress', class: Google::Apis::BeyondcorpV1alpha::Egress, decorator: Google::Apis::BeyondcorpV1alpha::Egress::Representation
      
          property :ingress, as: 'ingress', class: Google::Apis::BeyondcorpV1alpha::Ingress, decorator: Google::Apis::BeyondcorpV1alpha::Ingress::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ClientConnectorServiceOperationMetadata
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
      
      class ClientGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_connector_service, as: 'clientConnectorService'
          property :create_time, as: 'createTime'
          property :id, as: 'id'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ClientGatewayOperationMetadata
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
      
      class CloudPubSubNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_subscription, as: 'pubsubSubscription'
        end
      end
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_endpoint, as: 'applicationEndpoint'
          property :application_name, as: 'applicationName'
          collection :gateway, as: 'gateway', class: Google::Apis::BeyondcorpV1alpha::CloudSecurityZerotrustApplinkAppConnectorProtoGateway, decorator: Google::Apis::BeyondcorpV1alpha::CloudSecurityZerotrustApplinkAppConnectorProtoGateway::Representation
      
          property :name, as: 'name'
          property :project, as: 'project'
          property :tunnels_per_gateway, as: 'tunnelsPerGateway'
          property :user_port, as: 'userPort'
        end
      end
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoConnectorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interface, as: 'interface'
          property :name, as: 'name'
          property :port, as: 'port'
          property :project, as: 'project'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
      end
      
      class CloudSecurityZerotrustApplinkLogagentProtoLogAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_routes, as: 'destinationRoutes', class: Google::Apis::BeyondcorpV1alpha::DestinationRoute, decorator: Google::Apis::BeyondcorpV1alpha::DestinationRoute::Representation
      
          property :transport_protocol, as: 'transportProtocol'
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_endpoint, as: 'applicationEndpoint', class: Google::Apis::BeyondcorpV1alpha::ApplicationEndpoint, decorator: Google::Apis::BeyondcorpV1alpha::ApplicationEndpoint::Representation
      
          collection :connectors, as: 'connectors'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :gateway, as: 'gateway', class: Google::Apis::BeyondcorpV1alpha::Gateway, decorator: Google::Apis::BeyondcorpV1alpha::Gateway::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection', class: Google::Apis::BeyondcorpV1alpha::Connection, decorator: Google::Apis::BeyondcorpV1alpha::Connection::Representation
      
          collection :recent_mig_vms, as: 'recentMigVms'
        end
      end
      
      class ConnectionOperationMetadata
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
      
      class Connector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :principal_info, as: 'principalInfo', class: Google::Apis::BeyondcorpV1alpha::PrincipalInfo, decorator: Google::Apis::BeyondcorpV1alpha::PrincipalInfo::Representation
      
          property :resource_info, as: 'resourceInfo', class: Google::Apis::BeyondcorpV1alpha::ResourceInfo, decorator: Google::Apis::BeyondcorpV1alpha::ResourceInfo::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectorInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_config, as: 'imageConfig', class: Google::Apis::BeyondcorpV1alpha::ImageConfig, decorator: Google::Apis::BeyondcorpV1alpha::ImageConfig::Representation
      
          hash :instance_config, as: 'instanceConfig'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::BeyondcorpV1alpha::NotificationConfig, decorator: Google::Apis::BeyondcorpV1alpha::NotificationConfig::Representation
      
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
        end
      end
      
      class ConnectorOperationMetadata
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
      
      class ContainerHealthDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_config_version, as: 'currentConfigVersion'
          property :error_msg, as: 'errorMsg'
          property :expected_config_version, as: 'expectedConfigVersion'
          hash :extended_status, as: 'extendedStatus'
        end
      end
      
      class DestinationRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :netmask, as: 'netmask'
        end
      end
      
      class Egress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :peered_vpc, as: 'peeredVpc', class: Google::Apis::BeyondcorpV1alpha::PeeredVpc, decorator: Google::Apis::BeyondcorpV1alpha::PeeredVpc::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Gateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :uri, as: 'uri'
          property :user_port, as: 'userPort'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionOperationMetadata
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
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_endpoint, as: 'applicationEndpoint', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint::Representation
      
          collection :connectors, as: 'connectors'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :gateway, as: 'gateway', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_gateway, as: 'appGateway'
          property :ingress_port, as: 'ingressPort'
          property :l7psc, as: 'l7psc'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionOperationMetadata
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
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_connections, as: 'appConnections', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_connection_details, as: 'appConnectionDetails', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_connection, as: 'appConnection', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection::Representation
      
          collection :recent_mig_vms, as: 'recentMigVms'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorOperationMetadata
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
      
      class GoogleCloudBeyondcorpAppconnectorsV1ContainerHealthDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_config_version, as: 'currentConfigVersion'
          property :error_msg, as: 'errorMsg'
          property :expected_config_version, as: 'expectedConfigVersion'
          hash :extended_status, as: 'extendedStatus'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :principal_info, as: 'principalInfo', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo::Representation
      
          property :resource_info, as: 'resourceInfo', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_config, as: 'imageConfig', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig::Representation
      
          hash :instance_config, as: 'instanceConfig'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig::Representation
      
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorOperationMetadata
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
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_config_version, as: 'currentConfigVersion'
          property :error_msg, as: 'errorMsg'
          property :expected_config_version, as: 'expectedConfigVersion'
          hash :extended_status, as: 'extendedStatus'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stable_image, as: 'stableImage'
          property :target_image, as: 'targetImage'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_connectors, as: 'appConnectors', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_notification, as: 'pubsubNotification', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_subscription, as: 'pubsubSubscription'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :resource_info, as: 'resourceInfo', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_config, as: 'instanceConfig', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :resource, as: 'resource'
          property :status, as: 'status'
          collection :sub, as: 'sub', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo::Representation
      
          property :time, as: 'time'
        end
      end
      
      class GoogleCloudBeyondcorpAppgatewaysV1AppGatewayOperationMetadata
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
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaAuthenticationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_sa_email, as: 'encryptionSaEmail'
        end
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partner_tenant_id, as: 'partnerTenantId'
        end
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerServiceOperationMetadata
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
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaProxyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_info, as: 'authenticationInfo', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaAuthenticationInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaAuthenticationInfo::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :proxy_uri, as: 'proxyUri'
          property :routing_info, as: 'routingInfo', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo::Representation
      
          property :transport_info, as: 'transportInfo', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pac_uri, as: 'pacUri'
        end
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaTenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :google_group_email, as: 'googleGroupEmail'
          property :google_group_id, as: 'googleGroupId'
          property :name, as: 'name'
          property :partner_metadata, as: 'partnerMetadata', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :server_ca_cert_pem, as: 'serverCaCertPem'
          property :ssl_decrypt_ca_cert_pem, as: 'sslDecryptCaCertPem'
        end
      end
      
      class GoogleCloudBeyondcorpPartnerservicesV1mainPartnerServiceOperationMetadata
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
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation, as: 'aggregation'
          property :custom_grouping, as: 'customGrouping', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping::Representation
      
          property :end_time, as: 'endTime'
          property :field_filter, as: 'fieldFilter'
          property :group, as: 'group'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_config, as: 'appliedConfig', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_filter, as: 'fieldFilter'
          collection :group_fields, as: 'groupFields'
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_config, as: 'appliedConfig', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata::Representation
      
          property :name, as: 'name'
          collection :rows, as: 'rows', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregations, as: 'aggregations'
          property :category, as: 'category'
          property :display_name, as: 'displayName'
          collection :fields, as: 'fields', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField::Representation
      
          collection :groups, as: 'groups'
          property :sub_category, as: 'subCategory'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :filter_alias, as: 'filterAlias'
          property :filterable, as: 'filterable'
          property :groupable, as: 'groupable'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insights, as: 'insights', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_values, as: 'fieldValues', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :filter_alias, as: 'filterAlias'
          property :id, as: 'id'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew_enabled, as: 'autoRenewEnabled'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :seat_count, :numeric_string => true, as: 'seatCount'
          property :sku, as: 'sku'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationLocation, decorator: Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudLocationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BeyondcorpV1alpha::GoogleIamV1AuditLogConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BeyondcorpV1alpha::GoogleTypeExpr, decorator: Google::Apis::BeyondcorpV1alpha::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BeyondcorpV1alpha::GoogleIamV1AuditConfig, decorator: Google::Apis::BeyondcorpV1alpha::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BeyondcorpV1alpha::GoogleIamV1Binding, decorator: Google::Apis::BeyondcorpV1alpha::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy, decorator: Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
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
          collection :operations, as: 'operations', class: Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation, decorator: Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BeyondcorpV1alpha::GoogleRpcStatus, decorator: Google::Apis::BeyondcorpV1alpha::GoogleRpcStatus::Representation
      
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
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ImageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stable_image, as: 'stableImage'
          property :target_image, as: 'targetImage'
        end
      end
      
      class Ingress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::BeyondcorpV1alpha::Config, decorator: Google::Apis::BeyondcorpV1alpha::Config::Representation
      
        end
      end
      
      class ListAppGatewaysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_gateways, as: 'appGateways', class: Google::Apis::BeyondcorpV1alpha::AppGateway, decorator: Google::Apis::BeyondcorpV1alpha::AppGateway::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListClientConnectorServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_connector_services, as: 'clientConnectorServices', class: Google::Apis::BeyondcorpV1alpha::ClientConnectorService, decorator: Google::Apis::BeyondcorpV1alpha::ClientConnectorService::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListClientGatewaysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_gateways, as: 'clientGateways', class: Google::Apis::BeyondcorpV1alpha::ClientGateway, decorator: Google::Apis::BeyondcorpV1alpha::ClientGateway::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::BeyondcorpV1alpha::Connection, decorator: Google::Apis::BeyondcorpV1alpha::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connectors, as: 'connectors', class: Google::Apis::BeyondcorpV1alpha::Connector, decorator: Google::Apis::BeyondcorpV1alpha::Connector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_notification, as: 'pubsubNotification', class: Google::Apis::BeyondcorpV1alpha::CloudPubSubNotificationConfig, decorator: Google::Apis::BeyondcorpV1alpha::CloudPubSubNotificationConfig::Representation
      
        end
      end
      
      class PeeredVpc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_vpc, as: 'networkVpc'
        end
      end
      
      class PrincipalInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount', class: Google::Apis::BeyondcorpV1alpha::ServiceAccount, decorator: Google::Apis::BeyondcorpV1alpha::ServiceAccount::Representation
      
        end
      end
      
      class RemoteAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReportStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :resource_info, as: 'resourceInfo', class: Google::Apis::BeyondcorpV1alpha::ResourceInfo, decorator: Google::Apis::BeyondcorpV1alpha::ResourceInfo::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class ResolveConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_details, as: 'connectionDetails', class: Google::Apis::BeyondcorpV1alpha::ConnectionDetails, decorator: Google::Apis::BeyondcorpV1alpha::ConnectionDetails::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ResolveInstanceConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_config, as: 'instanceConfig', class: Google::Apis::BeyondcorpV1alpha::ConnectorInstanceConfig, decorator: Google::Apis::BeyondcorpV1alpha::ConnectorInstanceConfig::Representation
      
        end
      end
      
      class ResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :resource, as: 'resource'
          property :status, as: 'status'
          collection :sub, as: 'sub', class: Google::Apis::BeyondcorpV1alpha::ResourceInfo, decorator: Google::Apis::BeyondcorpV1alpha::ResourceInfo::Representation
      
          property :time, as: 'time'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class Tunnelv1ProtoTunnelerError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :err, as: 'err'
          property :retryable, as: 'retryable'
        end
      end
      
      class Tunnelv1ProtoTunnelerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backoff_retry_count, as: 'backoffRetryCount'
          property :id, as: 'id'
          property :latest_err, as: 'latestErr', class: Google::Apis::BeyondcorpV1alpha::Tunnelv1ProtoTunnelerError, decorator: Google::Apis::BeyondcorpV1alpha::Tunnelv1ProtoTunnelerError::Representation
      
          property :latest_retry_time, as: 'latestRetryTime'
          property :total_retry_count, as: 'totalRetryCount'
        end
      end
    end
  end
end
