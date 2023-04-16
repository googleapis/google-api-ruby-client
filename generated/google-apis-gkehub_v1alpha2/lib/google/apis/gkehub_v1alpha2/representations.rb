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
    module GkehubV1alpha2
      
      class ApplianceCluster
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
      
      class Authority
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
      
      class ConnectAgentResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EdgeCluster
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
      
      class GenerateConnectManifestResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializeHubRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializeHubResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KubernetesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KubernetesResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiCloudCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnPremCluster
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
      
      class ResourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
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
      
      class TypeMeta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplianceCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GkehubV1alpha2::AuditLogConfig, decorator: Google::Apis::GkehubV1alpha2::AuditLogConfig::Representation
      
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
      
      class Authority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity_provider, as: 'identityProvider'
          property :issuer, as: 'issuer'
          property :oidc_jwks, :base64 => true, as: 'oidcJwks'
          property :workload_identity_pool, as: 'workloadIdentityPool'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::GkehubV1alpha2::Expr, decorator: Google::Apis::GkehubV1alpha2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConnectAgentResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manifest, as: 'manifest'
          property :type, as: 'type', class: Google::Apis::GkehubV1alpha2::TypeMeta, decorator: Google::Apis::GkehubV1alpha2::TypeMeta::Representation
      
        end
      end
      
      class EdgeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_link, as: 'resourceLink'
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
      
      class GenerateConnectManifestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifest, as: 'manifest', class: Google::Apis::GkehubV1alpha2::ConnectAgentResource, decorator: Google::Apis::GkehubV1alpha2::ConnectAgentResource::Representation
      
        end
      end
      
      class GkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_missing, as: 'clusterMissing'
          property :resource_link, as: 'resourceLink'
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
      
      class InitializeHubRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InitializeHubResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_identity, as: 'serviceIdentity'
          property :workload_identity_pool, as: 'workloadIdentityPool'
        end
      end
      
      class KubernetesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kubernetes_api_server_version, as: 'kubernetesApiServerVersion'
          property :memory_mb, as: 'memoryMb'
          property :node_count, as: 'nodeCount'
          property :node_provider_id, as: 'nodeProviderId'
          property :update_time, as: 'updateTime'
          property :vcpu_count, as: 'vcpuCount'
        end
      end
      
      class KubernetesResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connect_resources, as: 'connectResources', class: Google::Apis::GkehubV1alpha2::ResourceManifest, decorator: Google::Apis::GkehubV1alpha2::ResourceManifest::Representation
      
          property :membership_cr_manifest, as: 'membershipCrManifest'
          collection :membership_resources, as: 'membershipResources', class: Google::Apis::GkehubV1alpha2::ResourceManifest, decorator: Google::Apis::GkehubV1alpha2::ResourceManifest::Representation
      
          property :resource_options, as: 'resourceOptions', class: Google::Apis::GkehubV1alpha2::ResourceOptions, decorator: Google::Apis::GkehubV1alpha2::ResourceOptions::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkehubV1alpha2::Location, decorator: Google::Apis::GkehubV1alpha2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1alpha2::Membership, decorator: Google::Apis::GkehubV1alpha2::Membership::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkehubV1alpha2::Operation, decorator: Google::Apis::GkehubV1alpha2::Operation::Representation
      
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
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority', class: Google::Apis::GkehubV1alpha2::Authority, decorator: Google::Apis::GkehubV1alpha2::Authority::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint', class: Google::Apis::GkehubV1alpha2::MembershipEndpoint, decorator: Google::Apis::GkehubV1alpha2::MembershipEndpoint::Representation
      
          property :external_id, as: 'externalId'
          property :infrastructure_type, as: 'infrastructureType'
          hash :labels, as: 'labels'
          property :last_connection_time, as: 'lastConnectionTime'
          property :monitoring_config, as: 'monitoringConfig', class: Google::Apis::GkehubV1alpha2::MonitoringConfig, decorator: Google::Apis::GkehubV1alpha2::MonitoringConfig::Representation
      
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::GkehubV1alpha2::MembershipState, decorator: Google::Apis::GkehubV1alpha2::MembershipState::Representation
      
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance_cluster, as: 'applianceCluster', class: Google::Apis::GkehubV1alpha2::ApplianceCluster, decorator: Google::Apis::GkehubV1alpha2::ApplianceCluster::Representation
      
          property :edge_cluster, as: 'edgeCluster', class: Google::Apis::GkehubV1alpha2::EdgeCluster, decorator: Google::Apis::GkehubV1alpha2::EdgeCluster::Representation
      
          property :gke_cluster, as: 'gkeCluster', class: Google::Apis::GkehubV1alpha2::GkeCluster, decorator: Google::Apis::GkehubV1alpha2::GkeCluster::Representation
      
          property :kubernetes_metadata, as: 'kubernetesMetadata', class: Google::Apis::GkehubV1alpha2::KubernetesMetadata, decorator: Google::Apis::GkehubV1alpha2::KubernetesMetadata::Representation
      
          property :kubernetes_resource, as: 'kubernetesResource', class: Google::Apis::GkehubV1alpha2::KubernetesResource, decorator: Google::Apis::GkehubV1alpha2::KubernetesResource::Representation
      
          property :multi_cloud_cluster, as: 'multiCloudCluster', class: Google::Apis::GkehubV1alpha2::MultiCloudCluster, decorator: Google::Apis::GkehubV1alpha2::MultiCloudCluster::Representation
      
          property :on_prem_cluster, as: 'onPremCluster', class: Google::Apis::GkehubV1alpha2::OnPremCluster, decorator: Google::Apis::GkehubV1alpha2::OnPremCluster::Representation
      
        end
      end
      
      class MembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class MonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :cluster_hash, as: 'clusterHash'
          property :kubernetes_metrics_prefix, as: 'kubernetesMetricsPrefix'
          property :location, as: 'location'
          property :project_id, as: 'projectId'
        end
      end
      
      class MultiCloudCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_missing, as: 'clusterMissing'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class OnPremCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster, as: 'adminCluster'
          property :cluster_missing, as: 'clusterMissing'
          property :cluster_type, as: 'clusterType'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkehubV1alpha2::GoogleRpcStatus, decorator: Google::Apis::GkehubV1alpha2::GoogleRpcStatus::Representation
      
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GkehubV1alpha2::AuditConfig, decorator: Google::Apis::GkehubV1alpha2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GkehubV1alpha2::Binding, decorator: Google::Apis::GkehubV1alpha2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ResourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_scoped, as: 'clusterScoped'
          property :manifest, as: 'manifest'
        end
      end
      
      class ResourceOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connect_version, as: 'connectVersion'
          property :k8s_version, as: 'k8sVersion'
          property :v1beta1_crd, as: 'v1beta1Crd'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkehubV1alpha2::Policy, decorator: Google::Apis::GkehubV1alpha2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class TypeMeta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
        end
      end
    end
  end
end
