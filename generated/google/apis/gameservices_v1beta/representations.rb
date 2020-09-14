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
    module GameservicesV1beta
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationLoggingOptions
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
      
      class CloudAuditOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataAccessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployedClusterState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployedFleet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployedFleetAutoscaler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployedFleetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployedFleetStatus
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
      
      class FetchDeploymentStateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchDeploymentStateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FleetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GameServerCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GameServerClusterConnectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GameServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GameServerConfigOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GameServerDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GameServerDeploymentRollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeClusterReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGameServerClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGameServerConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGameServerDeploymentsResponse
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
      
      class ListRealmsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogConfig
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
      
      class OperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewCreateGameServerClusterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewDeleteGameServerClusterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewGameServerDeploymentRolloutResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewRealmUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewUpdateGameServerClusterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Realm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RealmSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetFleet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetFleetAutoscaler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetFleetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetState
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
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GameservicesV1beta::AuditLogConfig, decorator: Google::Apis::GameservicesV1beta::AuditLogConfig::Representation
      
          collection :exempted_members, as: 'exemptedMembers'
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :ignore_child_exemptions, as: 'ignoreChildExemptions'
          property :log_type, as: 'logType'
        end
      end
      
      class AuthorizationLoggingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission_type, as: 'permissionType'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binding_id, as: 'bindingId'
          property :condition, as: 'condition', class: Google::Apis::GameservicesV1beta::Expr, decorator: Google::Apis::GameservicesV1beta::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudAuditOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_logging_options, as: 'authorizationLoggingOptions', class: Google::Apis::GameservicesV1beta::AuthorizationLoggingOptions, decorator: Google::Apis::GameservicesV1beta::AuthorizationLoggingOptions::Representation
      
          property :log_name, as: 'logName'
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam, as: 'iam'
          property :op, as: 'op'
          property :svc, as: 'svc'
          property :sys, as: 'sys'
          collection :values, as: 'values'
        end
      end
      
      class CounterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_fields, as: 'customFields', class: Google::Apis::GameservicesV1beta::CustomField, decorator: Google::Apis::GameservicesV1beta::CustomField::Representation
      
          property :field, as: 'field'
          property :metric, as: 'metric'
        end
      end
      
      class CustomField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DataAccessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_mode, as: 'logMode'
        end
      end
      
      class DeployedClusterState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          collection :fleet_details, as: 'fleetDetails', class: Google::Apis::GameservicesV1beta::DeployedFleetDetails, decorator: Google::Apis::GameservicesV1beta::DeployedFleetDetails::Representation
      
        end
      end
      
      class DeployedFleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fleet, as: 'fleet'
          property :fleet_spec, as: 'fleetSpec'
          property :spec_source, as: 'specSource', class: Google::Apis::GameservicesV1beta::SpecSource, decorator: Google::Apis::GameservicesV1beta::SpecSource::Representation
      
          property :status, as: 'status', class: Google::Apis::GameservicesV1beta::DeployedFleetStatus, decorator: Google::Apis::GameservicesV1beta::DeployedFleetStatus::Representation
      
        end
      end
      
      class DeployedFleetAutoscaler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaler, as: 'autoscaler'
          property :fleet_autoscaler_spec, as: 'fleetAutoscalerSpec'
          property :spec_source, as: 'specSource', class: Google::Apis::GameservicesV1beta::SpecSource, decorator: Google::Apis::GameservicesV1beta::SpecSource::Representation
      
        end
      end
      
      class DeployedFleetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_autoscaler, as: 'deployedAutoscaler', class: Google::Apis::GameservicesV1beta::DeployedFleetAutoscaler, decorator: Google::Apis::GameservicesV1beta::DeployedFleetAutoscaler::Representation
      
          property :deployed_fleet, as: 'deployedFleet', class: Google::Apis::GameservicesV1beta::DeployedFleet, decorator: Google::Apis::GameservicesV1beta::DeployedFleet::Representation
      
        end
      end
      
      class DeployedFleetStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_replicas, :numeric_string => true, as: 'allocatedReplicas'
          property :ready_replicas, :numeric_string => true, as: 'readyReplicas'
          property :replicas, :numeric_string => true, as: 'replicas'
          property :reserved_replicas, :numeric_string => true, as: 'reservedReplicas'
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
      
      class FetchDeploymentStateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchDeploymentStateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_state, as: 'clusterState', class: Google::Apis::GameservicesV1beta::DeployedClusterState, decorator: Google::Apis::GameservicesV1beta::DeployedClusterState::Representation
      
          collection :unavailable, as: 'unavailable'
        end
      end
      
      class FleetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fleet_spec, as: 'fleetSpec'
          property :name, as: 'name'
        end
      end
      
      class GameServerCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_info, as: 'connectionInfo', class: Google::Apis::GameservicesV1beta::GameServerClusterConnectionInfo, decorator: Google::Apis::GameservicesV1beta::GameServerClusterConnectionInfo::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GameServerClusterConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gke_cluster_reference, as: 'gkeClusterReference', class: Google::Apis::GameservicesV1beta::GkeClusterReference, decorator: Google::Apis::GameservicesV1beta::GkeClusterReference::Representation
      
          property :namespace, as: 'namespace'
        end
      end
      
      class GameServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :fleet_configs, as: 'fleetConfigs', class: Google::Apis::GameservicesV1beta::FleetConfig, decorator: Google::Apis::GameservicesV1beta::FleetConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :scaling_configs, as: 'scalingConfigs', class: Google::Apis::GameservicesV1beta::ScalingConfig, decorator: Google::Apis::GameservicesV1beta::ScalingConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GameServerConfigOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_version, as: 'configVersion'
          property :realms_selector, as: 'realmsSelector', class: Google::Apis::GameservicesV1beta::RealmSelector, decorator: Google::Apis::GameservicesV1beta::RealmSelector::Representation
      
        end
      end
      
      class GameServerDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GameServerDeploymentRollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :default_game_server_config, as: 'defaultGameServerConfig'
          property :etag, as: 'etag'
          collection :game_server_config_overrides, as: 'gameServerConfigOverrides', class: Google::Apis::GameservicesV1beta::GameServerConfigOverride, decorator: Google::Apis::GameservicesV1beta::GameServerConfigOverride::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GkeClusterReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
        end
      end
      
      class LabelSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class ListGameServerClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :game_server_clusters, as: 'gameServerClusters', class: Google::Apis::GameservicesV1beta::GameServerCluster, decorator: Google::Apis::GameservicesV1beta::GameServerCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGameServerConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :game_server_configs, as: 'gameServerConfigs', class: Google::Apis::GameservicesV1beta::GameServerConfig, decorator: Google::Apis::GameservicesV1beta::GameServerConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGameServerDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :game_server_deployments, as: 'gameServerDeployments', class: Google::Apis::GameservicesV1beta::GameServerDeployment, decorator: Google::Apis::GameservicesV1beta::GameServerDeployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GameservicesV1beta::Location, decorator: Google::Apis::GameservicesV1beta::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GameservicesV1beta::Operation, decorator: Google::Apis::GameservicesV1beta::Operation::Representation
      
        end
      end
      
      class ListRealmsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :realms, as: 'realms', class: Google::Apis::GameservicesV1beta::Realm, decorator: Google::Apis::GameservicesV1beta::Realm::Representation
      
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
      
      class LogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_audit, as: 'cloudAudit', class: Google::Apis::GameservicesV1beta::CloudAuditOptions, decorator: Google::Apis::GameservicesV1beta::CloudAuditOptions::Representation
      
          property :counter, as: 'counter', class: Google::Apis::GameservicesV1beta::CounterOptions, decorator: Google::Apis::GameservicesV1beta::CounterOptions::Representation
      
          property :data_access, as: 'dataAccess', class: Google::Apis::GameservicesV1beta::DataAccessOptions, decorator: Google::Apis::GameservicesV1beta::DataAccessOptions::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GameservicesV1beta::Status, decorator: Google::Apis::GameservicesV1beta::Status::Representation
      
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
          hash :operation_status, as: 'operationStatus', class: Google::Apis::GameservicesV1beta::OperationStatus, decorator: Google::Apis::GameservicesV1beta::OperationStatus::Representation
      
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          collection :unreachable, as: 'unreachable'
          property :verb, as: 'verb'
        end
      end
      
      class OperationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error_code, as: 'errorCode'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GameservicesV1beta::AuditConfig, decorator: Google::Apis::GameservicesV1beta::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GameservicesV1beta::Binding, decorator: Google::Apis::GameservicesV1beta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :iam_owned, as: 'iamOwned'
          collection :rules, as: 'rules', class: Google::Apis::GameservicesV1beta::Rule, decorator: Google::Apis::GameservicesV1beta::Rule::Representation
      
          property :version, as: 'version'
        end
      end
      
      class PreviewCreateGameServerClusterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :target_state, as: 'targetState', class: Google::Apis::GameservicesV1beta::TargetState, decorator: Google::Apis::GameservicesV1beta::TargetState::Representation
      
        end
      end
      
      class PreviewDeleteGameServerClusterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :target_state, as: 'targetState', class: Google::Apis::GameservicesV1beta::TargetState, decorator: Google::Apis::GameservicesV1beta::TargetState::Representation
      
        end
      end
      
      class PreviewGameServerDeploymentRolloutResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :target_state, as: 'targetState', class: Google::Apis::GameservicesV1beta::TargetState, decorator: Google::Apis::GameservicesV1beta::TargetState::Representation
      
          collection :unavailable, as: 'unavailable'
        end
      end
      
      class PreviewRealmUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :target_state, as: 'targetState', class: Google::Apis::GameservicesV1beta::TargetState, decorator: Google::Apis::GameservicesV1beta::TargetState::Representation
      
        end
      end
      
      class PreviewUpdateGameServerClusterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :target_state, as: 'targetState', class: Google::Apis::GameservicesV1beta::TargetState, decorator: Google::Apis::GameservicesV1beta::TargetState::Representation
      
        end
      end
      
      class Realm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RealmSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :realms, as: 'realms'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :conditions, as: 'conditions', class: Google::Apis::GameservicesV1beta::Condition, decorator: Google::Apis::GameservicesV1beta::Condition::Representation
      
          property :description, as: 'description'
          collection :in, as: 'in'
          collection :log_config, as: 'logConfig', class: Google::Apis::GameservicesV1beta::LogConfig, decorator: Google::Apis::GameservicesV1beta::LogConfig::Representation
      
          collection :not_in, as: 'notIn'
          collection :permissions, as: 'permissions'
        end
      end
      
      class ScalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fleet_autoscaler_spec, as: 'fleetAutoscalerSpec'
          property :name, as: 'name'
          collection :schedules, as: 'schedules', class: Google::Apis::GameservicesV1beta::Schedule, decorator: Google::Apis::GameservicesV1beta::Schedule::Representation
      
          collection :selectors, as: 'selectors', class: Google::Apis::GameservicesV1beta::LabelSelector, decorator: Google::Apis::GameservicesV1beta::LabelSelector::Representation
      
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cron_job_duration, as: 'cronJobDuration'
          property :cron_spec, as: 'cronSpec'
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GameservicesV1beta::Policy, decorator: Google::Apis::GameservicesV1beta::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SpecSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :game_server_config_name, as: 'gameServerConfigName'
          property :name, as: 'name'
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
      
      class TargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fleet_details, as: 'fleetDetails', class: Google::Apis::GameservicesV1beta::TargetFleetDetails, decorator: Google::Apis::GameservicesV1beta::TargetFleetDetails::Representation
      
          property :game_server_cluster_name, as: 'gameServerClusterName'
          property :game_server_deployment_name, as: 'gameServerDeploymentName'
        end
      end
      
      class TargetFleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :spec_source, as: 'specSource', class: Google::Apis::GameservicesV1beta::SpecSource, decorator: Google::Apis::GameservicesV1beta::SpecSource::Representation
      
        end
      end
      
      class TargetFleetAutoscaler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :spec_source, as: 'specSource', class: Google::Apis::GameservicesV1beta::SpecSource, decorator: Google::Apis::GameservicesV1beta::SpecSource::Representation
      
        end
      end
      
      class TargetFleetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaler, as: 'autoscaler', class: Google::Apis::GameservicesV1beta::TargetFleetAutoscaler, decorator: Google::Apis::GameservicesV1beta::TargetFleetAutoscaler::Representation
      
          property :fleet, as: 'fleet', class: Google::Apis::GameservicesV1beta::TargetFleet, decorator: Google::Apis::GameservicesV1beta::TargetFleet::Representation
      
        end
      end
      
      class TargetState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::GameservicesV1beta::TargetDetails, decorator: Google::Apis::GameservicesV1beta::TargetDetails::Representation
      
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
