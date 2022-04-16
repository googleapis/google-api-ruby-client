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
    module GkehubV1alpha
      
      class AnthosObservabilityFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnthosObservabilityMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppDevExperienceFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppDevExperienceFeatureState
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
      
      class CloudAuditLoggingFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudBuildMembershipSpec
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
      
      class ConfigManagementBinauthzConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementBinauthzState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigManagementBinauthzVersion
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
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureResourceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fleet
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
      
      class IdentityServiceAuthMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceOidcConfig
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
      
      class ListAdminClusterMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFleetsResponse
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
      
      class MembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeteringMembershipState
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
      
      class PolicyControllerHubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerHubState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerHubVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerTemplateLibraryConfig
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
      
      class ServiceMeshAnalysisMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshAnalysisMessageBase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshControlPlaneManagement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshFeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshStatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceMeshType
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
      
      class AnthosObservabilityFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_membership_spec, as: 'defaultMembershipSpec', class: Google::Apis::GkehubV1alpha::AnthosObservabilityMembershipSpec, decorator: Google::Apis::GkehubV1alpha::AnthosObservabilityMembershipSpec::Representation
      
        end
      end
      
      class AnthosObservabilityMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :do_not_optimize_metrics, as: 'doNotOptimizeMetrics'
          property :enable_stackdriver_on_applications, as: 'enableStackdriverOnApplications'
          property :version, as: 'version'
        end
      end
      
      class AppDevExperienceFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppDevExperienceFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :networking_install_succeeded, as: 'networkingInstallSucceeded', class: Google::Apis::GkehubV1alpha::Status, decorator: Google::Apis::GkehubV1alpha::Status::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GkehubV1alpha::AuditLogConfig, decorator: Google::Apis::GkehubV1alpha::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::GkehubV1alpha::Expr, decorator: Google::Apis::GkehubV1alpha::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudAuditLoggingFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowlisted_service_accounts, as: 'allowlistedServiceAccounts'
        end
      end
      
      class CloudBuildMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_policy, as: 'securityPolicy'
          property :version, as: 'version'
        end
      end
      
      class CommonFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anthosobservability, as: 'anthosobservability', class: Google::Apis::GkehubV1alpha::AnthosObservabilityFeatureSpec, decorator: Google::Apis::GkehubV1alpha::AnthosObservabilityFeatureSpec::Representation
      
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1alpha::AppDevExperienceFeatureSpec, decorator: Google::Apis::GkehubV1alpha::AppDevExperienceFeatureSpec::Representation
      
          property :cloudauditlogging, as: 'cloudauditlogging', class: Google::Apis::GkehubV1alpha::CloudAuditLoggingFeatureSpec, decorator: Google::Apis::GkehubV1alpha::CloudAuditLoggingFeatureSpec::Representation
      
          property :multiclusteringress, as: 'multiclusteringress', class: Google::Apis::GkehubV1alpha::MultiClusterIngressFeatureSpec, decorator: Google::Apis::GkehubV1alpha::MultiClusterIngressFeatureSpec::Representation
      
          property :workloadcertificate, as: 'workloadcertificate', class: Google::Apis::GkehubV1alpha::FeatureSpec, decorator: Google::Apis::GkehubV1alpha::FeatureSpec::Representation
      
        end
      end
      
      class CommonFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1alpha::AppDevExperienceFeatureState, decorator: Google::Apis::GkehubV1alpha::AppDevExperienceFeatureState::Representation
      
          property :servicemesh, as: 'servicemesh', class: Google::Apis::GkehubV1alpha::ServiceMeshFeatureState, decorator: Google::Apis::GkehubV1alpha::ServiceMeshFeatureState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1alpha::FeatureState, decorator: Google::Apis::GkehubV1alpha::FeatureState::Representation
      
        end
      end
      
      class ConfigManagementBinauthzConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ConfigManagementBinauthzState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version', class: Google::Apis::GkehubV1alpha::ConfigManagementBinauthzVersion, decorator: Google::Apis::GkehubV1alpha::ConfigManagementBinauthzVersion::Representation
      
          property :webhook, as: 'webhook'
        end
      end
      
      class ConfigManagementBinauthzVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :webhook_version, as: 'webhookVersion'
        end
      end
      
      class ConfigManagementConfigSync
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :git, as: 'git', class: Google::Apis::GkehubV1alpha::ConfigManagementGitConfig, decorator: Google::Apis::GkehubV1alpha::ConfigManagementGitConfig::Representation
      
          property :prevent_drift, as: 'preventDrift'
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
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1alpha::ConfigManagementConfigSyncDeploymentState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementConfigSyncDeploymentState::Representation
      
          property :sync_state, as: 'syncState', class: Google::Apis::GkehubV1alpha::ConfigManagementSyncState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementSyncState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1alpha::ConfigManagementConfigSyncVersion, decorator: Google::Apis::GkehubV1alpha::ConfigManagementConfigSyncVersion::Representation
      
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
          property :resource_gvk, as: 'resourceGvk', class: Google::Apis::GkehubV1alpha::ConfigManagementGroupVersionKind, decorator: Google::Apis::GkehubV1alpha::ConfigManagementGroupVersionKind::Representation
      
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
          property :gatekeeper_mutation, as: 'gatekeeperMutation'
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
          property :state, as: 'state', class: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerDeploymentState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerVersion, decorator: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerVersion::Representation
      
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
          property :binauthz, as: 'binauthz', class: Google::Apis::GkehubV1alpha::ConfigManagementBinauthzConfig, decorator: Google::Apis::GkehubV1alpha::ConfigManagementBinauthzConfig::Representation
      
          property :config_sync, as: 'configSync', class: Google::Apis::GkehubV1alpha::ConfigManagementConfigSync, decorator: Google::Apis::GkehubV1alpha::ConfigManagementConfigSync::Representation
      
          property :hierarchy_controller, as: 'hierarchyController', class: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerConfig, decorator: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerConfig::Representation
      
          property :policy_controller, as: 'policyController', class: Google::Apis::GkehubV1alpha::ConfigManagementPolicyController, decorator: Google::Apis::GkehubV1alpha::ConfigManagementPolicyController::Representation
      
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binauthz_state, as: 'binauthzState', class: Google::Apis::GkehubV1alpha::ConfigManagementBinauthzState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementBinauthzState::Representation
      
          property :cluster_name, as: 'clusterName'
          property :config_sync_state, as: 'configSyncState', class: Google::Apis::GkehubV1alpha::ConfigManagementConfigSyncState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementConfigSyncState::Representation
      
          property :hierarchy_controller_state, as: 'hierarchyControllerState', class: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementHierarchyControllerState::Representation
      
          property :membership_spec, as: 'membershipSpec', class: Google::Apis::GkehubV1alpha::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1alpha::ConfigManagementMembershipSpec::Representation
      
          property :operator_state, as: 'operatorState', class: Google::Apis::GkehubV1alpha::ConfigManagementOperatorState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementOperatorState::Representation
      
          property :policy_controller_state, as: 'policyControllerState', class: Google::Apis::GkehubV1alpha::ConfigManagementPolicyControllerState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementPolicyControllerState::Representation
      
        end
      end
      
      class ConfigManagementOperatorState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1alpha::ConfigManagementInstallError, decorator: Google::Apis::GkehubV1alpha::ConfigManagementInstallError::Representation
      
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
          property :mutation_enabled, as: 'mutationEnabled'
          property :referential_rules_enabled, as: 'referentialRulesEnabled'
          property :template_library_installed, as: 'templateLibraryInstalled'
        end
      end
      
      class ConfigManagementPolicyControllerState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1alpha::ConfigManagementGatekeeperDeploymentState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementGatekeeperDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1alpha::ConfigManagementPolicyControllerVersion, decorator: Google::Apis::GkehubV1alpha::ConfigManagementPolicyControllerVersion::Representation
      
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
          collection :error_resources, as: 'errorResources', class: Google::Apis::GkehubV1alpha::ConfigManagementErrorResource, decorator: Google::Apis::GkehubV1alpha::ConfigManagementErrorResource::Representation
      
        end
      end
      
      class ConfigManagementSyncState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1alpha::ConfigManagementSyncError, decorator: Google::Apis::GkehubV1alpha::ConfigManagementSyncError::Representation
      
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
          property :type, as: 'type', class: Google::Apis::GkehubV1alpha::TypeMeta, decorator: Google::Apis::GkehubV1alpha::TypeMeta::Representation
      
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
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          hash :labels, as: 'labels'
          hash :membership_specs, as: 'membershipSpecs', class: Google::Apis::GkehubV1alpha::MembershipFeatureSpec, decorator: Google::Apis::GkehubV1alpha::MembershipFeatureSpec::Representation
      
          hash :membership_states, as: 'membershipStates', class: Google::Apis::GkehubV1alpha::MembershipFeatureState, decorator: Google::Apis::GkehubV1alpha::MembershipFeatureState::Representation
      
          property :name, as: 'name'
          property :resource_state, as: 'resourceState', class: Google::Apis::GkehubV1alpha::FeatureResourceState, decorator: Google::Apis::GkehubV1alpha::FeatureResourceState::Representation
      
          property :spec, as: 'spec', class: Google::Apis::GkehubV1alpha::CommonFeatureSpec, decorator: Google::Apis::GkehubV1alpha::CommonFeatureSpec::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1alpha::CommonFeatureState, decorator: Google::Apis::GkehubV1alpha::CommonFeatureState::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class FeatureResourceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class FeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_config, as: 'defaultConfig', class: Google::Apis::GkehubV1alpha::MembershipSpec, decorator: Google::Apis::GkehubV1alpha::MembershipSpec::Representation
      
          property :provision_google_ca, as: 'provisionGoogleCa'
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
      
      class Fleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :fleet_name, as: 'fleetName'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GenerateConnectManifestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifest, as: 'manifest', class: Google::Apis::GkehubV1alpha::ConnectAgentResource, decorator: Google::Apis::GkehubV1alpha::ConnectAgentResource::Representation
      
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
      
      class IdentityServiceAuthMethod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :oidc_config, as: 'oidcConfig', class: Google::Apis::GkehubV1alpha::IdentityServiceOidcConfig, decorator: Google::Apis::GkehubV1alpha::IdentityServiceOidcConfig::Representation
      
          property :proxy, as: 'proxy'
        end
      end
      
      class IdentityServiceMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_methods, as: 'authMethods', class: Google::Apis::GkehubV1alpha::IdentityServiceAuthMethod, decorator: Google::Apis::GkehubV1alpha::IdentityServiceAuthMethod::Representation
      
        end
      end
      
      class IdentityServiceMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason'
          property :installed_version, as: 'installedVersion'
          property :member_config, as: 'memberConfig', class: Google::Apis::GkehubV1alpha::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1alpha::IdentityServiceMembershipSpec::Representation
      
          property :state, as: 'state'
        end
      end
      
      class IdentityServiceOidcConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_authority_data, as: 'certificateAuthorityData'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :deploy_cloud_console_proxy, as: 'deployCloudConsoleProxy'
          property :encrypted_client_secret, :base64 => true, as: 'encryptedClientSecret'
          property :extra_params, as: 'extraParams'
          property :group_prefix, as: 'groupPrefix'
          property :groups_claim, as: 'groupsClaim'
          property :issuer_uri, as: 'issuerUri'
          property :kubectl_redirect_uri, as: 'kubectlRedirectUri'
          property :scopes, as: 'scopes'
          property :user_claim, as: 'userClaim'
          property :user_prefix, as: 'userPrefix'
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
          collection :connect_resources, as: 'connectResources', class: Google::Apis::GkehubV1alpha::ResourceManifest, decorator: Google::Apis::GkehubV1alpha::ResourceManifest::Representation
      
          property :membership_cr_manifest, as: 'membershipCrManifest'
          collection :membership_resources, as: 'membershipResources', class: Google::Apis::GkehubV1alpha::ResourceManifest, decorator: Google::Apis::GkehubV1alpha::ResourceManifest::Representation
      
          property :resource_options, as: 'resourceOptions', class: Google::Apis::GkehubV1alpha::ResourceOptions, decorator: Google::Apis::GkehubV1alpha::ResourceOptions::Representation
      
        end
      end
      
      class ListAdminClusterMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admin_cluster_memberships, as: 'adminClusterMemberships', class: Google::Apis::GkehubV1alpha::Membership, decorator: Google::Apis::GkehubV1alpha::Membership::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1alpha::Feature, decorator: Google::Apis::GkehubV1alpha::Feature::Representation
      
        end
      end
      
      class ListFleetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fleets, as: 'fleets', class: Google::Apis::GkehubV1alpha::Fleet, decorator: Google::Apis::GkehubV1alpha::Fleet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkehubV1alpha::Location, decorator: Google::Apis::GkehubV1alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1alpha::Membership, decorator: Google::Apis::GkehubV1alpha::Membership::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkehubV1alpha::Operation, decorator: Google::Apis::GkehubV1alpha::Operation::Representation
      
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
          property :authority, as: 'authority', class: Google::Apis::GkehubV1alpha::Authority, decorator: Google::Apis::GkehubV1alpha::Authority::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint', class: Google::Apis::GkehubV1alpha::MembershipEndpoint, decorator: Google::Apis::GkehubV1alpha::MembershipEndpoint::Representation
      
          property :external_id, as: 'externalId'
          hash :labels, as: 'labels'
          property :last_connection_time, as: 'lastConnectionTime'
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::GkehubV1alpha::MembershipState, decorator: Google::Apis::GkehubV1alpha::MembershipState::Representation
      
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edge_cluster, as: 'edgeCluster', class: Google::Apis::GkehubV1alpha::EdgeCluster, decorator: Google::Apis::GkehubV1alpha::EdgeCluster::Representation
      
          property :gke_cluster, as: 'gkeCluster', class: Google::Apis::GkehubV1alpha::GkeCluster, decorator: Google::Apis::GkehubV1alpha::GkeCluster::Representation
      
          property :kubernetes_metadata, as: 'kubernetesMetadata', class: Google::Apis::GkehubV1alpha::KubernetesMetadata, decorator: Google::Apis::GkehubV1alpha::KubernetesMetadata::Representation
      
          property :kubernetes_resource, as: 'kubernetesResource', class: Google::Apis::GkehubV1alpha::KubernetesResource, decorator: Google::Apis::GkehubV1alpha::KubernetesResource::Representation
      
          property :multi_cloud_cluster, as: 'multiCloudCluster', class: Google::Apis::GkehubV1alpha::MultiCloudCluster, decorator: Google::Apis::GkehubV1alpha::MultiCloudCluster::Representation
      
          property :on_prem_cluster, as: 'onPremCluster', class: Google::Apis::GkehubV1alpha::OnPremCluster, decorator: Google::Apis::GkehubV1alpha::OnPremCluster::Representation
      
        end
      end
      
      class MembershipFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anthosobservability, as: 'anthosobservability', class: Google::Apis::GkehubV1alpha::AnthosObservabilityMembershipSpec, decorator: Google::Apis::GkehubV1alpha::AnthosObservabilityMembershipSpec::Representation
      
          property :cloudbuild, as: 'cloudbuild', class: Google::Apis::GkehubV1alpha::CloudBuildMembershipSpec, decorator: Google::Apis::GkehubV1alpha::CloudBuildMembershipSpec::Representation
      
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1alpha::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1alpha::ConfigManagementMembershipSpec::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1alpha::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1alpha::IdentityServiceMembershipSpec::Representation
      
          property :mesh, as: 'mesh', class: Google::Apis::GkehubV1alpha::ServiceMeshMembershipSpec, decorator: Google::Apis::GkehubV1alpha::ServiceMeshMembershipSpec::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1alpha::PolicyControllerMembershipSpec, decorator: Google::Apis::GkehubV1alpha::PolicyControllerMembershipSpec::Representation
      
          property :workloadcertificate, as: 'workloadcertificate', class: Google::Apis::GkehubV1alpha::MembershipSpec, decorator: Google::Apis::GkehubV1alpha::MembershipSpec::Representation
      
        end
      end
      
      class MembershipFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1alpha::AppDevExperienceFeatureState, decorator: Google::Apis::GkehubV1alpha::AppDevExperienceFeatureState::Representation
      
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1alpha::ConfigManagementMembershipState, decorator: Google::Apis::GkehubV1alpha::ConfigManagementMembershipState::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1alpha::IdentityServiceMembershipState, decorator: Google::Apis::GkehubV1alpha::IdentityServiceMembershipState::Representation
      
          property :metering, as: 'metering', class: Google::Apis::GkehubV1alpha::MeteringMembershipState, decorator: Google::Apis::GkehubV1alpha::MeteringMembershipState::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1alpha::PolicyControllerMembershipState, decorator: Google::Apis::GkehubV1alpha::PolicyControllerMembershipState::Representation
      
          property :servicemesh, as: 'servicemesh', class: Google::Apis::GkehubV1alpha::ServiceMeshMembershipState, decorator: Google::Apis::GkehubV1alpha::ServiceMeshMembershipState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1alpha::FeatureState, decorator: Google::Apis::GkehubV1alpha::FeatureState::Representation
      
        end
      end
      
      class MembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_management, as: 'certificateManagement'
        end
      end
      
      class MembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class MeteringMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_measurement_time, as: 'lastMeasurementTime'
          property :precise_last_measured_cluster_vcpu_capacity, as: 'preciseLastMeasuredClusterVcpuCapacity'
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
          property :billing, as: 'billing'
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
          property :error, as: 'error', class: Google::Apis::GkehubV1alpha::GoogleRpcStatus, decorator: Google::Apis::GkehubV1alpha::GoogleRpcStatus::Representation
      
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GkehubV1alpha::AuditConfig, decorator: Google::Apis::GkehubV1alpha::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GkehubV1alpha::Binding, decorator: Google::Apis::GkehubV1alpha::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerHubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_interval_seconds, :numeric_string => true, as: 'auditIntervalSeconds'
          collection :exemptable_namespaces, as: 'exemptableNamespaces'
          property :install_spec, as: 'installSpec'
          property :log_denies_enabled, as: 'logDeniesEnabled'
          property :mutation_enabled, as: 'mutationEnabled'
          property :referential_rules_enabled, as: 'referentialRulesEnabled'
          property :template_library_config, as: 'templateLibraryConfig', class: Google::Apis::GkehubV1alpha::PolicyControllerTemplateLibraryConfig, decorator: Google::Apis::GkehubV1alpha::PolicyControllerTemplateLibraryConfig::Representation
      
        end
      end
      
      class PolicyControllerHubState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :deployment_states, as: 'deploymentStates'
          property :version, as: 'version', class: Google::Apis::GkehubV1alpha::PolicyControllerHubVersion, decorator: Google::Apis::GkehubV1alpha::PolicyControllerHubVersion::Representation
      
        end
      end
      
      class PolicyControllerHubVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_controller_hub_config, as: 'policyControllerHubConfig', class: Google::Apis::GkehubV1alpha::PolicyControllerHubConfig, decorator: Google::Apis::GkehubV1alpha::PolicyControllerHubConfig::Representation
      
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :membership_spec, as: 'membershipSpec', class: Google::Apis::GkehubV1alpha::PolicyControllerMembershipSpec, decorator: Google::Apis::GkehubV1alpha::PolicyControllerMembershipSpec::Representation
      
          property :policy_controller_hub_state, as: 'policyControllerHubState', class: Google::Apis::GkehubV1alpha::PolicyControllerHubState, decorator: Google::Apis::GkehubV1alpha::PolicyControllerHubState::Representation
      
          property :state, as: 'state'
        end
      end
      
      class PolicyControllerTemplateLibraryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :included, as: 'included'
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
      
      class ServiceMeshAnalysisMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :description, as: 'description'
          property :message_base, as: 'messageBase', class: Google::Apis::GkehubV1alpha::ServiceMeshAnalysisMessageBase, decorator: Google::Apis::GkehubV1alpha::ServiceMeshAnalysisMessageBase::Representation
      
          collection :resource_paths, as: 'resourcePaths'
        end
      end
      
      class ServiceMeshAnalysisMessageBase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :documentation_url, as: 'documentationUrl'
          property :level, as: 'level'
          property :type, as: 'type', class: Google::Apis::GkehubV1alpha::ServiceMeshType, decorator: Google::Apis::GkehubV1alpha::ServiceMeshType::Representation
      
        end
      end
      
      class ServiceMeshControlPlaneManagement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::GkehubV1alpha::ServiceMeshStatusDetails, decorator: Google::Apis::GkehubV1alpha::ServiceMeshStatusDetails::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ServiceMeshFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analysis_messages, as: 'analysisMessages', class: Google::Apis::GkehubV1alpha::ServiceMeshAnalysisMessage, decorator: Google::Apis::GkehubV1alpha::ServiceMeshAnalysisMessage::Representation
      
        end
      end
      
      class ServiceMeshMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane, as: 'controlPlane'
          property :default_channel, as: 'defaultChannel'
        end
      end
      
      class ServiceMeshMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analysis_messages, as: 'analysisMessages', class: Google::Apis::GkehubV1alpha::ServiceMeshAnalysisMessage, decorator: Google::Apis::GkehubV1alpha::ServiceMeshAnalysisMessage::Representation
      
          property :config_api_version, as: 'configApiVersion'
          property :control_plane_management, as: 'controlPlaneManagement', class: Google::Apis::GkehubV1alpha::ServiceMeshControlPlaneManagement, decorator: Google::Apis::GkehubV1alpha::ServiceMeshControlPlaneManagement::Representation
      
        end
      end
      
      class ServiceMeshStatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :details, as: 'details'
        end
      end
      
      class ServiceMeshType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :display_name, as: 'displayName'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkehubV1alpha::Policy, decorator: Google::Apis::GkehubV1alpha::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
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
