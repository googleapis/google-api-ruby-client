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
      
      # **Anthos Observability**: Spec
      class AnthosObservabilityFeatureSpec
        include Google::Apis::Core::Hashable
      
        # **Anthosobservability**: Per-Membership Feature spec.
        # Corresponds to the JSON property `defaultMembershipSpec`
        # @return [Google::Apis::GkehubV1beta::AnthosObservabilityMembershipSpec]
        attr_accessor :default_membership_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_membership_spec = args[:default_membership_spec] if args.key?(:default_membership_spec)
        end
      end
      
      # **Anthosobservability**: Per-Membership Feature spec.
      class AnthosObservabilityMembershipSpec
        include Google::Apis::Core::Hashable
      
        # Use full of metrics rather than optimized metrics. See https://cloud.google.
        # com/anthos/clusters/docs/on-prem/1.8/concepts/logging-and-monitoring#
        # optimized_metrics_default_metrics
        # Corresponds to the JSON property `doNotOptimizeMetrics`
        # @return [Boolean]
        attr_accessor :do_not_optimize_metrics
        alias_method :do_not_optimize_metrics?, :do_not_optimize_metrics
      
        # Enable collecting and reporting metrics and logs from user apps.
        # Corresponds to the JSON property `enableStackdriverOnApplications`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_on_applications
        alias_method :enable_stackdriver_on_applications?, :enable_stackdriver_on_applications
      
        # the version of stackdriver operator used by this feature
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @do_not_optimize_metrics = args[:do_not_optimize_metrics] if args.key?(:do_not_optimize_metrics)
          @enable_stackdriver_on_applications = args[:enable_stackdriver_on_applications] if args.key?(:enable_stackdriver_on_applications)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Spec for App Dev Experience Feature.
      class AppDevExperienceFeatureSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # State for App Dev Exp Feature.
      class AppDevExperienceFeatureState
        include Google::Apis::Core::Hashable
      
        # Status specifies state for the subcomponent.
        # Corresponds to the JSON property `networkingInstallSucceeded`
        # @return [Google::Apis::GkehubV1beta::Status]
        attr_accessor :networking_install_succeeded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @networking_install_succeeded = args[:networking_install_succeeded] if args.key?(:networking_install_succeeded)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::GkehubV1beta::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::GkehubV1beta::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # domain:`domain``: The G Suite domain (primary) that represents all the users
        # of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
      
      # CommonFeatureSpec contains Hub-wide configuration information
      class CommonFeatureSpec
        include Google::Apis::Core::Hashable
      
        # **Anthos Observability**: Spec
        # Corresponds to the JSON property `anthosobservability`
        # @return [Google::Apis::GkehubV1beta::AnthosObservabilityFeatureSpec]
        attr_accessor :anthosobservability
      
        # Spec for App Dev Experience Feature.
        # Corresponds to the JSON property `appdevexperience`
        # @return [Google::Apis::GkehubV1beta::AppDevExperienceFeatureSpec]
        attr_accessor :appdevexperience
      
        # **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
        # Corresponds to the JSON property `fleetobservability`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFeatureSpec]
        attr_accessor :fleetobservability
      
        # **Multi-cluster Ingress**: The configuration for the MultiClusterIngress
        # feature.
        # Corresponds to the JSON property `multiclusteringress`
        # @return [Google::Apis::GkehubV1beta::MultiClusterIngressFeatureSpec]
        attr_accessor :multiclusteringress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anthosobservability = args[:anthosobservability] if args.key?(:anthosobservability)
          @appdevexperience = args[:appdevexperience] if args.key?(:appdevexperience)
          @fleetobservability = args[:fleetobservability] if args.key?(:fleetobservability)
          @multiclusteringress = args[:multiclusteringress] if args.key?(:multiclusteringress)
        end
      end
      
      # CommonFeatureState contains Hub-wide Feature status information.
      class CommonFeatureState
        include Google::Apis::Core::Hashable
      
        # State for App Dev Exp Feature.
        # Corresponds to the JSON property `appdevexperience`
        # @return [Google::Apis::GkehubV1beta::AppDevExperienceFeatureState]
        attr_accessor :appdevexperience
      
        # **FleetObservability**: An empty state left as an example Hub-wide Feature
        # state.
        # Corresponds to the JSON property `fleetobservability`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFeatureState]
        attr_accessor :fleetobservability
      
        # FeatureState describes the high-level state of a Feature. It may be used to
        # describe a Feature's state at the environ-level, or per-membershop, depending
        # on the context.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::FeatureState]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appdevexperience = args[:appdevexperience] if args.key?(:appdevexperience)
          @fleetobservability = args[:fleetobservability] if args.key?(:fleetobservability)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # CommonFleetDefaultMemberConfigSpec contains default configuration information
      # for memberships of a fleet
      class CommonFleetDefaultMemberConfigSpec
        include Google::Apis::Core::Hashable
      
        # **Anthos Identity Service**: Configuration for a single Membership.
        # Corresponds to the JSON property `identityservice`
        # @return [Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec]
        attr_accessor :identityservice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
        end
      end
      
      # Configuration for Binauthz
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
      
      # State for Binauthz
      class ConfigManagementBinauthzState
        include Google::Apis::Core::Hashable
      
        # The version of binauthz.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementBinauthzVersion]
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
      
        # Set to true to allow the vertical scaling. Defaults to false which disallows
        # vertical scaling. This field is deprecated.
        # Corresponds to the JSON property `allowVerticalScale`
        # @return [Boolean]
        attr_accessor :allow_vertical_scale
        alias_method :allow_vertical_scale?, :allow_vertical_scale
      
        # Enables the installation of ConfigSync. If set to true, ConfigSync resources
        # will be created and the other ConfigSync fields will be applied if exist. If
        # set to false, all other ConfigSync fields will be ignored, ConfigSync
        # resources will be deleted. If omitted, ConfigSync resources will be managed
        # depends on the presence of git field.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Git repo configuration for a single cluster.
        # Corresponds to the JSON property `git`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementGitConfig]
        attr_accessor :git
      
        # OCI repo configuration for a single cluster
        # Corresponds to the JSON property `oci`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementOciConfig]
        attr_accessor :oci
      
        # Set to true to enable the Config Sync admission webhook to prevent drifts. If
        # set to `false`, disables the Config Sync admission webhook and does not
        # prevent drifts.
        # Corresponds to the JSON property `preventDrift`
        # @return [Boolean]
        attr_accessor :prevent_drift
        alias_method :prevent_drift?, :prevent_drift
      
        # Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured"
        # mode.
        # Corresponds to the JSON property `sourceFormat`
        # @return [String]
        attr_accessor :source_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_vertical_scale = args[:allow_vertical_scale] if args.key?(:allow_vertical_scale)
          @enabled = args[:enabled] if args.key?(:enabled)
          @git = args[:git] if args.key?(:git)
          @oci = args[:oci] if args.key?(:oci)
          @prevent_drift = args[:prevent_drift] if args.key?(:prevent_drift)
          @source_format = args[:source_format] if args.key?(:source_format)
        end
      end
      
      # The state of ConfigSync's deployment on a cluster
      class ConfigManagementConfigSyncDeploymentState
        include Google::Apis::Core::Hashable
      
        # Deployment state of admission-webhook
        # Corresponds to the JSON property `admissionWebhook`
        # @return [String]
        attr_accessor :admission_webhook
      
        # Deployment state of the git-sync pod
        # Corresponds to the JSON property `gitSync`
        # @return [String]
        attr_accessor :git_sync
      
        # Deployment state of the importer pod
        # Corresponds to the JSON property `importer`
        # @return [String]
        attr_accessor :importer
      
        # Deployment state of the monitor pod
        # Corresponds to the JSON property `monitor`
        # @return [String]
        attr_accessor :monitor
      
        # Deployment state of reconciler-manager pod
        # Corresponds to the JSON property `reconcilerManager`
        # @return [String]
        attr_accessor :reconciler_manager
      
        # Deployment state of root-reconciler
        # Corresponds to the JSON property `rootReconciler`
        # @return [String]
        attr_accessor :root_reconciler
      
        # Deployment state of the syncer pod
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
          @reconciler_manager = args[:reconciler_manager] if args.key?(:reconciler_manager)
          @root_reconciler = args[:root_reconciler] if args.key?(:root_reconciler)
          @syncer = args[:syncer] if args.key?(:syncer)
        end
      end
      
      # State information for ConfigSync
      class ConfigManagementConfigSyncState
        include Google::Apis::Core::Hashable
      
        # The state of ConfigSync's deployment on a cluster
        # Corresponds to the JSON property `deploymentState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementConfigSyncDeploymentState]
        attr_accessor :deployment_state
      
        # State indicating an ACM's progress syncing configurations to a cluster
        # Corresponds to the JSON property `syncState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementSyncState]
        attr_accessor :sync_state
      
        # Specific versioning information pertaining to ConfigSync's Pods
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementConfigSyncVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_state = args[:deployment_state] if args.key?(:deployment_state)
          @sync_state = args[:sync_state] if args.key?(:sync_state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Specific versioning information pertaining to ConfigSync's Pods
      class ConfigManagementConfigSyncVersion
        include Google::Apis::Core::Hashable
      
        # Version of the deployed admission_webhook pod
        # Corresponds to the JSON property `admissionWebhook`
        # @return [String]
        attr_accessor :admission_webhook
      
        # Version of the deployed git-sync pod
        # Corresponds to the JSON property `gitSync`
        # @return [String]
        attr_accessor :git_sync
      
        # Version of the deployed importer pod
        # Corresponds to the JSON property `importer`
        # @return [String]
        attr_accessor :importer
      
        # Version of the deployed monitor pod
        # Corresponds to the JSON property `monitor`
        # @return [String]
        attr_accessor :monitor
      
        # Version of the deployed reconciler-manager pod
        # Corresponds to the JSON property `reconcilerManager`
        # @return [String]
        attr_accessor :reconciler_manager
      
        # Version of the deployed reconciler container in root-reconciler pod
        # Corresponds to the JSON property `rootReconciler`
        # @return [String]
        attr_accessor :root_reconciler
      
        # Version of the deployed syncer pod
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
          @reconciler_manager = args[:reconciler_manager] if args.key?(:reconciler_manager)
          @root_reconciler = args[:root_reconciler] if args.key?(:root_reconciler)
          @syncer = args[:syncer] if args.key?(:syncer)
        end
      end
      
      # Model for a config file in the git repo with an associated Sync error
      class ConfigManagementErrorResource
        include Google::Apis::Core::Hashable
      
        # A Kubernetes object's GVK
        # Corresponds to the JSON property `resourceGvk`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementGroupVersionKind]
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
      
        # The GCP Service Account Email used for auth when secret_type is
        # gcpServiceAccount.
        # Corresponds to the JSON property `gcpServiceAccountEmail`
        # @return [String]
        attr_accessor :gcp_service_account_email
      
        # URL for the HTTPS proxy to be used when communicating with the Git repo.
        # Corresponds to the JSON property `httpsProxy`
        # @return [String]
        attr_accessor :https_proxy
      
        # The path within the Git repository that represents the top level of the repo
        # to sync. Default: the root directory of the repository.
        # Corresponds to the JSON property `policyDir`
        # @return [String]
        attr_accessor :policy_dir
      
        # Type of secret configured for access to the Git repo. Must be one of ssh,
        # cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this
        # is case-sensitive. Required.
        # Corresponds to the JSON property `secretType`
        # @return [String]
        attr_accessor :secret_type
      
        # The branch of the repository to sync from. Default: master.
        # Corresponds to the JSON property `syncBranch`
        # @return [String]
        attr_accessor :sync_branch
      
        # The URL of the Git repository to use as the source of truth.
        # Corresponds to the JSON property `syncRepo`
        # @return [String]
        attr_accessor :sync_repo
      
        # Git revision (tag or hash) to check out. Default HEAD.
        # Corresponds to the JSON property `syncRev`
        # @return [String]
        attr_accessor :sync_rev
      
        # Period in seconds between consecutive syncs. Default: 15.
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
      
      # A Kubernetes object's GVK
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
      
      # Configuration for Hierarchy Controller
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
      
        # The deployment state for Hierarchy Controller extension (e.g. v0.7.0-hc.1)
        # Corresponds to the JSON property `extension`
        # @return [String]
        attr_accessor :extension
      
        # The deployment state for open source HNC (e.g. v0.7.0-hc.0)
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
      
      # State for Hierarchy Controller
      class ConfigManagementHierarchyControllerState
        include Google::Apis::Core::Hashable
      
        # Deployment state for Hierarchy Controller
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerDeploymentState]
        attr_accessor :state
      
        # Version for Hierarchy Controller
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerVersion]
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
      
      # Version for Hierarchy Controller
      class ConfigManagementHierarchyControllerVersion
        include Google::Apis::Core::Hashable
      
        # Version for Hierarchy Controller extension
        # Corresponds to the JSON property `extension`
        # @return [String]
        attr_accessor :extension
      
        # Version for open source HNC
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
      
      # Errors pertaining to the installation of ACM
      class ConfigManagementInstallError
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
      
      # **Anthos Config Management**: Configuration for a single cluster. Intended to
      # parallel the ConfigManagement CR.
      class ConfigManagementMembershipSpec
        include Google::Apis::Core::Hashable
      
        # Configuration for Binauthz
        # Corresponds to the JSON property `binauthz`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementBinauthzConfig]
        attr_accessor :binauthz
      
        # Configuration for Config Sync
        # Corresponds to the JSON property `configSync`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementConfigSync]
        attr_accessor :config_sync
      
        # Configuration for Hierarchy Controller
        # Corresponds to the JSON property `hierarchyController`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerConfig]
        attr_accessor :hierarchy_controller
      
        # Configuration for Policy Controller
        # Corresponds to the JSON property `policyController`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementPolicyController]
        attr_accessor :policy_controller
      
        # Version of ACM installed.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binauthz = args[:binauthz] if args.key?(:binauthz)
          @config_sync = args[:config_sync] if args.key?(:config_sync)
          @hierarchy_controller = args[:hierarchy_controller] if args.key?(:hierarchy_controller)
          @policy_controller = args[:policy_controller] if args.key?(:policy_controller)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # **Anthos Config Management**: State for a single cluster.
      class ConfigManagementMembershipState
        include Google::Apis::Core::Hashable
      
        # State for Binauthz
        # Corresponds to the JSON property `binauthzState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementBinauthzState]
        attr_accessor :binauthz_state
      
        # The user-defined name for the cluster used by ClusterSelectors to group
        # clusters together. This should match Membership's membership_name, unless the
        # user installed ACM on the cluster manually prior to enabling the ACM hub
        # feature. Unique within a Anthos Config Management installation.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # State information for ConfigSync
        # Corresponds to the JSON property `configSyncState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementConfigSyncState]
        attr_accessor :config_sync_state
      
        # State for Hierarchy Controller
        # Corresponds to the JSON property `hierarchyControllerState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementHierarchyControllerState]
        attr_accessor :hierarchy_controller_state
      
        # **Anthos Config Management**: Configuration for a single cluster. Intended to
        # parallel the ConfigManagement CR.
        # Corresponds to the JSON property `membershipSpec`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec]
        attr_accessor :membership_spec
      
        # State information for an ACM's Operator
        # Corresponds to the JSON property `operatorState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementOperatorState]
        attr_accessor :operator_state
      
        # State for PolicyControllerState.
        # Corresponds to the JSON property `policyControllerState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerState]
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
          @membership_spec = args[:membership_spec] if args.key?(:membership_spec)
          @operator_state = args[:operator_state] if args.key?(:operator_state)
          @policy_controller_state = args[:policy_controller_state] if args.key?(:policy_controller_state)
        end
      end
      
      # OCI repo configuration for a single cluster
      class ConfigManagementOciConfig
        include Google::Apis::Core::Hashable
      
        # The GCP Service Account Email used for auth when secret_type is
        # gcpServiceAccount.
        # Corresponds to the JSON property `gcpServiceAccountEmail`
        # @return [String]
        attr_accessor :gcp_service_account_email
      
        # The absolute path of the directory that contains the local resources. Default:
        # the root directory of the image.
        # Corresponds to the JSON property `policyDir`
        # @return [String]
        attr_accessor :policy_dir
      
        # Type of secret configured for access to the Git repo.
        # Corresponds to the JSON property `secretType`
        # @return [String]
        attr_accessor :secret_type
      
        # The OCI image repository URL for the package to sync from. e.g. `LOCATION-
        # docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
        # Corresponds to the JSON property `syncRepo`
        # @return [String]
        attr_accessor :sync_repo
      
        # Period in seconds between consecutive syncs. Default: 15.
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
      
      # State information for an ACM's Operator
      class ConfigManagementOperatorState
        include Google::Apis::Core::Hashable
      
        # The state of the Operator's deployment
        # Corresponds to the JSON property `deploymentState`
        # @return [String]
        attr_accessor :deployment_state
      
        # Install errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV1beta::ConfigManagementInstallError>]
        attr_accessor :errors
      
        # The semenatic version number of the operator
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
        # @return [Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerMonitoring]
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
        # @return [Google::Apis::GkehubV1beta::ConfigManagementGatekeeperDeploymentState]
        attr_accessor :deployment_state
      
        # The build version of Gatekeeper Policy Controller is using.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_state = args[:deployment_state] if args.key?(:deployment_state)
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
      
      # An ACM created error representing a problem syncing configurations
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
        # @return [Array<Google::Apis::GkehubV1beta::ConfigManagementErrorResource>]
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
      
      # State indicating an ACM's progress syncing configurations to a cluster
      class ConfigManagementSyncState
        include Google::Apis::Core::Hashable
      
        # Sync status code
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A list of errors resulting from problematic configs. This list will be
        # truncated after 100 errors, although it is unlikely for that many errors to
        # simultaneously exist.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV1beta::ConfigManagementSyncError>]
        attr_accessor :errors
      
        # Token indicating the state of the importer.
        # Corresponds to the JSON property `importToken`
        # @return [String]
        attr_accessor :import_token
      
        # Deprecated: use last_sync_time instead. Timestamp of when ACM last
        # successfully synced the repo The time format is specified in https://golang.
        # org/pkg/time/#Time.String
        # Corresponds to the JSON property `lastSync`
        # @return [String]
        attr_accessor :last_sync
      
        # Timestamp type of when ACM last successfully synced the repo
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Feature represents the settings and status of any Hub Feature.
      class Feature
        include Google::Apis::Core::Hashable
      
        # Output only. When the Feature resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the Feature resource was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # CommonFleetDefaultMemberConfigSpec contains default configuration information
        # for memberships of a fleet
        # Corresponds to the JSON property `fleetDefaultMemberConfig`
        # @return [Google::Apis::GkehubV1beta::CommonFleetDefaultMemberConfigSpec]
        attr_accessor :fleet_default_member_config
      
        # GCP labels for this Feature.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Membership-specific configuration for this Feature. If this Feature
        # does not support any per-Membership configuration, this field may be unused.
        # The keys indicate which Membership the configuration is for, in the form: `
        # projects/`p`/locations/`l`/memberships/`m`` Where `p` is the project, `l` is a
        # valid location and `m` is a valid Membership in this project at that location.
        # `p` WILL match the Feature's project. `p` will always be returned as the
        # project number, but the project ID is also accepted during input. If the same
        # Membership is specified in the map twice (using the project ID form, and the
        # project number form), exactly ONE of the entries will be saved, with no
        # guarantees as to which. For this reason, it is recommended the same format be
        # used for all entries when mutating a Feature.
        # Corresponds to the JSON property `membershipSpecs`
        # @return [Hash<String,Google::Apis::GkehubV1beta::MembershipFeatureSpec>]
        attr_accessor :membership_specs
      
        # Output only. Membership-specific Feature status. If this Feature does report
        # any per-Membership status, this field may be unused. The keys indicate which
        # Membership the state is for, in the form: `projects/`p`/locations/`l`/
        # memberships/`m`` Where `p` is the project number, `l` is a valid location and `
        # m` is a valid Membership in this project at that location. `p` MUST match the
        # Feature's project number.
        # Corresponds to the JSON property `membershipStates`
        # @return [Hash<String,Google::Apis::GkehubV1beta::MembershipFeatureState>]
        attr_accessor :membership_states
      
        # Output only. The full, unique name of this Feature resource in the format `
        # projects/*/locations/*/features/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # FeatureResourceState describes the state of a Feature *resource* in the GkeHub
        # API. See `FeatureState` for the "running state" of the Feature in the Hub and
        # across Memberships.
        # Corresponds to the JSON property `resourceState`
        # @return [Google::Apis::GkehubV1beta::FeatureResourceState]
        attr_accessor :resource_state
      
        # Optional. Scope-specific configuration for this Feature. If this Feature does
        # not support any per-Scope configuration, this field may be unused. The keys
        # indicate which Scope the configuration is for, in the form: `projects/`p`/
        # locations/global/scopes/`s`` Where `p` is the project, `s` is a valid Scope in
        # this project. `p` WILL match the Feature's project. `p` will always be
        # returned as the project number, but the project ID is also accepted during
        # input. If the same Scope is specified in the map twice (using the project ID
        # form, and the project number form), exactly ONE of the entries will be saved,
        # with no guarantees as to which. For this reason, it is recommended the same
        # format be used for all entries when mutating a Feature.
        # Corresponds to the JSON property `scopeSpecs`
        # @return [Hash<String,Google::Apis::GkehubV1beta::ScopeFeatureSpec>]
        attr_accessor :scope_specs
      
        # Output only. Scope-specific Feature status. If this Feature does report any
        # per-Scope status, this field may be unused. The keys indicate which Scope the
        # state is for, in the form: `projects/`p`/locations/global/scopes/`s`` Where `p`
        # is the project, `s` is a valid Scope in this project. `p` WILL match the
        # Feature's project.
        # Corresponds to the JSON property `scopeStates`
        # @return [Hash<String,Google::Apis::GkehubV1beta::ScopeFeatureState>]
        attr_accessor :scope_states
      
        # CommonFeatureSpec contains Hub-wide configuration information
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::GkehubV1beta::CommonFeatureSpec]
        attr_accessor :spec
      
        # CommonFeatureState contains Hub-wide Feature status information.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::CommonFeatureState]
        attr_accessor :state
      
        # Output only. When the Feature resource was last updated.
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
          @fleet_default_member_config = args[:fleet_default_member_config] if args.key?(:fleet_default_member_config)
          @labels = args[:labels] if args.key?(:labels)
          @membership_specs = args[:membership_specs] if args.key?(:membership_specs)
          @membership_states = args[:membership_states] if args.key?(:membership_states)
          @name = args[:name] if args.key?(:name)
          @resource_state = args[:resource_state] if args.key?(:resource_state)
          @scope_specs = args[:scope_specs] if args.key?(:scope_specs)
          @scope_states = args[:scope_states] if args.key?(:scope_states)
          @spec = args[:spec] if args.key?(:spec)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # FeatureResourceState describes the state of a Feature *resource* in the GkeHub
      # API. See `FeatureState` for the "running state" of the Feature in the Hub and
      # across Memberships.
      class FeatureResourceState
        include Google::Apis::Core::Hashable
      
        # The current state of the Feature resource in the Hub API.
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
      
      # FeatureState describes the high-level state of a Feature. It may be used to
      # describe a Feature's state at the environ-level, or per-membershop, depending
      # on the context.
      class FeatureState
        include Google::Apis::Core::Hashable
      
        # The high-level, machine-readable status of this Feature.
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
      
      # **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
      class FleetObservabilityFeatureSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # **FleetObservability**: An empty state left as an example Hub-wide Feature
      # state.
      class FleetObservabilityFeatureState
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # **FleetObservability**: The membership-specific input for FleetObservability
      # feature.
      class FleetObservabilityMembershipSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # **FleetObservability**: An empty state left as an example membership-specific
      # Feature state.
      class FleetObservabilityMembershipState
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Google::Apis::GkehubV1beta::IdentityServiceAzureAdConfig]
        attr_accessor :azuread_config
      
        # Configuration for the Google Plugin Auth flow.
        # Corresponds to the JSON property `googleConfig`
        # @return [Google::Apis::GkehubV1beta::IdentityServiceGoogleConfig]
        attr_accessor :google_config
      
        # Identifier for auth config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for OIDC Auth flow.
        # Corresponds to the JSON property `oidcConfig`
        # @return [Google::Apis::GkehubV1beta::IdentityServiceOidcConfig]
        attr_accessor :oidc_config
      
        # Proxy server address to use for auth method.
        # Corresponds to the JSON property `proxy`
        # @return [String]
        attr_accessor :proxy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @azuread_config = args[:azuread_config] if args.key?(:azuread_config)
          @google_config = args[:google_config] if args.key?(:google_config)
          @name = args[:name] if args.key?(:name)
          @oidc_config = args[:oidc_config] if args.key?(:oidc_config)
          @proxy = args[:proxy] if args.key?(:proxy)
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
      
        # The redirect URL that kubectl uses for authorization.
        # Corresponds to the JSON property `kubectlRedirectUri`
        # @return [String]
        attr_accessor :kubectl_redirect_uri
      
        # Kind of Azure AD account to be authenticated. Supported values are or for
        # accounts belonging to a specific tenant.
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @encrypted_client_secret = args[:encrypted_client_secret] if args.key?(:encrypted_client_secret)
          @kubectl_redirect_uri = args[:kubectl_redirect_uri] if args.key?(:kubectl_redirect_uri)
          @tenant = args[:tenant] if args.key?(:tenant)
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
      
      # **Anthos Identity Service**: Configuration for a single Membership.
      class IdentityServiceMembershipSpec
        include Google::Apis::Core::Hashable
      
        # A member may support multiple auth methods.
        # Corresponds to the JSON property `authMethods`
        # @return [Array<Google::Apis::GkehubV1beta::IdentityServiceAuthMethod>]
        attr_accessor :auth_methods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_methods = args[:auth_methods] if args.key?(:auth_methods)
        end
      end
      
      # **Anthos Identity Service**: State for a single Membership.
      class IdentityServiceMembershipState
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
      
        # **Anthos Identity Service**: Configuration for a single Membership.
        # Corresponds to the JSON property `memberConfig`
        # @return [Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec]
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
      
      # Response message for the `GkeHub.ListFeatures` method.
      class ListFeaturesResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `ListFeatures` method.
        # The value of an empty string means that there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching Features
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::GkehubV1beta::Feature>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GkehubV1beta::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::GkehubV1beta::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
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
      
      # MembershipFeatureSpec contains configuration information for a single
      # Membership.
      class MembershipFeatureSpec
        include Google::Apis::Core::Hashable
      
        # **Anthosobservability**: Per-Membership Feature spec.
        # Corresponds to the JSON property `anthosobservability`
        # @return [Google::Apis::GkehubV1beta::AnthosObservabilityMembershipSpec]
        attr_accessor :anthosobservability
      
        # **Cloud Build**: Configurations for each Cloud Build enabled cluster.
        # Corresponds to the JSON property `cloudbuild`
        # @return [Google::Apis::GkehubV1beta::MembershipSpec]
        attr_accessor :cloudbuild
      
        # **Anthos Config Management**: Configuration for a single cluster. Intended to
        # parallel the ConfigManagement CR.
        # Corresponds to the JSON property `configmanagement`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec]
        attr_accessor :configmanagement
      
        # True if value of `feature_spec` was inherited from a fleet-level default.
        # Corresponds to the JSON property `fleetInherited`
        # @return [Boolean]
        attr_accessor :fleet_inherited
        alias_method :fleet_inherited?, :fleet_inherited
      
        # **FleetObservability**: The membership-specific input for FleetObservability
        # feature.
        # Corresponds to the JSON property `fleetobservability`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityMembershipSpec]
        attr_accessor :fleetobservability
      
        # **Anthos Identity Service**: Configuration for a single Membership.
        # Corresponds to the JSON property `identityservice`
        # @return [Google::Apis::GkehubV1beta::IdentityServiceMembershipSpec]
        attr_accessor :identityservice
      
        # **Service Mesh**: Spec for a single Membership for the servicemesh feature
        # Corresponds to the JSON property `mesh`
        # @return [Google::Apis::GkehubV1beta::ServiceMeshMembershipSpec]
        attr_accessor :mesh
      
        # **Policy Controller**: Configuration for a single cluster. Intended to
        # parallel the PolicyController CR.
        # Corresponds to the JSON property `policycontroller`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerMembershipSpec]
        attr_accessor :policycontroller
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anthosobservability = args[:anthosobservability] if args.key?(:anthosobservability)
          @cloudbuild = args[:cloudbuild] if args.key?(:cloudbuild)
          @configmanagement = args[:configmanagement] if args.key?(:configmanagement)
          @fleet_inherited = args[:fleet_inherited] if args.key?(:fleet_inherited)
          @fleetobservability = args[:fleetobservability] if args.key?(:fleetobservability)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
          @mesh = args[:mesh] if args.key?(:mesh)
          @policycontroller = args[:policycontroller] if args.key?(:policycontroller)
        end
      end
      
      # MembershipFeatureState contains Feature status information for a single
      # Membership.
      class MembershipFeatureState
        include Google::Apis::Core::Hashable
      
        # State for App Dev Exp Feature.
        # Corresponds to the JSON property `appdevexperience`
        # @return [Google::Apis::GkehubV1beta::AppDevExperienceFeatureState]
        attr_accessor :appdevexperience
      
        # **Anthos Config Management**: State for a single cluster.
        # Corresponds to the JSON property `configmanagement`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementMembershipState]
        attr_accessor :configmanagement
      
        # **FleetObservability**: An empty state left as an example membership-specific
        # Feature state.
        # Corresponds to the JSON property `fleetobservability`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityMembershipState]
        attr_accessor :fleetobservability
      
        # **Anthos Identity Service**: State for a single Membership.
        # Corresponds to the JSON property `identityservice`
        # @return [Google::Apis::GkehubV1beta::IdentityServiceMembershipState]
        attr_accessor :identityservice
      
        # **Metering**: Per-Membership Feature State.
        # Corresponds to the JSON property `metering`
        # @return [Google::Apis::GkehubV1beta::MeteringMembershipState]
        attr_accessor :metering
      
        # **Policy Controller**: State for a single cluster.
        # Corresponds to the JSON property `policycontroller`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerMembershipState]
        attr_accessor :policycontroller
      
        # **Service Mesh**: State for a single Membership, as analyzed by the Service
        # Mesh Hub Controller.
        # Corresponds to the JSON property `servicemesh`
        # @return [Google::Apis::GkehubV1beta::ServiceMeshMembershipState]
        attr_accessor :servicemesh
      
        # FeatureState describes the high-level state of a Feature. It may be used to
        # describe a Feature's state at the environ-level, or per-membershop, depending
        # on the context.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::FeatureState]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appdevexperience = args[:appdevexperience] if args.key?(:appdevexperience)
          @configmanagement = args[:configmanagement] if args.key?(:configmanagement)
          @fleetobservability = args[:fleetobservability] if args.key?(:fleetobservability)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
          @metering = args[:metering] if args.key?(:metering)
          @policycontroller = args[:policycontroller] if args.key?(:policycontroller)
          @servicemesh = args[:servicemesh] if args.key?(:servicemesh)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # **Cloud Build**: Configurations for each Cloud Build enabled cluster.
      class MembershipSpec
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
      
      # **Metering**: Per-Membership Feature State.
      class MeteringMembershipState
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
      
      # **Multi-cluster Ingress**: The configuration for the MultiClusterIngress
      # feature.
      class MultiClusterIngressFeatureSpec
        include Google::Apis::Core::Hashable
      
        # Deprecated: This field will be ignored and should not be set. Customer's
        # billing structure.
        # Corresponds to the JSON property `billing`
        # @return [String]
        attr_accessor :billing
      
        # Fully-qualified Membership name which hosts the MultiClusterIngress CRD.
        # Example: `projects/foo-proj/locations/global/memberships/bar`
        # Corresponds to the JSON property `configMembership`
        # @return [String]
        attr_accessor :config_membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing = args[:billing] if args.key?(:billing)
          @config_membership = args[:config_membership] if args.key?(:config_membership)
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
        # @return [Google::Apis::GkehubV1beta::GoogleRpcStatus]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # Represents the metadata of the long-running operation.
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::GkehubV1beta::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::GkehubV1beta::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
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
      
        # Management specifies how the bundle will be managed by the controller.
        # Corresponds to the JSON property `management`
        # @return [String]
        attr_accessor :management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_namespaces = args[:exempted_namespaces] if args.key?(:exempted_namespaces)
          @management = args[:management] if args.key?(:management)
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
        # @return [Google::Apis::GkehubV1beta::PolicyControllerMonitoringConfig]
        attr_accessor :monitoring
      
        # Enables the ability to mutate resources using Policy Controller.
        # Corresponds to the JSON property `mutationEnabled`
        # @return [Boolean]
        attr_accessor :mutation_enabled
        alias_method :mutation_enabled?, :mutation_enabled
      
        # PolicyContentSpec defines the user's desired content configuration on the
        # cluster.
        # Corresponds to the JSON property `policyContent`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerPolicyContentSpec]
        attr_accessor :policy_content
      
        # Enables the ability to use Constraint Templates that reference to objects
        # other than the object currently being evaluated.
        # Corresponds to the JSON property `referentialRulesEnabled`
        # @return [Boolean]
        attr_accessor :referential_rules_enabled
        alias_method :referential_rules_enabled?, :referential_rules_enabled
      
        # The config specifying which default library templates to install.
        # Corresponds to the JSON property `templateLibraryConfig`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerTemplateLibraryConfig]
        attr_accessor :template_library_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_interval_seconds = args[:audit_interval_seconds] if args.key?(:audit_interval_seconds)
          @exemptable_namespaces = args[:exemptable_namespaces] if args.key?(:exemptable_namespaces)
          @install_spec = args[:install_spec] if args.key?(:install_spec)
          @log_denies_enabled = args[:log_denies_enabled] if args.key?(:log_denies_enabled)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
          @mutation_enabled = args[:mutation_enabled] if args.key?(:mutation_enabled)
          @policy_content = args[:policy_content] if args.key?(:policy_content)
          @referential_rules_enabled = args[:referential_rules_enabled] if args.key?(:referential_rules_enabled)
          @template_library_config = args[:template_library_config] if args.key?(:template_library_config)
        end
      end
      
      # **Policy Controller**: Configuration for a single cluster. Intended to
      # parallel the PolicyController CR.
      class PolicyControllerMembershipSpec
        include Google::Apis::Core::Hashable
      
        # Configuration for Policy Controller
        # Corresponds to the JSON property `policyControllerHubConfig`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerHubConfig]
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
      class PolicyControllerMembershipState
        include Google::Apis::Core::Hashable
      
        # Currently these include (also serving as map keys): 1. "admission" 2. "audit"
        # 3. "mutation"
        # Corresponds to the JSON property `componentStates`
        # @return [Hash<String,Google::Apis::GkehubV1beta::PolicyControllerOnClusterState>]
        attr_accessor :component_states
      
        # The state of the template library and any bundles included in the chosen
        # version of the manifest
        # Corresponds to the JSON property `contentStates`
        # @return [Hash<String,Google::Apis::GkehubV1beta::PolicyControllerOnClusterState>]
        attr_accessor :content_states
      
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
          @content_states = args[:content_states] if args.key?(:content_states)
          @state = args[:state] if args.key?(:state)
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
        # @return [Hash<String,Google::Apis::GkehubV1beta::PolicyControllerBundleInstallSpec>]
        attr_accessor :bundles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundles = args[:bundles] if args.key?(:bundles)
        end
      end
      
      # The config specifying which default library templates to install.
      class PolicyControllerTemplateLibraryConfig
        include Google::Apis::Core::Hashable
      
        # Whether the standard template library should be installed or not.
        # Corresponds to the JSON property `included`
        # @return [Boolean]
        attr_accessor :included
        alias_method :included?, :included
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included = args[:included] if args.key?(:included)
        end
      end
      
      # ScopeFeatureSpec contains feature specs for a fleet scope.
      class ScopeFeatureSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # ScopeFeatureState contains Scope-wide Feature status information.
      class ScopeFeatureState
        include Google::Apis::Core::Hashable
      
        # FeatureState describes the high-level state of a Feature. It may be used to
        # describe a Feature's state at the environ-level, or per-membershop, depending
        # on the context.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::FeatureState]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Status of control plane management.
      class ServiceMeshControlPlaneManagement
        include Google::Apis::Core::Hashable
      
        # Explanation of state.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::GkehubV1beta::ServiceMeshStatusDetails>]
        attr_accessor :details
      
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
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Status of data plane management. Only reported per-member.
      class ServiceMeshDataPlaneManagement
        include Google::Apis::Core::Hashable
      
        # Explanation of the status.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::GkehubV1beta::ServiceMeshStatusDetails>]
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
      class ServiceMeshMembershipSpec
        include Google::Apis::Core::Hashable
      
        # Enables automatic control plane management.
        # Corresponds to the JSON property `controlPlane`
        # @return [String]
        attr_accessor :control_plane
      
        # Enables automatic Service Mesh management.
        # Corresponds to the JSON property `management`
        # @return [String]
        attr_accessor :management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane = args[:control_plane] if args.key?(:control_plane)
          @management = args[:management] if args.key?(:management)
        end
      end
      
      # **Service Mesh**: State for a single Membership, as analyzed by the Service
      # Mesh Hub Controller.
      class ServiceMeshMembershipState
        include Google::Apis::Core::Hashable
      
        # Status of control plane management.
        # Corresponds to the JSON property `controlPlaneManagement`
        # @return [Google::Apis::GkehubV1beta::ServiceMeshControlPlaneManagement]
        attr_accessor :control_plane_management
      
        # Status of data plane management. Only reported per-member.
        # Corresponds to the JSON property `dataPlaneManagement`
        # @return [Google::Apis::GkehubV1beta::ServiceMeshDataPlaneManagement]
        attr_accessor :data_plane_management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::GkehubV1beta::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Status specifies state for the subcomponent.
      class Status
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
    end
  end
end
