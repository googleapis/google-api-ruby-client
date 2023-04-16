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
    module BeyondcorpV1
      
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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ContainerHealthDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ImageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpAppgatewaysV1alphaAppGatewayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpClientconnectorservicesV1alphaClientConnectorServiceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpClientgatewaysV1alphaClientGatewayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpConnectionsV1alphaConnectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpConnectorsV1alphaConnectorOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpConnectorsV1alphaContainerHealthDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBeyondcorpConnectorsV1alphaRemoteAgentDetails
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
      
      class ListAppGatewaysResponse
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
          collection :allocated_connections, as: 'allocatedConnections', class: Google::Apis::BeyondcorpV1::AllocatedConnection, decorator: Google::Apis::BeyondcorpV1::AllocatedConnection::Representation
      
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
      
      class CloudSecurityZerotrustApplinkAppConnectorProtoConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_endpoint, as: 'applicationEndpoint'
          property :application_name, as: 'applicationName'
          collection :gateway, as: 'gateway', class: Google::Apis::BeyondcorpV1::CloudSecurityZerotrustApplinkAppConnectorProtoGateway, decorator: Google::Apis::BeyondcorpV1::CloudSecurityZerotrustApplinkAppConnectorProtoGateway::Representation
      
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_endpoint, as: 'applicationEndpoint', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint::Representation
      
          collection :connectors, as: 'connectors'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :gateway, as: 'gateway', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_gateway, as: 'appGateway'
          property :ingress_port, as: 'ingressPort'
          property :l7psc, as: 'l7psc'
          property :type, as: 'type'
          property :uri, as: 'uri'
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
      
      class GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_connections, as: 'appConnections', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnection, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_connection_details, as: 'appConnectionDetails', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_connection, as: 'appConnection', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnection, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectionsV1AppConnection::Representation
      
          collection :recent_mig_vms, as: 'recentMigVms'
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
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :principal_info, as: 'principalInfo', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo::Representation
      
          property :resource_info, as: 'resourceInfo', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_config, as: 'imageConfig', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ImageConfig, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ImageConfig::Representation
      
          hash :instance_config, as: 'instanceConfig'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig::Representation
      
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
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
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
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
      
      class GoogleCloudBeyondcorpAppconnectorsV1ImageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stable_image, as: 'stableImage'
          property :target_image, as: 'targetImage'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_connectors, as: 'appConnectors', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnector, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_notification, as: 'pubsubNotification', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_subscription, as: 'pubsubSubscription'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :resource_info, as: 'resourceInfo', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_config, as: 'instanceConfig', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig::Representation
      
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :resource, as: 'resource'
          property :status, as: 'status'
          collection :sub, as: 'sub', class: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo, decorator: Google::Apis::BeyondcorpV1::GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo::Representation
      
          property :time, as: 'time'
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
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_config_version, as: 'currentConfigVersion'
          property :error_msg, as: 'errorMsg'
          property :expected_config_version, as: 'expectedConfigVersion'
          hash :extended_status, as: 'extendedStatus'
        end
      end
      
      class GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBeyondcorpAppgatewaysV1alphaAppGatewayOperationMetadata
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
      
      class GoogleCloudBeyondcorpClientconnectorservicesV1alphaClientConnectorServiceOperationMetadata
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
      
      class GoogleCloudBeyondcorpClientgatewaysV1alphaClientGatewayOperationMetadata
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
      
      class GoogleCloudBeyondcorpConnectionsV1alphaConnectionOperationMetadata
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
      
      class GoogleCloudBeyondcorpConnectorsV1alphaConnectorOperationMetadata
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
      
      class GoogleCloudBeyondcorpConnectorsV1alphaContainerHealthDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_config_version, as: 'currentConfigVersion'
          property :error_msg, as: 'errorMsg'
          property :expected_config_version, as: 'expectedConfigVersion'
          hash :extended_status, as: 'extendedStatus'
        end
      end
      
      class GoogleCloudBeyondcorpConnectorsV1alphaRemoteAgentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BeyondcorpV1::GoogleCloudLocationLocation, decorator: Google::Apis::BeyondcorpV1::GoogleCloudLocationLocation::Representation
      
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
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BeyondcorpV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::BeyondcorpV1::GoogleIamV1AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::BeyondcorpV1::GoogleTypeExpr, decorator: Google::Apis::BeyondcorpV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BeyondcorpV1::GoogleIamV1AuditConfig, decorator: Google::Apis::BeyondcorpV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BeyondcorpV1::GoogleIamV1Binding, decorator: Google::Apis::BeyondcorpV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BeyondcorpV1::GoogleIamV1Policy, decorator: Google::Apis::BeyondcorpV1::GoogleIamV1Policy::Representation
      
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
          collection :operations, as: 'operations', class: Google::Apis::BeyondcorpV1::GoogleLongrunningOperation, decorator: Google::Apis::BeyondcorpV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BeyondcorpV1::GoogleRpcStatus, decorator: Google::Apis::BeyondcorpV1::GoogleRpcStatus::Representation
      
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
      
      class ListAppGatewaysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_gateways, as: 'appGateways', class: Google::Apis::BeyondcorpV1::AppGateway, decorator: Google::Apis::BeyondcorpV1::AppGateway::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
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
          property :latest_err, as: 'latestErr', class: Google::Apis::BeyondcorpV1::Tunnelv1ProtoTunnelerError, decorator: Google::Apis::BeyondcorpV1::Tunnelv1ProtoTunnelerError::Representation
      
          property :latest_retry_time, as: 'latestRetryTime'
          property :total_retry_count, as: 'totalRetryCount'
        end
      end
    end
  end
end
