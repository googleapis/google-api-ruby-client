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
    module GkehubV1
      
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
      
      class CommonFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSync
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncDeploymentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementConfigSyncVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementErrorResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementGatekeeperDeploymentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementGitConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementGroupVersionKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerDeploymentState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementHierarchyControllerVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementInstallError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementOperatorState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyController
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyControllerState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementPolicyControllerVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementSyncError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementSyncState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectAgentResource
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
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureResourceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureState
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
      
      class KubernetesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFeaturesResponse
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
      
      class MembershipFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiCloudCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiClusterIngressFeatureSpec
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
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GkehubV1::AuditLogConfig, decorator: Google::Apis::GkehubV1::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::GkehubV1::Expr, decorator: Google::Apis::GkehubV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CommonFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :multiclusteringress, as: 'multiclusteringress', class: Google::Apis::GkehubV1::MultiClusterIngressFeatureSpec, decorator: Google::Apis::GkehubV1::MultiClusterIngressFeatureSpec::Representation
      
        end
      end
      
      class CommonFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::GkehubV1::FeatureState, decorator: Google::Apis::GkehubV1::FeatureState::Representation
      
        end
      end
      
      class ConfigManagementConfigSync
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :git, as: 'git', class: Google::Apis::GkehubV1::ConfigManagementGitConfig, decorator: Google::Apis::GkehubV1::ConfigManagementGitConfig::Representation
      
          property :source_format, as: 'sourceFormat'
        end
      end
      
      class ConfigManagementConfigSyncDeploymentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admission_webhook, as: 'admissionWebhook'
          property :git_sync, as: 'gitSync'
          property :importer, as: 'importer'
          property :monitor, as: 'monitor'
          property :reconciler_manager, as: 'reconcilerManager'
          property :root_reconciler, as: 'rootReconciler'
          property :syncer, as: 'syncer'
        end
      end
      
      class ConfigManagementConfigSyncState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1::ConfigManagementConfigSyncDeploymentState, decorator: Google::Apis::GkehubV1::ConfigManagementConfigSyncDeploymentState::Representation
      
          property :sync_state, as: 'syncState', class: Google::Apis::GkehubV1::ConfigManagementSyncState, decorator: Google::Apis::GkehubV1::ConfigManagementSyncState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1::ConfigManagementConfigSyncVersion, decorator: Google::Apis::GkehubV1::ConfigManagementConfigSyncVersion::Representation
      
        end
      end
      
      class ConfigManagementConfigSyncVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admission_webhook, as: 'admissionWebhook'
          property :git_sync, as: 'gitSync'
          property :importer, as: 'importer'
          property :monitor, as: 'monitor'
          property :reconciler_manager, as: 'reconcilerManager'
          property :root_reconciler, as: 'rootReconciler'
          property :syncer, as: 'syncer'
        end
      end
      
      class ConfigManagementErrorResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_gvk, as: 'resourceGvk', class: Google::Apis::GkehubV1::ConfigManagementGroupVersionKind, decorator: Google::Apis::GkehubV1::ConfigManagementGroupVersionKind::Representation
      
          property :resource_name, as: 'resourceName'
          property :resource_namespace, as: 'resourceNamespace'
          property :source_path, as: 'sourcePath'
        end
      end
      
      class ConfigManagementGatekeeperDeploymentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gatekeeper_audit, as: 'gatekeeperAudit'
          property :gatekeeper_controller_manager_state, as: 'gatekeeperControllerManagerState'
        end
      end
      
      class ConfigManagementGitConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_service_account_email, as: 'gcpServiceAccountEmail'
          property :https_proxy, as: 'httpsProxy'
          property :policy_dir, as: 'policyDir'
          property :secret_type, as: 'secretType'
          property :sync_branch, as: 'syncBranch'
          property :sync_repo, as: 'syncRepo'
          property :sync_rev, as: 'syncRev'
          property :sync_wait_secs, :numeric_string => true, as: 'syncWaitSecs'
        end
      end
      
      class ConfigManagementGroupVersionKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
          property :kind, as: 'kind'
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementHierarchyControllerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_hierarchical_resource_quota, as: 'enableHierarchicalResourceQuota'
          property :enable_pod_tree_labels, as: 'enablePodTreeLabels'
          property :enabled, as: 'enabled'
        end
      end
      
      class ConfigManagementHierarchyControllerDeploymentState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension'
          property :hnc, as: 'hnc'
        end
      end
      
      class ConfigManagementHierarchyControllerState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerDeploymentState, decorator: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerVersion, decorator: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerVersion::Representation
      
        end
      end
      
      class ConfigManagementHierarchyControllerVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension'
          property :hnc, as: 'hnc'
        end
      end
      
      class ConfigManagementInstallError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
        end
      end
      
      class ConfigManagementMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_sync, as: 'configSync', class: Google::Apis::GkehubV1::ConfigManagementConfigSync, decorator: Google::Apis::GkehubV1::ConfigManagementConfigSync::Representation
      
          property :hierarchy_controller, as: 'hierarchyController', class: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerConfig, decorator: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerConfig::Representation
      
          property :policy_controller, as: 'policyController', class: Google::Apis::GkehubV1::ConfigManagementPolicyController, decorator: Google::Apis::GkehubV1::ConfigManagementPolicyController::Representation
      
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :config_sync_state, as: 'configSyncState', class: Google::Apis::GkehubV1::ConfigManagementConfigSyncState, decorator: Google::Apis::GkehubV1::ConfigManagementConfigSyncState::Representation
      
          property :hierarchy_controller_state, as: 'hierarchyControllerState', class: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerState, decorator: Google::Apis::GkehubV1::ConfigManagementHierarchyControllerState::Representation
      
          property :membership_spec, as: 'membershipSpec', class: Google::Apis::GkehubV1::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1::ConfigManagementMembershipSpec::Representation
      
          property :operator_state, as: 'operatorState', class: Google::Apis::GkehubV1::ConfigManagementOperatorState, decorator: Google::Apis::GkehubV1::ConfigManagementOperatorState::Representation
      
          property :policy_controller_state, as: 'policyControllerState', class: Google::Apis::GkehubV1::ConfigManagementPolicyControllerState, decorator: Google::Apis::GkehubV1::ConfigManagementPolicyControllerState::Representation
      
        end
      end
      
      class ConfigManagementOperatorState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1::ConfigManagementInstallError, decorator: Google::Apis::GkehubV1::ConfigManagementInstallError::Representation
      
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementPolicyController
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_interval_seconds, :numeric_string => true, as: 'auditIntervalSeconds'
          property :enabled, as: 'enabled'
          collection :exemptable_namespaces, as: 'exemptableNamespaces'
          property :log_denies_enabled, as: 'logDeniesEnabled'
          property :referential_rules_enabled, as: 'referentialRulesEnabled'
          property :template_library_installed, as: 'templateLibraryInstalled'
        end
      end
      
      class ConfigManagementPolicyControllerState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1::ConfigManagementGatekeeperDeploymentState, decorator: Google::Apis::GkehubV1::ConfigManagementGatekeeperDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1::ConfigManagementPolicyControllerVersion, decorator: Google::Apis::GkehubV1::ConfigManagementPolicyControllerVersion::Representation
      
        end
      end
      
      class ConfigManagementPolicyControllerVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementSyncError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error_message, as: 'errorMessage'
          collection :error_resources, as: 'errorResources', class: Google::Apis::GkehubV1::ConfigManagementErrorResource, decorator: Google::Apis::GkehubV1::ConfigManagementErrorResource::Representation
      
        end
      end
      
      class ConfigManagementSyncState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1::ConfigManagementSyncError, decorator: Google::Apis::GkehubV1::ConfigManagementSyncError::Representation
      
          property :import_token, as: 'importToken'
          property :last_sync, as: 'lastSync'
          property :last_sync_time, as: 'lastSyncTime'
          property :source_token, as: 'sourceToken'
          property :sync_token, as: 'syncToken'
        end
      end
      
      class ConnectAgentResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manifest, as: 'manifest'
          property :type, as: 'type', class: Google::Apis::GkehubV1::TypeMeta, decorator: Google::Apis::GkehubV1::TypeMeta::Representation
      
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
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          hash :labels, as: 'labels'
          hash :membership_specs, as: 'membershipSpecs', class: Google::Apis::GkehubV1::MembershipFeatureSpec, decorator: Google::Apis::GkehubV1::MembershipFeatureSpec::Representation
      
          hash :membership_states, as: 'membershipStates', class: Google::Apis::GkehubV1::MembershipFeatureState, decorator: Google::Apis::GkehubV1::MembershipFeatureState::Representation
      
          property :name, as: 'name'
          property :resource_state, as: 'resourceState', class: Google::Apis::GkehubV1::FeatureResourceState, decorator: Google::Apis::GkehubV1::FeatureResourceState::Representation
      
          property :spec, as: 'spec', class: Google::Apis::GkehubV1::CommonFeatureSpec, decorator: Google::Apis::GkehubV1::CommonFeatureSpec::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1::CommonFeatureState, decorator: Google::Apis::GkehubV1::CommonFeatureState::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class FeatureResourceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class FeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GenerateConnectManifestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifest, as: 'manifest', class: Google::Apis::GkehubV1::ConnectAgentResource, decorator: Google::Apis::GkehubV1::ConnectAgentResource::Representation
      
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
      
      class ListFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1::Feature, decorator: Google::Apis::GkehubV1::Feature::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkehubV1::Location, decorator: Google::Apis::GkehubV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1::Membership, decorator: Google::Apis::GkehubV1::Membership::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkehubV1::Operation, decorator: Google::Apis::GkehubV1::Operation::Representation
      
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
          property :authority, as: 'authority', class: Google::Apis::GkehubV1::Authority, decorator: Google::Apis::GkehubV1::Authority::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint', class: Google::Apis::GkehubV1::MembershipEndpoint, decorator: Google::Apis::GkehubV1::MembershipEndpoint::Representation
      
          property :external_id, as: 'externalId'
          hash :labels, as: 'labels'
          property :last_connection_time, as: 'lastConnectionTime'
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::GkehubV1::MembershipState, decorator: Google::Apis::GkehubV1::MembershipState::Representation
      
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gke_cluster, as: 'gkeCluster', class: Google::Apis::GkehubV1::GkeCluster, decorator: Google::Apis::GkehubV1::GkeCluster::Representation
      
          property :kubernetes_metadata, as: 'kubernetesMetadata', class: Google::Apis::GkehubV1::KubernetesMetadata, decorator: Google::Apis::GkehubV1::KubernetesMetadata::Representation
      
          property :multi_cloud_cluster, as: 'multiCloudCluster', class: Google::Apis::GkehubV1::MultiCloudCluster, decorator: Google::Apis::GkehubV1::MultiCloudCluster::Representation
      
          property :on_prem_cluster, as: 'onPremCluster', class: Google::Apis::GkehubV1::OnPremCluster, decorator: Google::Apis::GkehubV1::OnPremCluster::Representation
      
        end
      end
      
      class MembershipFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1::ConfigManagementMembershipSpec::Representation
      
        end
      end
      
      class MembershipFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1::ConfigManagementMembershipState, decorator: Google::Apis::GkehubV1::ConfigManagementMembershipState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1::FeatureState, decorator: Google::Apis::GkehubV1::FeatureState::Representation
      
        end
      end
      
      class MembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class MultiCloudCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_missing, as: 'clusterMissing'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class MultiClusterIngressFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_membership, as: 'configMembership'
        end
      end
      
      class OnPremCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster, as: 'adminCluster'
          property :cluster_missing, as: 'clusterMissing'
          property :resource_link, as: 'resourceLink'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkehubV1::GoogleRpcStatus, decorator: Google::Apis::GkehubV1::GoogleRpcStatus::Representation
      
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GkehubV1::AuditConfig, decorator: Google::Apis::GkehubV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GkehubV1::Binding, decorator: Google::Apis::GkehubV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkehubV1::Policy, decorator: Google::Apis::GkehubV1::Policy::Representation
      
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
