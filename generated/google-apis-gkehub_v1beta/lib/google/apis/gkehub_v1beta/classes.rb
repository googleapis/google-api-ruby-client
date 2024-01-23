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
      
      # ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
      class ApplianceCluster
        include Google::Apis::Core::Hashable
      
        # Immutable. Self-link of the Google Cloud resource for the Appliance Cluster.
        # For example: //transferappliance.googleapis.com/projects/my-project/locations/
        # us-west1-a/appliances/my-appliance
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
      # Authority encodes how Google will recognize identities from this Membership.
      # See the workload identity documentation for more details: https://cloud.google.
      # com/kubernetes-engine/docs/how-to/workload-identity
      class Authority
        include Google::Apis::Core::Hashable
      
        # Output only. An identity provider that reflects the `issuer` in the workload
        # identity pool.
        # Corresponds to the JSON property `identityProvider`
        # @return [String]
        attr_accessor :identity_provider
      
        # Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://
        # ` and be a valid URL with length <2000 characters, it must use `location`
        # rather than `zone` for GKE clusters. If set, then Google will allow valid OIDC
        # tokens from this issuer to authenticate within the workload_identity_pool.
        # OIDC discovery will be performed on this URI to validate tokens from the
        # issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be
        # directly modified; it must be cleared (and Workload Identity disabled) before
        # using a new issuer (and re-enabling Workload Identity).
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517).
        # When this field is set, OIDC discovery will NOT be performed on `issuer`, and
        # instead OIDC tokens will be validated using this field.
        # Corresponds to the JSON property `oidcJwks`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :oidc_jwks
      
        # Output only. The name of the workload identity pool in which `issuer` will be
        # recognized. There is a single Workload Identity Pool per Hub that is shared
        # between all Memberships that belong to that Hub. For a Hub hosted in `
        # PROJECT_ID`, the workload pool format is ``PROJECT_ID`.hub.id.goog`, although
        # this is subject to change in newer versions of this API.
        # Corresponds to the JSON property `workloadIdentityPool`
        # @return [String]
        attr_accessor :workload_identity_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_provider = args[:identity_provider] if args.key?(:identity_provider)
          @issuer = args[:issuer] if args.key?(:issuer)
          @oidc_jwks = args[:oidc_jwks] if args.key?(:oidc_jwks)
          @workload_identity_pool = args[:workload_identity_pool] if args.key?(:workload_identity_pool)
        end
      end
      
      # BinaryAuthorizationConfig defines the fleet level configuration of binary
      # authorization feature.
      class BinaryAuthorizationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Mode of operation for binauthz policy evaluation.
        # Corresponds to the JSON property `evaluationMode`
        # @return [String]
        attr_accessor :evaluation_mode
      
        # Optional. Binauthz policies that apply to this cluster.
        # Corresponds to the JSON property `policyBindings`
        # @return [Array<Google::Apis::GkehubV1beta::PolicyBinding>]
        attr_accessor :policy_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_mode = args[:evaluation_mode] if args.key?(:evaluation_mode)
          @policy_bindings = args[:policy_bindings] if args.key?(:policy_bindings)
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
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
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
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
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
      
      # **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade
      # feature.
      class ClusterUpgradeFleetSpec
        include Google::Apis::Core::Hashable
      
        # Allow users to override some properties of each GKE upgrade.
        # Corresponds to the JSON property `gkeUpgradeOverrides`
        # @return [Array<Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeOverride>]
        attr_accessor :gke_upgrade_overrides
      
        # Post conditional checks after an upgrade has been applied on all eligible
        # clusters.
        # Corresponds to the JSON property `postConditions`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradePostConditions]
        attr_accessor :post_conditions
      
        # This fleet consumes upgrades that have COMPLETE status code in the upstream
        # fleets. See UpgradeStatus.Code for code definitions. The fleet name should be
        # either fleet project number or id. This is defined as repeated for future
        # proof reasons. Initial implementation will enforce at most one upstream fleet.
        # Corresponds to the JSON property `upstreamFleets`
        # @return [Array<String>]
        attr_accessor :upstream_fleets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_upgrade_overrides = args[:gke_upgrade_overrides] if args.key?(:gke_upgrade_overrides)
          @post_conditions = args[:post_conditions] if args.key?(:post_conditions)
          @upstream_fleets = args[:upstream_fleets] if args.key?(:upstream_fleets)
        end
      end
      
      # **ClusterUpgrade**: The state for the fleet-level ClusterUpgrade feature.
      class ClusterUpgradeFleetState
        include Google::Apis::Core::Hashable
      
        # This fleets whose upstream_fleets contain the current fleet. The fleet name
        # should be either fleet project number or id.
        # Corresponds to the JSON property `downstreamFleets`
        # @return [Array<String>]
        attr_accessor :downstream_fleets
      
        # GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
        # Corresponds to the JSON property `gkeState`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeFeatureState]
        attr_accessor :gke_state
      
        # A list of memberships ignored by the feature. For example, manually upgraded
        # clusters can be ignored if they are newer than the default versions of its
        # release channel. The membership resource is in the format: `projects/`p`/
        # locations/`l`/membership/`m``.
        # Corresponds to the JSON property `ignored`
        # @return [Hash<String,Google::Apis::GkehubV1beta::ClusterUpgradeIgnoredMembership>]
        attr_accessor :ignored
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @downstream_fleets = args[:downstream_fleets] if args.key?(:downstream_fleets)
          @gke_state = args[:gke_state] if args.key?(:gke_state)
          @ignored = args[:ignored] if args.key?(:ignored)
        end
      end
      
      # GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
      class ClusterUpgradeGkeUpgrade
        include Google::Apis::Core::Hashable
      
        # Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade
        # name. It must not exceet 99 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version.
        # It must not exceet 99 characters.
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
      
      # GKEUpgradeFeatureCondition describes the condition of the feature for GKE
      # clusters at a certain point of time.
      class ClusterUpgradeGkeUpgradeFeatureCondition
        include Google::Apis::Core::Hashable
      
        # Reason why the feature is in this status.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Status of the condition, one of True, False, Unknown.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of the condition, for example, "ready".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Last timestamp the condition was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
      class ClusterUpgradeGkeUpgradeFeatureState
        include Google::Apis::Core::Hashable
      
        # Current conditions of the feature.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeFeatureCondition>]
        attr_accessor :conditions
      
        # Upgrade state. It will eventually replace `state`.
        # Corresponds to the JSON property `upgradeState`
        # @return [Array<Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgradeState>]
        attr_accessor :upgrade_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @upgrade_state = args[:upgrade_state] if args.key?(:upgrade_state)
        end
      end
      
      # Properties of a GKE upgrade that can be overridden by the user. For example, a
      # user can skip soaking by overriding the soaking to 0.
      class ClusterUpgradeGkeUpgradeOverride
        include Google::Apis::Core::Hashable
      
        # Post conditional checks after an upgrade has been applied on all eligible
        # clusters.
        # Corresponds to the JSON property `postConditions`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradePostConditions]
        attr_accessor :post_conditions
      
        # GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade]
        attr_accessor :upgrade
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @post_conditions = args[:post_conditions] if args.key?(:post_conditions)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
        end
      end
      
      # GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
      class ClusterUpgradeGkeUpgradeState
        include Google::Apis::Core::Hashable
      
        # Number of GKE clusters in each status code.
        # Corresponds to the JSON property `stats`
        # @return [Hash<String,Fixnum>]
        attr_accessor :stats
      
        # UpgradeStatus provides status information for each upgrade.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeUpgradeStatus]
        attr_accessor :status
      
        # GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade]
        attr_accessor :upgrade
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
          @status = args[:status] if args.key?(:status)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
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
      
      # ScopeGKEUpgradeState is a GKEUpgrade and its state per-membership.
      class ClusterUpgradeMembershipGkeUpgradeState
        include Google::Apis::Core::Hashable
      
        # UpgradeStatus provides status information for each upgrade.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeUpgradeStatus]
        attr_accessor :status
      
        # GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeGkeUpgrade]
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
      class ClusterUpgradeMembershipState
        include Google::Apis::Core::Hashable
      
        # IgnoredMembership represents a membership ignored by the feature. A membership
        # can be ignored because it was manually upgraded to a newer version than RC
        # default.
        # Corresponds to the JSON property `ignored`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeIgnoredMembership]
        attr_accessor :ignored
      
        # Actual upgrade state against desired.
        # Corresponds to the JSON property `upgrades`
        # @return [Array<Google::Apis::GkehubV1beta::ClusterUpgradeMembershipGkeUpgradeState>]
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
      
      # Post conditional checks after an upgrade has been applied on all eligible
      # clusters.
      class ClusterUpgradePostConditions
        include Google::Apis::Core::Hashable
      
        # Required. Amount of time to "soak" after a rollout has been finished before
        # marking it COMPLETE. Cannot exceed 30 days. Required.
        # Corresponds to the JSON property `soaking`
        # @return [String]
        attr_accessor :soaking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @soaking = args[:soaking] if args.key?(:soaking)
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
      
        # **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade
        # feature.
        # Corresponds to the JSON property `clusterupgrade`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeFleetSpec]
        attr_accessor :clusterupgrade
      
        # **Dataplane V2**: Spec
        # Corresponds to the JSON property `dataplanev2`
        # @return [Google::Apis::GkehubV1beta::DataplaneV2FeatureSpec]
        attr_accessor :dataplanev2
      
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
          @clusterupgrade = args[:clusterupgrade] if args.key?(:clusterupgrade)
          @dataplanev2 = args[:dataplanev2] if args.key?(:dataplanev2)
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
      
        # **ClusterUpgrade**: The state for the fleet-level ClusterUpgrade feature.
        # Corresponds to the JSON property `clusterupgrade`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeFleetState]
        attr_accessor :clusterupgrade
      
        # **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
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
          @clusterupgrade = args[:clusterupgrade] if args.key?(:clusterupgrade)
          @fleetobservability = args[:fleetobservability] if args.key?(:fleetobservability)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # CommonFleetDefaultMemberConfigSpec contains default configuration information
      # for memberships of a fleet
      class CommonFleetDefaultMemberConfigSpec
        include Google::Apis::Core::Hashable
      
        # **Anthos Config Management**: Configuration for a single cluster. Intended to
        # parallel the ConfigManagement CR.
        # Corresponds to the JSON property `configmanagement`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementMembershipSpec]
        attr_accessor :configmanagement
      
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
          @configmanagement = args[:configmanagement] if args.key?(:configmanagement)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
          @mesh = args[:mesh] if args.key?(:mesh)
          @policycontroller = args[:policycontroller] if args.key?(:policycontroller)
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
        # depends on the presence of the git or oci field.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Git repo configuration for a single cluster.
        # Corresponds to the JSON property `git`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementGitConfig]
        attr_accessor :git
      
        # The Email of the Google Cloud Service Account (GSA) used for exporting Config
        # Sync metrics to Cloud Monitoring and Cloud Monarch when Workload Identity is
        # enabled. The GSA should have the Monitoring Metric Writer (roles/monitoring.
        # metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the
        # namespace `config-management-monitoring` should be bound to the GSA.
        # Corresponds to the JSON property `metricsGcpServiceAccountEmail`
        # @return [String]
        attr_accessor :metrics_gcp_service_account_email
      
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
          @metrics_gcp_service_account_email = args[:metrics_gcp_service_account_email] if args.key?(:metrics_gcp_service_account_email)
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
      
      # State information for ConfigSync
      class ConfigManagementConfigSyncState
        include Google::Apis::Core::Hashable
      
        # The state of ConfigSync's deployment on a cluster
        # Corresponds to the JSON property `deploymentState`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementConfigSyncDeploymentState]
        attr_accessor :deployment_state
      
        # Errors pertaining to the installation of Config Sync.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV1beta::ConfigManagementConfigSyncError>]
        attr_accessor :errors
      
        # The state of the Reposync CRD
        # Corresponds to the JSON property `reposyncCrd`
        # @return [String]
        attr_accessor :reposync_crd
      
        # The state of the RootSync CRD
        # Corresponds to the JSON property `rootsyncCrd`
        # @return [String]
        attr_accessor :rootsync_crd
      
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
          @errors = args[:errors] if args.key?(:errors)
          @reposync_crd = args[:reposync_crd] if args.key?(:reposync_crd)
          @rootsync_crd = args[:rootsync_crd] if args.key?(:rootsync_crd)
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
      
        # The Google Cloud Service Account Email used for auth when secret_type is
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
      
        # The user-specified cluster name used by Config Sync cluster-name-selector
        # annotation or ClusterSelector, for applying configs to only a subset of
        # clusters. Omit this field if the cluster's fleet membership name is used by
        # Config Sync cluster-name-selector annotation or ClusterSelector. Set this
        # field if a name different from the cluster's fleet membership name is used by
        # Config Sync cluster-name-selector annotation or ClusterSelector.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
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
          @cluster = args[:cluster] if args.key?(:cluster)
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
      
        # This field is set to the `cluster_name` field of the Membership Spec if it is
        # not empty. Otherwise, it is set to the cluster's fleet membership name.
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
      
        # The Google Cloud Service Account Email used for auth when secret_type is
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
        # @return [Google::Apis::GkehubV1beta::ConfigManagementGatekeeperDeploymentState]
        attr_accessor :deployment_state
      
        # State for the migration of PolicyController from ACM -> PoCo Hub.
        # Corresponds to the JSON property `migration`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementPolicyControllerMigration]
        attr_accessor :migration
      
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
      
      # ConnectAgentResource represents a Kubernetes resource manifest for Connect
      # Agent deployment.
      class ConnectAgentResource
        include Google::Apis::Core::Hashable
      
        # YAML manifest of the resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # TypeMeta is the type information needed for content unmarshalling of
        # Kubernetes resources in the manifest.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::GkehubV1beta::TypeMeta]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifest = args[:manifest] if args.key?(:manifest)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # **Dataplane V2**: Spec
      class DataplaneV2FeatureSpec
        include Google::Apis::Core::Hashable
      
        # Enable dataplane-v2 based encryption for multiple clusters.
        # Corresponds to the JSON property `enableEncryption`
        # @return [Boolean]
        attr_accessor :enable_encryption
        alias_method :enable_encryption?, :enable_encryption
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_encryption = args[:enable_encryption] if args.key?(:enable_encryption)
        end
      end
      
      # DefaultClusterConfig describes the default cluster configurations to be
      # applied to all clusters born-in-fleet.
      class DefaultClusterConfig
        include Google::Apis::Core::Hashable
      
        # BinaryAuthorizationConfig defines the fleet level configuration of binary
        # authorization feature.
        # Corresponds to the JSON property `binaryAuthorizationConfig`
        # @return [Google::Apis::GkehubV1beta::BinaryAuthorizationConfig]
        attr_accessor :binary_authorization_config
      
        # SecurityPostureConfig defines the flags needed to enable/disable features for
        # the Security Posture API.
        # Corresponds to the JSON property `securityPostureConfig`
        # @return [Google::Apis::GkehubV1beta::SecurityPostureConfig]
        attr_accessor :security_posture_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_authorization_config = args[:binary_authorization_config] if args.key?(:binary_authorization_config)
          @security_posture_config = args[:security_posture_config] if args.key?(:security_posture_config)
        end
      end
      
      # EdgeCluster contains information specific to Google Edge Clusters.
      class EdgeCluster
        include Google::Apis::Core::Hashable
      
        # Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For
        # example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-
        # a/clusters/my-cluster
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
        # Labels for this Feature.
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
      
      # Fleet contains the Fleet-wide metadata and configuration.
      class Fleet
        include Google::Apis::Core::Hashable
      
        # Output only. When the Fleet was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # DefaultClusterConfig describes the default cluster configurations to be
        # applied to all clusters born-in-fleet.
        # Corresponds to the JSON property `defaultClusterConfig`
        # @return [Google::Apis::GkehubV1beta::DefaultClusterConfig]
        attr_accessor :default_cluster_config
      
        # Output only. When the Fleet was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. A user-assigned display name of the Fleet. When present, it must be
        # between 4 to 30 characters. Allowed characters are: lowercase and uppercase
        # letters, numbers, hyphen, single-quote, double-quote, space, and exclamation
        # point. Example: `Production Fleet`
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Labels for this Fleet.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The full, unique resource name of this fleet in the format of `
        # projects/`project`/locations/`location`/fleets/`fleet``. Each Google Cloud
        # project can have at most one fleet resource, named "default".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # FleetLifecycleState describes the state of a Fleet resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::FleetLifecycleState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all Fleet resources. If a Fleet resource is deleted and another resource with
        # the same name is created, it gets a different uid.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. When the Fleet was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_cluster_config = args[:default_cluster_config] if args.key?(:default_cluster_config)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # FleetLifecycleState describes the state of a Fleet resource.
      class FleetLifecycleState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the Fleet resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # All error details of the fleet observability feature.
      class FleetObservabilityFeatureError
        include Google::Apis::Core::Hashable
      
        # The code of the error.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human-readable description of the current status.
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
      
      # **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
      class FleetObservabilityFeatureSpec
        include Google::Apis::Core::Hashable
      
        # LoggingConfig defines the configuration for different types of logs.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityLoggingConfig]
        attr_accessor :logging_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
        end
      end
      
      # **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
      class FleetObservabilityFeatureState
        include Google::Apis::Core::Hashable
      
        # Feature state for logging feature.
        # Corresponds to the JSON property `logging`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityLoggingState]
        attr_accessor :logging
      
        # Feature state for monitoring feature.
        # Corresponds to the JSON property `monitoring`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityMonitoringState]
        attr_accessor :monitoring
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logging = args[:logging] if args.key?(:logging)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
        end
      end
      
      # Base state for fleet observability feature.
      class FleetObservabilityFleetObservabilityBaseFeatureState
        include Google::Apis::Core::Hashable
      
        # The high-level, machine-readable status of this Feature.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Errors after reconciling the monitoring and logging feature if the code is not
        # OK.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::GkehubV1beta::FleetObservabilityFeatureError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Feature state for logging feature.
      class FleetObservabilityFleetObservabilityLoggingState
        include Google::Apis::Core::Hashable
      
        # Base state for fleet observability feature.
        # Corresponds to the JSON property `defaultLog`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState]
        attr_accessor :default_log
      
        # Base state for fleet observability feature.
        # Corresponds to the JSON property `scopeLog`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState]
        attr_accessor :scope_log
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_log = args[:default_log] if args.key?(:default_log)
          @scope_log = args[:scope_log] if args.key?(:scope_log)
        end
      end
      
      # Feature state for monitoring feature.
      class FleetObservabilityFleetObservabilityMonitoringState
        include Google::Apis::Core::Hashable
      
        # Base state for fleet observability feature.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityFleetObservabilityBaseFeatureState]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # LoggingConfig defines the configuration for different types of logs.
      class FleetObservabilityLoggingConfig
        include Google::Apis::Core::Hashable
      
        # RoutingConfig configures the behaviour of fleet logging feature.
        # Corresponds to the JSON property `defaultConfig`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityRoutingConfig]
        attr_accessor :default_config
      
        # RoutingConfig configures the behaviour of fleet logging feature.
        # Corresponds to the JSON property `fleetScopeLogsConfig`
        # @return [Google::Apis::GkehubV1beta::FleetObservabilityRoutingConfig]
        attr_accessor :fleet_scope_logs_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_config = args[:default_config] if args.key?(:default_config)
          @fleet_scope_logs_config = args[:fleet_scope_logs_config] if args.key?(:fleet_scope_logs_config)
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
      
      # **FleetObservability**: Membership-specific Feature state for
      # fleetobservability.
      class FleetObservabilityMembershipState
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # RoutingConfig configures the behaviour of fleet logging feature.
      class FleetObservabilityRoutingConfig
        include Google::Apis::Core::Hashable
      
        # mode configures the logs routing mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # GenerateConnectManifestResponse contains manifest information for installing/
      # upgrading a Connect agent.
      class GenerateConnectManifestResponse
        include Google::Apis::Core::Hashable
      
        # The ordered list of Kubernetes resources that need to be applied to the
        # cluster for GKE Connect agent installation/upgrade.
        # Corresponds to the JSON property `manifest`
        # @return [Array<Google::Apis::GkehubV1beta::ConnectAgentResource>]
        attr_accessor :manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifest = args[:manifest] if args.key?(:manifest)
        end
      end
      
      # Response for GenerateRBACRoleBindingYAML.
      class GenerateMembershipRbacRoleBindingYamlResponse
        include Google::Apis::Core::Hashable
      
        # a yaml text blob including the RBAC policies.
        # Corresponds to the JSON property `roleBindingsYaml`
        # @return [String]
        attr_accessor :role_bindings_yaml
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role_bindings_yaml = args[:role_bindings_yaml] if args.key?(:role_bindings_yaml)
        end
      end
      
      # GkeCluster contains information specific to GKE clusters.
      class GkeCluster
        include Google::Apis::Core::Hashable
      
        # Output only. If cluster_missing is set then it denotes that the GKE cluster no
        # longer exists in the GKE Control Plane.
        # Corresponds to the JSON property `clusterMissing`
        # @return [Boolean]
        attr_accessor :cluster_missing
        alias_method :cluster_missing?, :cluster_missing
      
        # Immutable. Self-link of the Google Cloud resource for the GKE cluster. For
        # example: //container.googleapis.com/projects/my-project/locations/us-west1-a/
        # clusters/my-cluster Zonal clusters are also supported.
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_missing = args[:cluster_missing] if args.key?(:cluster_missing)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
      # KubernetesMetadata provides informational metadata for Memberships
      # representing Kubernetes clusters.
      class KubernetesMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Kubernetes API server version string as reported by `/version`.
        # Corresponds to the JSON property `kubernetesApiServerVersion`
        # @return [String]
        attr_accessor :kubernetes_api_server_version
      
        # Output only. The total memory capacity as reported by the sum of all
        # Kubernetes nodes resources, defined in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # Output only. Node count as reported by Kubernetes nodes resources.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # Output only. Node providerID as reported by the first node in the list of
        # nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-
        # node clusters (like GKE-on-GCP), the node_count will be zero and the
        # node_provider_id will be empty.
        # Corresponds to the JSON property `nodeProviderId`
        # @return [String]
        attr_accessor :node_provider_id
      
        # Output only. The time at which these details were last updated. This
        # update_time is different from the Membership-level update_time since
        # EndpointDetails are updated internally for API consumers.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. vCPU count as reported by Kubernetes nodes resources.
        # Corresponds to the JSON property `vcpuCount`
        # @return [Fixnum]
        attr_accessor :vcpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kubernetes_api_server_version = args[:kubernetes_api_server_version] if args.key?(:kubernetes_api_server_version)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @node_count = args[:node_count] if args.key?(:node_count)
          @node_provider_id = args[:node_provider_id] if args.key?(:node_provider_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
        end
      end
      
      # KubernetesResource contains the YAML manifests and configuration for
      # Membership Kubernetes resources in the cluster. After CreateMembership or
      # UpdateMembership, these resources should be re-applied in the cluster.
      class KubernetesResource
        include Google::Apis::Core::Hashable
      
        # Output only. The Kubernetes resources for installing the GKE Connect agent
        # This field is only populated in the Membership returned from a successful long-
        # running operation from CreateMembership or UpdateMembership. It is not
        # populated during normal GetMembership or ListMemberships requests. To get the
        # resource manifest after the initial registration, the caller should make a
        # UpdateMembership call with an empty field mask.
        # Corresponds to the JSON property `connectResources`
        # @return [Array<Google::Apis::GkehubV1beta::ResourceManifest>]
        attr_accessor :connect_resources
      
        # Input only. The YAML representation of the Membership CR. This field is
        # ignored for GKE clusters where Hub can read the CR directly. Callers should
        # provide the CR that is currently present in the cluster during
        # CreateMembership or UpdateMembership, or leave this field empty if none exists.
        # The CR manifest is used to validate the cluster has not been registered with
        # another Membership.
        # Corresponds to the JSON property `membershipCrManifest`
        # @return [String]
        attr_accessor :membership_cr_manifest
      
        # Output only. Additional Kubernetes resources that need to be applied to the
        # cluster after Membership creation, and after every update. This field is only
        # populated in the Membership returned from a successful long-running operation
        # from CreateMembership or UpdateMembership. It is not populated during normal
        # GetMembership or ListMemberships requests. To get the resource manifest after
        # the initial registration, the caller should make a UpdateMembership call with
        # an empty field mask.
        # Corresponds to the JSON property `membershipResources`
        # @return [Array<Google::Apis::GkehubV1beta::ResourceManifest>]
        attr_accessor :membership_resources
      
        # ResourceOptions represent options for Kubernetes resource generation.
        # Corresponds to the JSON property `resourceOptions`
        # @return [Google::Apis::GkehubV1beta::ResourceOptions]
        attr_accessor :resource_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connect_resources = args[:connect_resources] if args.key?(:connect_resources)
          @membership_cr_manifest = args[:membership_cr_manifest] if args.key?(:membership_cr_manifest)
          @membership_resources = args[:membership_resources] if args.key?(:membership_resources)
          @resource_options = args[:resource_options] if args.key?(:resource_options)
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
      
      # Response message for the `GkeHub.ListFleetsResponse` method.
      class ListFleetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching fleets.
        # Corresponds to the JSON property `fleets`
        # @return [Array<Google::Apis::GkehubV1beta::Fleet>]
        attr_accessor :fleets
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. The token is only valid for
        # 1h.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fleets = args[:fleets] if args.key?(:fleets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # List of MembershipBindings.
      class ListMembershipBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The list of membership_bindings
        # Corresponds to the JSON property `membershipBindings`
        # @return [Array<Google::Apis::GkehubV1beta::MembershipBinding>]
        attr_accessor :membership_bindings
      
        # A token to request the next page of resources from the `ListMembershipBindings`
        # method. The value of an empty string means that there are no more resources
        # to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership_bindings = args[:membership_bindings] if args.key?(:membership_bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List of Membership RBACRoleBindings.
      class ListMembershipRbacRoleBindingsResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `
        # ListMembershipRBACRoleBindings` method. The value of an empty string means
        # that there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Membership RBACRoleBindings.
        # Corresponds to the JSON property `rbacrolebindings`
        # @return [Array<Google::Apis::GkehubV1beta::RbacRoleBinding>]
        attr_accessor :rbacrolebindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rbacrolebindings = args[:rbacrolebindings] if args.key?(:rbacrolebindings)
        end
      end
      
      # Response message for the `GkeHub.ListMemberships` method.
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `ListMemberships`
        # method. The value of an empty string means that there are no more resources to
        # return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching Memberships.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::GkehubV1beta::Membership>]
        attr_accessor :resources
      
        # List of locations that could not be reached while fetching this list.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
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
      
      # List of fleet namespaces.
      class ListScopeNamespacesResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `ListNamespaces` method.
        # The value of an empty string means that there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of fleet namespaces
        # Corresponds to the JSON property `scopeNamespaces`
        # @return [Array<Google::Apis::GkehubV1beta::Namespace>]
        attr_accessor :scope_namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scope_namespaces = args[:scope_namespaces] if args.key?(:scope_namespaces)
        end
      end
      
      # List of Scope RBACRoleBindings.
      class ListScopeRbacRoleBindingsResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `
        # ListScopeRBACRoleBindings` method. The value of an empty string means that
        # there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Scope RBACRoleBindings.
        # Corresponds to the JSON property `rbacrolebindings`
        # @return [Array<Google::Apis::GkehubV1beta::RbacRoleBinding>]
        attr_accessor :rbacrolebindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rbacrolebindings = args[:rbacrolebindings] if args.key?(:rbacrolebindings)
        end
      end
      
      # List of Scopes.
      class ListScopesResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `ListScopes` method.
        # The value of an empty string means that there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Scopes
        # Corresponds to the JSON property `scopes`
        # @return [Array<Google::Apis::GkehubV1beta::Scope>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scopes = args[:scopes] if args.key?(:scopes)
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
      
      # Membership contains information about a member cluster.
      class Membership
        include Google::Apis::Core::Hashable
      
        # Authority encodes how Google will recognize identities from this Membership.
        # See the workload identity documentation for more details: https://cloud.google.
        # com/kubernetes-engine/docs/how-to/workload-identity
        # Corresponds to the JSON property `authority`
        # @return [Google::Apis::GkehubV1beta::Authority]
        attr_accessor :authority
      
        # Output only. When the Membership was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the Membership was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. Description of this membership, limited to 63 characters. Must
        # match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # MembershipEndpoint contains information needed to contact a Kubernetes API,
        # endpoint and any additional Kubernetes metadata.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::GkehubV1beta::MembershipEndpoint]
        attr_accessor :endpoint
      
        # Optional. An externally-generated and managed ID for this Membership. This ID
        # may be modified after creation, but this is not recommended. The ID must match
        # the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster,
        # this value should be set to the UID of the `kube-system` namespace object.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # Optional. Labels for this membership.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. For clusters using Connect, the timestamp of the most recent
        # connection established with Google Cloud. This time is updated every several
        # minutes, not continuously. For clusters that do not use GKE Connect, or that
        # have never connected successfully, this field will be unset.
        # Corresponds to the JSON property `lastConnectionTime`
        # @return [String]
        attr_accessor :last_connection_time
      
        # MonitoringConfig informs Fleet-based applications/services/UIs how the metrics
        # for the underlying cluster is reported to cloud monitoring services. It can be
        # set from empty to non-empty, but can't be mutated directly to prevent
        # accidentally breaking the constinousty of metrics.
        # Corresponds to the JSON property `monitoringConfig`
        # @return [Google::Apis::GkehubV1beta::MonitoringConfig]
        attr_accessor :monitoring_config
      
        # Output only. The full, unique name of this Membership resource in the format `
        # projects/*/locations/*/memberships/`membership_id``, set during creation. `
        # membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63
        # characters in length 2. It must consist of lower case alphanumeric characters
        # or `-` 3. It must start and end with an alphanumeric character Which can be
        # expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length
        # of 63 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # MembershipState describes the state of a Membership resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::MembershipState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all Membership resources. If a Membership resource is deleted and another
        # resource with the same name is created, it gets a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. When the Membership was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @external_id = args[:external_id] if args.key?(:external_id)
          @labels = args[:labels] if args.key?(:labels)
          @last_connection_time = args[:last_connection_time] if args.key?(:last_connection_time)
          @monitoring_config = args[:monitoring_config] if args.key?(:monitoring_config)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # MembershipBinding is a subresource of a Membership, representing what Fleet
      # Scopes (or other, future Fleet resources) a Membership is bound to.
      class MembershipBinding
        include Google::Apis::Core::Hashable
      
        # Output only. When the membership binding was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the membership binding was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Labels for this MembershipBinding.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name for the membershipbinding itself `projects/`project`/
        # locations/`location`/memberships/`membership`/bindings/`membershipbinding``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A Scope resource name in the format `projects/*/locations/*/scopes/*`.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # MembershipBindingLifecycleState describes the state of a Binding resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::MembershipBindingLifecycleState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all membershipbinding resources. If a membershipbinding resource is deleted
        # and another resource with the same name is created, it gets a different uid.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. When the membership binding was last updated.
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
          @name = args[:name] if args.key?(:name)
          @scope = args[:scope] if args.key?(:scope)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # MembershipBindingLifecycleState describes the state of a Binding resource.
      class MembershipBindingLifecycleState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the MembershipBinding resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # MembershipEndpoint contains information needed to contact a Kubernetes API,
      # endpoint and any additional Kubernetes metadata.
      class MembershipEndpoint
        include Google::Apis::Core::Hashable
      
        # ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
        # Corresponds to the JSON property `applianceCluster`
        # @return [Google::Apis::GkehubV1beta::ApplianceCluster]
        attr_accessor :appliance_cluster
      
        # EdgeCluster contains information specific to Google Edge Clusters.
        # Corresponds to the JSON property `edgeCluster`
        # @return [Google::Apis::GkehubV1beta::EdgeCluster]
        attr_accessor :edge_cluster
      
        # GkeCluster contains information specific to GKE clusters.
        # Corresponds to the JSON property `gkeCluster`
        # @return [Google::Apis::GkehubV1beta::GkeCluster]
        attr_accessor :gke_cluster
      
        # Output only. Whether the lifecycle of this membership is managed by a google
        # cluster platform service.
        # Corresponds to the JSON property `googleManaged`
        # @return [Boolean]
        attr_accessor :google_managed
        alias_method :google_managed?, :google_managed
      
        # KubernetesMetadata provides informational metadata for Memberships
        # representing Kubernetes clusters.
        # Corresponds to the JSON property `kubernetesMetadata`
        # @return [Google::Apis::GkehubV1beta::KubernetesMetadata]
        attr_accessor :kubernetes_metadata
      
        # KubernetesResource contains the YAML manifests and configuration for
        # Membership Kubernetes resources in the cluster. After CreateMembership or
        # UpdateMembership, these resources should be re-applied in the cluster.
        # Corresponds to the JSON property `kubernetesResource`
        # @return [Google::Apis::GkehubV1beta::KubernetesResource]
        attr_accessor :kubernetes_resource
      
        # MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
        # Corresponds to the JSON property `multiCloudCluster`
        # @return [Google::Apis::GkehubV1beta::MultiCloudCluster]
        attr_accessor :multi_cloud_cluster
      
        # OnPremCluster contains information specific to GKE On-Prem clusters.
        # Corresponds to the JSON property `onPremCluster`
        # @return [Google::Apis::GkehubV1beta::OnPremCluster]
        attr_accessor :on_prem_cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance_cluster = args[:appliance_cluster] if args.key?(:appliance_cluster)
          @edge_cluster = args[:edge_cluster] if args.key?(:edge_cluster)
          @gke_cluster = args[:gke_cluster] if args.key?(:gke_cluster)
          @google_managed = args[:google_managed] if args.key?(:google_managed)
          @kubernetes_metadata = args[:kubernetes_metadata] if args.key?(:kubernetes_metadata)
          @kubernetes_resource = args[:kubernetes_resource] if args.key?(:kubernetes_resource)
          @multi_cloud_cluster = args[:multi_cloud_cluster] if args.key?(:multi_cloud_cluster)
          @on_prem_cluster = args[:on_prem_cluster] if args.key?(:on_prem_cluster)
        end
      end
      
      # MembershipFeatureSpec contains configuration information for a single
      # Membership. NOTE: Please use snake case in your feature name.
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
      
        # Origin defines where this MembershipFeatureSpec originated from.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::GkehubV1beta::Origin]
        attr_accessor :origin
      
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
          @fleetobservability = args[:fleetobservability] if args.key?(:fleetobservability)
          @identityservice = args[:identityservice] if args.key?(:identityservice)
          @mesh = args[:mesh] if args.key?(:mesh)
          @origin = args[:origin] if args.key?(:origin)
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
      
        # Per-membership state for this feature.
        # Corresponds to the JSON property `clusterupgrade`
        # @return [Google::Apis::GkehubV1beta::ClusterUpgradeMembershipState]
        attr_accessor :clusterupgrade
      
        # **Anthos Config Management**: State for a single cluster.
        # Corresponds to the JSON property `configmanagement`
        # @return [Google::Apis::GkehubV1beta::ConfigManagementMembershipState]
        attr_accessor :configmanagement
      
        # **FleetObservability**: Membership-specific Feature state for
        # fleetobservability.
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
          @clusterupgrade = args[:clusterupgrade] if args.key?(:clusterupgrade)
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
      
      # MembershipState describes the state of a Membership resource.
      class MembershipState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the Membership resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
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
      
      # MonitoringConfig informs Fleet-based applications/services/UIs how the metrics
      # for the underlying cluster is reported to cloud monitoring services. It can be
      # set from empty to non-empty, but can't be mutated directly to prevent
      # accidentally breaking the constinousty of metrics.
      class MonitoringConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Cluster name used to report metrics. For Anthos on VMWare/Baremetal/
        # MultiCloud clusters, it would be in format `cluster_type`/`cluster_name`, e.g.,
        # "awsClusters/cluster_1".
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Optional. For GKE and Multicloud clusters, this is the UUID of the cluster
        # resource. For VMWare and Baremetal clusters, this is the kube-system UID.
        # Corresponds to the JSON property `clusterHash`
        # @return [String]
        attr_accessor :cluster_hash
      
        # Optional. Kubernetes system metrics, if available, are written to this prefix.
        # This defaults to kubernetes.io for GKE, and kubernetes.io/anthos for Anthos
        # eventually. Noted: Anthos MultiCloud will have kubernetes.io prefix today but
        # will migration to be under kubernetes.io/anthos.
        # Corresponds to the JSON property `kubernetesMetricsPrefix`
        # @return [String]
        attr_accessor :kubernetes_metrics_prefix
      
        # Optional. Location used to report Metrics
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Project used to report Metrics
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_hash = args[:cluster_hash] if args.key?(:cluster_hash)
          @kubernetes_metrics_prefix = args[:kubernetes_metrics_prefix] if args.key?(:kubernetes_metrics_prefix)
          @location = args[:location] if args.key?(:location)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
      class MultiCloudCluster
        include Google::Apis::Core::Hashable
      
        # Output only. If cluster_missing is set then it denotes that API(gkemulticloud.
        # googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
        # Corresponds to the JSON property `clusterMissing`
        # @return [Boolean]
        attr_accessor :cluster_missing
        alias_method :cluster_missing?, :cluster_missing
      
        # Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud
        # cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/
        # locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/
        # projects/my-project/locations/us-west1-a/azureClusters/my-cluster //
        # gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/
        # attachedClusters/my-cluster
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_missing = args[:cluster_missing] if args.key?(:cluster_missing)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
      # Namespace represents a namespace across the Fleet
      class Namespace
        include Google::Apis::Core::Hashable
      
        # Output only. When the namespace was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the namespace was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Labels for this Namespace.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name for the namespace `projects/`project`/locations/`location`/
        # namespaces/`namespace``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Namespace-level cluster namespace labels. These labels are applied
        # to the related namespace of the member clusters bound to the parent Scope.
        # Scope-level labels (`namespace_labels` in the Fleet Scope resource) take
        # precedence over Namespace-level labels if they share a key. Keys and values
        # must be Kubernetes-conformant.
        # Corresponds to the JSON property `namespaceLabels`
        # @return [Hash<String,String>]
        attr_accessor :namespace_labels
      
        # Required. Scope associated with the namespace
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # NamespaceLifecycleState describes the state of a Namespace resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::NamespaceLifecycleState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all namespace resources. If a namespace resource is deleted and another
        # resource with the same name is created, it gets a different uid.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. When the namespace was last updated.
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
          @name = args[:name] if args.key?(:name)
          @namespace_labels = args[:namespace_labels] if args.key?(:namespace_labels)
          @scope = args[:scope] if args.key?(:scope)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # NamespaceLifecycleState describes the state of a Namespace resource.
      class NamespaceLifecycleState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the Namespace resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # OnPremCluster contains information specific to GKE On-Prem clusters.
      class OnPremCluster
        include Google::Apis::Core::Hashable
      
        # Immutable. Whether the cluster is an admin cluster.
        # Corresponds to the JSON property `adminCluster`
        # @return [Boolean]
        attr_accessor :admin_cluster
        alias_method :admin_cluster?, :admin_cluster
      
        # Output only. If cluster_missing is set then it denotes that API(gkeonprem.
        # googleapis.com) resource for this GKE On-Prem cluster no longer exists.
        # Corresponds to the JSON property `clusterMissing`
        # @return [Boolean]
        attr_accessor :cluster_missing
        alias_method :cluster_missing?, :cluster_missing
      
        # Immutable. The on prem cluster's type.
        # Corresponds to the JSON property `clusterType`
        # @return [String]
        attr_accessor :cluster_type
      
        # Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster.
        # For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-
        # a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/
        # locations/us-west1-a/bareMetalClusters/my-cluster
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_cluster = args[:admin_cluster] if args.key?(:admin_cluster)
          @cluster_missing = args[:cluster_missing] if args.key?(:cluster_missing)
          @cluster_type = args[:cluster_type] if args.key?(:cluster_type)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
      # Origin defines where this MembershipFeatureSpec originated from.
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
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
      
      # Binauthz policy that applies to this cluster.
      class PolicyBinding
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the binauthz platform policy to audit. GKE
        # platform policies have the following format: `projects/`project_number`/
        # platforms/gke/policies/`policy_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # BundleInstallSpec is the specification configuration for a single managed
      # bundle.
      class PolicyControllerBundleInstallSpec
        include Google::Apis::Core::Hashable
      
        # The set of namespaces to be exempted from the bundle.
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
      
        # Map of deployment configs to deployments ("admission", "audit", "mutation').
        # Corresponds to the JSON property `deploymentConfigs`
        # @return [Hash<String,Google::Apis::GkehubV1beta::PolicyControllerPolicyControllerDeploymentConfig>]
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
      
        # The state of the policy controller policy content
        # Corresponds to the JSON property `policyContentState`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerPolicyContentState]
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
      
        # The config specifying which default library templates to install.
        # Corresponds to the JSON property `templateLibrary`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerTemplateLibraryConfig]
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
        # @return [Hash<String,Google::Apis::GkehubV1beta::PolicyControllerOnClusterState>]
        attr_accessor :bundle_states
      
        # OnClusterState represents the state of a sub-component of Policy Controller.
        # Corresponds to the JSON property `referentialSyncConfigState`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerOnClusterState]
        attr_accessor :referential_sync_config_state
      
        # OnClusterState represents the state of a sub-component of Policy Controller.
        # Corresponds to the JSON property `templateLibraryState`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerOnClusterState]
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
        # @return [Google::Apis::GkehubV1beta::PolicyControllerResourceRequirements]
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
        # @return [Array<Google::Apis::GkehubV1beta::PolicyControllerToleration>]
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
        # @return [Google::Apis::GkehubV1beta::PolicyControllerResourceList]
        attr_accessor :limits
      
        # ResourceList contains container resource requirements.
        # Corresponds to the JSON property `requests`
        # @return [Google::Apis::GkehubV1beta::PolicyControllerResourceList]
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
      
      # RBACRoleBinding represents a rbacrolebinding across the Fleet
      class RbacRoleBinding
        include Google::Apis::Core::Hashable
      
        # Output only. When the rbacrolebinding was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the rbacrolebinding was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # group is the group, as seen by the kubernetes cluster.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Optional. Labels for this RBACRolebinding.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name for the rbacrolebinding `projects/`project`/locations/`
        # location`/scopes/`scope`/rbacrolebindings/`rbacrolebinding`` or `projects/`
        # project`/locations/`location`/memberships/`membership`/rbacrolebindings/`
        # rbacrolebinding``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Role is the type for Kubernetes roles
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::GkehubV1beta::Role]
        attr_accessor :role
      
        # RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding
        # resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::RbacRoleBindingLifecycleState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all rbacrolebinding resources. If a rbacrolebinding resource is deleted and
        # another resource with the same name is created, it gets a different uid.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. When the rbacrolebinding was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # user is the name of the user as seen by the kubernetes cluster, example "alice"
        # or "alice@domain.tld"
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @group = args[:group] if args.key?(:group)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding
      # resource.
      class RbacRoleBindingLifecycleState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the rbacrolebinding resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # ResourceManifest represents a single Kubernetes resource to be applied to the
      # cluster.
      class ResourceManifest
        include Google::Apis::Core::Hashable
      
        # Whether the resource provided in the manifest is `cluster_scoped`. If unset,
        # the manifest is assumed to be namespace scoped. This field is used for REST
        # mapping when applying the resource in a cluster.
        # Corresponds to the JSON property `clusterScoped`
        # @return [Boolean]
        attr_accessor :cluster_scoped
        alias_method :cluster_scoped?, :cluster_scoped
      
        # YAML manifest of the resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_scoped = args[:cluster_scoped] if args.key?(:cluster_scoped)
          @manifest = args[:manifest] if args.key?(:manifest)
        end
      end
      
      # ResourceOptions represent options for Kubernetes resource generation.
      class ResourceOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The Connect agent version to use for connect_resources. Defaults to
        # the latest GKE Connect version. The version must be a currently supported
        # version, obsolete versions will be rejected.
        # Corresponds to the JSON property `connectVersion`
        # @return [String]
        attr_accessor :connect_version
      
        # Optional. Major version of the Kubernetes cluster. This is only used to
        # determine which version to use for the CustomResourceDefinition resources, `
        # apiextensions/v1beta1` or`apiextensions/v1`.
        # Corresponds to the JSON property `k8sVersion`
        # @return [String]
        attr_accessor :k8s_version
      
        # Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for
        # CustomResourceDefinition resources. This option should be set for clusters
        # with Kubernetes apiserver versions <1.16.
        # Corresponds to the JSON property `v1beta1Crd`
        # @return [Boolean]
        attr_accessor :v1beta1_crd
        alias_method :v1beta1_crd?, :v1beta1_crd
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connect_version = args[:connect_version] if args.key?(:connect_version)
          @k8s_version = args[:k8s_version] if args.key?(:k8s_version)
          @v1beta1_crd = args[:v1beta1_crd] if args.key?(:v1beta1_crd)
        end
      end
      
      # Role is the type for Kubernetes roles
      class Role
        include Google::Apis::Core::Hashable
      
        # predefined_role is the Kubernetes default role to use
        # Corresponds to the JSON property `predefinedRole`
        # @return [String]
        attr_accessor :predefined_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @predefined_role = args[:predefined_role] if args.key?(:predefined_role)
        end
      end
      
      # Scope represents a Scope in a Fleet.
      class Scope
        include Google::Apis::Core::Hashable
      
        # Output only. When the scope was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the scope was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Labels for this Scope.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name for the scope `projects/`project`/locations/`location`/
        # scopes/`scope``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Scope-level cluster namespace labels. For the member clusters bound
        # to the Scope, these labels are applied to each namespace under the Scope.
        # Scope-level labels take precedence over Namespace-level labels (`
        # namespace_labels` in the Fleet Namespace resource) if they share a key. Keys
        # and values must be Kubernetes-conformant.
        # Corresponds to the JSON property `namespaceLabels`
        # @return [Hash<String,String>]
        attr_accessor :namespace_labels
      
        # ScopeLifecycleState describes the state of a Scope resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1beta::ScopeLifecycleState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all scope resources. If a scope resource is deleted and another resource with
        # the same name is created, it gets a different uid.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. When the scope was last updated.
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
          @name = args[:name] if args.key?(:name)
          @namespace_labels = args[:namespace_labels] if args.key?(:namespace_labels)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # ScopeLifecycleState describes the state of a Scope resource.
      class ScopeLifecycleState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the scope resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # SecurityPostureConfig defines the flags needed to enable/disable features for
      # the Security Posture API.
      class SecurityPostureConfig
        include Google::Apis::Core::Hashable
      
        # Sets which mode to use for Security Posture features.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Sets which mode to use for vulnerability scanning.
        # Corresponds to the JSON property `vulnerabilityMode`
        # @return [String]
        attr_accessor :vulnerability_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @vulnerability_mode = args[:vulnerability_mode] if args.key?(:vulnerability_mode)
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
      
        # Deprecated: use `management` instead Enables automatic control plane
        # management.
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
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
      
      # TypeMeta is the type information needed for content unmarshalling of
      # Kubernetes resources in the manifest.
      class TypeMeta
        include Google::Apis::Core::Hashable
      
        # APIVersion of the resource (e.g. v1).
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Kind of the resource (e.g. Deployment).
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
    end
  end
end
