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
    module GkehubV1beta
      
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
      
      class ListFeaturesResponse
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
      
      class Location
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
      
      class MeteringMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiClusterIngressFeatureSpec
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
      
      class PolicyControllerMembershipSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerMembershipState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerPolicyControllerHubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerPolicyControllerHubState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerPolicyControllerHubVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyControllerTemplateLibraryConfig
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
      
      class AnthosObservabilityMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :do_not_optimize_metrics, as: 'doNotOptimizeMetrics'
          property :enable_stackdriver_on_applications, as: 'enableStackdriverOnApplications'
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
          property :networking_install_succeeded, as: 'networkingInstallSucceeded', class: Google::Apis::GkehubV1beta::Status, decorator: Google::Apis::GkehubV1beta::Status::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GkehubV1beta::AuditLogConfig, decorator: Google::Apis::GkehubV1beta::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::GkehubV1beta::Expr, decorator: Google::Apis::GkehubV1beta::Expr::Representation
      
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
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1beta::AppDevExperienceFeatureSpec, decorator: Google::Apis::GkehubV1beta::AppDevExperienceFeatureSpec::Representation
      
          property :multiclusteringress, as: 'multiclusteringress', class: Google::Apis::GkehubV1beta::MultiClusterIngressFeatureSpec, decorator: Google::Apis::GkehubV1beta::MultiClusterIngressFeatureSpec::Representation
      
        end
      end
      
      class CommonFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState, decorator: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FeatureState, decorator: Google::Apis::GkehubV1beta::FeatureState::Representation
      
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
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementBinauthzVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementBinauthzVersion::Representation
      
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
          property :git, as: 'git', class: Google::Apis::GkehubV1beta::ConfigManagementGitConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementGitConfig::Representation
      
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
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncDeploymentState, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncDeploymentState::Representation
      
          property :sync_state, as: 'syncState', class: Google::Apis::GkehubV1beta::ConfigManagementSyncState, decorator: Google::Apis::GkehubV1beta::ConfigManagementSyncState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncVersion::Representation
      
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
          property :resource_gvk, as: 'resourceGvk', class: Google::Apis::GkehubV1beta::ConfigManagementGroupVersionKind, decorator: Google::Apis::GkehubV1beta::ConfigManagementGroupVersionKind::Representation
      
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
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerDeploymentState, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerVersion::Representation
      
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
          property :binauthz, as: 'binauthz', class: Google::Apis::GkehubV1beta::ConfigManagementBinauthzConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementBinauthzConfig::Representation
      
          property :config_sync, as: 'configSync', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSync, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSync::Representation
      
          property :hierarchy_controller, as: 'hierarchyController', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerConfig, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerConfig::Representation
      
          property :policy_controller, as: 'policyController', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyController, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyController::Representation
      
          property :version, as: 'version'
        end
      end
      
      class ConfigManagementMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binauthz_state, as: 'binauthzState', class: Google::Apis::GkehubV1beta::ConfigManagementBinauthzState, decorator: Google::Apis::GkehubV1beta::ConfigManagementBinauthzState::Representation
      
          property :cluster_name, as: 'clusterName'
          property :config_sync_state, as: 'configSyncState', class: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncState, decorator: Google::Apis::GkehubV1beta::ConfigManagementConfigSyncState::Representation
      
          property :hierarchy_controller_state, as: 'hierarchyControllerState', class: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerState, decorator: Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerState::Representation
      
          property :membership_spec, as: 'membershipSpec', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec::Representation
      
          property :operator_state, as: 'operatorState', class: Google::Apis::GkehubV1beta::ConfigManagementOperatorState, decorator: Google::Apis::GkehubV1beta::ConfigManagementOperatorState::Representation
      
          property :policy_controller_state, as: 'policyControllerState', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerState, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerState::Representation
      
        end
      end
      
      class ConfigManagementOperatorState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_state, as: 'deploymentState'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1beta::ConfigManagementInstallError, decorator: Google::Apis::GkehubV1beta::ConfigManagementInstallError::Representation
      
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
          property :deployment_state, as: 'deploymentState', class: Google::Apis::GkehubV1beta::ConfigManagementGatekeeperDeploymentState, decorator: Google::Apis::GkehubV1beta::ConfigManagementGatekeeperDeploymentState::Representation
      
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerVersion, decorator: Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerVersion::Representation
      
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
          collection :error_resources, as: 'errorResources', class: Google::Apis::GkehubV1beta::ConfigManagementErrorResource, decorator: Google::Apis::GkehubV1beta::ConfigManagementErrorResource::Representation
      
        end
      end
      
      class ConfigManagementSyncState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::GkehubV1beta::ConfigManagementSyncError, decorator: Google::Apis::GkehubV1beta::ConfigManagementSyncError::Representation
      
          property :import_token, as: 'importToken'
          property :last_sync, as: 'lastSync'
          property :last_sync_time, as: 'lastSyncTime'
          property :source_token, as: 'sourceToken'
          property :sync_token, as: 'syncToken'
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
          hash :membership_specs, as: 'membershipSpecs', class: Google::Apis::GkehubV1beta::MembershipFeatureSpec, decorator: Google::Apis::GkehubV1beta::MembershipFeatureSpec::Representation
      
          hash :membership_states, as: 'membershipStates', class: Google::Apis::GkehubV1beta::MembershipFeatureState, decorator: Google::Apis::GkehubV1beta::MembershipFeatureState::Representation
      
          property :name, as: 'name'
          property :resource_state, as: 'resourceState', class: Google::Apis::GkehubV1beta::FeatureResourceState, decorator: Google::Apis::GkehubV1beta::FeatureResourceState::Representation
      
          property :spec, as: 'spec', class: Google::Apis::GkehubV1beta::CommonFeatureSpec, decorator: Google::Apis::GkehubV1beta::CommonFeatureSpec::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::CommonFeatureState, decorator: Google::Apis::GkehubV1beta::CommonFeatureState::Representation
      
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
          property :oidc_config, as: 'oidcConfig', class: Google::Apis::GkehubV1beta::IdentityServiceOidcConfig, decorator: Google::Apis::GkehubV1beta::IdentityServiceOidcConfig::Representation
      
          property :proxy, as: 'proxy'
        end
      end
      
      class IdentityServiceMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_methods, as: 'authMethods', class: Google::Apis::GkehubV1beta::IdentityServiceAuthMethod, decorator: Google::Apis::GkehubV1beta::IdentityServiceAuthMethod::Representation
      
        end
      end
      
      class IdentityServiceMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason'
          property :installed_version, as: 'installedVersion'
          property :member_config, as: 'memberConfig', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec::Representation
      
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
      
      class ListFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::GkehubV1beta::Feature, decorator: Google::Apis::GkehubV1beta::Feature::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkehubV1beta::Location, decorator: Google::Apis::GkehubV1beta::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkehubV1beta::Operation, decorator: Google::Apis::GkehubV1beta::Operation::Representation
      
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
      
      class MembershipFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anthosobservability, as: 'anthosobservability', class: Google::Apis::GkehubV1beta::AnthosObservabilityMembershipSpec, decorator: Google::Apis::GkehubV1beta::AnthosObservabilityMembershipSpec::Representation
      
          property :cloudbuild, as: 'cloudbuild', class: Google::Apis::GkehubV1beta::MembershipSpec, decorator: Google::Apis::GkehubV1beta::MembershipSpec::Representation
      
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec, decorator: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec::Representation
      
        end
      end
      
      class MembershipFeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appdevexperience, as: 'appdevexperience', class: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState, decorator: Google::Apis::GkehubV1beta::AppDevExperienceFeatureState::Representation
      
          property :configmanagement, as: 'configmanagement', class: Google::Apis::GkehubV1beta::ConfigManagementMembershipState, decorator: Google::Apis::GkehubV1beta::ConfigManagementMembershipState::Representation
      
          property :identityservice, as: 'identityservice', class: Google::Apis::GkehubV1beta::IdentityServiceMembershipState, decorator: Google::Apis::GkehubV1beta::IdentityServiceMembershipState::Representation
      
          property :metering, as: 'metering', class: Google::Apis::GkehubV1beta::MeteringMembershipState, decorator: Google::Apis::GkehubV1beta::MeteringMembershipState::Representation
      
          property :policycontroller, as: 'policycontroller', class: Google::Apis::GkehubV1beta::PolicyControllerMembershipState, decorator: Google::Apis::GkehubV1beta::PolicyControllerMembershipState::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV1beta::FeatureState, decorator: Google::Apis::GkehubV1beta::FeatureState::Representation
      
        end
      end
      
      class MembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_policy, as: 'securityPolicy'
          property :version, as: 'version'
        end
      end
      
      class MeteringMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_measurement_time, as: 'lastMeasurementTime'
          property :precise_last_measured_cluster_vcpu_capacity, as: 'preciseLastMeasuredClusterVcpuCapacity'
        end
      end
      
      class MultiClusterIngressFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing, as: 'billing'
          property :config_membership, as: 'configMembership'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkehubV1beta::GoogleRpcStatus, decorator: Google::Apis::GkehubV1beta::GoogleRpcStatus::Representation
      
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GkehubV1beta::AuditConfig, decorator: Google::Apis::GkehubV1beta::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GkehubV1beta::Binding, decorator: Google::Apis::GkehubV1beta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerMembershipSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_controller_hub_config, as: 'policyControllerHubConfig', class: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerHubConfig, decorator: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerHubConfig::Representation
      
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerMembershipState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :membership_spec, as: 'membershipSpec', class: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec, decorator: Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec::Representation
      
          property :policy_controller_hub_state, as: 'policyControllerHubState', class: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerHubState, decorator: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerHubState::Representation
      
          property :state, as: 'state'
        end
      end
      
      class PolicyControllerPolicyControllerHubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_interval_seconds, :numeric_string => true, as: 'auditIntervalSeconds'
          collection :exemptable_namespaces, as: 'exemptableNamespaces'
          property :install_spec, as: 'installSpec'
          property :log_denies_enabled, as: 'logDeniesEnabled'
          property :referential_rules_enabled, as: 'referentialRulesEnabled'
          property :template_library_config, as: 'templateLibraryConfig', class: Google::Apis::GkehubV1beta::PolicyControllerTemplateLibraryConfig, decorator: Google::Apis::GkehubV1beta::PolicyControllerTemplateLibraryConfig::Representation
      
        end
      end
      
      class PolicyControllerPolicyControllerHubState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :deployment_states, as: 'deploymentStates'
          property :version, as: 'version', class: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerHubVersion, decorator: Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerHubVersion::Representation
      
        end
      end
      
      class PolicyControllerPolicyControllerHubVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class PolicyControllerTemplateLibraryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :included, as: 'included'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkehubV1beta::Policy, decorator: Google::Apis::GkehubV1beta::Policy::Representation
      
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
    end
  end
end
