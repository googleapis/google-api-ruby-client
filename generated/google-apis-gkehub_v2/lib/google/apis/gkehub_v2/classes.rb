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
    module GkehubV2
      
      # State for App Dev Exp Feature.
      class AppDevExperienceState
        include Google::Apis::Core::Hashable
      
        # Status specifies state for the subcomponent.
        # Corresponds to the JSON property `networkingInstallSucceeded`
        # @return [Google::Apis::GkehubV2::AppDevExperienceStatus]
        attr_accessor :networking_install_succeeded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @networking_install_succeeded = args[:networking_install_succeeded] if args.key?(:networking_install_succeeded)
        end
      end
      
      # Status specifies state for the subcomponent.
      class AppDevExperienceStatus
        include Google::Apis::Core::Hashable
      
        # Code specifies AppDevExperienceFeature's subcomponent ready state.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Description is populated if Code is Failed, explaining why it has failed.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # **Cloud Build**: Configurations for each Cloud Build enabled cluster.
      class CloudBuildSpec
        include Google::Apis::Core::Hashable
      
        # Whether it is allowed to run the privileged builds on the cluster or not.
        # Corresponds to the JSON property `securityPolicy`
        # @return [String]
        attr_accessor :security_policy
      
        # Version of the cloud build software on the cluster.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
      class ClusterUpgradeGkeUpgrade
        include Google::Apis::Core::Hashable
      
        # Name of the upgrade, e.g., "k8s_control_plane".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Version of the upgrade, e.g., "1.22.1-gke.100".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # IgnoredMembership represents a membership ignored by the feature. A membership
      # can be ignored because it was manually upgraded to a newer version than RC
      # default.
      class ClusterUpgradeIgnoredMembership
        include Google::Apis::Core::Hashable
      
        # Time when the membership was first set to ignored.
        # Corresponds to the JSON property `ignoredTime`
        # @return [String]
        attr_accessor :ignored_time
      
        # Reason why the membership is ignored.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignored_time = args[:ignored_time] if args.key?(:ignored_time)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # MembershipGKEUpgradeState is a GKEUpgrade and its state per-membership.
      class ClusterUpgradeMembershipGkeUpgradeState
        include Google::Apis::Core::Hashable
      
        # UpgradeStatus provides status information for each upgrade.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkehubV2::ClusterUpgradeUpgradeStatus]
        attr_accessor :status
      
        # GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::GkehubV2::ClusterUpgradeGkeUpgrade]
        attr_accessor :upgrade
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
        end
      end
      
      # Per-membership state for this feature.
      class ClusterUpgradeState
        include Google::Apis::Core::Hashable
      
        # IgnoredMembership represents a membership ignored by the feature. A membership
        # can be ignored because it was manually upgraded to a newer version than RC
        # default.
        # Corresponds to the JSON property `ignored`
        # @return [Google::Apis::GkehubV2::ClusterUpgradeIgnoredMembership]
        attr_accessor :ignored
      
        # Actual upgrade state against desired.
        # Corresponds to the JSON property `upgrades`
        # @return [Array<Google::Apis::GkehubV2::ClusterUpgradeMembershipGkeUpgradeState>]
        attr_accessor :upgrades
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignored = args[:ignored] if args.key?(:ignored)
          @upgrades = args[:upgrades] if args.key?(:upgrades)
        end
      end
      
      # UpgradeStatus provides status information for each upgrade.
      class ClusterUpgradeUpgradeStatus
        include Google::Apis::Core::Hashable
      
        # Status code of the upgrade.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Reason for this status.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Last timestamp the status was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @reason = args[:reason] if args.key?(:reason)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for Binauthz.
      class ConfigManagementBinauthzConfig
        include Google::Apis::Core::Hashable
      
        # Whether binauthz is enabled in this cluster.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # State for Binauthz.
      class ConfigManagementBinauthzState
        include Google::Apis::Core::Hashable
      
        # The version of binauthz.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV2::ConfigManagementBinauthzVersion]
        attr_accessor :version
      
        # The state of the binauthz webhook.
        # Corresponds to the JSON property `webhook`
        # @return [String]
        attr_accessor :webhook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
          @webhook = args[:webhook] if args.key?(:webhook)
        end
      end
      
      # The version of binauthz.
      class ConfigManagementBinauthzVersion
        include Google::Apis::Core::Hashable
      
        # The version of the binauthz webhook.
        # Corresponds to the JSON property `webhookVersion`
        # @return [String]
        attr_accessor :webhook_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_version = args[:webhook_version] if args.key?(:webhook_version)
        end
      end
      
      # Configuration for Config Sync
      class ConfigManagementConfigSync
        include Google::Apis::Core::Hashable
      
        # Optional. Configuration for deployment overrides.
        # Corresponds to the JSON property `deploymentOverrides`
        # @return [Array<Google::Apis::GkehubV2::ConfigManagementDeploymentOverride>]
        attr_accessor :deployment_overrides
      
        # Optional. Enables the installation of ConfigSync. If set to true, ConfigSync
        # resources will be created and the other ConfigSync fields will be applied if
        # exist. If set to false, all other ConfigSync fields will be ignored,
        # ConfigSync resources will be deleted. If omitted, ConfigSync resources will be
        # managed depends on the presence of the git or oci field.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Git repo configuration for a single cluster.
        # Corresponds to the JSON property `git`
        # @return [Google::Apis::GkehubV2::ConfigManagementGitConfig]
        attr_accessor :git
      
        # Optional. The Email of the Google Cloud Service Account (GSA) used for
        # exporting Config Sync metrics to Cloud Monitoring and Cloud Monarch when
        # Workload Identity is enabled. The GSA should have the Monitoring Metric Writer
        # (roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `
        # default` in the namespace `config-management-monitoring` should be bound to
        # the GSA. Deprecated: If Workload Identity Federation for GKE is enabled,
        # Google Cloud Service Account is no longer needed for exporting Config Sync
        # metrics: https://cloud.google.com/kubernetes-engine/enterprise/config-sync/
        # docs/how-to/monitor-config-sync-cloud-monitoring#custom-monitoring.
        # Corresponds to the JSON property `metricsGcpServiceAccountEmail`
        # @return [String]
        attr_accessor :metrics_gcp_service_account_email
      
        # OCI repo configuration for a single cluster.
        # Corresponds to the JSON property `oci`
        # @return [Google::Apis::GkehubV2::ConfigManagementOciConfig]
        attr_accessor :oci
      
        # Optional. Set to true to enable the Config Sync admission webhook to prevent
        # drifts. If set to `false`, disables the Config Sync admission webhook and does
        # not prevent drifts.
        # Corresponds to the JSON property `preventDrift`
        # @return [Boolean]
        attr_accessor :prevent_drift
        alias_method :prevent_drift?, :prevent_drift
      
        # Optional. Specifies whether the Config Sync Repo is in "hierarchical" or "
        # unstructured" mode.
        # Corresponds to the JSON property `sourceFormat`
        # @return [String]
        attr_accessor :source_format
      
        # Optional. Set to true to stop syncing configs for a single cluster. Default to
        # false.
        # Corresponds to the JSON property `stopSyncing`
        # @return [Boolean]
        attr_accessor :stop_syncing
        alias_method :stop_syncing?, :stop_syncing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_overrides = args[:deployment_overrides] if args.key?(:deployment_overrides)
          @enabled = args[:enabled] if args.key?(:enabled)
          @git = args[:git] if args.key?(:git)
          @metrics_gcp_service_account_email = args[:metrics_gcp_service_account_email] if args.key?(:metrics_gcp_service_account_email)
          @oci = args[:oci] if args.key?(:oci)
          @prevent_drift = args[:prevent_drift] if args.key?(:prevent_drift)
          @source_format = args[:source_format] if args.key?(:source_format)
          @stop_syncing = args[:stop_syncing] if args.key?(:stop_syncing)
        end
      end
      
      # The state of ConfigSync's deployment on a cluster.
      class ConfigManagementConfigSyncDeploymentState
        include Google::Apis::Core::Hashable
      
        # Deployment state of admission-webhook.
        # Corresponds to the JSON property `admissionWebhook`
        # @return [String]
        attr_accessor :admission_webhook
      
        # Deployment state of the git-sync pod.
        # Corresponds to the JSON property `gitSync`
        # @return [String]
        attr_accessor :git_sync
      
        # Deployment state of the importer pod.
        # Corresponds to the JSON property `importer`
        # @return [String]
        attr_accessor :importer
      
        # Deployment state of the monitor pod.
        # Corresponds to the JSON property `monitor`
        # @return [String]
        attr_accessor :monitor
      
        # Deployment state of otel-collector
        # Corresponds to the JSON property `otelCollector`
        # @return [String]
        attr_accessor :otel_collector
      
        # Deployment state of reconciler-manager pod.
        # Corresponds to the JSON property `reconcilerManager`
        # @return [String]
        attr_accessor :reconciler_manager
      
        # Deployment state of resource-group-controller-manager
        # Corresponds to the JSON property `resourceGroupControllerManager`
        # @return [String]
        attr_accessor :resource_group_controller_manager
      
        # Deployment state of root-reconciler.
        # Corresponds to the JSON property `rootReconciler`
        # @return [String]
        attr_accessor :root_reconciler
      
        # Deployment state of the syncer pod.
        # Corresponds to the JSON property `syncer`
        # @return [String]
        attr_accessor :syncer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admission_webhook = args[:admission_webhook] if args.key?(:admission_webhook)
          @git_sync = args[:git_sync] if args.key?(:git_sync)
          @importer = args[:importer] if args.key?(:importer)
          @monitor = args[:monitor] if args.key?(:monitor)
          @otel_collector = args[:otel_collector] if args.key?(:otel_collector)
          @reconciler_manager = args[:reconciler_manager] if args.key?(:reconciler_manager)
          @resource_group_controller_manager = args[:resource_group_controller_manager] if args.key?(:resource_group_controller_manager)
          @root_reconciler = args[:root_reconciler] if args.key?(:root_reconciler)
          @syncer = args[:syncer] if args.key?(:syncer)
        end
      end
      
      # Errors pertaining to the installation of Config Sync
      class ConfigManagementConfigSyncError
        include Google::Apis::Core::Hashable
      
        # A string representing the user facing error message
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # State information for ConfigSync.
      class ConfigManagementConfigSyncState
        include Google::Apis::Core::Hashable
      
        # Output only. Whether syncing resources to the cluster is stopped at the
        # cluster level.
        # Corresponds to the JSON property `clusterLevelStopSyncingState`
        # @return [String]
        attr_accessor :cluster_level_stop_syncing_state
      
        # Output only. The number of RootSync and RepoSync CRs in the cluster.
        # Corresponds to the JSON property `crCount`
        # @return [Fixnum]
        attr_accessor :cr_count
      
        # The state of ConfigSync's deployment on a cluster.
        # Corresponds to the JSON property `deploymentState`
        # @return [Google::Apis::GkehubV2::ConfigManagementConfigSyncDeploymentState]
        attr_accessor :deployment_state
      
        # Output only. Errors pertaining to the installation of Config Sync.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV2::ConfigManagementConfigSyncError>]
        attr_accessor :errors
      
        # Output only. The state of the Reposync CRD
        # Corresponds to the JSON property `reposyncCrd`
        # @return [String]
        attr_accessor :reposync_crd
      
        # Output only. The state of the RootSync CRD
        # Corresponds to the JSON property `rootsyncCrd`
        # @return [String]
        attr_accessor :rootsync_crd
      
        # Output only. The state of CS This field summarizes the other fields in this
        # message.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # State indicating an ACM's progress syncing configurations to a cluster.
        # Corresponds to the JSON property `syncState`
        # @return [Google::Apis::GkehubV2::ConfigManagementSyncState]
        attr_accessor :sync_state
      
        # Specific versioning information pertaining to ConfigSync's Pods.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV2::ConfigManagementConfigSyncVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_level_stop_syncing_state = args[:cluster_level_stop_syncing_state] if args.key?(:cluster_level_stop_syncing_state)
          @cr_count = args[:cr_count] if args.key?(:cr_count)
          @deployment_state = args[:deployment_state] if args.key?(:deployment_state)
          @errors = args[:errors] if args.key?(:errors)
          @reposync_crd = args[:reposync_crd] if args.key?(:reposync_crd)
          @rootsync_crd = args[:rootsync_crd] if args.key?(:rootsync_crd)
          @state = args[:state] if args.key?(:state)
          @sync_state = args[:sync_state] if args.key?(:sync_state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Specific versioning information pertaining to ConfigSync's Pods.
      class ConfigManagementConfigSyncVersion
        include Google::Apis::Core::Hashable
      
        # Version of the deployed admission-webhook pod.
        # Corresponds to the JSON property `admissionWebhook`
        # @return [String]
        attr_accessor :admission_webhook
      
        # Version of the deployed git-sync pod.
        # Corresponds to the JSON property `gitSync`
        # @return [String]
        attr_accessor :git_sync
      
        # Version of the deployed importer pod.
        # Corresponds to the JSON property `importer`
        # @return [String]
        attr_accessor :importer
      
        # Version of the deployed monitor pod.
        # Corresponds to the JSON property `monitor`
        # @return [String]
        attr_accessor :monitor
      
        # Version of the deployed otel-collector pod
        # Corresponds to the JSON property `otelCollector`
        # @return [String]
        attr_accessor :otel_collector
      
        # Version of the deployed reconciler-manager pod.
        # Corresponds to the JSON property `reconcilerManager`
        # @return [String]
        attr_accessor :reconciler_manager
      
        # Version of the deployed resource-group-controller-manager pod
        # Corresponds to the JSON property `resourceGroupControllerManager`
        # @return [String]
        attr_accessor :resource_group_controller_manager
      
        # Version of the deployed reconciler container in root-reconciler pod.
        # Corresponds to the JSON property `rootReconciler`
        # @return [String]
        attr_accessor :root_reconciler
      
        # Version of the deployed syncer pod.
        # Corresponds to the JSON property `syncer`
        # @return [String]
        attr_accessor :syncer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admission_webhook = args[:admission_webhook] if args.key?(:admission_webhook)
          @git_sync = args[:git_sync] if args.key?(:git_sync)
          @importer = args[:importer] if args.key?(:importer)
          @monitor = args[:monitor] if args.key?(:monitor)
          @otel_collector = args[:otel_collector] if args.key?(:otel_collector)
          @reconciler_manager = args[:reconciler_manager] if args.key?(:reconciler_manager)
          @resource_group_controller_manager = args[:resource_group_controller_manager] if args.key?(:resource_group_controller_manager)
          @root_reconciler = args[:root_reconciler] if args.key?(:root_reconciler)
          @syncer = args[:syncer] if args.key?(:syncer)
        end
      end
      
      # Configuration for a container override.
      class ConfigManagementContainerOverride
        include Google::Apis::Core::Hashable
      
        # Required. The name of the container.
        # Corresponds to the JSON property `containerName`
        # @return [String]
        attr_accessor :container_name
      
        # Optional. The cpu limit of the container.
        # Corresponds to the JSON property `cpuLimit`
        # @return [String]
        attr_accessor :cpu_limit
      
        # Optional. The cpu request of the container.
        # Corresponds to the JSON property `cpuRequest`
        # @return [String]
        attr_accessor :cpu_request
      
        # Optional. The memory limit of the container.
        # Corresponds to the JSON property `memoryLimit`
        # @return [String]
        attr_accessor :memory_limit
      
        # Optional. The memory request of the container.
        # Corresponds to the JSON property `memoryRequest`
        # @return [String]
        attr_accessor :memory_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_name = args[:container_name] if args.key?(:container_name)
          @cpu_limit = args[:cpu_limit] if args.key?(:cpu_limit)
          @cpu_request = args[:cpu_request] if args.key?(:cpu_request)
          @memory_limit = args[:memory_limit] if args.key?(:memory_limit)
          @memory_request = args[:memory_request] if args.key?(:memory_request)
        end
      end
      
      # Configuration for a deployment override.
      class ConfigManagementDeploymentOverride
        include Google::Apis::Core::Hashable
      
        # Optional. The containers of the deployment resource to be overridden.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::GkehubV2::ConfigManagementContainerOverride>]
        attr_accessor :containers
      
        # Required. The name of the deployment resource to be overridden.
        # Corresponds to the JSON property `deploymentName`
        # @return [String]
        attr_accessor :deployment_name
      
        # Required. The namespace of the deployment resource to be overridden.
        # Corresponds to the JSON property `deploymentNamespace`
        # @return [String]
        attr_accessor :deployment_namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @deployment_name = args[:deployment_name] if args.key?(:deployment_name)
          @deployment_namespace = args[:deployment_namespace] if args.key?(:deployment_namespace)
        end
      end
      
      # Model for a config file in the git repo with an associated Sync error.
      class ConfigManagementErrorResource
        include Google::Apis::Core::Hashable
      
        # A Kubernetes object's GVK.
        # Corresponds to the JSON property `resourceGvk`
        # @return [Google::Apis::GkehubV2::ConfigManagementGroupVersionKind]
        attr_accessor :resource_gvk
      
        # Metadata name of the resource that is causing an error
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Namespace of the resource that is causing an error
        # Corresponds to the JSON property `resourceNamespace`
        # @return [String]
        attr_accessor :resource_namespace
      
        # Path in the git repo of the erroneous config
        # Corresponds to the JSON property `sourcePath`
        # @return [String]
        attr_accessor :source_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_gvk = args[:resource_gvk] if args.key?(:resource_gvk)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_namespace = args[:resource_namespace] if args.key?(:resource_namespace)
          @source_path = args[:source_path] if args.key?(:source_path)
        end
      end
      
      # State of Policy Controller installation.
      class ConfigManagementGatekeeperDeploymentState
        include Google::Apis::Core::Hashable
      
        # Status of gatekeeper-audit deployment.
        # Corresponds to the JSON property `gatekeeperAudit`
        # @return [String]
        attr_accessor :gatekeeper_audit
      
        # Status of gatekeeper-controller-manager pod.
        # Corresponds to the JSON property `gatekeeperControllerManagerState`
        # @return [String]
        attr_accessor :gatekeeper_controller_manager_state
      
        # Status of the pod serving the mutation webhook.
        # Corresponds to the JSON property `gatekeeperMutation`
        # @return [String]
        attr_accessor :gatekeeper_mutation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gatekeeper_audit = args[:gatekeeper_audit] if args.key?(:gatekeeper_audit)
          @gatekeeper_controller_manager_state = args[:gatekeeper_controller_manager_state] if args.key?(:gatekeeper_controller_manager_state)
          @gatekeeper_mutation = args[:gatekeeper_mutation] if args.key?(:gatekeeper_mutation)
        end
      end
      
      # Git repo configuration for a single cluster.
      class ConfigManagementGitConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The Google Cloud Service Account Email used for auth when
        # secret_type is gcpServiceAccount.
        # Corresponds to the JSON property `gcpServiceAccountEmail`
        # @return [String]
        attr_accessor :gcp_service_account_email
      
        # Optional. URL for the HTTPS proxy to be used when communicating with the Git
        # repo.
        # Corresponds to the JSON property `httpsProxy`
        # @return [String]
        attr_accessor :https_proxy
      
        # Optional. The path within the Git repository that represents the top level of
        # the repo to sync. Default: the root directory of the repository.
        # Corresponds to the JSON property `policyDir`
        # @return [String]
        attr_accessor :policy_dir
      
        # Required. Type of secret configured for access to the Git repo. Must be one of
        # ssh, cookiefile, gcenode, token, gcpserviceaccount, githubapp or none. The
        # validation of this is case-sensitive.
        # Corresponds to the JSON property `secretType`
        # @return [String]
        attr_accessor :secret_type
      
        # Optional. The branch of the repository to sync from. Default: master.
        # Corresponds to the JSON property `syncBranch`
        # @return [String]
        attr_accessor :sync_branch
      
        # Required. The URL of the Git repository to use as the source of truth.
        # Corresponds to the JSON property `syncRepo`
        # @return [String]
        attr_accessor :sync_repo
      
        # Optional. Git revision (tag or hash) to check out. Default HEAD.
        # Corresponds to the JSON property `syncRev`
        # @return [String]
        attr_accessor :sync_rev
      
        # Optional. Period in seconds between consecutive syncs. Default: 15.
        # Corresponds to the JSON property `syncWaitSecs`
        # @return [Fixnum]
        attr_accessor :sync_wait_secs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_service_account_email = args[:gcp_service_account_email] if args.key?(:gcp_service_account_email)
          @https_proxy = args[:https_proxy] if args.key?(:https_proxy)
          @policy_dir = args[:policy_dir] if args.key?(:policy_dir)
          @secret_type = args[:secret_type] if args.key?(:secret_type)
          @sync_branch = args[:sync_branch] if args.key?(:sync_branch)
          @sync_repo = args[:sync_repo] if args.key?(:sync_repo)
          @sync_rev = args[:sync_rev] if args.key?(:sync_rev)
          @sync_wait_secs = args[:sync_wait_secs] if args.key?(:sync_wait_secs)
        end
      end
      
      # A Kubernetes object's GVK.
      class ConfigManagementGroupVersionKind
        include Google::Apis::Core::Hashable
      
        # Kubernetes Group
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Kubernetes Kind
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Kubernetes Version
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @kind = args[:kind] if args.key?(:kind)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for Hierarchy Controller.
      class ConfigManagementHierarchyControllerConfig
        include Google::Apis::Core::Hashable
      
        # Whether hierarchical resource quota is enabled in this cluster.
        # Corresponds to the JSON property `enableHierarchicalResourceQuota`
        # @return [Boolean]
        attr_accessor :enable_hierarchical_resource_quota
        alias_method :enable_hierarchical_resource_quota?, :enable_hierarchical_resource_quota
      
        # Whether pod tree labels are enabled in this cluster.
        # Corresponds to the JSON property `enablePodTreeLabels`
        # @return [Boolean]
        attr_accessor :enable_pod_tree_labels
        alias_method :enable_pod_tree_labels?, :enable_pod_tree_labels
      
        # Whether Hierarchy Controller is enabled in this cluster.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_hierarchical_resource_quota = args[:enable_hierarchical_resource_quota] if args.key?(:enable_hierarchical_resource_quota)
          @enable_pod_tree_labels = args[:enable_pod_tree_labels] if args.key?(:enable_pod_tree_labels)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Deployment state for Hierarchy Controller
      class ConfigManagementHierarchyControllerDeploymentState
        include Google::Apis::Core::Hashable
      
        # The deployment state for Hierarchy Controller extension (e.g. v0.7.0-hc.1).
        # Corresponds to the JSON property `extension`
        # @return [String]
        attr_accessor :extension
      
        # The deployment state for open source HNC (e.g. v0.7.0-hc.0).
        # Corresponds to the JSON property `hnc`
        # @return [String]
        attr_accessor :hnc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extension = args[:extension] if args.key?(:extension)
          @hnc = args[:hnc] if args.key?(:hnc)
        end
      end
      
      # State for Hierarchy Controller.
      class ConfigManagementHierarchyControllerState
        include Google::Apis::Core::Hashable
      
        # Deployment state for Hierarchy Controller
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV2::ConfigManagementHierarchyControllerDeploymentState]
        attr_accessor :state
      
        # Version for Hierarchy Controller.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV2::ConfigManagementHierarchyControllerVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Version for Hierarchy Controller.
      class ConfigManagementHierarchyControllerVersion
        include Google::Apis::Core::Hashable
      
        # Version for Hierarchy Controller extension.
        # Corresponds to the JSON property `extension`
        # @return [String]
        attr_accessor :extension
      
        # Version for open source HNC.
        # Corresponds to the JSON property `hnc`
        # @return [String]
        attr_accessor :hnc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extension = args[:extension] if args.key?(:extension)
          @hnc = args[:hnc] if args.key?(:hnc)
        end
      end
      
      # Errors pertaining to the installation of ACM.
      class ConfigManagementInstallError
        include Google::Apis::Core::Hashable
      
        # A string representing the user facing error message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # OCI repo configuration for a single cluster.
      class ConfigManagementOciConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The Google Cloud Service Account Email used for auth when
        # secret_type is gcpServiceAccount.
        # Corresponds to the JSON property `gcpServiceAccountEmail`
        # @return [String]
        attr_accessor :gcp_service_account_email
      
        # Optional. The absolute path of the directory that contains the local resources.
        # Default: the root directory of the image.
        # Corresponds to the JSON property `policyDir`
        # @return [String]
        attr_accessor :policy_dir
      
        # Required. Type of secret configured for access to the OCI repo. Must be one of
        # gcenode, gcpserviceaccount, k8sserviceaccount or none. The validation of this
        # is case-sensitive.
        # Corresponds to the JSON property `secretType`
        # @return [String]
        attr_accessor :secret_type
      
        # Required. The OCI image repository URL for the package to sync from. e.g. `
        # LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
        # Corresponds to the JSON property `syncRepo`
        # @return [String]
        attr_accessor :sync_repo
      
        # Optional. Period in seconds between consecutive syncs. Default: 15.
        # Corresponds to the JSON property `syncWaitSecs`
        # @return [Fixnum]
        attr_accessor :sync_wait_secs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_service_account_email = args[:gcp_service_account_email] if args.key?(:gcp_service_account_email)
          @policy_dir = args[:policy_dir] if args.key?(:policy_dir)
          @secret_type = args[:secret_type] if args.key?(:secret_type)
          @sync_repo = args[:sync_repo] if args.key?(:sync_repo)
          @sync_wait_secs = args[:sync_wait_secs] if args.key?(:sync_wait_secs)
        end
      end
      
      # State information for an ACM's Operator.
      class ConfigManagementOperatorState
        include Google::Apis::Core::Hashable
      
        # The state of the Operator's deployment.
        # Corresponds to the JSON property `deploymentState`
        # @return [String]
        attr_accessor :deployment_state
      
        # Install errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV2::ConfigManagementInstallError>]
        attr_accessor :errors
      
        # The semenatic version number of the operator.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_state = args[:deployment_state] if args.key?(:deployment_state)
          @errors = args[:errors] if args.key?(:errors)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for Policy Controller
      class ConfigManagementPolicyController
        include Google::Apis::Core::Hashable
      
        # Sets the interval for Policy Controller Audit Scans (in seconds). When set to
        # 0, this disables audit functionality altogether.
        # Corresponds to the JSON property `auditIntervalSeconds`
        # @return [Fixnum]
        attr_accessor :audit_interval_seconds
      
        # Enables the installation of Policy Controller. If false, the rest of
        # PolicyController fields take no effect.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The set of namespaces that are excluded from Policy Controller checks.
        # Namespaces do not need to currently exist on the cluster.
        # Corresponds to the JSON property `exemptableNamespaces`
        # @return [Array<String>]
        attr_accessor :exemptable_namespaces
      
        # Logs all denies and dry run failures.
        # Corresponds to the JSON property `logDeniesEnabled`
        # @return [Boolean]
        attr_accessor :log_denies_enabled
        alias_method :log_denies_enabled?, :log_denies_enabled
      
        # PolicyControllerMonitoring specifies the backends Policy Controller should
        # export metrics to. For example, to specify metrics should be exported to Cloud
        # Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
        # Corresponds to the JSON property `monitoring`
        # @return [Google::Apis::GkehubV2::ConfigManagementPolicyControllerMonitoring]
        attr_accessor :monitoring
      
        # Enable or disable mutation in policy controller. If true, mutation CRDs,
        # webhook and controller deployment will be deployed to the cluster.
        # Corresponds to the JSON property `mutationEnabled`
        # @return [Boolean]
        attr_accessor :mutation_enabled
        alias_method :mutation_enabled?, :mutation_enabled
      
        # Enables the ability to use Constraint Templates that reference to objects
        # other than the object currently being evaluated.
        # Corresponds to the JSON property `referentialRulesEnabled`
        # @return [Boolean]
        attr_accessor :referential_rules_enabled
        alias_method :referential_rules_enabled?, :referential_rules_enabled
      
        # Installs the default template library along with Policy Controller.
        # Corresponds to the JSON property `templateLibraryInstalled`
        # @return [Boolean]
        attr_accessor :template_library_installed
        alias_method :template_library_installed?, :template_library_installed
      
        # Output only. Last time this membership spec was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_interval_seconds = args[:audit_interval_seconds] if args.key?(:audit_interval_seconds)
          @enabled = args[:enabled] if args.key?(:enabled)
          @exemptable_namespaces = args[:exemptable_namespaces] if args.key?(:exemptable_namespaces)
          @log_denies_enabled = args[:log_denies_enabled] if args.key?(:log_denies_enabled)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
          @mutation_enabled = args[:mutation_enabled] if args.key?(:mutation_enabled)
          @referential_rules_enabled = args[:referential_rules_enabled] if args.key?(:referential_rules_enabled)
          @template_library_installed = args[:template_library_installed] if args.key?(:template_library_installed)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # State for the migration of PolicyController from ACM -> PoCo Hub.
      class ConfigManagementPolicyControllerMigration
        include Google::Apis::Core::Hashable
      
        # Last time this membership spec was copied to PoCo feature.
        # Corresponds to the JSON property `copyTime`
        # @return [String]
        attr_accessor :copy_time
      
        # Stage of the migration.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy_time = args[:copy_time] if args.key?(:copy_time)
          @stage = args[:stage] if args.key?(:stage)
        end
      end
      
      # PolicyControllerMonitoring specifies the backends Policy Controller should
      # export metrics to. For example, to specify metrics should be exported to Cloud
      # Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
      class ConfigManagementPolicyControllerMonitoring
        include Google::Apis::Core::Hashable
      
        # Specifies the list of backends Policy Controller will export to. An empty list
        # would effectively disable metrics export.
        # Corresponds to the JSON property `backends`
        # @return [Array<String>]
        attr_accessor :backends
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backends = args[:backends] if args.key?(:backends)
        end
      end
      
      # State for PolicyControllerState.
      class ConfigManagementPolicyControllerState
        include Google::Apis::Core::Hashable
      
        # State of Policy Controller installation.
        # Corresponds to the JSON property `deploymentState`
        # @return [Google::Apis::GkehubV2::ConfigManagementGatekeeperDeploymentState]
        attr_accessor :deployment_state
      
        # State for the migration of PolicyController from ACM -> PoCo Hub.
        # Corresponds to the JSON property `migration`
        # @return [Google::Apis::GkehubV2::ConfigManagementPolicyControllerMigration]
        attr_accessor :migration
      
        # The build version of Gatekeeper Policy Controller is using.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV2::ConfigManagementPolicyControllerVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_state = args[:deployment_state] if args.key?(:deployment_state)
          @migration = args[:migration] if args.key?(:migration)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The build version of Gatekeeper Policy Controller is using.
      class ConfigManagementPolicyControllerVersion
        include Google::Apis::Core::Hashable
      
        # The gatekeeper image tag that is composed of ACM version, git tag, build
        # number.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # **Anthos Config Management**: Configuration for a single cluster. Intended to
      # parallel the ConfigManagement CR.
      class ConfigManagementSpec
        include Google::Apis::Core::Hashable
      
        # Configuration for Binauthz.
        # Corresponds to the JSON property `binauthz`
        # @return [Google::Apis::GkehubV2::ConfigManagementBinauthzConfig]
        attr_accessor :binauthz
      
        # Optional. The user-specified cluster name used by Config Sync cluster-name-
        # selector annotation or ClusterSelector, for applying configs to only a subset
        # of clusters. Omit this field if the cluster's fleet membership name is used by
        # Config Sync cluster-name-selector annotation or ClusterSelector. Set this
        # field if a name different from the cluster's fleet membership name is used by
        # Config Sync cluster-name-selector annotation or ClusterSelector.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Configuration for Config Sync
        # Corresponds to the JSON property `configSync`
        # @return [Google::Apis::GkehubV2::ConfigManagementConfigSync]
        attr_accessor :config_sync
      
        # Configuration for Hierarchy Controller.
        # Corresponds to the JSON property `hierarchyController`
        # @return [Google::Apis::GkehubV2::ConfigManagementHierarchyControllerConfig]
        attr_accessor :hierarchy_controller
      
        # Optional. Deprecated: From version 1.21.0, automatic Feature management is
        # unavailable, and Config Sync only supports manual upgrades.
        # Corresponds to the JSON property `management`
        # @return [String]
        attr_accessor :management
      
        # Configuration for Policy Controller
        # Corresponds to the JSON property `policyController`
        # @return [Google::Apis::GkehubV2::ConfigManagementPolicyController]
        attr_accessor :policy_controller
      
        # Optional. Version of ACM installed.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binauthz = args[:binauthz] if args.key?(:binauthz)
          @cluster = args[:cluster] if args.key?(:cluster)
          @config_sync = args[:config_sync] if args.key?(:config_sync)
          @hierarchy_controller = args[:hierarchy_controller] if args.key?(:hierarchy_controller)
          @management = args[:management] if args.key?(:management)
          @policy_controller = args[:policy_controller] if args.key?(:policy_controller)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # **Anthos Config Management**: State for a single cluster.
      class ConfigManagementState
        include Google::Apis::Core::Hashable
      
        # State for Binauthz.
        # Corresponds to the JSON property `binauthzState`
        # @return [Google::Apis::GkehubV2::ConfigManagementBinauthzState]
        attr_accessor :binauthz_state
      
        # Output only. This field is set to the `cluster_name` field of the Membership
        # Spec if it is not empty. Otherwise, it is set to the cluster's fleet
        # membership name.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # State information for ConfigSync.
        # Corresponds to the JSON property `configSyncState`
        # @return [Google::Apis::GkehubV2::ConfigManagementConfigSyncState]
        attr_accessor :config_sync_state
      
        # State for Hierarchy Controller.
        # Corresponds to the JSON property `hierarchyControllerState`
        # @return [Google::Apis::GkehubV2::ConfigManagementHierarchyControllerState]
        attr_accessor :hierarchy_controller_state
      
        # Output only. The Kubernetes API server version of the cluster.
        # Corresponds to the JSON property `kubernetesApiServerVersion`
        # @return [String]
        attr_accessor :kubernetes_api_server_version
      
        # **Anthos Config Management**: Configuration for a single cluster. Intended to
        # parallel the ConfigManagement CR.
        # Corresponds to the JSON property `membershipSpec`
        # @return [Google::Apis::GkehubV2::ConfigManagementSpec]
        attr_accessor :membership_spec
      
        # State information for an ACM's Operator.
        # Corresponds to the JSON property `operatorState`
        # @return [Google::Apis::GkehubV2::ConfigManagementOperatorState]
        attr_accessor :operator_state
      
        # State for PolicyControllerState.
        # Corresponds to the JSON property `policyControllerState`
        # @return [Google::Apis::GkehubV2::ConfigManagementPolicyControllerState]
        attr_accessor :policy_controller_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binauthz_state = args[:binauthz_state] if args.key?(:binauthz_state)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @config_sync_state = args[:config_sync_state] if args.key?(:config_sync_state)
          @hierarchy_controller_state = args[:hierarchy_controller_state] if args.key?(:hierarchy_controller_state)
          @kubernetes_api_server_version = args[:kubernetes_api_server_version] if args.key?(:kubernetes_api_server_version)
          @membership_spec = args[:membership_spec] if args.key?(:membership_spec)
          @operator_state = args[:operator_state] if args.key?(:operator_state)
          @policy_controller_state = args[:policy_controller_state] if args.key?(:policy_controller_state)
        end
      end
      
      # An ACM created error representing a problem syncing configurations.
      class ConfigManagementSyncError
        include Google::Apis::Core::Hashable
      
        # An ACM defined error code
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A description of the error
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # A list of config(s) associated with the error, if any
        # Corresponds to the JSON property `errorResources`
        # @return [Array<Google::Apis::GkehubV2::ConfigManagementErrorResource>]
        attr_accessor :error_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @error_resources = args[:error_resources] if args.key?(:error_resources)
        end
      end
      
      # State indicating an ACM's progress syncing configurations to a cluster.
      class ConfigManagementSyncState
        include Google::Apis::Core::Hashable
      
        # Sync status code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A list of errors resulting from problematic configs. This list will be
        # truncated after 100 errors, although it is unlikely for that many errors to
        # simultaneously exist.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV2::ConfigManagementSyncError>]
        attr_accessor :errors
      
        # Token indicating the state of the importer.
        # Corresponds to the JSON property `importToken`
        # @return [String]
        attr_accessor :import_token
      
        # Deprecated: use last_sync_time instead. Timestamp of when ACM last
        # successfully synced the repo. The time format is specified in https://golang.
        # org/pkg/time/#Time.String
        # Corresponds to the JSON property `lastSync`
        # @return [String]
        attr_accessor :last_sync
      
        # Timestamp type of when ACM last successfully synced the repo.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        # Token indicating the state of the repo.
        # Corresponds to the JSON property `sourceToken`
        # @return [String]
        attr_accessor :source_token
      
        # Token indicating the state of the syncer.
        # Corresponds to the JSON property `syncToken`
        # @return [String]
        attr_accessor :sync_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @errors = args[:errors] if args.key?(:errors)
          @import_token = args[:import_token] if args.key?(:import_token)
          @last_sync = args[:last_sync] if args.key?(:last_sync)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
          @source_token = args[:source_token] if args.key?(:source_token)
          @sync_token = args[:sync_token] if args.key?(:sync_token)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # FeatureSpec contains user input per-feature spec information.
      class FeatureSpec
        include Google::Apis::Core::Hashable
      
        # **Cloud Build**: Configurations for each Cloud Build enabled cluster.
        # Corresponds to the JSON property `cloudbuild`
        # @return [Google::Apis::GkehubV2::CloudBuildSpec]
        attr_accessor :cloudbuild
      
        # **Anthos Config Management**: Configuration for a single cluster. Intended to
        # parallel the ConfigManagement CR.
        # Corresponds to the JSON property `configmanagement`
        # @return [Google::Apis::GkehubV2::ConfigManagementSpec]
        attr_accessor :configmanagement
      
        # **IdentityService**: Configuration for a single membership.
        # Corresponds to the JSON property `identityservice`
        # @return [Google::Apis::GkehubV2::IdentityServiceSpec]
        attr_accessor :identityservice
      
        # Origin defines where this FeatureSpec originated from.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::GkehubV2::Origin]
        attr_accessor :origin
      
        # **Policy Controller**: Configuration for a single cluster. Intended to
        # parallel the PolicyController CR.
        # Corresponds to the JSON property `policycontroller`
        # @return [Google::Apis::GkehubV2::PolicyControllerSpec]
        attr_accessor :policycontroller
      
        # **RBAC RoleBinding Actuation**: The membership-specific input for
        # RBACRoleBindingActuation feature.
        # Corresponds to the JSON property `rbacrolebindingactuation`
        # @return [Google::Apis::GkehubV2::RbacRoleBindingActuationSpec]
        attr_accessor :rbacrolebindingactuation
      
        # **Service Mesh**: Spec for a single Membership for the servicemesh feature
        # Corresponds to the JSON property `servicemesh`
        # @return [Google::Apis::GkehubV2::ServiceMeshSpec]
        attr_accessor :servicemesh
      
        # **WorkloadCertificate**: The membership-specific input for WorkloadCertificate
        # feature.
        # Corresponds to the JSON property `workloadcertificate`
        # @return [Google::Apis::GkehubV2::WorkloadCertificateSpec]
        attr_accessor :workloadcertificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloudbuild = args[:cloudbuild] if args.key?(:cloudbuild)
          @configmanagement = args[:configmanagement] if args.key?(:configmanagement)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
          @origin = args[:origin] if args.key?(:origin)
          @policycontroller = args[:policycontroller] if args.key?(:policycontroller)
          @rbacrolebindingactuation = args[:rbacrolebindingactuation] if args.key?(:rbacrolebindingactuation)
          @servicemesh = args[:servicemesh] if args.key?(:servicemesh)
          @workloadcertificate = args[:workloadcertificate] if args.key?(:workloadcertificate)
        end
      end
      
      # FeatureState contains high-level state information and per-feature state
      # information for this MembershipFeature.
      class FeatureState
        include Google::Apis::Core::Hashable
      
        # State for App Dev Exp Feature.
        # Corresponds to the JSON property `appdevexperience`
        # @return [Google::Apis::GkehubV2::AppDevExperienceState]
        attr_accessor :appdevexperience
      
        # Per-membership state for this feature.
        # Corresponds to the JSON property `clusterupgrade`
        # @return [Google::Apis::GkehubV2::ClusterUpgradeState]
        attr_accessor :clusterupgrade
      
        # **Anthos Config Management**: State for a single cluster.
        # Corresponds to the JSON property `configmanagement`
        # @return [Google::Apis::GkehubV2::ConfigManagementState]
        attr_accessor :configmanagement
      
        # **IdentityService**: State for a single membership, analyzed and reported by
        # feature controller.
        # Corresponds to the JSON property `identityservice`
        # @return [Google::Apis::GkehubV2::IdentityServiceState]
        attr_accessor :identityservice
      
        # **Metering**: State for a single membership, analyzed and reported by feature
        # controller.
        # Corresponds to the JSON property `metering`
        # @return [Google::Apis::GkehubV2::MeteringState]
        attr_accessor :metering
      
        # **Policy Controller**: State for a single cluster.
        # Corresponds to the JSON property `policycontroller`
        # @return [Google::Apis::GkehubV2::PolicyControllerState]
        attr_accessor :policycontroller
      
        # **RBAC RoleBinding Actuation**: A membership-specific Feature state for the
        # RBACRoleBindingActuation fleet feature.
        # Corresponds to the JSON property `rbacrolebindingactuation`
        # @return [Google::Apis::GkehubV2::RbacRoleBindingActuationState]
        attr_accessor :rbacrolebindingactuation
      
        # **Service Mesh**: State for a single Membership, as analyzed by the Service
        # Mesh Hub Controller.
        # Corresponds to the JSON property `servicemesh`
        # @return [Google::Apis::GkehubV2::ServiceMeshState]
        attr_accessor :servicemesh
      
        # High-level state of a MembershipFeature.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV2::State]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appdevexperience = args[:appdevexperience] if args.key?(:appdevexperience)
          @clusterupgrade = args[:clusterupgrade] if args.key?(:clusterupgrade)
          @configmanagement = args[:configmanagement] if args.key?(:configmanagement)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
          @metering = args[:metering] if args.key?(:metering)
          @policycontroller = args[:policycontroller] if args.key?(:policycontroller)
          @rbacrolebindingactuation = args[:rbacrolebindingactuation] if args.key?(:rbacrolebindingactuation)
          @servicemesh = args[:servicemesh] if args.key?(:servicemesh)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Configuration of an auth method for a member/cluster. Only one authentication
      # method (e.g., OIDC and LDAP) can be set per AuthMethod.
      class IdentityServiceAuthMethod
        include Google::Apis::Core::Hashable
      
        # Configuration for the AzureAD Auth flow.
        # Corresponds to the JSON property `azureadConfig`
        # @return [Google::Apis::GkehubV2::IdentityServiceAzureAdConfig]
        attr_accessor :azuread_config
      
        # Configuration for the Google Plugin Auth flow.
        # Corresponds to the JSON property `googleConfig`
        # @return [Google::Apis::GkehubV2::IdentityServiceGoogleConfig]
        attr_accessor :google_config
      
        # Configuration for the LDAP Auth flow.
        # Corresponds to the JSON property `ldapConfig`
        # @return [Google::Apis::GkehubV2::IdentityServiceLdapConfig]
        attr_accessor :ldap_config
      
        # Identifier for auth config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for OIDC Auth flow.
        # Corresponds to the JSON property `oidcConfig`
        # @return [Google::Apis::GkehubV2::IdentityServiceOidcConfig]
        attr_accessor :oidc_config
      
        # Proxy server address to use for auth method.
        # Corresponds to the JSON property `proxy`
        # @return [String]
        attr_accessor :proxy
      
        # Configuration for the SAML Auth flow.
        # Corresponds to the JSON property `samlConfig`
        # @return [Google::Apis::GkehubV2::IdentityServiceSamlConfig]
        attr_accessor :saml_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @azuread_config = args[:azuread_config] if args.key?(:azuread_config)
          @google_config = args[:google_config] if args.key?(:google_config)
          @ldap_config = args[:ldap_config] if args.key?(:ldap_config)
          @name = args[:name] if args.key?(:name)
          @oidc_config = args[:oidc_config] if args.key?(:oidc_config)
          @proxy = args[:proxy] if args.key?(:proxy)
          @saml_config = args[:saml_config] if args.key?(:saml_config)
        end
      end
      
      # Configuration for the AzureAD Auth flow.
      class IdentityServiceAzureAdConfig
        include Google::Apis::Core::Hashable
      
        # ID for the registered client application that makes authentication requests to
        # the Azure AD identity provider.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub
        # CLH.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Output only. Encrypted AzureAD client secret.
        # Corresponds to the JSON property `encryptedClientSecret`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_client_secret
      
        # Optional. Format of the AzureAD groups that the client wants for auth.
        # Corresponds to the JSON property `groupFormat`
        # @return [String]
        attr_accessor :group_format
      
        # The redirect URL that kubectl uses for authorization.
        # Corresponds to the JSON property `kubectlRedirectUri`
        # @return [String]
        attr_accessor :kubectl_redirect_uri
      
        # Kind of Azure AD account to be authenticated. Supported values are or for
        # accounts belonging to a specific tenant.
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
        # Optional. Claim in the AzureAD ID Token that holds the user details.
        # Corresponds to the JSON property `userClaim`
        # @return [String]
        attr_accessor :user_claim
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @encrypted_client_secret = args[:encrypted_client_secret] if args.key?(:encrypted_client_secret)
          @group_format = args[:group_format] if args.key?(:group_format)
          @kubectl_redirect_uri = args[:kubectl_redirect_uri] if args.key?(:kubectl_redirect_uri)
          @tenant = args[:tenant] if args.key?(:tenant)
          @user_claim = args[:user_claim] if args.key?(:user_claim)
        end
      end
      
      # Configuration options for the AIS diagnostic interface.
      class IdentityServiceDiagnosticInterface
        include Google::Apis::Core::Hashable
      
        # Determines whether to enable the diagnostic interface.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Determines the expiration time of the diagnostic interface enablement. When
        # reached, requests to the interface would be automatically rejected.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
        end
      end
      
      # Configuration for the Google Plugin Auth flow.
      class IdentityServiceGoogleConfig
        include Google::Apis::Core::Hashable
      
        # Disable automatic configuration of Google Plugin on supported platforms.
        # Corresponds to the JSON property `disable`
        # @return [Boolean]
        attr_accessor :disable
        alias_method :disable?, :disable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable = args[:disable] if args.key?(:disable)
        end
      end
      
      # Contains the properties for locating and authenticating groups in the
      # directory.
      class IdentityServiceGroupConfig
        include Google::Apis::Core::Hashable
      
        # Required. The location of the subtree in the LDAP directory to search for
        # group entries.
        # Corresponds to the JSON property `baseDn`
        # @return [String]
        attr_accessor :base_dn
      
        # Optional. Optional filter to be used when searching for groups a user belongs
        # to. This can be used to explicitly match only certain groups in order to
        # reduce the amount of groups returned for each user. This defaults to "(
        # objectClass=Group)".
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The identifying name of each group a user belongs to. For example,
        # if this is set to "distinguishedName" then RBACs and other group expectations
        # should be written as full DNs. This defaults to "distinguishedName".
        # Corresponds to the JSON property `idAttribute`
        # @return [String]
        attr_accessor :id_attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_dn = args[:base_dn] if args.key?(:base_dn)
          @filter = args[:filter] if args.key?(:filter)
          @id_attribute = args[:id_attribute] if args.key?(:id_attribute)
        end
      end
      
      # Holds non-protocol-related configuration options.
      class IdentityServiceIdentityServiceOptions
        include Google::Apis::Core::Hashable
      
        # Configuration options for the AIS diagnostic interface.
        # Corresponds to the JSON property `diagnosticInterface`
        # @return [Google::Apis::GkehubV2::IdentityServiceDiagnosticInterface]
        attr_accessor :diagnostic_interface
      
        # Determines the lifespan of STS tokens issued by Anthos Identity Service.
        # Corresponds to the JSON property `sessionDuration`
        # @return [String]
        attr_accessor :session_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnostic_interface = args[:diagnostic_interface] if args.key?(:diagnostic_interface)
          @session_duration = args[:session_duration] if args.key?(:session_duration)
        end
      end
      
      # Configuration for the LDAP Auth flow.
      class IdentityServiceLdapConfig
        include Google::Apis::Core::Hashable
      
        # Contains the properties for locating and authenticating groups in the
        # directory.
        # Corresponds to the JSON property `group`
        # @return [Google::Apis::GkehubV2::IdentityServiceGroupConfig]
        attr_accessor :group
      
        # Server settings for the external LDAP server.
        # Corresponds to the JSON property `server`
        # @return [Google::Apis::GkehubV2::IdentityServiceServerConfig]
        attr_accessor :server
      
        # Contains the credentials of the service account which is authorized to perform
        # the LDAP search in the directory. The credentials can be supplied by the
        # combination of the DN and password or the client certificate.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::GkehubV2::IdentityServiceServiceAccountConfig]
        attr_accessor :service_account
      
        # Defines where users exist in the LDAP directory.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::GkehubV2::IdentityServiceUserConfig]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @server = args[:server] if args.key?(:server)
          @service_account = args[:service_account] if args.key?(:service_account)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Configuration for OIDC Auth flow.
      class IdentityServiceOidcConfig
        include Google::Apis::Core::Hashable
      
        # PEM-encoded CA for OIDC provider.
        # Corresponds to the JSON property `certificateAuthorityData`
        # @return [String]
        attr_accessor :certificate_authority_data
      
        # ID for OIDC client application.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Flag to denote if reverse proxy is used to connect to auth provider. This flag
        # should be set to true when provider is not reachable by Google Cloud Console.
        # Corresponds to the JSON property `deployCloudConsoleProxy`
        # @return [Boolean]
        attr_accessor :deploy_cloud_console_proxy
        alias_method :deploy_cloud_console_proxy?, :deploy_cloud_console_proxy
      
        # Enable access token.
        # Corresponds to the JSON property `enableAccessToken`
        # @return [Boolean]
        attr_accessor :enable_access_token
        alias_method :enable_access_token?, :enable_access_token
      
        # Output only. Encrypted OIDC Client secret
        # Corresponds to the JSON property `encryptedClientSecret`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_client_secret
      
        # Comma-separated list of key-value pairs.
        # Corresponds to the JSON property `extraParams`
        # @return [String]
        attr_accessor :extra_params
      
        # Prefix to prepend to group name.
        # Corresponds to the JSON property `groupPrefix`
        # @return [String]
        attr_accessor :group_prefix
      
        # Claim in OIDC ID token that holds group information.
        # Corresponds to the JSON property `groupsClaim`
        # @return [String]
        attr_accessor :groups_claim
      
        # URI for the OIDC provider. This should point to the level below .well-known/
        # openid-configuration.
        # Corresponds to the JSON property `issuerUri`
        # @return [String]
        attr_accessor :issuer_uri
      
        # Registered redirect uri to redirect users going through OAuth flow using
        # kubectl plugin.
        # Corresponds to the JSON property `kubectlRedirectUri`
        # @return [String]
        attr_accessor :kubectl_redirect_uri
      
        # Comma-separated list of identifiers.
        # Corresponds to the JSON property `scopes`
        # @return [String]
        attr_accessor :scopes
      
        # Claim in OIDC ID token that holds username.
        # Corresponds to the JSON property `userClaim`
        # @return [String]
        attr_accessor :user_claim
      
        # Prefix to prepend to user name.
        # Corresponds to the JSON property `userPrefix`
        # @return [String]
        attr_accessor :user_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authority_data = args[:certificate_authority_data] if args.key?(:certificate_authority_data)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @deploy_cloud_console_proxy = args[:deploy_cloud_console_proxy] if args.key?(:deploy_cloud_console_proxy)
          @enable_access_token = args[:enable_access_token] if args.key?(:enable_access_token)
          @encrypted_client_secret = args[:encrypted_client_secret] if args.key?(:encrypted_client_secret)
          @extra_params = args[:extra_params] if args.key?(:extra_params)
          @group_prefix = args[:group_prefix] if args.key?(:group_prefix)
          @groups_claim = args[:groups_claim] if args.key?(:groups_claim)
          @issuer_uri = args[:issuer_uri] if args.key?(:issuer_uri)
          @kubectl_redirect_uri = args[:kubectl_redirect_uri] if args.key?(:kubectl_redirect_uri)
          @scopes = args[:scopes] if args.key?(:scopes)
          @user_claim = args[:user_claim] if args.key?(:user_claim)
          @user_prefix = args[:user_prefix] if args.key?(:user_prefix)
        end
      end
      
      # Configuration for the SAML Auth flow.
      class IdentityServiceSamlConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The mapping of additional user attributes like nickname, birthday
        # and address etc.. `key` is the name of this additional attribute. `value` is a
        # string presenting as CEL(common expression language, go/cel) used for getting
        # the value from the resources. Take nickname as an example, in this case, `key`
        # is "attribute.nickname" and `value` is "assertion.nickname".
        # Corresponds to the JSON property `attributeMapping`
        # @return [Hash<String,String>]
        attr_accessor :attribute_mapping
      
        # Optional. Prefix to prepend to group name.
        # Corresponds to the JSON property `groupPrefix`
        # @return [String]
        attr_accessor :group_prefix
      
        # Optional. The SAML attribute to read groups from. This value is expected to be
        # a string and will be passed along as-is (with the option of being prefixed by
        # the `group_prefix`).
        # Corresponds to the JSON property `groupsAttribute`
        # @return [String]
        attr_accessor :groups_attribute
      
        # Required. The list of IdP certificates to validate the SAML response against.
        # Corresponds to the JSON property `identityProviderCertificates`
        # @return [Array<String>]
        attr_accessor :identity_provider_certificates
      
        # Required. The entity ID of the SAML IdP.
        # Corresponds to the JSON property `identityProviderId`
        # @return [String]
        attr_accessor :identity_provider_id
      
        # Required. The URI where the SAML IdP exposes the SSO service.
        # Corresponds to the JSON property `identityProviderSsoUri`
        # @return [String]
        attr_accessor :identity_provider_sso_uri
      
        # Optional. The SAML attribute to read username from. If unspecified, the
        # username will be read from the NameID element of the assertion in SAML
        # response. This value is expected to be a string and will be passed along as-is
        # (with the option of being prefixed by the `user_prefix`).
        # Corresponds to the JSON property `userAttribute`
        # @return [String]
        attr_accessor :user_attribute
      
        # Optional. Prefix to prepend to user name.
        # Corresponds to the JSON property `userPrefix`
        # @return [String]
        attr_accessor :user_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_mapping = args[:attribute_mapping] if args.key?(:attribute_mapping)
          @group_prefix = args[:group_prefix] if args.key?(:group_prefix)
          @groups_attribute = args[:groups_attribute] if args.key?(:groups_attribute)
          @identity_provider_certificates = args[:identity_provider_certificates] if args.key?(:identity_provider_certificates)
          @identity_provider_id = args[:identity_provider_id] if args.key?(:identity_provider_id)
          @identity_provider_sso_uri = args[:identity_provider_sso_uri] if args.key?(:identity_provider_sso_uri)
          @user_attribute = args[:user_attribute] if args.key?(:user_attribute)
          @user_prefix = args[:user_prefix] if args.key?(:user_prefix)
        end
      end
      
      # Server settings for the external LDAP server.
      class IdentityServiceServerConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Contains a Base64 encoded, PEM formatted certificate authority
        # certificate for the LDAP server. This must be provided for the "ldaps" and "
        # startTLS" connections.
        # Corresponds to the JSON property `certificateAuthorityData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :certificate_authority_data
      
        # Optional. Defines the connection type to communicate with the LDAP server. If `
        # starttls` or `ldaps` is specified, the certificate_authority_data should not
        # be empty.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Required. Defines the hostname or IP of the LDAP server. Port is optional and
        # will default to 389, if unspecified. For example, "ldap.server.example" or "10.
        # 10.10.10:389".
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authority_data = args[:certificate_authority_data] if args.key?(:certificate_authority_data)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @host = args[:host] if args.key?(:host)
        end
      end
      
      # Contains the credentials of the service account which is authorized to perform
      # the LDAP search in the directory. The credentials can be supplied by the
      # combination of the DN and password or the client certificate.
      class IdentityServiceServiceAccountConfig
        include Google::Apis::Core::Hashable
      
        # The structure holds the LDAP simple binding credential.
        # Corresponds to the JSON property `simpleBindCredentials`
        # @return [Google::Apis::GkehubV2::IdentityServiceSimpleBindCredentials]
        attr_accessor :simple_bind_credentials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_bind_credentials = args[:simple_bind_credentials] if args.key?(:simple_bind_credentials)
        end
      end
      
      # The structure holds the LDAP simple binding credential.
      class IdentityServiceSimpleBindCredentials
        include Google::Apis::Core::Hashable
      
        # Required. The distinguished name(DN) of the service account object/user.
        # Corresponds to the JSON property `dn`
        # @return [String]
        attr_accessor :dn
      
        # Output only. The encrypted password of the service account object/user.
        # Corresponds to the JSON property `encryptedPassword`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_password
      
        # Required. Input only. The password of the service account object/user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dn = args[:dn] if args.key?(:dn)
          @encrypted_password = args[:encrypted_password] if args.key?(:encrypted_password)
          @password = args[:password] if args.key?(:password)
        end
      end
      
      # **IdentityService**: Configuration for a single membership.
      class IdentityServiceSpec
        include Google::Apis::Core::Hashable
      
        # A member may support multiple auth methods.
        # Corresponds to the JSON property `authMethods`
        # @return [Array<Google::Apis::GkehubV2::IdentityServiceAuthMethod>]
        attr_accessor :auth_methods
      
        # Holds non-protocol-related configuration options.
        # Corresponds to the JSON property `identityServiceOptions`
        # @return [Google::Apis::GkehubV2::IdentityServiceIdentityServiceOptions]
        attr_accessor :identity_service_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_methods = args[:auth_methods] if args.key?(:auth_methods)
          @identity_service_options = args[:identity_service_options] if args.key?(:identity_service_options)
        end
      end
      
      # **IdentityService**: State for a single membership, analyzed and reported by
      # feature controller.
      class IdentityServiceState
        include Google::Apis::Core::Hashable
      
        # The reason of the failure.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Installed AIS version. This is the AIS version installed on this member. The
        # values makes sense iff state is OK.
        # Corresponds to the JSON property `installedVersion`
        # @return [String]
        attr_accessor :installed_version
      
        # **IdentityService**: Configuration for a single membership.
        # Corresponds to the JSON property `memberConfig`
        # @return [Google::Apis::GkehubV2::IdentityServiceSpec]
        attr_accessor :member_config
      
        # Deployment state on this member
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @installed_version = args[:installed_version] if args.key?(:installed_version)
          @member_config = args[:member_config] if args.key?(:member_config)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Defines where users exist in the LDAP directory.
      class IdentityServiceUserConfig
        include Google::Apis::Core::Hashable
      
        # Required. The location of the subtree in the LDAP directory to search for user
        # entries.
        # Corresponds to the JSON property `baseDn`
        # @return [String]
        attr_accessor :base_dn
      
        # Optional. Filter to apply when searching for the user. This can be used to
        # further restrict the user accounts which are allowed to login. This defaults
        # to "(objectClass=User)".
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. Determines which attribute to use as the user's identity after they
        # are authenticated. This is distinct from the loginAttribute field to allow
        # users to login with a username, but then have their actual identifier be an
        # email address or full Distinguished Name (DN). For example, setting
        # loginAttribute to "sAMAccountName" and identifierAttribute to "
        # userPrincipalName" would allow a user to login as "bsmith", but actual RBAC
        # policies for the user would be written as "bsmith@example.com". Using "
        # userPrincipalName" is recommended since this will be unique for each user.
        # This defaults to "userPrincipalName".
        # Corresponds to the JSON property `idAttribute`
        # @return [String]
        attr_accessor :id_attribute
      
        # Optional. The name of the attribute which matches against the input username.
        # This is used to find the user in the LDAP database e.g. "(=)" and is combined
        # with the optional filter field. This defaults to "userPrincipalName".
        # Corresponds to the JSON property `loginAttribute`
        # @return [String]
        attr_accessor :login_attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_dn = args[:base_dn] if args.key?(:base_dn)
          @filter = args[:filter] if args.key?(:filter)
          @id_attribute = args[:id_attribute] if args.key?(:id_attribute)
          @login_attribute = args[:login_attribute] if args.key?(:login_attribute)
        end
      end
      
      # LifecycleState describes the state of a MembershipFeature *resource* in the
      # GkeHub API. See `FeatureState` for the "running state" of the
      # MembershipFeature.
      class LifecycleState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the Feature resource in the Hub API.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GkehubV2::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the `GkeHubFeature.ListMembershipFeatures` method.
      class ListMembershipFeaturesResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching MembershipFeatures.
        # Corresponds to the JSON property `membershipFeatures`
        # @return [Array<Google::Apis::GkehubV2::MembershipFeature>]
        attr_accessor :membership_features
      
        # A token to request the next page of resources from the `ListMembershipFeatures`
        # method. The value of an empty string means that there are no more resources
        # to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of locations that could not be reached while fetching this list.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership_features = args[:membership_features] if args.key?(:membership_features)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::GkehubV2::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # MembershipFeature represents the settings and status of a Fleet Feature
      # enabled on a single Fleet Membership.
      class MembershipFeature
        include Google::Apis::Core::Hashable
      
        # Output only. When the MembershipFeature resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the MembershipFeature resource was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # GCP labels for this MembershipFeature.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # LifecycleState describes the state of a MembershipFeature *resource* in the
        # GkeHub API. See `FeatureState` for the "running state" of the
        # MembershipFeature.
        # Corresponds to the JSON property `lifecycleState`
        # @return [Google::Apis::GkehubV2::LifecycleState]
        attr_accessor :lifecycle_state
      
        # Output only. The resource name of the membershipFeature, in the format: `
        # projects/`project`/locations/`location`/memberships/`membership`/features/`
        # feature``. Note that `membershipFeatures` is shortened to `features` in the
        # resource name. (see http://go/aip/122#collection-identifiers)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # FeatureSpec contains user input per-feature spec information.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::GkehubV2::FeatureSpec]
        attr_accessor :spec
      
        # FeatureState contains high-level state information and per-feature state
        # information for this MembershipFeature.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV2::FeatureState]
        attr_accessor :state
      
        # Output only. When the MembershipFeature resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @labels = args[:labels] if args.key?(:labels)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @spec = args[:spec] if args.key?(:spec)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # **Metering**: State for a single membership, analyzed and reported by feature
      # controller.
      class MeteringState
        include Google::Apis::Core::Hashable
      
        # The time stamp of the most recent measurement of the number of vCPUs in the
        # cluster.
        # Corresponds to the JSON property `lastMeasurementTime`
        # @return [String]
        attr_accessor :last_measurement_time
      
        # The vCPUs capacity in the cluster according to the most recent measurement (1/
        # 1000 precision).
        # Corresponds to the JSON property `preciseLastMeasuredClusterVcpuCapacity`
        # @return [Float]
        attr_accessor :precise_last_measured_cluster_vcpu_capacity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_measurement_time = args[:last_measurement_time] if args.key?(:last_measurement_time)
          @precise_last_measured_cluster_vcpu_capacity = args[:precise_last_measured_cluster_vcpu_capacity] if args.key?(:precise_last_measured_cluster_vcpu_capacity)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::GkehubV2::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Origin defines where this FeatureSpec originated from.
      class Origin
        include Google::Apis::Core::Hashable
      
        # Type specifies which type of origin is set.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # BundleInstallSpec is the specification configuration for a single managed
      # bundle.
      class PolicyControllerBundleInstallSpec
        include Google::Apis::Core::Hashable
      
        # the set of namespaces to be exempted from the bundle
        # Corresponds to the JSON property `exemptedNamespaces`
        # @return [Array<String>]
        attr_accessor :exempted_namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_namespaces = args[:exempted_namespaces] if args.key?(:exempted_namespaces)
        end
      end
      
      # Configuration for Policy Controller
      class PolicyControllerHubConfig
        include Google::Apis::Core::Hashable
      
        # Sets the interval for Policy Controller Audit Scans (in seconds). When set to
        # 0, this disables audit functionality altogether.
        # Corresponds to the JSON property `auditIntervalSeconds`
        # @return [Fixnum]
        attr_accessor :audit_interval_seconds
      
        # The maximum number of audit violations to be stored in a constraint. If not
        # set, the internal default (currently 20) will be used.
        # Corresponds to the JSON property `constraintViolationLimit`
        # @return [Fixnum]
        attr_accessor :constraint_violation_limit
      
        # Map of deployment configs to deployments (“admission”, “audit”, “mutation”).
        # Corresponds to the JSON property `deploymentConfigs`
        # @return [Hash<String,Google::Apis::GkehubV2::PolicyControllerPolicyControllerDeploymentConfig>]
        attr_accessor :deployment_configs
      
        # The set of namespaces that are excluded from Policy Controller checks.
        # Namespaces do not need to currently exist on the cluster.
        # Corresponds to the JSON property `exemptableNamespaces`
        # @return [Array<String>]
        attr_accessor :exemptable_namespaces
      
        # The install_spec represents the intended state specified by the latest request
        # that mutated install_spec in the feature spec, not the lifecycle state of the
        # feature observed by the Hub feature controller that is reported in the feature
        # state.
        # Corresponds to the JSON property `installSpec`
        # @return [String]
        attr_accessor :install_spec
      
        # Logs all denies and dry run failures.
        # Corresponds to the JSON property `logDeniesEnabled`
        # @return [Boolean]
        attr_accessor :log_denies_enabled
        alias_method :log_denies_enabled?, :log_denies_enabled
      
        # MonitoringConfig specifies the backends Policy Controller should export
        # metrics to. For example, to specify metrics should be exported to Cloud
        # Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
        # Corresponds to the JSON property `monitoring`
        # @return [Google::Apis::GkehubV2::PolicyControllerMonitoringConfig]
        attr_accessor :monitoring
      
        # Enables the ability to mutate resources using Policy Controller.
        # Corresponds to the JSON property `mutationEnabled`
        # @return [Boolean]
        attr_accessor :mutation_enabled
        alias_method :mutation_enabled?, :mutation_enabled
      
        # PolicyContentSpec defines the user's desired content configuration on the
        # cluster.
        # Corresponds to the JSON property `policyContent`
        # @return [Google::Apis::GkehubV2::PolicyControllerPolicyContentSpec]
        attr_accessor :policy_content
      
        # Enables the ability to use Constraint Templates that reference to objects
        # other than the object currently being evaluated.
        # Corresponds to the JSON property `referentialRulesEnabled`
        # @return [Boolean]
        attr_accessor :referential_rules_enabled
        alias_method :referential_rules_enabled?, :referential_rules_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_interval_seconds = args[:audit_interval_seconds] if args.key?(:audit_interval_seconds)
          @constraint_violation_limit = args[:constraint_violation_limit] if args.key?(:constraint_violation_limit)
          @deployment_configs = args[:deployment_configs] if args.key?(:deployment_configs)
          @exemptable_namespaces = args[:exemptable_namespaces] if args.key?(:exemptable_namespaces)
          @install_spec = args[:install_spec] if args.key?(:install_spec)
          @log_denies_enabled = args[:log_denies_enabled] if args.key?(:log_denies_enabled)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
          @mutation_enabled = args[:mutation_enabled] if args.key?(:mutation_enabled)
          @policy_content = args[:policy_content] if args.key?(:policy_content)
          @referential_rules_enabled = args[:referential_rules_enabled] if args.key?(:referential_rules_enabled)
        end
      end
      
      # MonitoringConfig specifies the backends Policy Controller should export
      # metrics to. For example, to specify metrics should be exported to Cloud
      # Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
      class PolicyControllerMonitoringConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the list of backends Policy Controller will export to. An empty list
        # would effectively disable metrics export.
        # Corresponds to the JSON property `backends`
        # @return [Array<String>]
        attr_accessor :backends
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backends = args[:backends] if args.key?(:backends)
        end
      end
      
      # OnClusterState represents the state of a sub-component of Policy Controller.
      class PolicyControllerOnClusterState
        include Google::Apis::Core::Hashable
      
        # Surface potential errors or information logs.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The lifecycle state of this component.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # PolicyContentSpec defines the user's desired content configuration on the
      # cluster.
      class PolicyControllerPolicyContentSpec
        include Google::Apis::Core::Hashable
      
        # map of bundle name to BundleInstallSpec. The bundle name maps to the `
        # bundleName` key in the `policycontroller.gke.io/constraintData` annotation on
        # a constraint.
        # Corresponds to the JSON property `bundles`
        # @return [Hash<String,Google::Apis::GkehubV2::PolicyControllerBundleInstallSpec>]
        attr_accessor :bundles
      
        # The config specifying which default library templates to install.
        # Corresponds to the JSON property `templateLibrary`
        # @return [Google::Apis::GkehubV2::PolicyControllerTemplateLibraryConfig]
        attr_accessor :template_library
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundles = args[:bundles] if args.key?(:bundles)
          @template_library = args[:template_library] if args.key?(:template_library)
        end
      end
      
      # The state of the policy controller policy content
      class PolicyControllerPolicyContentState
        include Google::Apis::Core::Hashable
      
        # The state of the any bundles included in the chosen version of the manifest
        # Corresponds to the JSON property `bundleStates`
        # @return [Hash<String,Google::Apis::GkehubV2::PolicyControllerOnClusterState>]
        attr_accessor :bundle_states
      
        # OnClusterState represents the state of a sub-component of Policy Controller.
        # Corresponds to the JSON property `referentialSyncConfigState`
        # @return [Google::Apis::GkehubV2::PolicyControllerOnClusterState]
        attr_accessor :referential_sync_config_state
      
        # OnClusterState represents the state of a sub-component of Policy Controller.
        # Corresponds to the JSON property `templateLibraryState`
        # @return [Google::Apis::GkehubV2::PolicyControllerOnClusterState]
        attr_accessor :template_library_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_states = args[:bundle_states] if args.key?(:bundle_states)
          @referential_sync_config_state = args[:referential_sync_config_state] if args.key?(:referential_sync_config_state)
          @template_library_state = args[:template_library_state] if args.key?(:template_library_state)
        end
      end
      
      # Deployment-specific configuration.
      class PolicyControllerPolicyControllerDeploymentConfig
        include Google::Apis::Core::Hashable
      
        # ResourceRequirements describes the compute resource requirements.
        # Corresponds to the JSON property `containerResources`
        # @return [Google::Apis::GkehubV2::PolicyControllerResourceRequirements]
        attr_accessor :container_resources
      
        # Pod affinity configuration.
        # Corresponds to the JSON property `podAffinity`
        # @return [String]
        attr_accessor :pod_affinity
      
        # Pod anti-affinity enablement. Deprecated: use `pod_affinity` instead.
        # Corresponds to the JSON property `podAntiAffinity`
        # @return [Boolean]
        attr_accessor :pod_anti_affinity
        alias_method :pod_anti_affinity?, :pod_anti_affinity
      
        # Pod tolerations of node taints.
        # Corresponds to the JSON property `podTolerations`
        # @return [Array<Google::Apis::GkehubV2::PolicyControllerToleration>]
        attr_accessor :pod_tolerations
      
        # Pod replica count.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_resources = args[:container_resources] if args.key?(:container_resources)
          @pod_affinity = args[:pod_affinity] if args.key?(:pod_affinity)
          @pod_anti_affinity = args[:pod_anti_affinity] if args.key?(:pod_anti_affinity)
          @pod_tolerations = args[:pod_tolerations] if args.key?(:pod_tolerations)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
        end
      end
      
      # ResourceList contains container resource requirements.
      class PolicyControllerResourceList
        include Google::Apis::Core::Hashable
      
        # CPU requirement expressed in Kubernetes resource units.
        # Corresponds to the JSON property `cpu`
        # @return [String]
        attr_accessor :cpu
      
        # Memory requirement expressed in Kubernetes resource units.
        # Corresponds to the JSON property `memory`
        # @return [String]
        attr_accessor :memory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory = args[:memory] if args.key?(:memory)
        end
      end
      
      # ResourceRequirements describes the compute resource requirements.
      class PolicyControllerResourceRequirements
        include Google::Apis::Core::Hashable
      
        # ResourceList contains container resource requirements.
        # Corresponds to the JSON property `limits`
        # @return [Google::Apis::GkehubV2::PolicyControllerResourceList]
        attr_accessor :limits
      
        # ResourceList contains container resource requirements.
        # Corresponds to the JSON property `requests`
        # @return [Google::Apis::GkehubV2::PolicyControllerResourceList]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limits = args[:limits] if args.key?(:limits)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # **Policy Controller**: Configuration for a single cluster. Intended to
      # parallel the PolicyController CR.
      class PolicyControllerSpec
        include Google::Apis::Core::Hashable
      
        # Configuration for Policy Controller
        # Corresponds to the JSON property `policyControllerHubConfig`
        # @return [Google::Apis::GkehubV2::PolicyControllerHubConfig]
        attr_accessor :policy_controller_hub_config
      
        # Version of Policy Controller installed.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_controller_hub_config = args[:policy_controller_hub_config] if args.key?(:policy_controller_hub_config)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # **Policy Controller**: State for a single cluster.
      class PolicyControllerState
        include Google::Apis::Core::Hashable
      
        # Currently these include (also serving as map keys): 1. "admission" 2. "audit"
        # 3. "mutation"
        # Corresponds to the JSON property `componentStates`
        # @return [Hash<String,Google::Apis::GkehubV2::PolicyControllerOnClusterState>]
        attr_accessor :component_states
      
        # The state of the policy controller policy content
        # Corresponds to the JSON property `policyContentState`
        # @return [Google::Apis::GkehubV2::PolicyControllerPolicyContentState]
        attr_accessor :policy_content_state
      
        # The overall Policy Controller lifecycle state observed by the Hub Feature
        # controller.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_states = args[:component_states] if args.key?(:component_states)
          @policy_content_state = args[:policy_content_state] if args.key?(:policy_content_state)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The config specifying which default library templates to install.
      class PolicyControllerTemplateLibraryConfig
        include Google::Apis::Core::Hashable
      
        # Configures the manner in which the template library is installed on the
        # cluster.
        # Corresponds to the JSON property `installation`
        # @return [String]
        attr_accessor :installation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @installation = args[:installation] if args.key?(:installation)
        end
      end
      
      # Toleration of a node taint.
      class PolicyControllerToleration
        include Google::Apis::Core::Hashable
      
        # Matches a taint effect.
        # Corresponds to the JSON property `effect`
        # @return [String]
        attr_accessor :effect
      
        # Matches a taint key (not necessarily unique).
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Matches a taint operator.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Matches a taint value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effect = args[:effect] if args.key?(:effect)
          @key = args[:key] if args.key?(:key)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # RBACRoleBindingState is the status of an RBACRoleBinding which exists on a
      # membership.
      class RbacRoleBindingActuationRbacRoleBindingState
        include Google::Apis::Core::Hashable
      
        # The reason for the failure.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The state of the RBACRoleBinding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The time the RBACRoleBinding status was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # **RBAC RoleBinding Actuation**: The membership-specific input for
      # RBACRoleBindingActuation feature.
      class RbacRoleBindingActuationSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # **RBAC RoleBinding Actuation**: A membership-specific Feature state for the
      # RBACRoleBindingActuation fleet feature.
      class RbacRoleBindingActuationState
        include Google::Apis::Core::Hashable
      
        # Output only. The state of RBACRoleBindings using custom roles that exist on
        # the cluster, keyed by RBACRoleBinding resource name with format: projects/`
        # project`/locations/`location`/scopes/`scope`/rbacrolebindings/`rbacrolebinding`
        # .
        # Corresponds to the JSON property `rbacrolebindingStates`
        # @return [Hash<String,Google::Apis::GkehubV2::RbacRoleBindingActuationRbacRoleBindingState>]
        attr_accessor :rbacrolebinding_states
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rbacrolebinding_states = args[:rbacrolebinding_states] if args.key?(:rbacrolebinding_states)
        end
      end
      
      # AnalysisMessage is a single message produced by an analyzer, and it used to
      # communicate to the end user about the state of their Service Mesh
      # configuration.
      class ServiceMeshAnalysisMessage
        include Google::Apis::Core::Hashable
      
        # A UI can combine these args with a template (based on message_base.type) to
        # produce an internationalized message.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,Object>]
        attr_accessor :args
      
        # A human readable description of what the error means. It is suitable for non-
        # internationalize display purposes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # AnalysisMessageBase describes some common information that is needed for all
        # messages.
        # Corresponds to the JSON property `messageBase`
        # @return [Google::Apis::GkehubV2::ServiceMeshAnalysisMessageBase]
        attr_accessor :message_base
      
        # A list of strings specifying the resource identifiers that were the cause of
        # message generation. A "path" here may be: * MEMBERSHIP_ID if the cause is a
        # specific member cluster * MEMBERSHIP_ID/(NAMESPACE\/)?RESOURCETYPE/NAME if the
        # cause is a resource in a cluster
        # Corresponds to the JSON property `resourcePaths`
        # @return [Array<String>]
        attr_accessor :resource_paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @description = args[:description] if args.key?(:description)
          @message_base = args[:message_base] if args.key?(:message_base)
          @resource_paths = args[:resource_paths] if args.key?(:resource_paths)
        end
      end
      
      # AnalysisMessageBase describes some common information that is needed for all
      # messages.
      class ServiceMeshAnalysisMessageBase
        include Google::Apis::Core::Hashable
      
        # A url pointing to the Service Mesh or Istio documentation for this specific
        # error type.
        # Corresponds to the JSON property `documentationUrl`
        # @return [String]
        attr_accessor :documentation_url
      
        # Represents how severe a message is.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # A unique identifier for the type of message. Display_name is intended to be
        # human-readable, code is intended to be machine readable. There should be a one-
        # to-one mapping between display_name and code. (i.e. do not re-use
        # display_names or codes between message types.) See istio.analysis.v1alpha1.
        # AnalysisMessageBase.Type
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::GkehubV2::ServiceMeshType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documentation_url = args[:documentation_url] if args.key?(:documentation_url)
          @level = args[:level] if args.key?(:level)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Condition being reported.
      class ServiceMeshCondition
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the condition which describes the condition recognizable
        # to the user.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short summary about the issue.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Links contains actionable information.
        # Corresponds to the JSON property `documentationLink`
        # @return [String]
        attr_accessor :documentation_link
      
        # Severity level of the condition.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @documentation_link = args[:documentation_link] if args.key?(:documentation_link)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Status of control plane management.
      class ServiceMeshControlPlaneManagement
        include Google::Apis::Core::Hashable
      
        # Explanation of state.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::GkehubV2::ServiceMeshStatusDetails>]
        attr_accessor :details
      
        # Output only. Implementation of managed control plane.
        # Corresponds to the JSON property `implementation`
        # @return [String]
        attr_accessor :implementation
      
        # LifecycleState of control plane management.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @implementation = args[:implementation] if args.key?(:implementation)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Status of data plane management. Only reported per-member.
      class ServiceMeshDataPlaneManagement
        include Google::Apis::Core::Hashable
      
        # Explanation of the status.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::GkehubV2::ServiceMeshStatusDetails>]
        attr_accessor :details
      
        # Lifecycle status of data plane management.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # **Service Mesh**: Spec for a single Membership for the servicemesh feature
      class ServiceMeshSpec
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the API that will be used for configuring the mesh
        # workloads.
        # Corresponds to the JSON property `configApi`
        # @return [String]
        attr_accessor :config_api
      
        # Deprecated: use `management` instead Enables automatic control plane
        # management.
        # Corresponds to the JSON property `controlPlane`
        # @return [String]
        attr_accessor :control_plane
      
        # Determines which release channel to use for default injection and service mesh
        # APIs.
        # Corresponds to the JSON property `defaultChannel`
        # @return [String]
        attr_accessor :default_channel
      
        # Optional. Enables automatic Service Mesh management.
        # Corresponds to the JSON property `management`
        # @return [String]
        attr_accessor :management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_api = args[:config_api] if args.key?(:config_api)
          @control_plane = args[:control_plane] if args.key?(:control_plane)
          @default_channel = args[:default_channel] if args.key?(:default_channel)
          @management = args[:management] if args.key?(:management)
        end
      end
      
      # **Service Mesh**: State for a single Membership, as analyzed by the Service
      # Mesh Hub Controller.
      class ServiceMeshState
        include Google::Apis::Core::Hashable
      
        # Output only. Results of running Service Mesh analyzers.
        # Corresponds to the JSON property `analysisMessages`
        # @return [Array<Google::Apis::GkehubV2::ServiceMeshAnalysisMessage>]
        attr_accessor :analysis_messages
      
        # Output only. List of conditions reported for this membership.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::GkehubV2::ServiceMeshCondition>]
        attr_accessor :conditions
      
        # The API version (i.e. Istio CRD version) for configuring service mesh in this
        # cluster. This version is influenced by the `default_channel` field.
        # Corresponds to the JSON property `configApiVersion`
        # @return [String]
        attr_accessor :config_api_version
      
        # Status of control plane management.
        # Corresponds to the JSON property `controlPlaneManagement`
        # @return [Google::Apis::GkehubV2::ServiceMeshControlPlaneManagement]
        attr_accessor :control_plane_management
      
        # Status of data plane management. Only reported per-member.
        # Corresponds to the JSON property `dataPlaneManagement`
        # @return [Google::Apis::GkehubV2::ServiceMeshDataPlaneManagement]
        attr_accessor :data_plane_management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_messages = args[:analysis_messages] if args.key?(:analysis_messages)
          @conditions = args[:conditions] if args.key?(:conditions)
          @config_api_version = args[:config_api_version] if args.key?(:config_api_version)
          @control_plane_management = args[:control_plane_management] if args.key?(:control_plane_management)
          @data_plane_management = args[:data_plane_management] if args.key?(:data_plane_management)
        end
      end
      
      # Structured and human-readable details for a status.
      class ServiceMeshStatusDetails
        include Google::Apis::Core::Hashable
      
        # A machine-readable code that further describes a broad status.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Human-readable explanation of code.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # A unique identifier for the type of message. Display_name is intended to be
      # human-readable, code is intended to be machine readable. There should be a one-
      # to-one mapping between display_name and code. (i.e. do not re-use
      # display_names or codes between message types.) See istio.analysis.v1alpha1.
      # AnalysisMessageBase.Type
      class ServiceMeshType
        include Google::Apis::Core::Hashable
      
        # A 7 character code matching `^IST[0-9]`4`$` or `^ASM[0-9]`4`$`, intended to
        # uniquely identify the message type. (e.g. "IST0001" is mapped to the "
        # InternalError" message type.)
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human-readable name for the message type. e.g. "InternalError", "
        # PodMissingProxy". This should be the same for all messages of the same type. (
        # This corresponds to the `name` field in open-source Istio.)
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # High-level state of a MembershipFeature.
      class State
        include Google::Apis::Core::Hashable
      
        # The high-level, machine-readable status of this MembershipFeature.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human-readable description of the current status.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time this status and any related Feature-specific details were updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # **WorkloadCertificate**: The membership-specific input for WorkloadCertificate
      # feature.
      class WorkloadCertificateSpec
        include Google::Apis::Core::Hashable
      
        # CertificateManagement specifies workload certificate management.
        # Corresponds to the JSON property `certificateManagement`
        # @return [String]
        attr_accessor :certificate_management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_management = args[:certificate_management] if args.key?(:certificate_management)
        end
      end
    end
  end
end
