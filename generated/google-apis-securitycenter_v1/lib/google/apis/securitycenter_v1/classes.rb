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
    module SecuritycenterV1
      
      # Represents an access event.
      class Access
        include Google::Apis::Core::Hashable
      
        # Caller's IP address, such as "1.1.1.1".
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # Represents a geographical location for a given access.
        # Corresponds to the JSON property `callerIpGeo`
        # @return [Google::Apis::SecuritycenterV1::Geolocation]
        attr_accessor :caller_ip_geo
      
        # The method that the service account called, e.g. "SetIamPolicy".
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # Associated email, such as "foo@google.com". The email address of the
        # authenticated user or a service account acting on behalf of a third party
        # principal making the request. For third party identity callers, the `
        # principal_subject` field is populated instead of this field. For privacy
        # reasons, the principal email address is sometimes redacted. For more
        # information, see [Caller identities in audit logs](https://cloud.google.com/
        # logging/docs/audit#user-id).
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # A string that represents the principal_subject that is associated with the
        # identity. Unlike `principal_email`, `principal_subject` supports principals
        # that aren't associated with email addresses, such as third party principals.
        # For most identities, the format is `principal://iam.googleapis.com/`identity
        # pool name`/subject/`subject``. Some GKE identities, such as GKE_WORKLOAD,
        # FREEFORM, and GKE_HUB_WORKLOAD, still use the legacy format `serviceAccount:`
        # identity pool name`[`subject`]`.
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        # The identity delegation history of an authenticated service account that made
        # the request. The `serviceAccountDelegationInfo[]` object contains information
        # about the real authorities that try to access Google Cloud resources by
        # delegating on a service account. When multiple authorities are present, they
        # are guaranteed to be sorted based on the original ordering of the identity
        # delegation events.
        # Corresponds to the JSON property `serviceAccountDelegationInfo`
        # @return [Array<Google::Apis::SecuritycenterV1::ServiceAccountDelegationInfo>]
        attr_accessor :service_account_delegation_info
      
        # The name of the service account key that was used to create or exchange
        # credentials when authenticating the service account that made the request.
        # This is a scheme-less URI full resource name. For example: "//iam.googleapis.
        # com/projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key`".
        # Corresponds to the JSON property `serviceAccountKeyName`
        # @return [String]
        attr_accessor :service_account_key_name
      
        # This is the API service that the service account made a call to, e.g. "iam.
        # googleapis.com"
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The caller's user agent string associated with the finding.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Type of user agent associated with the finding. For example, an operating
        # system shell or an embedded or standalone application.
        # Corresponds to the JSON property `userAgentFamily`
        # @return [String]
        attr_accessor :user_agent_family
      
        # A string that represents a username. The username provided depends on the type
        # of the finding and is likely not an IAM principal. For example, this can be a
        # system username if the finding is related to a virtual machine, or it can be
        # an application login username.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_ip = args[:caller_ip] if args.key?(:caller_ip)
          @caller_ip_geo = args[:caller_ip_geo] if args.key?(:caller_ip_geo)
          @method_name = args[:method_name] if args.key?(:method_name)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @service_account_delegation_info = args[:service_account_delegation_info] if args.key?(:service_account_delegation_info)
          @service_account_key_name = args[:service_account_key_name] if args.key?(:service_account_key_name)
          @service_name = args[:service_name] if args.key?(:service_name)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_agent_family = args[:user_agent_family] if args.key?(:user_agent_family)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # Conveys information about a Kubernetes access review (such as one returned by
      # a [`kubectl auth can-i`](https://kubernetes.io/docs/reference/access-authn-
      # authz/authorization/#checking-api-access) command) that was involved in a
      # finding.
      class AccessReview
        include Google::Apis::Core::Hashable
      
        # The API group of the resource. "*" means all.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The name of the resource being requested. Empty means all.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace of the action being requested. Currently, there is no distinction
        # between no namespace and all namespaces. Both are represented by "" (empty).
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # The optional resource type requested. "*" means all.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The optional subresource type.
        # Corresponds to the JSON property `subresource`
        # @return [String]
        attr_accessor :subresource
      
        # A Kubernetes resource API verb, like get, list, watch, create, update, delete,
        # proxy. "*" means all.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        # The API version of the resource. "*" means all.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @resource = args[:resource] if args.key?(:resource)
          @subresource = args[:subresource] if args.key?(:subresource)
          @verb = args[:verb] if args.key?(:verb)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents an application associated with a finding.
      class Application
        include Google::Apis::Core::Hashable
      
        # The base URI that identifies the network location of the application in which
        # the vulnerability was detected. Examples: http://11.22.33.44, http://foo.com,
        # http://11.22.33.44:8080
        # Corresponds to the JSON property `baseUri`
        # @return [String]
        attr_accessor :base_uri
      
        # The full URI with payload that can be used to reproduce the vulnerability.
        # Example: http://11.22.33.44/reflected/parameter/attribute/singlequoted/js?p=
        # aMmYgI6H
        # Corresponds to the JSON property `fullUri`
        # @return [String]
        attr_accessor :full_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_uri = args[:base_uri] if args.key?(:base_uri)
          @full_uri = args[:full_uri] if args.key?(:full_uri)
        end
      end
      
      # Security Command Center representation of a Google Cloud resource. The Asset
      # is a Security Command Center resource that captures information about a single
      # Google Cloud resource. All modifications to an Asset are only within the
      # context of Security Command Center and don't affect the referenced Google
      # Cloud resource.
      class Asset
        include Google::Apis::Core::Hashable
      
        # The canonical name of the resource. It's either "organizations/`
        # organization_id`/assets/`asset_id`", "folders/`folder_id`/assets/`asset_id`"
        # or "projects/`project_number`/assets/`asset_id`", depending on the closest CRM
        # ancestor of the resource.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The time at which the asset was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Cloud IAM Policy information associated with the Google Cloud resource
        # described by the Security Command Center asset. This information is managed
        # and defined by the Google Cloud resource and cannot be modified by the user.
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::SecuritycenterV1::IamPolicy]
        attr_accessor :iam_policy
      
        # The relative resource name of this asset. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/assets/`asset_id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource managed properties. These properties are managed and defined by the
        # Google Cloud resource and cannot be modified by the user.
        # Corresponds to the JSON property `resourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :resource_properties
      
        # Security Command Center managed properties. These properties are managed by
        # Security Command Center and cannot be modified by the user.
        # Corresponds to the JSON property `securityCenterProperties`
        # @return [Google::Apis::SecuritycenterV1::SecurityCenterProperties]
        attr_accessor :security_center_properties
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        attr_accessor :security_marks
      
        # The time at which the asset was last updated or added in Cloud SCC.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @iam_policy = args[:iam_policy] if args.key?(:iam_policy)
          @name = args[:name] if args.key?(:name)
          @resource_properties = args[:resource_properties] if args.key?(:resource_properties)
          @security_center_properties = args[:security_center_properties] if args.key?(:security_center_properties)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The configuration used for Asset Discovery runs.
      class AssetDiscoveryConfig
        include Google::Apis::Core::Hashable
      
        # The folder ids to use for filtering asset discovery. It consists of only
        # digits, e.g., 756619654966.
        # Corresponds to the JSON property `folderIds`
        # @return [Array<String>]
        attr_accessor :folder_ids
      
        # The mode to use for filtering asset discovery.
        # Corresponds to the JSON property `inclusionMode`
        # @return [String]
        attr_accessor :inclusion_mode
      
        # The project ids to use for filtering asset discovery.
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folder_ids = args[:folder_ids] if args.key?(:folder_ids)
          @inclusion_mode = args[:inclusion_mode] if args.key?(:inclusion_mode)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # An attack exposure contains the results of an attack path simulation run.
      class AttackExposure
        include Google::Apis::Core::Hashable
      
        # The resource name of the attack path simulation result that contains the
        # details regarding this attack exposure score. Example: organizations/123/
        # simulations/456/attackExposureResults/789
        # Corresponds to the JSON property `attackExposureResult`
        # @return [String]
        attr_accessor :attack_exposure_result
      
        # The number of high value resources that are exposed as a result of this
        # finding.
        # Corresponds to the JSON property `exposedHighValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_high_value_resources_count
      
        # The number of high value resources that are exposed as a result of this
        # finding.
        # Corresponds to the JSON property `exposedLowValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_low_value_resources_count
      
        # The number of medium value resources that are exposed as a result of this
        # finding.
        # Corresponds to the JSON property `exposedMediumValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_medium_value_resources_count
      
        # The most recent time the attack exposure was updated on this finding.
        # Corresponds to the JSON property `latestCalculationTime`
        # @return [String]
        attr_accessor :latest_calculation_time
      
        # A number between 0 (inclusive) and infinity that represents how important this
        # finding is to remediate. The higher the score, the more important it is to
        # remediate.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # What state this AttackExposure is in. This captures whether or not an attack
        # exposure has been calculated or not.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_result = args[:attack_exposure_result] if args.key?(:attack_exposure_result)
          @exposed_high_value_resources_count = args[:exposed_high_value_resources_count] if args.key?(:exposed_high_value_resources_count)
          @exposed_low_value_resources_count = args[:exposed_low_value_resources_count] if args.key?(:exposed_low_value_resources_count)
          @exposed_medium_value_resources_count = args[:exposed_medium_value_resources_count] if args.key?(:exposed_medium_value_resources_count)
          @latest_calculation_time = args[:latest_calculation_time] if args.key?(:latest_calculation_time)
          @score = args[:score] if args.key?(:score)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A path that an attacker could take to reach an exposed resource.
      class AttackPath
        include Google::Apis::Core::Hashable
      
        # A list of the edges between nodes in this attack path.
        # Corresponds to the JSON property `edges`
        # @return [Array<Google::Apis::SecuritycenterV1::AttackPathEdge>]
        attr_accessor :edges
      
        # The attack path name, for example, `organizations/12/simulation/34/
        # valuedResources/56/attackPaths/78`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of nodes that exist in this attack path.
        # Corresponds to the JSON property `pathNodes`
        # @return [Array<Google::Apis::SecuritycenterV1::AttackPathNode>]
        attr_accessor :path_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edges = args[:edges] if args.key?(:edges)
          @name = args[:name] if args.key?(:name)
          @path_nodes = args[:path_nodes] if args.key?(:path_nodes)
        end
      end
      
      # Represents a connection between a source node and a destination node in this
      # attack path.
      class AttackPathEdge
        include Google::Apis::Core::Hashable
      
        # The attack node uuid of the destination node.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # The attack node uuid of the source node.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Represents one point that an attacker passes through in this attack path.
      class AttackPathNode
        include Google::Apis::Core::Hashable
      
        # The findings associated with this node in the attack path.
        # Corresponds to the JSON property `associatedFindings`
        # @return [Array<Google::Apis::SecuritycenterV1::PathNodeAssociatedFinding>]
        attr_accessor :associated_findings
      
        # A list of attack step nodes that exist in this attack path node.
        # Corresponds to the JSON property `attackSteps`
        # @return [Array<Google::Apis::SecuritycenterV1::AttackStepNode>]
        attr_accessor :attack_steps
      
        # Human-readable name of this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the resource at this point in the attack path. The format of the
        # name follows the Cloud Asset Inventory [resource name format]("https://cloud.
        # google.com/asset-inventory/docs/resource-name-format")
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The [supported resource type](https://cloud.google.com/asset-inventory/docs/
        # supported-asset-types")
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Unique id of the attack path node.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associated_findings = args[:associated_findings] if args.key?(:associated_findings)
          @attack_steps = args[:attack_steps] if args.key?(:attack_steps)
          @display_name = args[:display_name] if args.key?(:display_name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Detailed steps the attack can take between path nodes.
      class AttackStepNode
        include Google::Apis::Core::Hashable
      
        # Attack step description
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User friendly name of the attack step
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Attack step labels for metadata
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Attack step type. Can be either AND, OR or DEFENSE
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Unique ID for one Node
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
          @uuid = args[:uuid] if args.key?(:uuid)
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
        # @return [Array<Google::Apis::SecuritycenterV1::AuditLogConfig>]
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
      
      # Information related to Google Cloud Backup and DR Service findings.
      class BackupDisasterRecovery
        include Google::Apis::Core::Hashable
      
        # The name of the Backup and DR appliance that captures, moves, and manages the
        # lifecycle of backup data. For example, “backup-server-57137”.
        # Corresponds to the JSON property `appliance`
        # @return [String]
        attr_accessor :appliance
      
        # The names of Backup and DR applications. An application is a VM, database, or
        # file system on a managed host monitored by a backup and recovery appliance.
        # For example, “centos7-01-vol00”, “centos7-01-vol01”, “centos7-01-vol02”.
        # Corresponds to the JSON property `applications`
        # @return [Array<String>]
        attr_accessor :applications
      
        # The timestamp at which the Backup and DR backup was created.
        # Corresponds to the JSON property `backupCreateTime`
        # @return [String]
        attr_accessor :backup_create_time
      
        # The name of a Backup and DR template which comprises one or more backup
        # policies. See the [Backup and DR documentation](https://cloud.google.com/
        # backup-disaster-recovery/docs/concepts/backup-plan#temp) for more information.
        # For example, “snap-ov”.
        # Corresponds to the JSON property `backupTemplate`
        # @return [String]
        attr_accessor :backup_template
      
        # The backup type of the Backup and DR image. For example, “Snapshot”, “Remote
        # Snapshot”, “OnVault”.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # The name of a Backup and DR host, which is managed by the backup and recovery
        # appliance and known to the management console. The host can be of type Generic
        # (for example, Compute Engine, SQL Server, Oracle DB, SMB file system, etc.),
        # vCenter, or an ESX server. See the [Backup and DR documentation on hosts](
        # https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-
        # hosts-and-their-applications) for more information. For example, “centos7-01”.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The names of Backup and DR policies that are associated with a template and
        # that define when to run a backup, how frequently to run a backup, and how long
        # to retain the backup image. For example, “onvaults”.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # The names of Backup and DR advanced policy options of a policy applying to an
        # application. See the [Backup and DR documentation on policy options](https://
        # cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings).
        # For example, “skipofflineappsincongrp, nounmap”.
        # Corresponds to the JSON property `policyOptions`
        # @return [Array<String>]
        attr_accessor :policy_options
      
        # The name of the Backup and DR resource profile that specifies the storage
        # media for backups of application and VM data. See the [Backup and DR
        # documentation on profiles](https://cloud.google.com/backup-disaster-recovery/
        # docs/concepts/backup-plan#profile). For example, “GCP”.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # The name of the Backup and DR storage pool that the backup and recovery
        # appliance is storing data in. The storage pool could be of type Cloud, Primary,
        # Snapshot, or OnVault. See the [Backup and DR documentation on storage pools](
        # https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools).
        # For example, “DiskPoolOne”.
        # Corresponds to the JSON property `storagePool`
        # @return [String]
        attr_accessor :storage_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance = args[:appliance] if args.key?(:appliance)
          @applications = args[:applications] if args.key?(:applications)
          @backup_create_time = args[:backup_create_time] if args.key?(:backup_create_time)
          @backup_template = args[:backup_template] if args.key?(:backup_template)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @host = args[:host] if args.key?(:host)
          @policies = args[:policies] if args.key?(:policies)
          @policy_options = args[:policy_options] if args.key?(:policy_options)
          @profile = args[:profile] if args.key?(:profile)
          @storage_pool = args[:storage_pool] if args.key?(:storage_pool)
        end
      end
      
      # Request message to create multiple resource value configs
      class BatchCreateResourceValueConfigsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource value configs to be created.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::SecuritycenterV1::CreateResourceValueConfigRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchCreateResourceValueConfigs
      class BatchCreateResourceValueConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The resource value configs created
        # Corresponds to the JSON property `resourceValueConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ResourceValueConfig>]
        attr_accessor :resource_value_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_value_configs = args[:resource_value_configs] if args.key?(:resource_value_configs)
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
        # @return [Google::Apis::SecuritycenterV1::Expr]
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
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
      
      # Request message for bulk findings update. Note: 1. If multiple bulk update
      # requests match the same resource, the order in which they get executed is not
      # defined. 2. Once a bulk operation is started, there is no way to stop it.
      class BulkMuteFindingsRequest
        include Google::Apis::Core::Hashable
      
        # Expression that identifies findings that should be updated. The expression is
        # a list of zero or more restrictions combined via logical operators `AND` and `
        # OR`. Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. The fields map to those defined in the corresponding
        # resource. The supported operators are: * `=` for all value types. * `>`, `<`, `
        # >=`, `<=` for integer values. * `:`, meaning substring matching, for strings.
        # The supported value types are: * string literals in quotes. * integer literals
        # without quotes. * boolean literals `true` and `false` without quotes.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # This can be a mute configuration name or any identifier for mute/unmute of
        # findings based on the filter.
        # Corresponds to the JSON property `muteAnnotation`
        # @return [String]
        attr_accessor :mute_annotation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @mute_annotation = args[:mute_annotation] if args.key?(:mute_annotation)
        end
      end
      
      # The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated
      # with the finding.
      class CloudDlpDataProfile
        include Google::Apis::Core::Hashable
      
        # Name of the data profile, for example, `projects/123/locations/europe/
        # tableProfiles/8383929`.
        # Corresponds to the JSON property `dataProfile`
        # @return [String]
        attr_accessor :data_profile
      
        # The resource hierarchy level at which the data profile was generated.
        # Corresponds to the JSON property `parentType`
        # @return [String]
        attr_accessor :parent_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile = args[:data_profile] if args.key?(:data_profile)
          @parent_type = args[:parent_type] if args.key?(:parent_type)
        end
      end
      
      # Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](
      # https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the
      # finding.
      class CloudDlpInspection
        include Google::Apis::Core::Hashable
      
        # Whether Cloud DLP scanned the complete resource or a sampled subset.
        # Corresponds to the JSON property `fullScan`
        # @return [Boolean]
        attr_accessor :full_scan
        alias_method :full_scan?, :full_scan
      
        # The type of information (or *[infoType](https://cloud.google.com/dlp/docs/
        # infotypes-reference)*) found, for example, `EMAIL_ADDRESS` or `STREET_ADDRESS`.
        # Corresponds to the JSON property `infoType`
        # @return [String]
        attr_accessor :info_type
      
        # The number of times Cloud DLP found this infoType within this job and resource.
        # Corresponds to the JSON property `infoTypeCount`
        # @return [Fixnum]
        attr_accessor :info_type_count
      
        # Name of the inspection job, for example, `projects/123/locations/europe/
        # dlpJobs/i-8383929`.
        # Corresponds to the JSON property `inspectJob`
        # @return [String]
        attr_accessor :inspect_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_scan = args[:full_scan] if args.key?(:full_scan)
          @info_type = args[:info_type] if args.key?(:info_type)
          @info_type_count = args[:info_type_count] if args.key?(:info_type_count)
          @inspect_job = args[:inspect_job] if args.key?(:inspect_job)
        end
      end
      
      # Metadata taken from a [Cloud Logging LogEntry](https://cloud.google.com/
      # logging/docs/reference/v2/rest/v2/LogEntry)
      class CloudLoggingEntry
        include Google::Apis::Core::Hashable
      
        # A unique identifier for the log entry.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # The type of the log (part of `log_name`. `log_name` is the resource name of
        # the log to which this log entry belongs). For example: `cloudresourcemanager.
        # googleapis.com/activity`. Note that this field is not URL-encoded, unlike the `
        # LOG_ID` field in `LogEntry`.
        # Corresponds to the JSON property `logId`
        # @return [String]
        attr_accessor :log_id
      
        # The organization, folder, or project of the monitored resource that produced
        # this log entry.
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # The time the event described by the log entry occurred.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @log_id = args[:log_id] if args.key?(:log_id)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Contains compliance information about a security standard indicating unmet
      # recommendations.
      class Compliance
        include Google::Apis::Core::Hashable
      
        # Policies within the standard or benchmark, for example, A.12.4.1
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # Version of the standard or benchmark, for example, 1.1
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] if args.key?(:ids)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Result containing the properties and count of a ComplianceSnapshot request.
      class ComplianceSnapshot
        include Google::Apis::Core::Hashable
      
        # The category of Findings matching.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The compliance standard (ie CIS).
        # Corresponds to the JSON property `complianceStandard`
        # @return [String]
        attr_accessor :compliance_standard
      
        # The compliance version (ie 1.3) in CIS 1.3.
        # Corresponds to the JSON property `complianceVersion`
        # @return [String]
        attr_accessor :compliance_version
      
        # Total count of findings for the given properties.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The leaf container resource name that is closest to the snapshot.
        # Corresponds to the JSON property `leafContainerResource`
        # @return [String]
        attr_accessor :leaf_container_resource
      
        # The compliance snapshot name. Format: //sources//complianceSnapshots/
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The CRM resource display name that is closest to the snapshot the Findings
        # belong to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        # The snapshot time of the snapshot.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @compliance_standard = args[:compliance_standard] if args.key?(:compliance_standard)
          @compliance_version = args[:compliance_version] if args.key?(:compliance_version)
          @count = args[:count] if args.key?(:count)
          @leaf_container_resource = args[:leaf_container_resource] if args.key?(:leaf_container_resource)
          @name = args[:name] if args.key?(:name)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Contains information about the IP connection associated with the finding.
      class Connection
        include Google::Apis::Core::Hashable
      
        # Destination IP address. Not present for sockets that are listening and not
        # connected.
        # Corresponds to the JSON property `destinationIp`
        # @return [String]
        attr_accessor :destination_ip
      
        # Destination port. Not present for sockets that are listening and not connected.
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # IANA Internet Protocol Number such as TCP(6) and UDP(17).
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Source IP address.
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        # Source port.
        # Corresponds to the JSON property `sourcePort`
        # @return [Fixnum]
        attr_accessor :source_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_ip = args[:destination_ip] if args.key?(:destination_ip)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
          @source_port = args[:source_port] if args.key?(:source_port)
        end
      end
      
      # The email address of a contact.
      class Contact
        include Google::Apis::Core::Hashable
      
        # An email address. For example, "`person123@company.com`".
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Details about specific contacts
      class ContactDetails
        include Google::Apis::Core::Hashable
      
        # A list of contacts
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::SecuritycenterV1::Contact>]
        attr_accessor :contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
        end
      end
      
      # Container associated with the finding.
      class Container
        include Google::Apis::Core::Hashable
      
        # The time that the container was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional container image ID, if provided by the container runtime. Uniquely
        # identifies the container image launched using a container image digest.
        # Corresponds to the JSON property `imageId`
        # @return [String]
        attr_accessor :image_id
      
        # Container labels, as provided by the container runtime.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1::Label>]
        attr_accessor :labels
      
        # Name of the container.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Container image URI provided when configuring a pod or container. This string
        # can identify a container image version using mutable tags.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @image_id = args[:image_id] if args.key?(:image_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Request message to create single resource value config
      class CreateResourceValueConfigRequest
        include Google::Apis::Core::Hashable
      
        # Required. Resource name of the new ResourceValueConfig's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A resource value config (RVC) is a mapping configuration of user's resources
        # to resource values. Used in Attack path simulations.
        # Corresponds to the JSON property `resourceValueConfig`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ResourceValueConfig]
        attr_accessor :resource_value_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @resource_value_config = args[:resource_value_config] if args.key?(:resource_value_config)
        end
      end
      
      # An error encountered while validating the uploaded configuration of an Event
      # Threat Detection Custom Module.
      class CustomModuleValidationError
        include Google::Apis::Core::Hashable
      
        # A description of the error, suitable for human consumption. Required.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A position in the uploaded text version of a module.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::SecuritycenterV1::Position]
        attr_accessor :end
      
        # The path, in RFC 8901 JSON Pointer format, to the field that failed validation.
        # This may be left empty if no specific field is affected.
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # A position in the uploaded text version of a module.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::SecuritycenterV1::Position]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @end = args[:end] if args.key?(:end)
          @field_path = args[:field_path] if args.key?(:field_path)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A list of zero or more errors encountered while validating the uploaded
      # configuration of an Event Threat Detection Custom Module.
      class CustomModuleValidationErrors
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::SecuritycenterV1::CustomModuleValidationError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
      # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
      # vulnerability.
      class Cve
        include Google::Apis::Core::Hashable
      
        # Common Vulnerability Scoring System version 3.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1::Cvssv3]
        attr_accessor :cvssv3
      
        # The exploitation activity of the vulnerability in the wild.
        # Corresponds to the JSON property `exploitationActivity`
        # @return [String]
        attr_accessor :exploitation_activity
      
        # The unique identifier for the vulnerability. e.g. CVE-2021-34527
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The potential impact of the vulnerability if it was to be exploited.
        # Corresponds to the JSON property `impact`
        # @return [String]
        attr_accessor :impact
      
        # Whether or not the vulnerability has been observed in the wild.
        # Corresponds to the JSON property `observedInTheWild`
        # @return [Boolean]
        attr_accessor :observed_in_the_wild
        alias_method :observed_in_the_wild?, :observed_in_the_wild
      
        # Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/
        # cvename.cgi?name=CVE-2021-34527
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1::Reference>]
        attr_accessor :references
      
        # Whether upstream fix is available for the CVE.
        # Corresponds to the JSON property `upstreamFixAvailable`
        # @return [Boolean]
        attr_accessor :upstream_fix_available
        alias_method :upstream_fix_available?, :upstream_fix_available
      
        # Whether or not the vulnerability was zero day when the finding was published.
        # Corresponds to the JSON property `zeroDay`
        # @return [Boolean]
        attr_accessor :zero_day
        alias_method :zero_day?, :zero_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @exploitation_activity = args[:exploitation_activity] if args.key?(:exploitation_activity)
          @id = args[:id] if args.key?(:id)
          @impact = args[:impact] if args.key?(:impact)
          @observed_in_the_wild = args[:observed_in_the_wild] if args.key?(:observed_in_the_wild)
          @references = args[:references] if args.key?(:references)
          @upstream_fix_available = args[:upstream_fix_available] if args.key?(:upstream_fix_available)
          @zero_day = args[:zero_day] if args.key?(:zero_day)
        end
      end
      
      # Common Vulnerability Scoring System version 3.
      class Cvssv3
        include Google::Apis::Core::Hashable
      
        # This metric describes the conditions beyond the attacker's control that must
        # exist in order to exploit the vulnerability.
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # Base Metrics Represents the intrinsic characteristics of a vulnerability that
        # are constant over time and across user environments. This metric reflects the
        # context by which vulnerability exploitation is possible.
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # This metric measures the impact to the availability of the impacted component
        # resulting from a successfully exploited vulnerability.
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # The base score is a function of the base metric scores.
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # This metric measures the impact to the confidentiality of the information
        # resources managed by a software component due to a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # This metric measures the impact to integrity of a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # This metric describes the level of privileges an attacker must possess before
        # successfully exploiting the vulnerability.
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # The Scope metric captures whether a vulnerability in one vulnerable component
        # impacts resources in components beyond its security scope.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # This metric captures the requirement for a human user, other than the attacker,
        # to participate in the successful compromise of the vulnerable component.
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # Represents database access information, such as queries. A database may be a
      # sub-resource of an instance (as in the case of Cloud SQL instances or Cloud
      # Spanner instances), or the database instance itself. Some database resources
      # might not have the [full resource name](https://google.aip.dev/122#full-
      # resource-names) populated because these resource types, such as Cloud SQL
      # databases, are not yet supported by Cloud Asset Inventory. In these cases only
      # the display name is provided.
      class Database
        include Google::Apis::Core::Hashable
      
        # The human-readable name of the database that the user connected to.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The target usernames, roles, or groups of an SQL privilege grant, which is not
        # an IAM policy change.
        # Corresponds to the JSON property `grantees`
        # @return [Array<String>]
        attr_accessor :grantees
      
        # Some database resources may not have the [full resource name](https://google.
        # aip.dev/122#full-resource-names) populated because these resource types are
        # not yet supported by Cloud Asset Inventory (e.g. Cloud SQL databases). In
        # these cases only the display name will be provided. The [full resource name](
        # https://google.aip.dev/122#full-resource-names) of the database that the user
        # connected to, if it is supported by Cloud Asset Inventory.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The SQL statement that is associated with the database access.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The username used to connect to the database. The username might not be an IAM
        # principal and does not have a set format.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        # The version of the database, for example, POSTGRES_14. See [the complete list](
        # https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion).
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @grantees = args[:grantees] if args.key?(:grantees)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
          @user_name = args[:user_name] if args.key?(:user_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Memory hash detection contributing to the binary family match.
      class Detection
        include Google::Apis::Core::Hashable
      
        # The name of the binary associated with the memory hash signature detection.
        # Corresponds to the JSON property `binary`
        # @return [String]
        attr_accessor :binary
      
        # The percentage of memory page hashes in the signature that were matched.
        # Corresponds to the JSON property `percentPagesMatched`
        # @return [Float]
        attr_accessor :percent_pages_matched
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary = args[:binary] if args.key?(:binary)
          @percent_pages_matched = args[:percent_pages_matched] if args.key?(:percent_pages_matched)
        end
      end
      
      # Path of the file in terms of underlying disk/partition identifiers.
      class DiskPath
        include Google::Apis::Core::Hashable
      
        # UUID of the partition (format https://wiki.archlinux.org/title/
        # persistent_block_device_naming#by-uuid)
        # Corresponds to the JSON property `partitionUuid`
        # @return [String]
        attr_accessor :partition_uuid
      
        # Relative path of the file in the partition as a JSON encoded string. Example: /
        # home/user1/executable_file.sh
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_uuid = args[:partition_uuid] if args.key?(:partition_uuid)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
        end
      end
      
      # An EffectiveEventThreatDetectionCustomModule is the representation of an Event
      # Threat Detection custom module at a specified level of the resource hierarchy:
      # organization, folder, or project. If a custom module is inherited from a
      # parent organization or folder, the value of the `enablement_state` property in
      # EffectiveEventThreatDetectionCustomModule is set to the value that is
      # effective in the parent, instead of `INHERITED`. For example, if the module is
      # enabled in a parent organization or folder, the effective `enablement_state`
      # for the module in all child folders or projects is also `enabled`.
      # EffectiveEventThreatDetectionCustomModule is read-only.
      class EffectiveEventThreatDetectionCustomModule
        include Google::Apis::Core::Hashable
      
        # Output only. Config for the effective module.
        # Corresponds to the JSON property `config`
        # @return [Hash<String,Object>]
        attr_accessor :config
      
        # Output only. The description for the module.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The human readable name to be displayed for the module.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The effective state of enablement for the module at the given
        # level of the hierarchy.
        # Corresponds to the JSON property `enablementState`
        # @return [String]
        attr_accessor :enablement_state
      
        # Output only. The resource name of the effective ETD custom module. Its format
        # is: * "organizations/`organization`/eventThreatDetectionSettings/
        # effectiveCustomModules/`module`". * "folders/`folder`/
        # eventThreatDetectionSettings/effectiveCustomModules/`module`". * "projects/`
        # project`/eventThreatDetectionSettings/effectiveCustomModules/`module`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Type for the module. e.g. CONFIGURABLE_BAD_IP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enablement_state = args[:enablement_state] if args.key?(:enablement_state)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
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
      
      # A name-value pair representing an environment variable used in an operating
      # system process.
      class EnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # Environment variable name as a JSON encoded string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Environment variable value as a JSON encoded string.
        # Corresponds to the JSON property `val`
        # @return [String]
        attr_accessor :val
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @val = args[:val] if args.key?(:val)
        end
      end
      
      # Represents an instance of an Event Threat Detection custom module, including
      # its full module name, display name, enablement state, and last updated time.
      # You can create a custom module at the organization, folder, or project level.
      # Custom modules that you create at the organization or folder level are
      # inherited by child folders and projects.
      class EventThreatDetectionCustomModule
        include Google::Apis::Core::Hashable
      
        # Output only. The closest ancestor module that this module inherits the
        # enablement state from. The format is the same as the
        # EventThreatDetectionCustomModule resource name.
        # Corresponds to the JSON property `ancestorModule`
        # @return [String]
        attr_accessor :ancestor_module
      
        # Config for the module. For the resident module, its config value is defined at
        # this level. For the inherited module, its config value is inherited from the
        # ancestor module.
        # Corresponds to the JSON property `config`
        # @return [Hash<String,Object>]
        attr_accessor :config
      
        # The description for the module.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable name to be displayed for the module.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The state of enablement for the module at the given level of the hierarchy.
        # Corresponds to the JSON property `enablementState`
        # @return [String]
        attr_accessor :enablement_state
      
        # Output only. The editor the module was last updated by.
        # Corresponds to the JSON property `lastEditor`
        # @return [String]
        attr_accessor :last_editor
      
        # Immutable. The resource name of the Event Threat Detection custom module. Its
        # format is: * "organizations/`organization`/eventThreatDetectionSettings/
        # customModules/`module`". * "folders/`folder`/eventThreatDetectionSettings/
        # customModules/`module`". * "projects/`project`/eventThreatDetectionSettings/
        # customModules/`module`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type for the module. e.g. CONFIGURABLE_BAD_IP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time the module was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor_module = args[:ancestor_module] if args.key?(:ancestor_module)
          @config = args[:config] if args.key?(:config)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enablement_state = args[:enablement_state] if args.key?(:enablement_state)
          @last_editor = args[:last_editor] if args.key?(:last_editor)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Resource where data was exfiltrated from or exfiltrated to.
      class ExfilResource
        include Google::Apis::Core::Hashable
      
        # Subcomponents of the asset that was exfiltrated, like URIs used during
        # exfiltration, table names, databases, and filenames. For example, multiple
        # tables might have been exfiltrated from the same Cloud SQL instance, or
        # multiple files might have been exfiltrated from the same Cloud Storage bucket.
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # The resource's [full resource name](https://cloud.google.com/apis/design/
        # resource_names#full_resource_name).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @components = args[:components] if args.key?(:components)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Exfiltration represents a data exfiltration attempt from one or more sources
      # to one or more targets. The `sources` attribute lists the sources of the
      # exfiltrated data. The `targets` attribute lists the destinations the data was
      # copied to.
      class Exfiltration
        include Google::Apis::Core::Hashable
      
        # If there are multiple sources, then the data is considered "joined" between
        # them. For instance, BigQuery can join multiple tables, and each table would be
        # considered a source.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1::ExfilResource>]
        attr_accessor :sources
      
        # If there are multiple targets, each target would get a complete copy of the "
        # joined" source data.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1::ExfilResource>]
        attr_accessor :targets
      
        # Total exfiltrated bytes processed for the entire job.
        # Corresponds to the JSON property `totalExfiltratedBytes`
        # @return [Fixnum]
        attr_accessor :total_exfiltrated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sources = args[:sources] if args.key?(:sources)
          @targets = args[:targets] if args.key?(:targets)
          @total_exfiltrated_bytes = args[:total_exfiltrated_bytes] if args.key?(:total_exfiltrated_bytes)
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
      
      # File information about the related binary/library used by an executable, or
      # the script used by a script interpreter
      class File
        include Google::Apis::Core::Hashable
      
        # Prefix of the file contents as a JSON-encoded string.
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # Path of the file in terms of underlying disk/partition identifiers.
        # Corresponds to the JSON property `diskPath`
        # @return [Google::Apis::SecuritycenterV1::DiskPath]
        attr_accessor :disk_path
      
        # The length in bytes of the file prefix that was hashed. If hashed_size == size,
        # any hashes reported represent the entire file.
        # Corresponds to the JSON property `hashedSize`
        # @return [Fixnum]
        attr_accessor :hashed_size
      
        # True when the hash covers only a prefix of the file.
        # Corresponds to the JSON property `partiallyHashed`
        # @return [Boolean]
        attr_accessor :partially_hashed
        alias_method :partially_hashed?, :partially_hashed
      
        # Absolute path of the file as a JSON encoded string.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # SHA256 hash of the first hashed_size bytes of the file encoded as a hex string.
        # If hashed_size == size, sha256 represents the SHA256 hash of the entire file.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        # Size of the file in bytes.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @disk_path = args[:disk_path] if args.key?(:disk_path)
          @hashed_size = args[:hashed_size] if args.key?(:hashed_size)
          @partially_hashed = args[:partially_hashed] if args.key?(:partially_hashed)
          @path = args[:path] if args.key?(:path)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # Security Command Center finding. A finding is a record of assessment data like
      # security, risk, health, or privacy, that is ingested into Security Command
      # Center for presentation, notification, analysis, policy testing, and
      # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
      # Engine application is a finding.
      class Finding
        include Google::Apis::Core::Hashable
      
        # Represents an access event.
        # Corresponds to the JSON property `access`
        # @return [Google::Apis::SecuritycenterV1::Access]
        attr_accessor :access
      
        # Represents an application associated with a finding.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1::Application]
        attr_accessor :application
      
        # An attack exposure contains the results of an attack path simulation run.
        # Corresponds to the JSON property `attackExposure`
        # @return [Google::Apis::SecuritycenterV1::AttackExposure]
        attr_accessor :attack_exposure
      
        # Information related to Google Cloud Backup and DR Service findings.
        # Corresponds to the JSON property `backupDisasterRecovery`
        # @return [Google::Apis::SecuritycenterV1::BackupDisasterRecovery]
        attr_accessor :backup_disaster_recovery
      
        # The canonical name of the finding. It's either "organizations/`organization_id`
        # /sources/`source_id`/findings/`finding_id`", "folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`" or "projects/`project_number`/sources/`
        # source_id`/findings/`finding_id`", depending on the closest CRM ancestor of
        # the resource associated with the finding.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The additional taxonomy group within findings from a given source. This field
        # is immutable after creation time. Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated
        # with the finding.
        # Corresponds to the JSON property `cloudDlpDataProfile`
        # @return [Google::Apis::SecuritycenterV1::CloudDlpDataProfile]
        attr_accessor :cloud_dlp_data_profile
      
        # Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](
        # https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the
        # finding.
        # Corresponds to the JSON property `cloudDlpInspection`
        # @return [Google::Apis::SecuritycenterV1::CloudDlpInspection]
        attr_accessor :cloud_dlp_inspection
      
        # Contains compliance information for security standards associated to the
        # finding.
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1::Compliance>]
        attr_accessor :compliances
      
        # Contains information about the IP connection associated with the finding.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1::Connection>]
        attr_accessor :connections
      
        # Output only. Map containing the points of contact for the given finding. The
        # key represents the type of contact, while the value contains a list of all the
        # contacts that pertain. Please refer to: https://cloud.google.com/resource-
        # manager/docs/managing-notification-contacts#notification-categories ` "
        # security": ` "contacts": [ ` "email": "person1@company.com" `, ` "email": "
        # person2@company.com" ` ] ` `
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1::ContactDetails>]
        attr_accessor :contacts
      
        # Containers associated with the finding. This field provides information for
        # both Kubernetes and non-Kubernetes containers.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1::Container>]
        attr_accessor :containers
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Represents database access information, such as queries. A database may be a
        # sub-resource of an instance (as in the case of Cloud SQL instances or Cloud
        # Spanner instances), or the database instance itself. Some database resources
        # might not have the [full resource name](https://google.aip.dev/122#full-
        # resource-names) populated because these resource types, such as Cloud SQL
        # databases, are not yet supported by Cloud Asset Inventory. In these cases only
        # the display name is provided.
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::SecuritycenterV1::Database]
        attr_accessor :database
      
        # Contains more details about the finding.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time the finding was first detected. If an existing finding is updated,
        # then this is the time the update occurred. For example, if the finding
        # represents an open firewall, this property captures the time the detector
        # believes the firewall became open. The accuracy is determined by the detector.
        # If the finding is later resolved, then this time reflects when the finding was
        # resolved. This must not be set to a value greater than the current timestamp.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Exfiltration represents a data exfiltration attempt from one or more sources
        # to one or more targets. The `sources` attribute lists the sources of the
        # exfiltrated data. The `targets` attribute lists the destinations the data was
        # copied to.
        # Corresponds to the JSON property `exfiltration`
        # @return [Google::Apis::SecuritycenterV1::Exfiltration]
        attr_accessor :exfiltration
      
        # Output only. Third party SIEM/SOAR fields within SCC, contains external system
        # information and external system finding fields.
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem>]
        attr_accessor :external_systems
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # File associated with the finding.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1::File>]
        attr_accessor :files
      
        # The class of the finding.
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # Represents IAM bindings associated with the finding.
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1::IamBinding>]
        attr_accessor :iam_bindings
      
        # Represents what's commonly known as an _indicator of compromise_ (IoC) in
        # computer forensics. This is an artifact observed on a network or in an
        # operating system that, with high confidence, indicates a computer intrusion.
        # For more information, see [Indicator of compromise](https://en.wikipedia.org/
        # wiki/Indicator_of_compromise).
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1::Indicator]
        attr_accessor :indicator
      
        # Kernel mode rootkit signatures.
        # Corresponds to the JSON property `kernelRootkit`
        # @return [Google::Apis::SecuritycenterV1::KernelRootkit]
        attr_accessor :kernel_rootkit
      
        # Kubernetes-related attributes.
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1::Kubernetes]
        attr_accessor :kubernetes
      
        # The load balancers associated with the finding.
        # Corresponds to the JSON property `loadBalancers`
        # @return [Array<Google::Apis::SecuritycenterV1::LoadBalancer>]
        attr_accessor :load_balancers
      
        # Log entries that are relevant to the finding.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::SecuritycenterV1::LogEntry>]
        attr_accessor :log_entries
      
        # MITRE ATT&CK tactics and techniques related to this finding. See: https://
        # attack.mitre.org
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1::MitreAttack]
        attr_accessor :mitre_attack
      
        # Unique identifier of the module which generated the finding. Example: folders/
        # 598186756061/securityHealthAnalyticsSettings/customModules/56799441161885
        # Corresponds to the JSON property `moduleName`
        # @return [String]
        attr_accessor :module_name
      
        # Indicates the mute state of a finding (either muted, unmuted or undefined).
        # Unlike other attributes of a finding, a finding provider shouldn't set the
        # value of mute.
        # Corresponds to the JSON property `mute`
        # @return [String]
        attr_accessor :mute
      
        # Records additional information about the mute operation, for example, the [
        # mute configuration](/security-command-center/docs/how-to-mute-findings) that
        # muted the finding and the user who muted the finding.
        # Corresponds to the JSON property `muteInitiator`
        # @return [String]
        attr_accessor :mute_initiator
      
        # Output only. The most recent time this finding was muted or unmuted.
        # Corresponds to the JSON property `muteUpdateTime`
        # @return [String]
        attr_accessor :mute_update_time
      
        # The [relative resource name](https://cloud.google.com/apis/design/
        # resource_names#relative_resource_name) of the finding. Example: "organizations/
        # `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        # folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        # sources/`source_id`/findings/`finding_id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Steps to address the finding.
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
        # Contains information about the org policies associated with the finding.
        # Corresponds to the JSON property `orgPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1::OrgPolicy>]
        attr_accessor :org_policies
      
        # The relative resource name of the source the finding belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#relative_resource_name This field
        # is immutable after creation time. For example: "organizations/`organization_id`
        # /sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. The human readable display name of the finding source such as "
        # Event Threat Detection" or "Security Health Analytics".
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # Represents operating system processes associated with the Finding.
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::SecuritycenterV1::Process>]
        attr_accessor :processes
      
        # For findings on Google Cloud resources, the full resource name of the Google
        # Cloud resource this finding is for. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name When the finding is for a non-Google Cloud
        # resource, the resourceName can be a customer or partner defined string. This
        # field is immutable after creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        attr_accessor :security_marks
      
        # Represents a posture that is deployed on Google Cloud by the Security Command
        # Center Posture Management service. A posture contains one or more policy sets.
        # A policy set is a group of policies that enforce a set of security rules on
        # Google Cloud.
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::SecuritycenterV1::SecurityPosture]
        attr_accessor :security_posture
      
        # The severity of the finding. This field is managed by the source that writes
        # the finding.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1::Vulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @application = args[:application] if args.key?(:application)
          @attack_exposure = args[:attack_exposure] if args.key?(:attack_exposure)
          @backup_disaster_recovery = args[:backup_disaster_recovery] if args.key?(:backup_disaster_recovery)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @cloud_dlp_data_profile = args[:cloud_dlp_data_profile] if args.key?(:cloud_dlp_data_profile)
          @cloud_dlp_inspection = args[:cloud_dlp_inspection] if args.key?(:cloud_dlp_inspection)
          @compliances = args[:compliances] if args.key?(:compliances)
          @connections = args[:connections] if args.key?(:connections)
          @contacts = args[:contacts] if args.key?(:contacts)
          @containers = args[:containers] if args.key?(:containers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database = args[:database] if args.key?(:database)
          @description = args[:description] if args.key?(:description)
          @event_time = args[:event_time] if args.key?(:event_time)
          @exfiltration = args[:exfiltration] if args.key?(:exfiltration)
          @external_systems = args[:external_systems] if args.key?(:external_systems)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @files = args[:files] if args.key?(:files)
          @finding_class = args[:finding_class] if args.key?(:finding_class)
          @iam_bindings = args[:iam_bindings] if args.key?(:iam_bindings)
          @indicator = args[:indicator] if args.key?(:indicator)
          @kernel_rootkit = args[:kernel_rootkit] if args.key?(:kernel_rootkit)
          @kubernetes = args[:kubernetes] if args.key?(:kubernetes)
          @load_balancers = args[:load_balancers] if args.key?(:load_balancers)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @mitre_attack = args[:mitre_attack] if args.key?(:mitre_attack)
          @module_name = args[:module_name] if args.key?(:module_name)
          @mute = args[:mute] if args.key?(:mute)
          @mute_initiator = args[:mute_initiator] if args.key?(:mute_initiator)
          @mute_update_time = args[:mute_update_time] if args.key?(:mute_update_time)
          @name = args[:name] if args.key?(:name)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @org_policies = args[:org_policies] if args.key?(:org_policies)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @processes = args[:processes] if args.key?(:processes)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @security_posture = args[:security_posture] if args.key?(:security_posture)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # Message that contains the resource name and display name of a folder resource.
      class Folder
        include Google::Apis::Core::Hashable
      
        # Full resource name of this folder. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # The user defined display name for this folder.
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # Represents a geographical location for a given access.
      class Geolocation
        include Google::Apis::Core::Hashable
      
        # A CLDR.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SecuritycenterV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Configures how to deliver Findings to BigQuery Instance.
      class GoogleCloudSecuritycenterV1BigQueryExport
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the BigQuery export was created. This field is
        # set by the server and will be ignored if provided on export on creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The dataset to write findings' updates to. Its format is "projects/[project_id]
        # /datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only
        # letters (a-z, A-Z), numbers (0-9), or underscores (_).
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # The description of the export (max of 1024 characters).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Expression that defines the filter to apply across create/update events of
        # findings. The expression is a list of zero or more restrictions combined via
        # logical operators `AND` and `OR`. Parentheses are supported, and `OR` has
        # higher precedence than `AND`. Restrictions have the form ` ` and may have a `-`
        # character in front of them to indicate negation. The fields map to those
        # defined in the corresponding resource. The supported operators are: * `=` for
        # all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning
        # substring matching, for strings. The supported value types are: * string
        # literals in quotes. * integer literals without quotes. * boolean literals `
        # true` and `false` without quotes.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. Email address of the user who last edited the BigQuery export.
        # This field is set by the server and will be ignored if provided on export
        # creation or update.
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # The relative resource name of this export. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name. Example format: "organizations/`
        # organization_id`/bigQueryExports/`export_id`" Example format: "folders/`
        # folder_id`/bigQueryExports/`export_id`" Example format: "projects/`project_id`/
        # bigQueryExports/`export_id`" This field is provided in responses, and is
        # ignored when provided in create requests.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account that needs permission to create table and
        # upload data to the BigQuery dataset.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # Output only. The most recent time at which the BigQuery export was updated.
        # This field is set by the server and will be ignored if provided on export
        # creation or update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @principal = args[:principal] if args.key?(:principal)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a Kubernetes RoleBinding or ClusterRoleBinding.
      class GoogleCloudSecuritycenterV1Binding
        include Google::Apis::Core::Hashable
      
        # Name for the binding.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace for the binding.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # Kubernetes Role or ClusterRole.
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::SecuritycenterV1::Role]
        attr_accessor :role
      
        # Represents one or more subjects that are bound to the role. Not always
        # available for PATCH requests.
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1::Subject>]
        attr_accessor :subjects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @role = args[:role] if args.key?(:role)
          @subjects = args[:subjects] if args.key?(:subjects)
        end
      end
      
      # The response to a BulkMute request. Contains the LRO information.
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Defines the properties in a custom module configuration for Security Health
      # Analytics. Use the custom module configuration to create custom detectors that
      # generate custom findings for resources that you specify.
      class GoogleCloudSecuritycenterV1CustomConfig
        include Google::Apis::Core::Hashable
      
        # A set of optional name-value pairs that define custom source properties to
        # return with each finding that is generated by the custom module. The custom
        # source properties that are defined here are included in the finding JSON under
        # `sourceProperties`.
        # Corresponds to the JSON property `customOutput`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1CustomOutputSpec]
        attr_accessor :custom_output
      
        # Text that describes the vulnerability or misconfiguration that the custom
        # module detects. This explanation is returned with each finding instance to
        # help investigators understand the detected issue. The text must be enclosed in
        # quotation marks.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
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
        # Corresponds to the JSON property `predicate`
        # @return [Google::Apis::SecuritycenterV1::Expr]
        attr_accessor :predicate
      
        # An explanation of the recommended steps that security teams can take to
        # resolve the detected issue. This explanation is returned with each finding
        # generated by this module in the `nextSteps` property of the finding JSON.
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        # Resource for selecting resource type.
        # Corresponds to the JSON property `resourceSelector`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ResourceSelector]
        attr_accessor :resource_selector
      
        # The severity to assign to findings generated by the module.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_output = args[:custom_output] if args.key?(:custom_output)
          @description = args[:description] if args.key?(:description)
          @predicate = args[:predicate] if args.key?(:predicate)
          @recommendation = args[:recommendation] if args.key?(:recommendation)
          @resource_selector = args[:resource_selector] if args.key?(:resource_selector)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A set of optional name-value pairs that define custom source properties to
      # return with each finding that is generated by the custom module. The custom
      # source properties that are defined here are included in the finding JSON under
      # `sourceProperties`.
      class GoogleCloudSecuritycenterV1CustomOutputSpec
        include Google::Apis::Core::Hashable
      
        # A list of custom output properties to add to the finding.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Property>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # An EffectiveSecurityHealthAnalyticsCustomModule is the representation of a
      # Security Health Analytics custom module at a specified level of the resource
      # hierarchy: organization, folder, or project. If a custom module is inherited
      # from a parent organization or folder, the value of the `enablementState`
      # property in EffectiveSecurityHealthAnalyticsCustomModule is set to the value
      # that is effective in the parent, instead of `INHERITED`. For example, if the
      # module is enabled in a parent organization or folder, the effective
      # enablement_state for the module in all child folders or projects is also `
      # enabled`. EffectiveSecurityHealthAnalyticsCustomModule is read-only.
      class GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
        include Google::Apis::Core::Hashable
      
        # Defines the properties in a custom module configuration for Security Health
        # Analytics. Use the custom module configuration to create custom detectors that
        # generate custom findings for resources that you specify.
        # Corresponds to the JSON property `customConfig`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1CustomConfig]
        attr_accessor :custom_config
      
        # Output only. The display name for the custom module. The name must be between
        # 1 and 128 characters, start with a lowercase letter, and contain alphanumeric
        # characters or underscores only.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The effective state of enablement for the module at the given
        # level of the hierarchy.
        # Corresponds to the JSON property `enablementState`
        # @return [String]
        attr_accessor :enablement_state
      
        # Output only. The resource name of the custom module. Its format is "
        # organizations/`organization`/securityHealthAnalyticsSettings/
        # effectiveCustomModules/`customModule`", or "folders/`folder`/
        # securityHealthAnalyticsSettings/effectiveCustomModules/`customModule`", or "
        # projects/`project`/securityHealthAnalyticsSettings/effectiveCustomModules/`
        # customModule`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_config = args[:custom_config] if args.key?(:custom_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enablement_state = args[:enablement_state] if args.key?(:enablement_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Representation of third party SIEM/SOAR fields within SCC.
      class GoogleCloudSecuritycenterV1ExternalSystem
        include Google::Apis::Core::Hashable
      
        # References primary/secondary etc assignees in the external system.
        # Corresponds to the JSON property `assignees`
        # @return [Array<String>]
        attr_accessor :assignees
      
        # The priority of the finding's corresponding case in the external system.
        # Corresponds to the JSON property `casePriority`
        # @return [String]
        attr_accessor :case_priority
      
        # The SLA of the finding's corresponding case in the external system.
        # Corresponds to the JSON property `caseSla`
        # @return [String]
        attr_accessor :case_sla
      
        # The link to the finding's corresponding case in the external system.
        # Corresponds to the JSON property `caseUri`
        # @return [String]
        attr_accessor :case_uri
      
        # The time when the case was last updated, as reported by the external system.
        # Corresponds to the JSON property `externalSystemUpdateTime`
        # @return [String]
        attr_accessor :external_system_update_time
      
        # The identifier that's used to track the finding's corresponding case in the
        # external system.
        # Corresponds to the JSON property `externalUid`
        # @return [String]
        attr_accessor :external_uid
      
        # Full resource name of the external system, for example: "organizations/1234/
        # sources/5678/findings/123456/externalSystems/jira", "folders/1234/sources/5678/
        # findings/123456/externalSystems/jira", "projects/1234/sources/5678/findings/
        # 123456/externalSystems/jira"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The most recent status of the finding's corresponding case, as reported by the
        # external system.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Information about the ticket, if any, that is being used to track the
        # resolution of the issue that is identified by this finding.
        # Corresponds to the JSON property `ticketInfo`
        # @return [Google::Apis::SecuritycenterV1::TicketInfo]
        attr_accessor :ticket_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @case_priority = args[:case_priority] if args.key?(:case_priority)
          @case_sla = args[:case_sla] if args.key?(:case_sla)
          @case_uri = args[:case_uri] if args.key?(:case_uri)
          @external_system_update_time = args[:external_system_update_time] if args.key?(:external_system_update_time)
          @external_uid = args[:external_uid] if args.key?(:external_uid)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @ticket_info = args[:ticket_info] if args.key?(:ticket_info)
        end
      end
      
      # A mute config is a Cloud SCC resource that contains the configuration to mute
      # create/update events of findings.
      class GoogleCloudSecuritycenterV1MuteConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the mute config was created. This field is set
        # by the server and will be ignored if provided on config creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of the mute config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable name to be displayed for the mute config.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. An expression that defines the filter to apply across create/update
        # events of findings. While creating a filter string, be mindful of the scope in
        # which the mute configuration is being created. E.g., If a filter contains
        # project = X but is created under the project = Y scope, it might not match any
        # findings. The following field and operator combinations are supported: *
        # severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.
        # project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.
        # folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.
        # parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `
        # :` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. Email address of the user who last edited the mute config. This
        # field is set by the server and will be ignored if provided on config creation
        # or update.
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # This field will be ignored if provided on config creation. Format "
        # organizations/`organization`/muteConfigs/`mute_config`" "folders/`folder`/
        # muteConfigs/`mute_config`" "projects/`project`/muteConfigs/`mute_config`" "
        # organizations/`organization`/locations/global/muteConfigs/`mute_config`" "
        # folders/`folder`/locations/global/muteConfigs/`mute_config`" "projects/`
        # project`/locations/global/muteConfigs/`mute_config`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The most recent time at which the mute config was updated. This
        # field is set by the server and will be ignored if provided on config creation
        # or update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Cloud SCC's Notification
      class GoogleCloudSecuritycenterV1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # An individual name-value pair that defines a custom source property.
      class GoogleCloudSecuritycenterV1Property
        include Google::Apis::Core::Hashable
      
        # Name of the property for the custom output.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
        # Corresponds to the JSON property `valueExpression`
        # @return [Google::Apis::SecuritycenterV1::Expr]
        attr_accessor :value_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value_expression = args[:value_expression] if args.key?(:value_expression)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV1Resource
        include Google::Apis::Core::Hashable
      
        # The human readable name of the resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Contains a Folder message for each folder in the assets ancestry.
        # The first folder is the deepest nested folder, and the last folder is the
        # folder directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1::Folder>]
        attr_accessor :folders
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The project ID that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        # The full resource type of the resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @folders = args[:folders] if args.key?(:folders)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Resource for selecting resource type.
      class GoogleCloudSecuritycenterV1ResourceSelector
        include Google::Apis::Core::Hashable
      
        # The resource types to run the detector on.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
        end
      end
      
      # A resource value config (RVC) is a mapping configuration of user's resources
      # to resource values. Used in Attack path simulations.
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp this resource value config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the resource value config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name for the resource value config
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of resource labels to search for, evaluated with AND. E.g. "
        # resource_labels_selector": `"key": "value", "env": "prod"` will match
        # resources with labels "key": "value" AND "env": "prod" https://cloud.google.
        # com/resource-manager/docs/creating-managing-labels
        # Corresponds to the JSON property `resourceLabelsSelector`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels_selector
      
        # Apply resource_value only to resources that match resource_type. resource_type
        # will be checked with "AND" of other resources. E.g. "storage.googleapis.com/
        # Bucket" with resource_value "HIGH" will apply "HIGH" value only to "storage.
        # googleapis.com/Bucket" resources.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Required. Resource value level this expression represents
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # Project or folder to scope this config to. For example, "project/456" would
        # apply this config only to resources in "project/456" scope will be checked
        # with "AND" of other resources.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Resource value mapping for Sensitive Data Protection findings. If any of these
        # mappings have a resource value that is not unspecified, the resource_value
        # field will be ignored when reading this configuration.
        # Corresponds to the JSON property `sensitiveDataProtectionMapping`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping]
        attr_accessor :sensitive_data_protection_mapping
      
        # Required. Tag values combined with AND to check against. Values in the form "
        # tagValues/123" E.g. [ "tagValues/123", "tagValues/456", "tagValues/789" ]
        # https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # Output only. Timestamp this resource value config was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @resource_labels_selector = args[:resource_labels_selector] if args.key?(:resource_labels_selector)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
          @scope = args[:scope] if args.key?(:scope)
          @sensitive_data_protection_mapping = args[:sensitive_data_protection_mapping] if args.key?(:sensitive_data_protection_mapping)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents an instance of a Security Health Analytics custom module, including
      # its full module name, display name, enablement state, and last updated time.
      # You can create a custom module at the organization, folder, or project level.
      # Custom modules that you create at the organization or folder level are
      # inherited by the child folders and projects.
      class GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        include Google::Apis::Core::Hashable
      
        # Output only. If empty, indicates that the custom module was created in the
        # organization, folder, or project in which you are viewing the custom module.
        # Otherwise, `ancestor_module` specifies the organization or folder from which
        # the custom module is inherited.
        # Corresponds to the JSON property `ancestorModule`
        # @return [String]
        attr_accessor :ancestor_module
      
        # Defines the properties in a custom module configuration for Security Health
        # Analytics. Use the custom module configuration to create custom detectors that
        # generate custom findings for resources that you specify.
        # Corresponds to the JSON property `customConfig`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1CustomConfig]
        attr_accessor :custom_config
      
        # The display name of the Security Health Analytics custom module. This display
        # name becomes the finding category for all findings that are returned by this
        # custom module. The display name must be between 1 and 128 characters, start
        # with a lowercase letter, and contain alphanumeric characters or underscores
        # only.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The enablement state of the custom module.
        # Corresponds to the JSON property `enablementState`
        # @return [String]
        attr_accessor :enablement_state
      
        # Output only. The editor that last updated the custom module.
        # Corresponds to the JSON property `lastEditor`
        # @return [String]
        attr_accessor :last_editor
      
        # Immutable. The resource name of the custom module. Its format is "
        # organizations/`organization`/securityHealthAnalyticsSettings/customModules/`
        # customModule`", or "folders/`folder`/securityHealthAnalyticsSettings/
        # customModules/`customModule`", or "projects/`project`/
        # securityHealthAnalyticsSettings/customModules/`customModule`" The id `
        # customModule` is server-generated and is not user settable. It will be a
        # numeric id containing 1-20 digits.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which the custom module was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor_module = args[:ancestor_module] if args.key?(:ancestor_module)
          @custom_config = args[:custom_config] if args.key?(:custom_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enablement_state = args[:enablement_state] if args.key?(:enablement_state)
          @last_editor = args[:last_editor] if args.key?(:last_editor)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Resource value mapping for Sensitive Data Protection findings. If any of these
      # mappings have a resource value that is not unspecified, the resource_value
      # field will be ignored when reading this configuration.
      class GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping
        include Google::Apis::Core::Hashable
      
        # Resource value mapping for high-sensitivity Sensitive Data Protection findings
        # Corresponds to the JSON property `highSensitivityMapping`
        # @return [String]
        attr_accessor :high_sensitivity_mapping
      
        # Resource value mapping for medium-sensitivity Sensitive Data Protection
        # findings
        # Corresponds to the JSON property `mediumSensitivityMapping`
        # @return [String]
        attr_accessor :medium_sensitivity_mapping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_sensitivity_mapping = args[:high_sensitivity_mapping] if args.key?(:high_sensitivity_mapping)
          @medium_sensitivity_mapping = args[:medium_sensitivity_mapping] if args.key?(:medium_sensitivity_mapping)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Security Command Center finding. A finding is a record of assessment data (
      # security, risk, health or privacy) ingested into Security Command Center for
      # presentation, notification, analysis, policy testing, and enforcement. For
      # example, an XSS vulnerability in an App Engine application is a finding.
      class GoogleCloudSecuritycenterV1p1beta1Finding
        include Google::Apis::Core::Hashable
      
        # The canonical name of the finding. It's either "organizations/`organization_id`
        # /sources/`source_id`/findings/`finding_id`", "folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`" or "projects/`project_number`/sources/`
        # source_id`/findings/`finding_id`", depending on the closest CRM ancestor of
        # the resource associated with the finding.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The additional taxonomy group within findings from a given source. This field
        # is immutable after creation time. Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place, or when an update to the finding
        # occurred. For example, if the finding represents an open firewall it would
        # capture the time the detector believes the firewall became open. The accuracy
        # is determined by the detector. If the finding were to be resolved afterward,
        # this time would reflect when the finding was resolved. Must not be set to a
        # value greater than the current timestamp.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The relative resource name of this finding. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#relative_resource_name This field
        # is immutable after creation time. For example: "organizations/`organization_id`
        # /sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource name of the Google
        # Cloud resource this finding is for. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name When the finding is for a non-Google Cloud
        # resource, the resourceName can be a customer or partner defined string. This
        # field is immutable after creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # The severity of the finding. This field is managed by the source that writes
        # the finding.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message that contains the resource name and display name of a folder resource.
      class GoogleCloudSecuritycenterV1p1beta1Folder
        include Google::Apis::Core::Hashable
      
        # Full resource name of this folder. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # The user defined display name for this folder.
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # Security Command Center's Notification
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data (
        # security, risk, health or privacy) ingested into Security Command Center for
        # presentation, notification, analysis, policy testing, and enforcement. For
        # example, an XSS vulnerability in an App Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV1p1beta1Resource
        include Google::Apis::Core::Hashable
      
        # Output only. Contains a Folder message for each folder in the assets ancestry.
        # The first folder is the deepest nested folder, and the last folder is the
        # folder directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Folder>]
        attr_accessor :folders
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The project id that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
        # The canonical name of the marks. Examples: "organizations/`organization_id`/
        # assets/`asset_id`/securityMarks" "folders/`folder_id`/assets/`asset_id`/
        # securityMarks" "projects/`project_number`/assets/`asset_id`/securityMarks" "
        # organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "folders/`folder_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "projects/`project_number`/sources/`source_id`/findings/`
        # finding_id`/securityMarks"
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name Examples: "organizations/`
        # organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents an access event.
      class GoogleCloudSecuritycenterV2Access
        include Google::Apis::Core::Hashable
      
        # Caller's IP address, such as "1.1.1.1".
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # Represents a geographical location for a given access.
        # Corresponds to the JSON property `callerIpGeo`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Geolocation]
        attr_accessor :caller_ip_geo
      
        # The method that the service account called, e.g. "SetIamPolicy".
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # Associated email, such as "foo@google.com". The email address of the
        # authenticated user or a service account acting on behalf of a third party
        # principal making the request. For third party identity callers, the `
        # principal_subject` field is populated instead of this field. For privacy
        # reasons, the principal email address is sometimes redacted. For more
        # information, see [Caller identities in audit logs](https://cloud.google.com/
        # logging/docs/audit#user-id).
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # A string that represents the principal_subject that is associated with the
        # identity. Unlike `principal_email`, `principal_subject` supports principals
        # that aren't associated with email addresses, such as third party principals.
        # For most identities, the format is `principal://iam.googleapis.com/`identity
        # pool name`/subject/`subject``. Some GKE identities, such as GKE_WORKLOAD,
        # FREEFORM, and GKE_HUB_WORKLOAD, still use the legacy format `serviceAccount:`
        # identity pool name`[`subject`]`.
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        # The identity delegation history of an authenticated service account that made
        # the request. The `serviceAccountDelegationInfo[]` object contains information
        # about the real authorities that try to access Google Cloud resources by
        # delegating on a service account. When multiple authorities are present, they
        # are guaranteed to be sorted based on the original ordering of the identity
        # delegation events.
        # Corresponds to the JSON property `serviceAccountDelegationInfo`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo>]
        attr_accessor :service_account_delegation_info
      
        # The name of the service account key that was used to create or exchange
        # credentials when authenticating the service account that made the request.
        # This is a scheme-less URI full resource name. For example: "//iam.googleapis.
        # com/projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key`".
        # Corresponds to the JSON property `serviceAccountKeyName`
        # @return [String]
        attr_accessor :service_account_key_name
      
        # This is the API service that the service account made a call to, e.g. "iam.
        # googleapis.com"
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The caller's user agent string associated with the finding.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Type of user agent associated with the finding. For example, an operating
        # system shell or an embedded or standalone application.
        # Corresponds to the JSON property `userAgentFamily`
        # @return [String]
        attr_accessor :user_agent_family
      
        # A string that represents a username. The username provided depends on the type
        # of the finding and is likely not an IAM principal. For example, this can be a
        # system username if the finding is related to a virtual machine, or it can be
        # an application login username.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_ip = args[:caller_ip] if args.key?(:caller_ip)
          @caller_ip_geo = args[:caller_ip_geo] if args.key?(:caller_ip_geo)
          @method_name = args[:method_name] if args.key?(:method_name)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @service_account_delegation_info = args[:service_account_delegation_info] if args.key?(:service_account_delegation_info)
          @service_account_key_name = args[:service_account_key_name] if args.key?(:service_account_key_name)
          @service_name = args[:service_name] if args.key?(:service_name)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_agent_family = args[:user_agent_family] if args.key?(:user_agent_family)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # Conveys information about a Kubernetes access review (such as one returned by
      # a [`kubectl auth can-i`](https://kubernetes.io/docs/reference/access-authn-
      # authz/authorization/#checking-api-access) command) that was involved in a
      # finding.
      class GoogleCloudSecuritycenterV2AccessReview
        include Google::Apis::Core::Hashable
      
        # The API group of the resource. "*" means all.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The name of the resource being requested. Empty means all.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace of the action being requested. Currently, there is no distinction
        # between no namespace and all namespaces. Both are represented by "" (empty).
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # The optional resource type requested. "*" means all.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The optional subresource type.
        # Corresponds to the JSON property `subresource`
        # @return [String]
        attr_accessor :subresource
      
        # A Kubernetes resource API verb, like get, list, watch, create, update, delete,
        # proxy. "*" means all.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        # The API version of the resource. "*" means all.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @resource = args[:resource] if args.key?(:resource)
          @subresource = args[:subresource] if args.key?(:subresource)
          @verb = args[:verb] if args.key?(:verb)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents an application associated with a finding.
      class GoogleCloudSecuritycenterV2Application
        include Google::Apis::Core::Hashable
      
        # The base URI that identifies the network location of the application in which
        # the vulnerability was detected. Examples: http://11.22.33.44, http://foo.com,
        # http://11.22.33.44:8080
        # Corresponds to the JSON property `baseUri`
        # @return [String]
        attr_accessor :base_uri
      
        # The full URI with payload that could be used to reproduce the vulnerability.
        # Example: http://11.22.33.44/reflected/parameter/attribute/singlequoted/js?p=
        # aMmYgI6H
        # Corresponds to the JSON property `fullUri`
        # @return [String]
        attr_accessor :full_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_uri = args[:base_uri] if args.key?(:base_uri)
          @full_uri = args[:full_uri] if args.key?(:full_uri)
        end
      end
      
      # An attack exposure contains the results of an attack path simulation run.
      class GoogleCloudSecuritycenterV2AttackExposure
        include Google::Apis::Core::Hashable
      
        # The resource name of the attack path simulation result that contains the
        # details regarding this attack exposure score. Example: organizations/123/
        # simulations/456/attackExposureResults/789
        # Corresponds to the JSON property `attackExposureResult`
        # @return [String]
        attr_accessor :attack_exposure_result
      
        # The number of high value resources that are exposed as a result of this
        # finding.
        # Corresponds to the JSON property `exposedHighValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_high_value_resources_count
      
        # The number of high value resources that are exposed as a result of this
        # finding.
        # Corresponds to the JSON property `exposedLowValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_low_value_resources_count
      
        # The number of medium value resources that are exposed as a result of this
        # finding.
        # Corresponds to the JSON property `exposedMediumValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_medium_value_resources_count
      
        # The most recent time the attack exposure was updated on this finding.
        # Corresponds to the JSON property `latestCalculationTime`
        # @return [String]
        attr_accessor :latest_calculation_time
      
        # A number between 0 (inclusive) and infinity that represents how important this
        # finding is to remediate. The higher the score, the more important it is to
        # remediate.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Output only. What state this AttackExposure is in. This captures whether or
        # not an attack exposure has been calculated or not.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_result = args[:attack_exposure_result] if args.key?(:attack_exposure_result)
          @exposed_high_value_resources_count = args[:exposed_high_value_resources_count] if args.key?(:exposed_high_value_resources_count)
          @exposed_low_value_resources_count = args[:exposed_low_value_resources_count] if args.key?(:exposed_low_value_resources_count)
          @exposed_medium_value_resources_count = args[:exposed_medium_value_resources_count] if args.key?(:exposed_medium_value_resources_count)
          @latest_calculation_time = args[:latest_calculation_time] if args.key?(:latest_calculation_time)
          @score = args[:score] if args.key?(:score)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information related to Google Cloud Backup and DR Service findings.
      class GoogleCloudSecuritycenterV2BackupDisasterRecovery
        include Google::Apis::Core::Hashable
      
        # The name of the Backup and DR appliance that captures, moves, and manages the
        # lifecycle of backup data. For example, “backup-server-57137”.
        # Corresponds to the JSON property `appliance`
        # @return [String]
        attr_accessor :appliance
      
        # The names of Backup and DR applications. An application is a VM, database, or
        # file system on a managed host monitored by a backup and recovery appliance.
        # For example, “centos7-01-vol00”, “centos7-01-vol01”, “centos7-01-vol02”.
        # Corresponds to the JSON property `applications`
        # @return [Array<String>]
        attr_accessor :applications
      
        # The timestamp at which the Backup and DR backup was created.
        # Corresponds to the JSON property `backupCreateTime`
        # @return [String]
        attr_accessor :backup_create_time
      
        # The name of a Backup and DR template which comprises one or more backup
        # policies. See the [Backup and DR documentation](https://cloud.google.com/
        # backup-disaster-recovery/docs/concepts/backup-plan#temp) for more information.
        # For example, “snap-ov”.
        # Corresponds to the JSON property `backupTemplate`
        # @return [String]
        attr_accessor :backup_template
      
        # The backup type of the Backup and DR image. For example, “Snapshot”, “Remote
        # Snapshot”, “OnVault”.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # The name of a Backup and DR host, which is managed by the backup and recovery
        # appliance and known to the management console. The host can be of type Generic
        # (for example, Compute Engine, SQL Server, Oracle DB, SMB file system, etc.),
        # vCenter, or an ESX server. See the [Backup and DR documentation on hosts](
        # https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-
        # hosts-and-their-applications) for more information. For example, “centos7-01”.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The names of Backup and DR policies that are associated with a template and
        # that define when to run a backup, how frequently to run a backup, and how long
        # to retain the backup image. For example, “onvaults”.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # The names of Backup and DR advanced policy options of a policy applying to an
        # application. See the [Backup and DR documentation on policy options](https://
        # cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings).
        # For example, “skipofflineappsincongrp, nounmap”.
        # Corresponds to the JSON property `policyOptions`
        # @return [Array<String>]
        attr_accessor :policy_options
      
        # The name of the Backup and DR resource profile that specifies the storage
        # media for backups of application and VM data. See the [Backup and DR
        # documentation on profiles](https://cloud.google.com/backup-disaster-recovery/
        # docs/concepts/backup-plan#profile). For example, “GCP”.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # The name of the Backup and DR storage pool that the backup and recovery
        # appliance is storing data in. The storage pool could be of type Cloud, Primary,
        # Snapshot, or OnVault. See the [Backup and DR documentation on storage pools](
        # https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools).
        # For example, “DiskPoolOne”.
        # Corresponds to the JSON property `storagePool`
        # @return [String]
        attr_accessor :storage_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance = args[:appliance] if args.key?(:appliance)
          @applications = args[:applications] if args.key?(:applications)
          @backup_create_time = args[:backup_create_time] if args.key?(:backup_create_time)
          @backup_template = args[:backup_template] if args.key?(:backup_template)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @host = args[:host] if args.key?(:host)
          @policies = args[:policies] if args.key?(:policies)
          @policy_options = args[:policy_options] if args.key?(:policy_options)
          @profile = args[:profile] if args.key?(:profile)
          @storage_pool = args[:storage_pool] if args.key?(:storage_pool)
        end
      end
      
      # Configures how to deliver Findings to BigQuery Instance.
      class GoogleCloudSecuritycenterV2BigQueryExport
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the BigQuery export was created. This field is
        # set by the server and will be ignored if provided on export on creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The dataset to write findings' updates to. Its format is "projects/[project_id]
        # /datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only
        # letters (a-z, A-Z), numbers (0-9), or underscores (_).
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # The description of the export (max of 1024 characters).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Expression that defines the filter to apply across create/update events of
        # findings. The expression is a list of zero or more restrictions combined via
        # logical operators `AND` and `OR`. Parentheses are supported, and `OR` has
        # higher precedence than `AND`. Restrictions have the form ` ` and may have a `-`
        # character in front of them to indicate negation. The fields map to those
        # defined in the corresponding resource. The supported operators are: * `=` for
        # all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning
        # substring matching, for strings. The supported value types are: * string
        # literals in quotes. * integer literals without quotes. * boolean literals `
        # true` and `false` without quotes.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. Email address of the user who last edited the BigQuery export.
        # This field is set by the server and will be ignored if provided on export
        # creation or update.
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # The relative resource name of this export. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name. The following list shows some
        # examples: + `organizations/`organization_id`/locations/`location_id`/
        # bigQueryExports/`export_id`` + `folders/`folder_id`/locations/`location_id`/
        # bigQueryExports/`export_id`` + `projects/`project_id`/locations/`location_id`/
        # bigQueryExports/`export_id`` This field is provided in responses, and is
        # ignored when provided in create requests.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account that needs permission to create table and
        # upload data to the BigQuery dataset.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # Output only. The most recent time at which the BigQuery export was updated.
        # This field is set by the server and will be ignored if provided on export
        # creation or update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @principal = args[:principal] if args.key?(:principal)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a Kubernetes RoleBinding or ClusterRoleBinding.
      class GoogleCloudSecuritycenterV2Binding
        include Google::Apis::Core::Hashable
      
        # Name for the binding.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace for the binding.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # Kubernetes Role or ClusterRole.
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Role]
        attr_accessor :role
      
        # Represents one or more subjects that are bound to the role. Not always
        # available for PATCH requests.
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Subject>]
        attr_accessor :subjects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @role = args[:role] if args.key?(:role)
          @subjects = args[:subjects] if args.key?(:subjects)
        end
      end
      
      # The response to a BulkMute request. Contains the LRO information.
      class GoogleCloudSecuritycenterV2BulkMuteFindingsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated
      # with the finding.
      class GoogleCloudSecuritycenterV2CloudDlpDataProfile
        include Google::Apis::Core::Hashable
      
        # Name of the data profile, for example, `projects/123/locations/europe/
        # tableProfiles/8383929`.
        # Corresponds to the JSON property `dataProfile`
        # @return [String]
        attr_accessor :data_profile
      
        # The resource hierarchy level at which the data profile was generated.
        # Corresponds to the JSON property `parentType`
        # @return [String]
        attr_accessor :parent_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile = args[:data_profile] if args.key?(:data_profile)
          @parent_type = args[:parent_type] if args.key?(:parent_type)
        end
      end
      
      # Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](
      # https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the
      # finding.
      class GoogleCloudSecuritycenterV2CloudDlpInspection
        include Google::Apis::Core::Hashable
      
        # Whether Cloud DLP scanned the complete resource or a sampled subset.
        # Corresponds to the JSON property `fullScan`
        # @return [Boolean]
        attr_accessor :full_scan
        alias_method :full_scan?, :full_scan
      
        # The type of information (or *[infoType](https://cloud.google.com/dlp/docs/
        # infotypes-reference)*) found, for example, `EMAIL_ADDRESS` or `STREET_ADDRESS`.
        # Corresponds to the JSON property `infoType`
        # @return [String]
        attr_accessor :info_type
      
        # The number of times Cloud DLP found this infoType within this job and resource.
        # Corresponds to the JSON property `infoTypeCount`
        # @return [Fixnum]
        attr_accessor :info_type_count
      
        # Name of the inspection job, for example, `projects/123/locations/europe/
        # dlpJobs/i-8383929`.
        # Corresponds to the JSON property `inspectJob`
        # @return [String]
        attr_accessor :inspect_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_scan = args[:full_scan] if args.key?(:full_scan)
          @info_type = args[:info_type] if args.key?(:info_type)
          @info_type_count = args[:info_type_count] if args.key?(:info_type_count)
          @inspect_job = args[:inspect_job] if args.key?(:inspect_job)
        end
      end
      
      # Metadata taken from a [Cloud Logging LogEntry](https://cloud.google.com/
      # logging/docs/reference/v2/rest/v2/LogEntry)
      class GoogleCloudSecuritycenterV2CloudLoggingEntry
        include Google::Apis::Core::Hashable
      
        # A unique identifier for the log entry.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # The type of the log (part of `log_name`. `log_name` is the resource name of
        # the log to which this log entry belongs). For example: `cloudresourcemanager.
        # googleapis.com/activity` Note that this field is not URL-encoded, unlike in `
        # LogEntry`.
        # Corresponds to the JSON property `logId`
        # @return [String]
        attr_accessor :log_id
      
        # The organization, folder, or project of the monitored resource that produced
        # this log entry.
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # The time the event described by the log entry occurred.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @log_id = args[:log_id] if args.key?(:log_id)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Contains compliance information about a security standard indicating unmet
      # recommendations.
      class GoogleCloudSecuritycenterV2Compliance
        include Google::Apis::Core::Hashable
      
        # Policies within the standard or benchmark, for example, A.12.4.1
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # Version of the standard or benchmark, for example, 1.1
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] if args.key?(:ids)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Contains information about the IP connection associated with the finding.
      class GoogleCloudSecuritycenterV2Connection
        include Google::Apis::Core::Hashable
      
        # Destination IP address. Not present for sockets that are listening and not
        # connected.
        # Corresponds to the JSON property `destinationIp`
        # @return [String]
        attr_accessor :destination_ip
      
        # Destination port. Not present for sockets that are listening and not connected.
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # IANA Internet Protocol Number such as TCP(6) and UDP(17).
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Source IP address.
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        # Source port.
        # Corresponds to the JSON property `sourcePort`
        # @return [Fixnum]
        attr_accessor :source_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_ip = args[:destination_ip] if args.key?(:destination_ip)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
          @source_port = args[:source_port] if args.key?(:source_port)
        end
      end
      
      # The email address of a contact.
      class GoogleCloudSecuritycenterV2Contact
        include Google::Apis::Core::Hashable
      
        # An email address. For example, "`person123@company.com`".
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Details about specific contacts
      class GoogleCloudSecuritycenterV2ContactDetails
        include Google::Apis::Core::Hashable
      
        # A list of contacts
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Contact>]
        attr_accessor :contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
        end
      end
      
      # Container associated with the finding.
      class GoogleCloudSecuritycenterV2Container
        include Google::Apis::Core::Hashable
      
        # The time that the container was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional container image ID, if provided by the container runtime. Uniquely
        # identifies the container image launched using a container image digest.
        # Corresponds to the JSON property `imageId`
        # @return [String]
        attr_accessor :image_id
      
        # Container labels, as provided by the container runtime.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Label>]
        attr_accessor :labels
      
        # Name of the container.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Container image URI provided when configuring a pod or container. This string
        # can identify a container image version using mutable tags.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @image_id = args[:image_id] if args.key?(:image_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
      # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
      # vulnerability.
      class GoogleCloudSecuritycenterV2Cve
        include Google::Apis::Core::Hashable
      
        # Common Vulnerability Scoring System version 3.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Cvssv3]
        attr_accessor :cvssv3
      
        # The exploitation activity of the vulnerability in the wild.
        # Corresponds to the JSON property `exploitationActivity`
        # @return [String]
        attr_accessor :exploitation_activity
      
        # The unique identifier for the vulnerability. e.g. CVE-2021-34527
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The potential impact of the vulnerability if it was to be exploited.
        # Corresponds to the JSON property `impact`
        # @return [String]
        attr_accessor :impact
      
        # Whether or not the vulnerability has been observed in the wild.
        # Corresponds to the JSON property `observedInTheWild`
        # @return [Boolean]
        attr_accessor :observed_in_the_wild
        alias_method :observed_in_the_wild?, :observed_in_the_wild
      
        # Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/
        # cvename.cgi?name=CVE-2021-34527
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Reference>]
        attr_accessor :references
      
        # Whether upstream fix is available for the CVE.
        # Corresponds to the JSON property `upstreamFixAvailable`
        # @return [Boolean]
        attr_accessor :upstream_fix_available
        alias_method :upstream_fix_available?, :upstream_fix_available
      
        # Whether or not the vulnerability was zero day when the finding was published.
        # Corresponds to the JSON property `zeroDay`
        # @return [Boolean]
        attr_accessor :zero_day
        alias_method :zero_day?, :zero_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @exploitation_activity = args[:exploitation_activity] if args.key?(:exploitation_activity)
          @id = args[:id] if args.key?(:id)
          @impact = args[:impact] if args.key?(:impact)
          @observed_in_the_wild = args[:observed_in_the_wild] if args.key?(:observed_in_the_wild)
          @references = args[:references] if args.key?(:references)
          @upstream_fix_available = args[:upstream_fix_available] if args.key?(:upstream_fix_available)
          @zero_day = args[:zero_day] if args.key?(:zero_day)
        end
      end
      
      # Common Vulnerability Scoring System version 3.
      class GoogleCloudSecuritycenterV2Cvssv3
        include Google::Apis::Core::Hashable
      
        # This metric describes the conditions beyond the attacker's control that must
        # exist in order to exploit the vulnerability.
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # Base Metrics Represents the intrinsic characteristics of a vulnerability that
        # are constant over time and across user environments. This metric reflects the
        # context by which vulnerability exploitation is possible.
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # This metric measures the impact to the availability of the impacted component
        # resulting from a successfully exploited vulnerability.
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # The base score is a function of the base metric scores.
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # This metric measures the impact to the confidentiality of the information
        # resources managed by a software component due to a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # This metric measures the impact to integrity of a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # This metric describes the level of privileges an attacker must possess before
        # successfully exploiting the vulnerability.
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # The Scope metric captures whether a vulnerability in one vulnerable component
        # impacts resources in components beyond its security scope.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # This metric captures the requirement for a human user, other than the attacker,
        # to participate in the successful compromise of the vulnerable component.
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # Represents database access information, such as queries. A database may be a
      # sub-resource of an instance (as in the case of Cloud SQL instances or Cloud
      # Spanner instances), or the database instance itself. Some database resources
      # might not have the [full resource name](https://google.aip.dev/122#full-
      # resource-names) populated because these resource types, such as Cloud SQL
      # databases, are not yet supported by Cloud Asset Inventory. In these cases only
      # the display name is provided.
      class GoogleCloudSecuritycenterV2Database
        include Google::Apis::Core::Hashable
      
        # The human-readable name of the database that the user connected to.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The target usernames, roles, or groups of an SQL privilege grant, which is not
        # an IAM policy change.
        # Corresponds to the JSON property `grantees`
        # @return [Array<String>]
        attr_accessor :grantees
      
        # Some database resources may not have the [full resource name](https://google.
        # aip.dev/122#full-resource-names) populated because these resource types are
        # not yet supported by Cloud Asset Inventory (e.g. Cloud SQL databases). In
        # these cases only the display name will be provided. The [full resource name](
        # https://google.aip.dev/122#full-resource-names) of the database that the user
        # connected to, if it is supported by Cloud Asset Inventory.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The SQL statement that is associated with the database access.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The username used to connect to the database. The username might not be an IAM
        # principal and does not have a set format.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        # The version of the database, for example, POSTGRES_14. See [the complete list](
        # https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion).
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @grantees = args[:grantees] if args.key?(:grantees)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
          @user_name = args[:user_name] if args.key?(:user_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Memory hash detection contributing to the binary family match.
      class GoogleCloudSecuritycenterV2Detection
        include Google::Apis::Core::Hashable
      
        # The name of the binary associated with the memory hash signature detection.
        # Corresponds to the JSON property `binary`
        # @return [String]
        attr_accessor :binary
      
        # The percentage of memory page hashes in the signature that were matched.
        # Corresponds to the JSON property `percentPagesMatched`
        # @return [Float]
        attr_accessor :percent_pages_matched
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary = args[:binary] if args.key?(:binary)
          @percent_pages_matched = args[:percent_pages_matched] if args.key?(:percent_pages_matched)
        end
      end
      
      # Path of the file in terms of underlying disk/partition identifiers.
      class GoogleCloudSecuritycenterV2DiskPath
        include Google::Apis::Core::Hashable
      
        # UUID of the partition (format https://wiki.archlinux.org/title/
        # persistent_block_device_naming#by-uuid)
        # Corresponds to the JSON property `partitionUuid`
        # @return [String]
        attr_accessor :partition_uuid
      
        # Relative path of the file in the partition as a JSON encoded string. Example: /
        # home/user1/executable_file.sh
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_uuid = args[:partition_uuid] if args.key?(:partition_uuid)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
        end
      end
      
      # A name-value pair representing an environment variable used in an operating
      # system process.
      class GoogleCloudSecuritycenterV2EnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # Environment variable name as a JSON encoded string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Environment variable value as a JSON encoded string.
        # Corresponds to the JSON property `val`
        # @return [String]
        attr_accessor :val
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @val = args[:val] if args.key?(:val)
        end
      end
      
      # Resource where data was exfiltrated from or exfiltrated to.
      class GoogleCloudSecuritycenterV2ExfilResource
        include Google::Apis::Core::Hashable
      
        # Subcomponents of the asset that was exfiltrated, like URIs used during
        # exfiltration, table names, databases, and filenames. For example, multiple
        # tables might have been exfiltrated from the same Cloud SQL instance, or
        # multiple files might have been exfiltrated from the same Cloud Storage bucket.
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # The resource's [full resource name](https://cloud.google.com/apis/design/
        # resource_names#full_resource_name).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @components = args[:components] if args.key?(:components)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Exfiltration represents a data exfiltration attempt from one or more sources
      # to one or more targets. The `sources` attribute lists the sources of the
      # exfiltrated data. The `targets` attribute lists the destinations the data was
      # copied to.
      class GoogleCloudSecuritycenterV2Exfiltration
        include Google::Apis::Core::Hashable
      
        # If there are multiple sources, then the data is considered "joined" between
        # them. For instance, BigQuery can join multiple tables, and each table would be
        # considered a source.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2ExfilResource>]
        attr_accessor :sources
      
        # If there are multiple targets, each target would get a complete copy of the "
        # joined" source data.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2ExfilResource>]
        attr_accessor :targets
      
        # Total exfiltrated bytes processed for the entire job.
        # Corresponds to the JSON property `totalExfiltratedBytes`
        # @return [Fixnum]
        attr_accessor :total_exfiltrated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sources = args[:sources] if args.key?(:sources)
          @targets = args[:targets] if args.key?(:targets)
          @total_exfiltrated_bytes = args[:total_exfiltrated_bytes] if args.key?(:total_exfiltrated_bytes)
        end
      end
      
      # Representation of third party SIEM/SOAR fields within SCC.
      class GoogleCloudSecuritycenterV2ExternalSystem
        include Google::Apis::Core::Hashable
      
        # References primary/secondary etc assignees in the external system.
        # Corresponds to the JSON property `assignees`
        # @return [Array<String>]
        attr_accessor :assignees
      
        # The priority of the finding's corresponding case in the external system.
        # Corresponds to the JSON property `casePriority`
        # @return [String]
        attr_accessor :case_priority
      
        # The SLA of the finding's corresponding case in the external system.
        # Corresponds to the JSON property `caseSla`
        # @return [String]
        attr_accessor :case_sla
      
        # The link to the finding's corresponding case in the external system.
        # Corresponds to the JSON property `caseUri`
        # @return [String]
        attr_accessor :case_uri
      
        # The time when the case was last updated, as reported by the external system.
        # Corresponds to the JSON property `externalSystemUpdateTime`
        # @return [String]
        attr_accessor :external_system_update_time
      
        # The identifier that's used to track the finding's corresponding case in the
        # external system.
        # Corresponds to the JSON property `externalUid`
        # @return [String]
        attr_accessor :external_uid
      
        # Full resource name of the external system. The following list shows some
        # examples: + `organizations/1234/sources/5678/findings/123456/externalSystems/
        # jira` + `organizations/1234/sources/5678/locations/us/findings/123456/
        # externalSystems/jira` + `folders/1234/sources/5678/findings/123456/
        # externalSystems/jira` + `folders/1234/sources/5678/locations/us/findings/
        # 123456/externalSystems/jira` + `projects/1234/sources/5678/findings/123456/
        # externalSystems/jira` + `projects/1234/sources/5678/locations/us/findings/
        # 123456/externalSystems/jira`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The most recent status of the finding's corresponding case, as reported by the
        # external system.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Information about the ticket, if any, that is being used to track the
        # resolution of the issue that is identified by this finding.
        # Corresponds to the JSON property `ticketInfo`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2TicketInfo]
        attr_accessor :ticket_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @case_priority = args[:case_priority] if args.key?(:case_priority)
          @case_sla = args[:case_sla] if args.key?(:case_sla)
          @case_uri = args[:case_uri] if args.key?(:case_uri)
          @external_system_update_time = args[:external_system_update_time] if args.key?(:external_system_update_time)
          @external_uid = args[:external_uid] if args.key?(:external_uid)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @ticket_info = args[:ticket_info] if args.key?(:ticket_info)
        end
      end
      
      # File information about the related binary/library used by an executable, or
      # the script used by a script interpreter
      class GoogleCloudSecuritycenterV2File
        include Google::Apis::Core::Hashable
      
        # Prefix of the file contents as a JSON-encoded string.
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # Path of the file in terms of underlying disk/partition identifiers.
        # Corresponds to the JSON property `diskPath`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2DiskPath]
        attr_accessor :disk_path
      
        # The length in bytes of the file prefix that was hashed. If hashed_size == size,
        # any hashes reported represent the entire file.
        # Corresponds to the JSON property `hashedSize`
        # @return [Fixnum]
        attr_accessor :hashed_size
      
        # True when the hash covers only a prefix of the file.
        # Corresponds to the JSON property `partiallyHashed`
        # @return [Boolean]
        attr_accessor :partially_hashed
        alias_method :partially_hashed?, :partially_hashed
      
        # Absolute path of the file as a JSON encoded string.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # SHA256 hash of the first hashed_size bytes of the file encoded as a hex string.
        # If hashed_size == size, sha256 represents the SHA256 hash of the entire file.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        # Size of the file in bytes.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @disk_path = args[:disk_path] if args.key?(:disk_path)
          @hashed_size = args[:hashed_size] if args.key?(:hashed_size)
          @partially_hashed = args[:partially_hashed] if args.key?(:partially_hashed)
          @path = args[:path] if args.key?(:path)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # Security Command Center finding. A finding is a record of assessment data like
      # security, risk, health, or privacy, that is ingested into Security Command
      # Center for presentation, notification, analysis, policy testing, and
      # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
      # Engine application is a finding.
      class GoogleCloudSecuritycenterV2Finding
        include Google::Apis::Core::Hashable
      
        # Represents an access event.
        # Corresponds to the JSON property `access`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Access]
        attr_accessor :access
      
        # Represents an application associated with a finding.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Application]
        attr_accessor :application
      
        # An attack exposure contains the results of an attack path simulation run.
        # Corresponds to the JSON property `attackExposure`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2AttackExposure]
        attr_accessor :attack_exposure
      
        # Information related to Google Cloud Backup and DR Service findings.
        # Corresponds to the JSON property `backupDisasterRecovery`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2BackupDisasterRecovery]
        attr_accessor :backup_disaster_recovery
      
        # Output only. The canonical name of the finding. The following list shows some
        # examples: + `organizations/`organization_id`/sources/`source_id`/findings/`
        # finding_id`` + `organizations/`organization_id`/sources/`source_id`/locations/`
        # location_id`/findings/`finding_id`` + `folders/`folder_id`/sources/`source_id`/
        # findings/`finding_id`` + `folders/`folder_id`/sources/`source_id`/locations/`
        # location_id`/findings/`finding_id`` + `projects/`project_id`/sources/`
        # source_id`/findings/`finding_id`` + `projects/`project_id`/sources/`source_id`/
        # locations/`location_id`/findings/`finding_id`` The prefix is the closest CRM
        # ancestor of the resource associated with the finding.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Immutable. The additional taxonomy group within findings from a given source.
        # Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated
        # with the finding.
        # Corresponds to the JSON property `cloudDlpDataProfile`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2CloudDlpDataProfile]
        attr_accessor :cloud_dlp_data_profile
      
        # Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](
        # https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the
        # finding.
        # Corresponds to the JSON property `cloudDlpInspection`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2CloudDlpInspection]
        attr_accessor :cloud_dlp_inspection
      
        # Contains compliance information for security standards associated to the
        # finding.
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Compliance>]
        attr_accessor :compliances
      
        # Contains information about the IP connection associated with the finding.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Connection>]
        attr_accessor :connections
      
        # Output only. Map containing the points of contact for the given finding. The
        # key represents the type of contact, while the value contains a list of all the
        # contacts that pertain. Please refer to: https://cloud.google.com/resource-
        # manager/docs/managing-notification-contacts#notification-categories ` "
        # security": ` "contacts": [ ` "email": "person1@company.com" `, ` "email": "
        # person2@company.com" ` ] ` `
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2ContactDetails>]
        attr_accessor :contacts
      
        # Containers associated with the finding. This field provides information for
        # both Kubernetes and non-Kubernetes containers.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # Output only. The time at which the finding was created in Security Command
        # Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Represents database access information, such as queries. A database may be a
        # sub-resource of an instance (as in the case of Cloud SQL instances or Cloud
        # Spanner instances), or the database instance itself. Some database resources
        # might not have the [full resource name](https://google.aip.dev/122#full-
        # resource-names) populated because these resource types, such as Cloud SQL
        # databases, are not yet supported by Cloud Asset Inventory. In these cases only
        # the display name is provided.
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Database]
        attr_accessor :database
      
        # Contains more details about the finding.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time the finding was first detected. If an existing finding is updated,
        # then this is the time the update occurred. For example, if the finding
        # represents an open firewall, this property captures the time the detector
        # believes the firewall became open. The accuracy is determined by the detector.
        # If the finding is later resolved, then this time reflects when the finding was
        # resolved. This must not be set to a value greater than the current timestamp.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Exfiltration represents a data exfiltration attempt from one or more sources
        # to one or more targets. The `sources` attribute lists the sources of the
        # exfiltrated data. The `targets` attribute lists the destinations the data was
        # copied to.
        # Corresponds to the JSON property `exfiltration`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Exfiltration]
        attr_accessor :exfiltration
      
        # Output only. Third party SIEM/SOAR fields within SCC, contains external system
        # information and external system finding fields.
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2ExternalSystem>]
        attr_accessor :external_systems
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # File associated with the finding.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2File>]
        attr_accessor :files
      
        # The class of the finding.
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # Represents IAM bindings associated with the finding.
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2IamBinding>]
        attr_accessor :iam_bindings
      
        # Represents what's commonly known as an _indicator of compromise_ (IoC) in
        # computer forensics. This is an artifact observed on a network or in an
        # operating system that, with high confidence, indicates a computer intrusion.
        # For more information, see [Indicator of compromise](https://en.wikipedia.org/
        # wiki/Indicator_of_compromise).
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Indicator]
        attr_accessor :indicator
      
        # Kernel mode rootkit signatures.
        # Corresponds to the JSON property `kernelRootkit`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2KernelRootkit]
        attr_accessor :kernel_rootkit
      
        # Kubernetes-related attributes.
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Kubernetes]
        attr_accessor :kubernetes
      
        # The load balancers associated with the finding.
        # Corresponds to the JSON property `loadBalancers`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2LoadBalancer>]
        attr_accessor :load_balancers
      
        # Log entries that are relevant to the finding.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2LogEntry>]
        attr_accessor :log_entries
      
        # MITRE ATT&CK tactics and techniques related to this finding. See: https://
        # attack.mitre.org
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2MitreAttack]
        attr_accessor :mitre_attack
      
        # Unique identifier of the module which generated the finding. Example: folders/
        # 598186756061/securityHealthAnalyticsSettings/customModules/56799441161885
        # Corresponds to the JSON property `moduleName`
        # @return [String]
        attr_accessor :module_name
      
        # Indicates the mute state of a finding (either muted, unmuted or undefined).
        # Unlike other attributes of a finding, a finding provider shouldn't set the
        # value of mute.
        # Corresponds to the JSON property `mute`
        # @return [String]
        attr_accessor :mute
      
        # Records additional information about the mute operation, for example, the [
        # mute configuration](https://cloud.google.com/security-command-center/docs/how-
        # to-mute-findings) that muted the finding and the user who muted the finding.
        # Corresponds to the JSON property `muteInitiator`
        # @return [String]
        attr_accessor :mute_initiator
      
        # Output only. The most recent time this finding was muted or unmuted.
        # Corresponds to the JSON property `muteUpdateTime`
        # @return [String]
        attr_accessor :mute_update_time
      
        # The [relative resource name](https://cloud.google.com/apis/design/
        # resource_names#relative_resource_name) of the finding. The following list
        # shows some examples: + `organizations/`organization_id`/sources/`source_id`/
        # findings/`finding_id`` + `organizations/`organization_id`/sources/`source_id`/
        # locations/`location_id`/findings/`finding_id`` + `folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`` + `folders/`folder_id`/sources/`source_id`/
        # locations/`location_id`/findings/`finding_id`` + `projects/`project_id`/
        # sources/`source_id`/findings/`finding_id`` + `projects/`project_id`/sources/`
        # source_id`/locations/`location_id`/findings/`finding_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Steps to address the finding.
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
        # Contains information about the org policies associated with the finding.
        # Corresponds to the JSON property `orgPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2OrgPolicy>]
        attr_accessor :org_policies
      
        # The relative resource name of the source and location the finding belongs to.
        # See: https://cloud.google.com/apis/design/resource_names#
        # relative_resource_name This field is immutable after creation time. The
        # following list shows some examples: + `organizations/`organization_id`/sources/
        # `source_id`` + `folders/`folders_id`/sources/`source_id`` + `projects/`
        # projects_id`/sources/`source_id`` + `organizations/`organization_id`/sources/`
        # source_id`/locations/`location_id`` + `folders/`folders_id`/sources/`source_id`
        # /locations/`location_id`` + `projects/`projects_id`/sources/`source_id`/
        # locations/`location_id``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. The human readable display name of the finding source such as "
        # Event Threat Detection" or "Security Health Analytics".
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # Represents operating system processes associated with the Finding.
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Process>]
        attr_accessor :processes
      
        # Immutable. For findings on Google Cloud resources, the full resource name of
        # the Google Cloud resource this finding is for. See: https://cloud.google.com/
        # apis/design/resource_names#full_resource_name When the finding is for a non-
        # Google Cloud resource, the resourceName can be a customer or partner defined
        # string.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2SecurityMarks]
        attr_accessor :security_marks
      
        # Represents a posture that is deployed on Google Cloud by the Security Command
        # Center Posture Management service. A posture contains one or more policy sets.
        # A policy set is a group of policies that enforce a set of security rules on
        # Google Cloud.
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2SecurityPosture]
        attr_accessor :security_posture
      
        # The severity of the finding. This field is managed by the source that writes
        # the finding.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # Output only. The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Vulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @application = args[:application] if args.key?(:application)
          @attack_exposure = args[:attack_exposure] if args.key?(:attack_exposure)
          @backup_disaster_recovery = args[:backup_disaster_recovery] if args.key?(:backup_disaster_recovery)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @cloud_dlp_data_profile = args[:cloud_dlp_data_profile] if args.key?(:cloud_dlp_data_profile)
          @cloud_dlp_inspection = args[:cloud_dlp_inspection] if args.key?(:cloud_dlp_inspection)
          @compliances = args[:compliances] if args.key?(:compliances)
          @connections = args[:connections] if args.key?(:connections)
          @contacts = args[:contacts] if args.key?(:contacts)
          @containers = args[:containers] if args.key?(:containers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database = args[:database] if args.key?(:database)
          @description = args[:description] if args.key?(:description)
          @event_time = args[:event_time] if args.key?(:event_time)
          @exfiltration = args[:exfiltration] if args.key?(:exfiltration)
          @external_systems = args[:external_systems] if args.key?(:external_systems)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @files = args[:files] if args.key?(:files)
          @finding_class = args[:finding_class] if args.key?(:finding_class)
          @iam_bindings = args[:iam_bindings] if args.key?(:iam_bindings)
          @indicator = args[:indicator] if args.key?(:indicator)
          @kernel_rootkit = args[:kernel_rootkit] if args.key?(:kernel_rootkit)
          @kubernetes = args[:kubernetes] if args.key?(:kubernetes)
          @load_balancers = args[:load_balancers] if args.key?(:load_balancers)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @mitre_attack = args[:mitre_attack] if args.key?(:mitre_attack)
          @module_name = args[:module_name] if args.key?(:module_name)
          @mute = args[:mute] if args.key?(:mute)
          @mute_initiator = args[:mute_initiator] if args.key?(:mute_initiator)
          @mute_update_time = args[:mute_update_time] if args.key?(:mute_update_time)
          @name = args[:name] if args.key?(:name)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @org_policies = args[:org_policies] if args.key?(:org_policies)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @processes = args[:processes] if args.key?(:processes)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @security_posture = args[:security_posture] if args.key?(:security_posture)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # Represents a geographical location for a given access.
      class GoogleCloudSecuritycenterV2Geolocation
        include Google::Apis::Core::Hashable
      
        # A CLDR.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Represents a particular IAM binding, which captures a member's role addition,
      # removal, or state.
      class GoogleCloudSecuritycenterV2IamBinding
        include Google::Apis::Core::Hashable
      
        # The action that was performed on a Binding.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # A single identity requesting access for a Cloud Platform resource, for example,
        # "foo@google.com".
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # Role that is assigned to "members". For example, "roles/viewer", "roles/editor"
        # , or "roles/owner".
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @member = args[:member] if args.key?(:member)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Represents what's commonly known as an _indicator of compromise_ (IoC) in
      # computer forensics. This is an artifact observed on a network or in an
      # operating system that, with high confidence, indicates a computer intrusion.
      # For more information, see [Indicator of compromise](https://en.wikipedia.org/
      # wiki/Indicator_of_compromise).
      class GoogleCloudSecuritycenterV2Indicator
        include Google::Apis::Core::Hashable
      
        # List of domains associated to the Finding.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # The list of IP addresses that are associated with the finding.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # The list of matched signatures indicating that the given process is present in
        # the environment.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2ProcessSignature>]
        attr_accessor :signatures
      
        # The list of URIs associated to the Findings.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @signatures = args[:signatures] if args.key?(:signatures)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # Kernel mode rootkit signatures.
      class GoogleCloudSecuritycenterV2KernelRootkit
        include Google::Apis::Core::Hashable
      
        # Rootkit name, when available.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True if unexpected modifications of kernel code memory are present.
        # Corresponds to the JSON property `unexpectedCodeModification`
        # @return [Boolean]
        attr_accessor :unexpected_code_modification
        alias_method :unexpected_code_modification?, :unexpected_code_modification
      
        # True if `ftrace` points are present with callbacks pointing to regions that
        # are not in the expected kernel or module code range.
        # Corresponds to the JSON property `unexpectedFtraceHandler`
        # @return [Boolean]
        attr_accessor :unexpected_ftrace_handler
        alias_method :unexpected_ftrace_handler?, :unexpected_ftrace_handler
      
        # True if interrupt handlers that are are not in the expected kernel or module
        # code regions are present.
        # Corresponds to the JSON property `unexpectedInterruptHandler`
        # @return [Boolean]
        attr_accessor :unexpected_interrupt_handler
        alias_method :unexpected_interrupt_handler?, :unexpected_interrupt_handler
      
        # True if kernel code pages that are not in the expected kernel or module code
        # regions are present.
        # Corresponds to the JSON property `unexpectedKernelCodePages`
        # @return [Boolean]
        attr_accessor :unexpected_kernel_code_pages
        alias_method :unexpected_kernel_code_pages?, :unexpected_kernel_code_pages
      
        # True if `kprobe` points are present with callbacks pointing to regions that
        # are not in the expected kernel or module code range.
        # Corresponds to the JSON property `unexpectedKprobeHandler`
        # @return [Boolean]
        attr_accessor :unexpected_kprobe_handler
        alias_method :unexpected_kprobe_handler?, :unexpected_kprobe_handler
      
        # True if unexpected processes in the scheduler run queue are present. Such
        # processes are in the run queue, but not in the process task list.
        # Corresponds to the JSON property `unexpectedProcessesInRunqueue`
        # @return [Boolean]
        attr_accessor :unexpected_processes_in_runqueue
        alias_method :unexpected_processes_in_runqueue?, :unexpected_processes_in_runqueue
      
        # True if unexpected modifications of kernel read-only data memory are present.
        # Corresponds to the JSON property `unexpectedReadOnlyDataModification`
        # @return [Boolean]
        attr_accessor :unexpected_read_only_data_modification
        alias_method :unexpected_read_only_data_modification?, :unexpected_read_only_data_modification
      
        # True if system call handlers that are are not in the expected kernel or module
        # code regions are present.
        # Corresponds to the JSON property `unexpectedSystemCallHandler`
        # @return [Boolean]
        attr_accessor :unexpected_system_call_handler
        alias_method :unexpected_system_call_handler?, :unexpected_system_call_handler
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @unexpected_code_modification = args[:unexpected_code_modification] if args.key?(:unexpected_code_modification)
          @unexpected_ftrace_handler = args[:unexpected_ftrace_handler] if args.key?(:unexpected_ftrace_handler)
          @unexpected_interrupt_handler = args[:unexpected_interrupt_handler] if args.key?(:unexpected_interrupt_handler)
          @unexpected_kernel_code_pages = args[:unexpected_kernel_code_pages] if args.key?(:unexpected_kernel_code_pages)
          @unexpected_kprobe_handler = args[:unexpected_kprobe_handler] if args.key?(:unexpected_kprobe_handler)
          @unexpected_processes_in_runqueue = args[:unexpected_processes_in_runqueue] if args.key?(:unexpected_processes_in_runqueue)
          @unexpected_read_only_data_modification = args[:unexpected_read_only_data_modification] if args.key?(:unexpected_read_only_data_modification)
          @unexpected_system_call_handler = args[:unexpected_system_call_handler] if args.key?(:unexpected_system_call_handler)
        end
      end
      
      # Kubernetes-related attributes.
      class GoogleCloudSecuritycenterV2Kubernetes
        include Google::Apis::Core::Hashable
      
        # Provides information on any Kubernetes access reviews (privilege checks)
        # relevant to the finding.
        # Corresponds to the JSON property `accessReviews`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2AccessReview>]
        attr_accessor :access_reviews
      
        # Provides Kubernetes role binding information for findings that involve [
        # RoleBindings or ClusterRoleBindings](https://cloud.google.com/kubernetes-
        # engine/docs/how-to/role-based-access-control).
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Binding>]
        attr_accessor :bindings
      
        # GKE [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-
        # pools) associated with the finding. This field contains node pool information
        # for each node, when it is available.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2NodePool>]
        attr_accessor :node_pools
      
        # Provides Kubernetes [node](https://cloud.google.com/kubernetes-engine/docs/
        # concepts/cluster-architecture#nodes) information.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Node>]
        attr_accessor :nodes
      
        # Kubernetes objects related to the finding.
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Object>]
        attr_accessor :objects
      
        # Kubernetes [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod)
        # associated with the finding. This field contains Pod records for each
        # container that is owned by a Pod.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Pod>]
        attr_accessor :pods
      
        # Provides Kubernetes role information for findings that involve [Roles or
        # ClusterRoles](https://cloud.google.com/kubernetes-engine/docs/how-to/role-
        # based-access-control).
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_reviews = args[:access_reviews] if args.key?(:access_reviews)
          @bindings = args[:bindings] if args.key?(:bindings)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @nodes = args[:nodes] if args.key?(:nodes)
          @objects = args[:objects] if args.key?(:objects)
          @pods = args[:pods] if args.key?(:pods)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Represents a generic name-value label. A label has separate name and value
      # fields to support filtering with the `contains()` function. For more
      # information, see [Filtering on array-type fields](https://cloud.google.com/
      # security-command-center/docs/how-to-api-list-findings#array-contains-filtering)
      # .
      class GoogleCloudSecuritycenterV2Label
        include Google::Apis::Core::Hashable
      
        # Name of the label.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value that corresponds to the label's name.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Contains information related to the load balancer associated with the finding.
      class GoogleCloudSecuritycenterV2LoadBalancer
        include Google::Apis::Core::Hashable
      
        # The name of the load balancer associated with the finding.
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
      
      # An individual entry in a log.
      class GoogleCloudSecuritycenterV2LogEntry
        include Google::Apis::Core::Hashable
      
        # Metadata taken from a [Cloud Logging LogEntry](https://cloud.google.com/
        # logging/docs/reference/v2/rest/v2/LogEntry)
        # Corresponds to the JSON property `cloudLoggingEntry`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2CloudLoggingEntry]
        attr_accessor :cloud_logging_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_entry = args[:cloud_logging_entry] if args.key?(:cloud_logging_entry)
        end
      end
      
      # A signature corresponding to memory page hashes.
      class GoogleCloudSecuritycenterV2MemoryHashSignature
        include Google::Apis::Core::Hashable
      
        # The binary family.
        # Corresponds to the JSON property `binaryFamily`
        # @return [String]
        attr_accessor :binary_family
      
        # The list of memory hash detections contributing to the binary family match.
        # Corresponds to the JSON property `detections`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Detection>]
        attr_accessor :detections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_family = args[:binary_family] if args.key?(:binary_family)
          @detections = args[:detections] if args.key?(:detections)
        end
      end
      
      # MITRE ATT&CK tactics and techniques related to this finding. See: https://
      # attack.mitre.org
      class GoogleCloudSecuritycenterV2MitreAttack
        include Google::Apis::Core::Hashable
      
        # Additional MITRE ATT&CK tactics related to this finding, if any.
        # Corresponds to the JSON property `additionalTactics`
        # @return [Array<String>]
        attr_accessor :additional_tactics
      
        # Additional MITRE ATT&CK techniques related to this finding, if any, along with
        # any of their respective parent techniques.
        # Corresponds to the JSON property `additionalTechniques`
        # @return [Array<String>]
        attr_accessor :additional_techniques
      
        # The MITRE ATT&CK tactic most closely represented by this finding, if any.
        # Corresponds to the JSON property `primaryTactic`
        # @return [String]
        attr_accessor :primary_tactic
      
        # The MITRE ATT&CK technique most closely represented by this finding, if any.
        # primary_techniques is a repeated field because there are multiple levels of
        # MITRE ATT&CK techniques. If the technique most closely represented by this
        # finding is a sub-technique (e.g. `SCANNING_IP_BLOCKS`), both the sub-technique
        # and its parent technique(s) will be listed (e.g. `SCANNING_IP_BLOCKS`, `
        # ACTIVE_SCANNING`).
        # Corresponds to the JSON property `primaryTechniques`
        # @return [Array<String>]
        attr_accessor :primary_techniques
      
        # The MITRE ATT&CK version referenced by the above fields. E.g. "8".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_tactics = args[:additional_tactics] if args.key?(:additional_tactics)
          @additional_techniques = args[:additional_techniques] if args.key?(:additional_techniques)
          @primary_tactic = args[:primary_tactic] if args.key?(:primary_tactic)
          @primary_techniques = args[:primary_techniques] if args.key?(:primary_techniques)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A mute config is a Cloud SCC resource that contains the configuration to mute
      # create/update events of findings.
      class GoogleCloudSecuritycenterV2MuteConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the mute config was created. This field is set
        # by the server and will be ignored if provided on config creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of the mute config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. An expression that defines the filter to apply across create/update
        # events of findings. While creating a filter string, be mindful of the scope in
        # which the mute configuration is being created. E.g., If a filter contains
        # project = X but is created under the project = Y scope, it might not match any
        # findings. The following field and operator combinations are supported: *
        # severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.
        # project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.
        # folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.
        # parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `
        # :` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. Email address of the user who last edited the mute config. This
        # field is set by the server and will be ignored if provided on config creation
        # or update.
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # This field will be ignored if provided on config creation. The following list
        # shows some examples of the format: + `organizations/`organization`/muteConfigs/
        # `mute_config`` + `organizations/`organization`locations/`location`//
        # muteConfigs/`mute_config`` + `folders/`folder`/muteConfigs/`mute_config`` + `
        # folders/`folder`/locations/`location`/muteConfigs/`mute_config`` + `projects/`
        # project`/muteConfigs/`mute_config`` + `projects/`project`/locations/`location`/
        # muteConfigs/`mute_config``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The type of the mute config, which determines what type of mute
        # state the config affects. Immutable after creation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The most recent time at which the mute config was updated. This
        # field is set by the server and will be ignored if provided on config creation
        # or update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Kubernetes nodes associated with the finding.
      class GoogleCloudSecuritycenterV2Node
        include Google::Apis::Core::Hashable
      
        # [Full resource name](https://google.aip.dev/122#full-resource-names) of the
        # Compute Engine VM running the cluster node.
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
      
      # Provides GKE node pool information.
      class GoogleCloudSecuritycenterV2NodePool
        include Google::Apis::Core::Hashable
      
        # Kubernetes node pool name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Nodes associated with the finding.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Node>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # Cloud SCC's Notification
      class GoogleCloudSecuritycenterV2NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Kubernetes object related to the finding, uniquely identified by GKNN. Used if
      # the object Kind is not one of Pod, Node, NodePool, Binding, or AccessReview.
      class GoogleCloudSecuritycenterV2Object
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # Kubernetes object group, such as "policy.k8s.io/v1".
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Kubernetes object kind, such as "Namespace".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Kubernetes object name. For details see https://kubernetes.io/docs/concepts/
        # overview/working-with-objects/names/.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Kubernetes object namespace. Must be a valid DNS label. Named "ns" to avoid
        # collision with C++ namespace keyword. For details see https://kubernetes.io/
        # docs/tasks/administer-cluster/namespaces/.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @group = args[:group] if args.key?(:group)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # Contains information about the org policies associated with the finding.
      class GoogleCloudSecuritycenterV2OrgPolicy
        include Google::Apis::Core::Hashable
      
        # The resource name of the org policy. Example: "organizations/`organization_id`/
        # policies/`constraint_name`"
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
      
      # Package is a generic definition of a package.
      class GoogleCloudSecuritycenterV2Package
        include Google::Apis::Core::Hashable
      
        # The CPE URI where the vulnerability was detected.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The name of the package where the vulnerability was detected.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Type of package, for example, os, maven, or go.
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # The version of the package.
        # Corresponds to the JSON property `packageVersion`
        # @return [String]
        attr_accessor :package_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_type = args[:package_type] if args.key?(:package_type)
          @package_version = args[:package_version] if args.key?(:package_version)
        end
      end
      
      # A Kubernetes Pod.
      class GoogleCloudSecuritycenterV2Pod
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # Pod labels. For Kubernetes containers, these are applied to the container.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Label>]
        attr_accessor :labels
      
        # Kubernetes Pod name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Kubernetes Pod namespace.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # The policy field that violates the deployed posture and its expected and
      # detected values.
      class GoogleCloudSecuritycenterV2PolicyDriftDetails
        include Google::Apis::Core::Hashable
      
        # The detected value that violates the deployed posture, for example, `false` or
        # `allowed_values=`"projects/22831892”``.
        # Corresponds to the JSON property `detectedValue`
        # @return [String]
        attr_accessor :detected_value
      
        # The value of this field that was configured in a posture, for example, `true`
        # or `allowed_values=`"projects/29831892”``.
        # Corresponds to the JSON property `expectedValue`
        # @return [String]
        attr_accessor :expected_value
      
        # The name of the updated field, for example constraint.implementation.
        # policy_rules[0].enforce
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_value = args[:detected_value] if args.key?(:detected_value)
          @expected_value = args[:expected_value] if args.key?(:expected_value)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Represents an operating system process.
      class GoogleCloudSecuritycenterV2Process
        include Google::Apis::Core::Hashable
      
        # Process arguments as JSON encoded strings.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # True if `args` is incomplete.
        # Corresponds to the JSON property `argumentsTruncated`
        # @return [Boolean]
        attr_accessor :arguments_truncated
        alias_method :arguments_truncated?, :arguments_truncated
      
        # File information about the related binary/library used by an executable, or
        # the script used by a script interpreter
        # Corresponds to the JSON property `binary`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2File]
        attr_accessor :binary
      
        # Process environment variables.
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2EnvironmentVariable>]
        attr_accessor :env_variables
      
        # True if `env_variables` is incomplete.
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # File information for libraries loaded by the process.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2File>]
        attr_accessor :libraries
      
        # The process name, as displayed in utilities like `top` and `ps`. This name can
        # be accessed through `/proc/[pid]/comm` and changed with `prctl(PR_SET_NAME)`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The parent process ID.
        # Corresponds to the JSON property `parentPid`
        # @return [Fixnum]
        attr_accessor :parent_pid
      
        # The process ID.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # File information about the related binary/library used by an executable, or
        # the script used by a script interpreter
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2File]
        attr_accessor :script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @arguments_truncated = args[:arguments_truncated] if args.key?(:arguments_truncated)
          @binary = args[:binary] if args.key?(:binary)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @env_variables_truncated = args[:env_variables_truncated] if args.key?(:env_variables_truncated)
          @libraries = args[:libraries] if args.key?(:libraries)
          @name = args[:name] if args.key?(:name)
          @parent_pid = args[:parent_pid] if args.key?(:parent_pid)
          @pid = args[:pid] if args.key?(:pid)
          @script = args[:script] if args.key?(:script)
        end
      end
      
      # Indicates what signature matched this process.
      class GoogleCloudSecuritycenterV2ProcessSignature
        include Google::Apis::Core::Hashable
      
        # A signature corresponding to memory page hashes.
        # Corresponds to the JSON property `memoryHashSignature`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # Describes the type of resource associated with the signature.
        # Corresponds to the JSON property `signatureType`
        # @return [String]
        attr_accessor :signature_type
      
        # A signature corresponding to a YARA rule.
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2YaraRuleSignature]
        attr_accessor :yara_rule_signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_hash_signature = args[:memory_hash_signature] if args.key?(:memory_hash_signature)
          @signature_type = args[:signature_type] if args.key?(:signature_type)
          @yara_rule_signature = args[:yara_rule_signature] if args.key?(:yara_rule_signature)
        end
      end
      
      # Additional Links
      class GoogleCloudSecuritycenterV2Reference
        include Google::Apis::Core::Hashable
      
        # Source of the reference e.g. NVD
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Uri for the mentioned source e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?
        # name=CVE-2021-34527.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV2Resource
        include Google::Apis::Core::Hashable
      
        # The human readable name of the resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource type of the resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A resource value config (RVC) is a mapping configuration of user's resources
      # to resource values. Used in Attack path simulations.
      class GoogleCloudSecuritycenterV2ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp this resource value config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the resource value config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name for the resource value config
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of resource labels to search for, evaluated with AND. E.g. "
        # resource_labels_selector": `"key": "value", "env": "prod"` will match
        # resources with labels "key": "value" AND "env": "prod" https://cloud.google.
        # com/resource-manager/docs/creating-managing-labels
        # Corresponds to the JSON property `resourceLabelsSelector`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels_selector
      
        # Apply resource_value only to resources that match resource_type. resource_type
        # will be checked with "AND" of other resources. E.g. "storage.googleapis.com/
        # Bucket" with resource_value "HIGH" will apply "HIGH" value only to "storage.
        # googleapis.com/Bucket" resources.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Resource value level this expression represents Only required when there is no
        # SDP mapping in the request
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # Project or folder to scope this config to. For example, "project/456" would
        # apply this config only to resources in "project/456" scope will be checked
        # with "AND" of other resources.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Resource value mapping for Sensitive Data Protection findings If any of these
        # mappings have a resource value that is not unspecified, the resource_value
        # field will be ignored when reading this configuration.
        # Corresponds to the JSON property `sensitiveDataProtectionMapping`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping]
        attr_accessor :sensitive_data_protection_mapping
      
        # Required. Tag values combined with AND to check against. Values in the form "
        # tagValues/123" E.g. [ "tagValues/123", "tagValues/456", "tagValues/789" ]
        # https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # Output only. Timestamp this resource value config was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @resource_labels_selector = args[:resource_labels_selector] if args.key?(:resource_labels_selector)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
          @scope = args[:scope] if args.key?(:scope)
          @sensitive_data_protection_mapping = args[:sensitive_data_protection_mapping] if args.key?(:sensitive_data_protection_mapping)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Kubernetes Role or ClusterRole.
      class GoogleCloudSecuritycenterV2Role
        include Google::Apis::Core::Hashable
      
        # Role type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Role name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Role namespace.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # SecurityBulletin are notifications of vulnerabilities of Google products.
      class GoogleCloudSecuritycenterV2SecurityBulletin
        include Google::Apis::Core::Hashable
      
        # ID of the bulletin corresponding to the vulnerability.
        # Corresponds to the JSON property `bulletinId`
        # @return [String]
        attr_accessor :bulletin_id
      
        # Submission time of this Security Bulletin.
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        # This represents a version that the cluster receiving this notification should
        # be upgraded to, based on its current version. For example, 1.15.0
        # Corresponds to the JSON property `suggestedUpgradeVersion`
        # @return [String]
        attr_accessor :suggested_upgrade_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bulletin_id = args[:bulletin_id] if args.key?(:bulletin_id)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
          @suggested_upgrade_version = args[:suggested_upgrade_version] if args.key?(:suggested_upgrade_version)
        end
      end
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class GoogleCloudSecuritycenterV2SecurityMarks
        include Google::Apis::Core::Hashable
      
        # The canonical name of the marks. The following list shows some examples: + `
        # organizations/`organization_id`/assets/`asset_id`/securityMarks" + `
        # organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" + `organizations/`organization_id`/sources/`source_id`/
        # locations/`location`/findings/`finding_id`/securityMarks" + `folders/`
        # folder_id`/assets/`asset_id`/securityMarks" + `folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`/securityMarks" + `folders/`folder_id`/sources/
        # `source_id`/locations/`location`/findings/`finding_id`/securityMarks" + `
        # projects/`project_number`/assets/`asset_id`/securityMarks" + `projects/`
        # project_number`/sources/`source_id`/findings/`finding_id`/securityMarks" + `
        # projects/`project_number`/sources/`source_id`/locations/`location`/findings/`
        # finding_id`/securityMarks"
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name The following list shows
        # some examples: + `organizations/`organization_id`/assets/`asset_id`/
        # securityMarks` + `organizations/`organization_id`/sources/`source_id`/findings/
        # `finding_id`/securityMarks` + `organizations/`organization_id`/sources/`
        # source_id`/locations/`location`/findings/`finding_id`/securityMarks`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a posture that is deployed on Google Cloud by the Security Command
      # Center Posture Management service. A posture contains one or more policy sets.
      # A policy set is a group of policies that enforce a set of security rules on
      # Google Cloud.
      class GoogleCloudSecuritycenterV2SecurityPosture
        include Google::Apis::Core::Hashable
      
        # The name of the updated policy, for example, `projects/`project_id`/policies/`
        # constraint_name``.
        # Corresponds to the JSON property `changedPolicy`
        # @return [String]
        attr_accessor :changed_policy
      
        # Name of the posture, for example, `CIS-Posture`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the updated policy, for example, `compute-policy-1`.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # The details about a change in an updated policy that violates the deployed
        # posture.
        # Corresponds to the JSON property `policyDriftDetails`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2PolicyDriftDetails>]
        attr_accessor :policy_drift_details
      
        # The name of the updated policy set, for example, `cis-policyset`.
        # Corresponds to the JSON property `policySet`
        # @return [String]
        attr_accessor :policy_set
      
        # The name of the posture deployment, for example, `organizations/`org_id`/
        # posturedeployments/`posture_deployment_id``.
        # Corresponds to the JSON property `postureDeployment`
        # @return [String]
        attr_accessor :posture_deployment
      
        # The project, folder, or organization on which the posture is deployed, for
        # example, `projects/`project_number``.
        # Corresponds to the JSON property `postureDeploymentResource`
        # @return [String]
        attr_accessor :posture_deployment_resource
      
        # The version of the posture, for example, `c7cfa2a8`.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_policy = args[:changed_policy] if args.key?(:changed_policy)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @policy_drift_details = args[:policy_drift_details] if args.key?(:policy_drift_details)
          @policy_set = args[:policy_set] if args.key?(:policy_set)
          @posture_deployment = args[:posture_deployment] if args.key?(:posture_deployment)
          @posture_deployment_resource = args[:posture_deployment_resource] if args.key?(:posture_deployment_resource)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Resource value mapping for Sensitive Data Protection findings If any of these
      # mappings have a resource value that is not unspecified, the resource_value
      # field will be ignored when reading this configuration.
      class GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping
        include Google::Apis::Core::Hashable
      
        # Resource value mapping for high-sensitivity Sensitive Data Protection findings
        # Corresponds to the JSON property `highSensitivityMapping`
        # @return [String]
        attr_accessor :high_sensitivity_mapping
      
        # Resource value mapping for medium-sensitivity Sensitive Data Protection
        # findings
        # Corresponds to the JSON property `mediumSensitivityMapping`
        # @return [String]
        attr_accessor :medium_sensitivity_mapping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_sensitivity_mapping = args[:high_sensitivity_mapping] if args.key?(:high_sensitivity_mapping)
          @medium_sensitivity_mapping = args[:medium_sensitivity_mapping] if args.key?(:medium_sensitivity_mapping)
        end
      end
      
      # Identity delegation history of an authenticated service account.
      class GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo
        include Google::Apis::Core::Hashable
      
        # The email address of a Google account.
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # A string representing the principal_subject associated with the identity. As
        # compared to `principal_email`, supports principals that aren't associated with
        # email addresses, such as third party principals. For most identities, the
        # format will be `principal://iam.googleapis.com/`identity pool name`/subjects/`
        # subject`` except for some GKE identities (GKE_WORKLOAD, FREEFORM,
        # GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:`
        # identity pool name`[`subject`]`
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
        end
      end
      
      # Represents a Kubernetes subject.
      class GoogleCloudSecuritycenterV2Subject
        include Google::Apis::Core::Hashable
      
        # Authentication type for the subject.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name for the subject.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace for the subject.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # Information about the ticket, if any, that is being used to track the
      # resolution of the issue that is identified by this finding.
      class GoogleCloudSecuritycenterV2TicketInfo
        include Google::Apis::Core::Hashable
      
        # The assignee of the ticket in the ticket system.
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # The description of the ticket in the ticket system.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The identifier of the ticket in the ticket system.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The latest status of the ticket, as reported by the ticket system.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The time when the ticket was last updated, as reported by the ticket system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The link to the ticket in the ticket system.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] if args.key?(:assignee)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
      class GoogleCloudSecuritycenterV2Vulnerability
        include Google::Apis::Core::Hashable
      
        # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
        # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
        # vulnerability.
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Cve]
        attr_accessor :cve
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Package]
        attr_accessor :fixed_package
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `offendingPackage`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2Package]
        attr_accessor :offending_package
      
        # SecurityBulletin are notifications of vulnerabilities of Google products.
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV2SecurityBulletin]
        attr_accessor :security_bulletin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @offending_package = args[:offending_package] if args.key?(:offending_package)
          @security_bulletin = args[:security_bulletin] if args.key?(:security_bulletin)
        end
      end
      
      # A signature corresponding to a YARA rule.
      class GoogleCloudSecuritycenterV2YaraRuleSignature
        include Google::Apis::Core::Hashable
      
        # The name of the YARA rule.
        # Corresponds to the JSON property `yaraRule`
        # @return [String]
        attr_accessor :yara_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @yara_rule = args[:yara_rule] if args.key?(:yara_rule)
        end
      end
      
      # Request message for grouping by assets.
      class GroupAssetsRequest
        include Google::Apis::Core::Hashable
      
        # When compare_duration is set, the GroupResult's "state_change" property is
        # updated to indicate whether the asset was added, removed, or remained present
        # during the compare_duration period of time that precedes the read_time. This
        # is the time between (read_time - compare_duration) and read_time. The state
        # change value is derived based on the presence of the asset at the two points
        # in time. Intermediate state changes between the two times don't affect the
        # result. For example, the results aren't affected if the asset is removed and
        # re-created again. Possible "state_change" values when compare_duration is
        # specified: * "ADDED": indicates that the asset was not present at the start of
        # compare_duration, but present at reference_time. * "REMOVED": indicates that
        # the asset was present at the start of compare_duration, but not present at
        # reference_time. * "ACTIVE": indicates that the asset was present at both the
        # start and the end of the time period defined by compare_duration and
        # reference_time. If compare_duration is not specified, then the only possible
        # state_change is "UNUSED", which will be the state_change set for all assets
        # present at read_time. If this field is set then `state_change` must be a
        # specified field in `group_by`.
        # Corresponds to the JSON property `compareDuration`
        # @return [String]
        attr_accessor :compare_duration
      
        # Expression that defines the filter to apply across assets. The expression is a
        # list of zero or more restrictions combined via logical operators `AND` and `OR`
        # . Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. The fields map to those defined in the Asset resource.
        # Examples include: * name * security_center_properties.resource_name *
        # resource_properties.a_property * security_marks.marks.marka The supported
        # operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer
        # values. * `:`, meaning substring matching, for strings. The supported value
        # types are: * string literals in quotes. * integer literals without quotes. *
        # boolean literals `true` and `false` without quotes. The following field and
        # operator combinations are supported: * name: `=` * update_time: `=`, `>`, `<`,
        # `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string.
        # Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
        # 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be
        # milliseconds since epoch or an RFC3339 string. Examples: `create_time = "2019-
        # 06-10T16:07:18-07:00"` `create_time = 1560208038000` * iam_policy.policy_blob:
        # `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` *
        # security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`,
        # `:` * security_center_properties.resource_display_name: `=`, `:` *
        # security_center_properties.resource_type: `=`, `:` *
        # security_center_properties.resource_parent: `=`, `:` *
        # security_center_properties.resource_parent_display_name: `=`, `:` *
        # security_center_properties.resource_project: `=`, `:` *
        # security_center_properties.resource_project_display_name: `=`, `:` *
        # security_center_properties.resource_owners: `=`, `:` For example, `
        # resource_properties.size = 100` is a valid filter string. Use a partial match
        # on the empty string to filter based on a property existing: `
        # resource_properties.my_property : ""` Use a negated partial match on the empty
        # string to filter based on a property not existing: `-resource_properties.
        # my_property : ""`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Expression that defines what assets fields to use for grouping. The
        # string value should follow SQL syntax: comma separated list of fields. For
        # example: "security_center_properties.resource_project,
        # security_center_properties.project". The following fields are supported when
        # compare_duration is not set: * security_center_properties.resource_project *
        # security_center_properties.resource_project_display_name *
        # security_center_properties.resource_type * security_center_properties.
        # resource_parent * security_center_properties.resource_parent_display_name The
        # following fields are supported when compare_duration is set: *
        # security_center_properties.resource_type * security_center_properties.
        # resource_project_display_name * security_center_properties.
        # resource_parent_display_name
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # The maximum number of results to return in a single response. Default is 10,
        # minimum is 1, maximum is 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The value returned by the last `GroupAssetsResponse`; indicates that this is a
        # continuation of a prior `GroupAssets` call, and that the system should return
        # the next page of data.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Time used as a reference point when filtering assets. The filter is limited to
        # assets existing at the supplied time and their values are those at that
        # specific time. Absence of this field will default to the API's version of NOW.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compare_duration = args[:compare_duration] if args.key?(:compare_duration)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # Response message for grouping by assets.
      class GroupAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Group results. There exists an element for each existing unique combination of
        # property/values. The element contains a count for the number of times those
        # specific property/values appear.
        # Corresponds to the JSON property `groupByResults`
        # @return [Array<Google::Apis::SecuritycenterV1::GroupResult>]
        attr_accessor :group_by_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the groupBy request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of results matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Request message for grouping by findings.
      class GroupFindingsRequest
        include Google::Apis::Core::Hashable
      
        # When compare_duration is set, the GroupResult's "state_change" attribute is
        # updated to indicate whether the finding had its state changed, the finding's
        # state remained unchanged, or if the finding was added during the
        # compare_duration period of time that precedes the read_time. This is the time
        # between (read_time - compare_duration) and read_time. The state_change value
        # is derived based on the presence and state of the finding at the two points in
        # time. Intermediate state changes between the two times don't affect the result.
        # For example, the results aren't affected if the finding is made inactive and
        # then active again. Possible "state_change" values when compare_duration is
        # specified: * "CHANGED": indicates that the finding was present and matched the
        # given filter at the start of compare_duration, but changed its state at
        # read_time. * "UNCHANGED": indicates that the finding was present and matched
        # the given filter at the start of compare_duration and did not change state at
        # read_time. * "ADDED": indicates that the finding did not match the given
        # filter or was not present at the start of compare_duration, but was present at
        # read_time. * "REMOVED": indicates that the finding was present and matched the
        # filter at the start of compare_duration, but did not match the filter at
        # read_time. If compare_duration is not specified, then the only possible
        # state_change is "UNUSED", which will be the state_change set for all findings
        # present at read_time. If this field is set then `state_change` must be a
        # specified field in `group_by`.
        # Corresponds to the JSON property `compareDuration`
        # @return [String]
        attr_accessor :compare_duration
      
        # Expression that defines the filter to apply across findings. The expression is
        # a list of one or more restrictions combined via logical operators `AND` and `
        # OR`. Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. Examples include: * name * source_properties.a_property *
        # security_marks.marks.marka The supported operators are: * `=` for all value
        # types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring
        # matching, for strings. The supported value types are: * string literals in
        # quotes. * integer literals without quotes. * boolean literals `true` and `
        # false` without quotes. The following field and operator combinations are
        # supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=
        # `, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<
        # `, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        # string. Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
        # 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
        # security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `
        # <=` For example, `source_properties.size = 100` is a valid filter string. Use
        # a partial match on the empty string to filter based on a property existing: `
        # source_properties.my_property : ""` Use a negated partial match on the empty
        # string to filter based on a property not existing: `-source_properties.
        # my_property : ""` * resource: * resource.name: `=`, `:` * resource.parent_name:
        # `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`
        # , `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Expression that defines what assets fields to use for grouping (
        # including `state_change`). The string value should follow SQL syntax: comma
        # separated list of fields. For example: "parent,resource_name". The following
        # fields are supported: * resource_name * category * state * parent * severity
        # The following fields are supported when compare_duration is set: *
        # state_change
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # The maximum number of results to return in a single response. Default is 10,
        # minimum is 1, maximum is 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The value returned by the last `GroupFindingsResponse`; indicates that this is
        # a continuation of a prior `GroupFindings` call, and that the system should
        # return the next page of data.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Time used as a reference point when filtering findings. The filter is limited
        # to findings existing at the supplied time and their values are those at that
        # specific time. Absence of this field will default to the API's version of NOW.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compare_duration = args[:compare_duration] if args.key?(:compare_duration)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # Response message for group by findings.
      class GroupFindingsResponse
        include Google::Apis::Core::Hashable
      
        # Group results. There exists an element for each existing unique combination of
        # property/values. The element contains a count for the number of times those
        # specific property/values appear.
        # Corresponds to the JSON property `groupByResults`
        # @return [Array<Google::Apis::SecuritycenterV1::GroupResult>]
        attr_accessor :group_by_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the groupBy request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of results matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Result containing the properties and count of a groupBy request.
      class GroupResult
        include Google::Apis::Core::Hashable
      
        # Total count of resources for the given properties.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Properties matching the groupBy fields in the request.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Object>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Represents a particular IAM binding, which captures a member's role addition,
      # removal, or state.
      class IamBinding
        include Google::Apis::Core::Hashable
      
        # The action that was performed on a Binding.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # A single identity requesting access for a Cloud Platform resource, for example,
        # "foo@google.com".
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # Role that is assigned to "members". For example, "roles/viewer", "roles/editor"
        # , or "roles/owner".
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @member = args[:member] if args.key?(:member)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Cloud IAM Policy information associated with the Google Cloud resource
      # described by the Security Command Center asset. This information is managed
      # and defined by the Google Cloud resource and cannot be modified by the user.
      class IamPolicy
        include Google::Apis::Core::Hashable
      
        # The JSON representation of the Policy associated with the asset. See https://
        # cloud.google.com/iam/reference/rest/v1/Policy for format details.
        # Corresponds to the JSON property `policyBlob`
        # @return [String]
        attr_accessor :policy_blob
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_blob = args[:policy_blob] if args.key?(:policy_blob)
        end
      end
      
      # Represents what's commonly known as an _indicator of compromise_ (IoC) in
      # computer forensics. This is an artifact observed on a network or in an
      # operating system that, with high confidence, indicates a computer intrusion.
      # For more information, see [Indicator of compromise](https://en.wikipedia.org/
      # wiki/Indicator_of_compromise).
      class Indicator
        include Google::Apis::Core::Hashable
      
        # List of domains associated to the Finding.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # The list of IP addresses that are associated with the finding.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # The list of matched signatures indicating that the given process is present in
        # the environment.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::SecuritycenterV1::ProcessSignature>]
        attr_accessor :signatures
      
        # The list of URIs associated to the Findings.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @signatures = args[:signatures] if args.key?(:signatures)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # Kernel mode rootkit signatures.
      class KernelRootkit
        include Google::Apis::Core::Hashable
      
        # Rootkit name, when available.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True if unexpected modifications of kernel code memory are present.
        # Corresponds to the JSON property `unexpectedCodeModification`
        # @return [Boolean]
        attr_accessor :unexpected_code_modification
        alias_method :unexpected_code_modification?, :unexpected_code_modification
      
        # True if `ftrace` points are present with callbacks pointing to regions that
        # are not in the expected kernel or module code range.
        # Corresponds to the JSON property `unexpectedFtraceHandler`
        # @return [Boolean]
        attr_accessor :unexpected_ftrace_handler
        alias_method :unexpected_ftrace_handler?, :unexpected_ftrace_handler
      
        # True if interrupt handlers that are are not in the expected kernel or module
        # code regions are present.
        # Corresponds to the JSON property `unexpectedInterruptHandler`
        # @return [Boolean]
        attr_accessor :unexpected_interrupt_handler
        alias_method :unexpected_interrupt_handler?, :unexpected_interrupt_handler
      
        # True if kernel code pages that are not in the expected kernel or module code
        # regions are present.
        # Corresponds to the JSON property `unexpectedKernelCodePages`
        # @return [Boolean]
        attr_accessor :unexpected_kernel_code_pages
        alias_method :unexpected_kernel_code_pages?, :unexpected_kernel_code_pages
      
        # True if `kprobe` points are present with callbacks pointing to regions that
        # are not in the expected kernel or module code range.
        # Corresponds to the JSON property `unexpectedKprobeHandler`
        # @return [Boolean]
        attr_accessor :unexpected_kprobe_handler
        alias_method :unexpected_kprobe_handler?, :unexpected_kprobe_handler
      
        # True if unexpected processes in the scheduler run queue are present. Such
        # processes are in the run queue, but not in the process task list.
        # Corresponds to the JSON property `unexpectedProcessesInRunqueue`
        # @return [Boolean]
        attr_accessor :unexpected_processes_in_runqueue
        alias_method :unexpected_processes_in_runqueue?, :unexpected_processes_in_runqueue
      
        # True if unexpected modifications of kernel read-only data memory are present.
        # Corresponds to the JSON property `unexpectedReadOnlyDataModification`
        # @return [Boolean]
        attr_accessor :unexpected_read_only_data_modification
        alias_method :unexpected_read_only_data_modification?, :unexpected_read_only_data_modification
      
        # True if system call handlers that are are not in the expected kernel or module
        # code regions are present.
        # Corresponds to the JSON property `unexpectedSystemCallHandler`
        # @return [Boolean]
        attr_accessor :unexpected_system_call_handler
        alias_method :unexpected_system_call_handler?, :unexpected_system_call_handler
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @unexpected_code_modification = args[:unexpected_code_modification] if args.key?(:unexpected_code_modification)
          @unexpected_ftrace_handler = args[:unexpected_ftrace_handler] if args.key?(:unexpected_ftrace_handler)
          @unexpected_interrupt_handler = args[:unexpected_interrupt_handler] if args.key?(:unexpected_interrupt_handler)
          @unexpected_kernel_code_pages = args[:unexpected_kernel_code_pages] if args.key?(:unexpected_kernel_code_pages)
          @unexpected_kprobe_handler = args[:unexpected_kprobe_handler] if args.key?(:unexpected_kprobe_handler)
          @unexpected_processes_in_runqueue = args[:unexpected_processes_in_runqueue] if args.key?(:unexpected_processes_in_runqueue)
          @unexpected_read_only_data_modification = args[:unexpected_read_only_data_modification] if args.key?(:unexpected_read_only_data_modification)
          @unexpected_system_call_handler = args[:unexpected_system_call_handler] if args.key?(:unexpected_system_call_handler)
        end
      end
      
      # Kubernetes-related attributes.
      class Kubernetes
        include Google::Apis::Core::Hashable
      
        # Provides information on any Kubernetes access reviews (privilege checks)
        # relevant to the finding.
        # Corresponds to the JSON property `accessReviews`
        # @return [Array<Google::Apis::SecuritycenterV1::AccessReview>]
        attr_accessor :access_reviews
      
        # Provides Kubernetes role binding information for findings that involve [
        # RoleBindings or ClusterRoleBindings](https://cloud.google.com/kubernetes-
        # engine/docs/how-to/role-based-access-control).
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Binding>]
        attr_accessor :bindings
      
        # GKE [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-
        # pools) associated with the finding. This field contains node pool information
        # for each node, when it is available.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1::NodePool>]
        attr_accessor :node_pools
      
        # Provides Kubernetes [node](https://cloud.google.com/kubernetes-engine/docs/
        # concepts/cluster-architecture#nodes) information.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1::Node>]
        attr_accessor :nodes
      
        # Kubernetes objects related to the finding.
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::SecuritycenterV1::Object>]
        attr_accessor :objects
      
        # Kubernetes [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod)
        # associated with the finding. This field contains Pod records for each
        # container that is owned by a Pod.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1::Pod>]
        attr_accessor :pods
      
        # Provides Kubernetes role information for findings that involve [Roles or
        # ClusterRoles](https://cloud.google.com/kubernetes-engine/docs/how-to/role-
        # based-access-control).
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_reviews = args[:access_reviews] if args.key?(:access_reviews)
          @bindings = args[:bindings] if args.key?(:bindings)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @nodes = args[:nodes] if args.key?(:nodes)
          @objects = args[:objects] if args.key?(:objects)
          @pods = args[:pods] if args.key?(:pods)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Represents a generic name-value label. A label has separate name and value
      # fields to support filtering with the `contains()` function. For more
      # information, see [Filtering on array-type fields](https://cloud.google.com/
      # security-command-center/docs/how-to-api-list-findings#array-contains-filtering)
      # .
      class Label
        include Google::Apis::Core::Hashable
      
        # Name of the label.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value that corresponds to the label's name.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Response message for listing assets.
      class ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Assets matching the list request.
        # Corresponds to the JSON property `listAssetsResults`
        # @return [Array<Google::Apis::SecuritycenterV1::ListAssetsResult>]
        attr_accessor :list_assets_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the list request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of assets matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_assets_results = args[:list_assets_results] if args.key?(:list_assets_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Result containing the Asset and its State.
      class ListAssetsResult
        include Google::Apis::Core::Hashable
      
        # Security Command Center representation of a Google Cloud resource. The Asset
        # is a Security Command Center resource that captures information about a single
        # Google Cloud resource. All modifications to an Asset are only within the
        # context of Security Command Center and don't affect the referenced Google
        # Cloud resource.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::SecuritycenterV1::Asset]
        attr_accessor :asset
      
        # State change of the asset between the points in time.
        # Corresponds to the JSON property `stateChange`
        # @return [String]
        attr_accessor :state_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @state_change = args[:state_change] if args.key?(:state_change)
        end
      end
      
      # Response message for listing the attack paths for a given simulation or valued
      # resource.
      class ListAttackPathsResponse
        include Google::Apis::Core::Hashable
      
        # The attack paths that the attack path simulation identified.
        # Corresponds to the JSON property `attackPaths`
        # @return [Array<Google::Apis::SecuritycenterV1::AttackPath>]
        attr_accessor :attack_paths
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_paths = args[:attack_paths] if args.key?(:attack_paths)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing BigQuery exports.
      class ListBigQueryExportsResponse
        include Google::Apis::Core::Hashable
      
        # The BigQuery exports from the specified parent.
        # Corresponds to the JSON property `bigQueryExports`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport>]
        attr_accessor :big_query_exports
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_exports = args[:big_query_exports] if args.key?(:big_query_exports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing current and descendant resident Event Threat Detection
      # custom modules.
      class ListDescendantEventThreatDetectionCustomModulesResponse
        include Google::Apis::Core::Hashable
      
        # Custom modules belonging to the requested parent.
        # Corresponds to the JSON property `eventThreatDetectionCustomModules`
        # @return [Array<Google::Apis::SecuritycenterV1::EventThreatDetectionCustomModule>]
        attr_accessor :event_threat_detection_custom_modules
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_threat_detection_custom_modules = args[:event_threat_detection_custom_modules] if args.key?(:event_threat_detection_custom_modules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing descendant Security Health Analytics custom
      # modules.
      class ListDescendantSecurityHealthAnalyticsCustomModulesResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more custom modules to be returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Custom modules belonging to the requested parent and its descendants.
        # Corresponds to the JSON property `securityHealthAnalyticsCustomModules`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>]
        attr_accessor :security_health_analytics_custom_modules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_health_analytics_custom_modules = args[:security_health_analytics_custom_modules] if args.key?(:security_health_analytics_custom_modules)
        end
      end
      
      # Response for listing EffectiveEventThreatDetectionCustomModules.
      class ListEffectiveEventThreatDetectionCustomModulesResponse
        include Google::Apis::Core::Hashable
      
        # Effective custom modules belonging to the requested parent.
        # Corresponds to the JSON property `effectiveEventThreatDetectionCustomModules`
        # @return [Array<Google::Apis::SecuritycenterV1::EffectiveEventThreatDetectionCustomModule>]
        attr_accessor :effective_event_threat_detection_custom_modules
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_event_threat_detection_custom_modules = args[:effective_event_threat_detection_custom_modules] if args.key?(:effective_event_threat_detection_custom_modules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing effective Security Health Analytics custom
      # modules.
      class ListEffectiveSecurityHealthAnalyticsCustomModulesResponse
        include Google::Apis::Core::Hashable
      
        # Effective custom modules belonging to the requested parent.
        # Corresponds to the JSON property `effectiveSecurityHealthAnalyticsCustomModules`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule>]
        attr_accessor :effective_security_health_analytics_custom_modules
      
        # If not empty, indicates that there may be more effective custom modules to be
        # returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_security_health_analytics_custom_modules = args[:effective_security_health_analytics_custom_modules] if args.key?(:effective_security_health_analytics_custom_modules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing Event Threat Detection custom modules.
      class ListEventThreatDetectionCustomModulesResponse
        include Google::Apis::Core::Hashable
      
        # Custom modules belonging to the requested parent.
        # Corresponds to the JSON property `eventThreatDetectionCustomModules`
        # @return [Array<Google::Apis::SecuritycenterV1::EventThreatDetectionCustomModule>]
        attr_accessor :event_threat_detection_custom_modules
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_threat_detection_custom_modules = args[:event_threat_detection_custom_modules] if args.key?(:event_threat_detection_custom_modules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing findings.
      class ListFindingsResponse
        include Google::Apis::Core::Hashable
      
        # Findings matching the list request.
        # Corresponds to the JSON property `listFindingsResults`
        # @return [Array<Google::Apis::SecuritycenterV1::ListFindingsResult>]
        attr_accessor :list_findings_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the list request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of findings matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_findings_results = args[:list_findings_results] if args.key?(:list_findings_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Result containing the Finding and its StateChange.
      class ListFindingsResult
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::Finding]
        attr_accessor :finding
      
        # Information related to the Google Cloud resource that is associated with this
        # finding.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::Resource]
        attr_accessor :resource
      
        # State change of the finding between the points in time.
        # Corresponds to the JSON property `stateChange`
        # @return [String]
        attr_accessor :state_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @resource = args[:resource] if args.key?(:resource)
          @state_change = args[:state_change] if args.key?(:state_change)
        end
      end
      
      # Response message for listing mute configs.
      class ListMuteConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The mute configs from the specified parent.
        # Corresponds to the JSON property `muteConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig>]
        attr_accessor :mute_configs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mute_configs = args[:mute_configs] if args.key?(:mute_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing notification configs.
      class ListNotificationConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Notification configs belonging to the requested parent.
        # Corresponds to the JSON property `notificationConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::NotificationConfig>]
        attr_accessor :notification_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notification_configs = args[:notification_configs] if args.key?(:notification_configs)
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
        # @return [Array<Google::Apis::SecuritycenterV1::Operation>]
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
      
      # Response message to list resource value configs
      class ListResourceValueConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resource value configs from the specified parent.
        # Corresponds to the JSON property `resourceValueConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ResourceValueConfig>]
        attr_accessor :resource_value_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_value_configs = args[:resource_value_configs] if args.key?(:resource_value_configs)
        end
      end
      
      # Response message for listing Security Health Analytics custom modules.
      class ListSecurityHealthAnalyticsCustomModulesResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more custom modules to be returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Custom modules belonging to the requested parent.
        # Corresponds to the JSON property `securityHealthAnalyticsCustomModules`
        # @return [Array<Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>]
        attr_accessor :security_health_analytics_custom_modules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_health_analytics_custom_modules = args[:security_health_analytics_custom_modules] if args.key?(:security_health_analytics_custom_modules)
        end
      end
      
      # Response message for listing sources.
      class ListSourcesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Sources belonging to the requested parent.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1::Source>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Response message for listing the valued resources for a given simulation.
      class ListValuedResourcesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The estimated total number of results matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # The valued resources that the attack path simulation identified.
        # Corresponds to the JSON property `valuedResources`
        # @return [Array<Google::Apis::SecuritycenterV1::ValuedResource>]
        attr_accessor :valued_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @valued_resources = args[:valued_resources] if args.key?(:valued_resources)
        end
      end
      
      # Contains information related to the load balancer associated with the finding.
      class LoadBalancer
        include Google::Apis::Core::Hashable
      
        # The name of the load balancer associated with the finding.
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
      
      # An individual entry in a log.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # Metadata taken from a [Cloud Logging LogEntry](https://cloud.google.com/
        # logging/docs/reference/v2/rest/v2/LogEntry)
        # Corresponds to the JSON property `cloudLoggingEntry`
        # @return [Google::Apis::SecuritycenterV1::CloudLoggingEntry]
        attr_accessor :cloud_logging_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_entry = args[:cloud_logging_entry] if args.key?(:cloud_logging_entry)
        end
      end
      
      # A signature corresponding to memory page hashes.
      class MemoryHashSignature
        include Google::Apis::Core::Hashable
      
        # The binary family.
        # Corresponds to the JSON property `binaryFamily`
        # @return [String]
        attr_accessor :binary_family
      
        # The list of memory hash detections contributing to the binary family match.
        # Corresponds to the JSON property `detections`
        # @return [Array<Google::Apis::SecuritycenterV1::Detection>]
        attr_accessor :detections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_family = args[:binary_family] if args.key?(:binary_family)
          @detections = args[:detections] if args.key?(:detections)
        end
      end
      
      # MITRE ATT&CK tactics and techniques related to this finding. See: https://
      # attack.mitre.org
      class MitreAttack
        include Google::Apis::Core::Hashable
      
        # Additional MITRE ATT&CK tactics related to this finding, if any.
        # Corresponds to the JSON property `additionalTactics`
        # @return [Array<String>]
        attr_accessor :additional_tactics
      
        # Additional MITRE ATT&CK techniques related to this finding, if any, along with
        # any of their respective parent techniques.
        # Corresponds to the JSON property `additionalTechniques`
        # @return [Array<String>]
        attr_accessor :additional_techniques
      
        # The MITRE ATT&CK tactic most closely represented by this finding, if any.
        # Corresponds to the JSON property `primaryTactic`
        # @return [String]
        attr_accessor :primary_tactic
      
        # The MITRE ATT&CK technique most closely represented by this finding, if any.
        # primary_techniques is a repeated field because there are multiple levels of
        # MITRE ATT&CK techniques. If the technique most closely represented by this
        # finding is a sub-technique (e.g. `SCANNING_IP_BLOCKS`), both the sub-technique
        # and its parent technique(s) will be listed (e.g. `SCANNING_IP_BLOCKS`, `
        # ACTIVE_SCANNING`).
        # Corresponds to the JSON property `primaryTechniques`
        # @return [Array<String>]
        attr_accessor :primary_techniques
      
        # The MITRE ATT&CK version referenced by the above fields. E.g. "8".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_tactics = args[:additional_tactics] if args.key?(:additional_tactics)
          @additional_techniques = args[:additional_techniques] if args.key?(:additional_techniques)
          @primary_tactic = args[:primary_tactic] if args.key?(:primary_tactic)
          @primary_techniques = args[:primary_techniques] if args.key?(:primary_techniques)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Kubernetes nodes associated with the finding.
      class Node
        include Google::Apis::Core::Hashable
      
        # [Full resource name](https://google.aip.dev/122#full-resource-names) of the
        # Compute Engine VM running the cluster node.
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
      
      # Provides GKE node pool information.
      class NodePool
        include Google::Apis::Core::Hashable
      
        # Kubernetes node pool name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Nodes associated with the finding.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1::Node>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # Cloud Security Command Center (Cloud SCC) notification configs. A notification
      # config is a Cloud SCC resource that contains the configuration to send
      # notifications for create/update events of findings, assets and etc.
      class NotificationConfig
        include Google::Apis::Core::Hashable
      
        # The description of the notification config (max of 1024 characters).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The relative resource name of this notification config. See: https://cloud.
        # google.com/apis/design/resource_names#relative_resource_name Example: "
        # organizations/`organization_id`/notificationConfigs/notify_public_bucket", "
        # folders/`folder_id`/notificationConfigs/notify_public_bucket", or "projects/`
        # project_id`/notificationConfigs/notify_public_bucket".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Pub/Sub topic to send notifications to. Its format is "projects/[
        # project_id]/topics/[topic]".
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # Output only. The service account that needs "pubsub.topics.publish" permission
        # to publish to the Pub/Sub topic.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The config for streaming-based notifications, which send each event as soon as
        # it is detected.
        # Corresponds to the JSON property `streamingConfig`
        # @return [Google::Apis::SecuritycenterV1::StreamingConfig]
        attr_accessor :streaming_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @service_account = args[:service_account] if args.key?(:service_account)
          @streaming_config = args[:streaming_config] if args.key?(:streaming_config)
        end
      end
      
      # Kubernetes object related to the finding, uniquely identified by GKNN. Used if
      # the object Kind is not one of Pod, Node, NodePool, Binding, or AccessReview.
      class Object
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1::Container>]
        attr_accessor :containers
      
        # Kubernetes object group, such as "policy.k8s.io/v1".
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Kubernetes object kind, such as "Namespace".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Kubernetes object name. For details see https://kubernetes.io/docs/concepts/
        # overview/working-with-objects/names/.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Kubernetes object namespace. Must be a valid DNS label. Named "ns" to avoid
        # collision with C++ namespace keyword. For details see https://kubernetes.io/
        # docs/tasks/administer-cluster/namespaces/.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @group = args[:group] if args.key?(:group)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
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
        # @return [Google::Apis::SecuritycenterV1::Status]
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
      
      # Contains information about the org policies associated with the finding.
      class OrgPolicy
        include Google::Apis::Core::Hashable
      
        # The resource name of the org policy. Example: "organizations/`organization_id`/
        # policies/`constraint_name`"
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
      
      # User specified settings that are attached to the Security Command Center
      # organization.
      class OrganizationSettings
        include Google::Apis::Core::Hashable
      
        # The configuration used for Asset Discovery runs.
        # Corresponds to the JSON property `assetDiscoveryConfig`
        # @return [Google::Apis::SecuritycenterV1::AssetDiscoveryConfig]
        attr_accessor :asset_discovery_config
      
        # A flag that indicates if Asset Discovery should be enabled. If the flag is set
        # to `true`, then discovery of assets will occur. If it is set to `false`, all
        # historical assets will remain, but discovery of future assets will not occur.
        # Corresponds to the JSON property `enableAssetDiscovery`
        # @return [Boolean]
        attr_accessor :enable_asset_discovery
        alias_method :enable_asset_discovery?, :enable_asset_discovery
      
        # The relative resource name of the settings. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/organizationSettings".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_discovery_config = args[:asset_discovery_config] if args.key?(:asset_discovery_config)
          @enable_asset_discovery = args[:enable_asset_discovery] if args.key?(:enable_asset_discovery)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Package is a generic definition of a package.
      class Package
        include Google::Apis::Core::Hashable
      
        # The CPE URI where the vulnerability was detected.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The name of the package where the vulnerability was detected.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Type of package, for example, os, maven, or go.
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # The version of the package.
        # Corresponds to the JSON property `packageVersion`
        # @return [String]
        attr_accessor :package_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_type = args[:package_type] if args.key?(:package_type)
          @package_version = args[:package_version] if args.key?(:package_version)
        end
      end
      
      # A finding that is associated with this node in the attack path.
      class PathNodeAssociatedFinding
        include Google::Apis::Core::Hashable
      
        # Canonical name of the associated findings. Example: organizations/123/sources/
        # 456/findings/789
        # Corresponds to the JSON property `canonicalFinding`
        # @return [String]
        attr_accessor :canonical_finding
      
        # The additional taxonomy group within findings from a given source.
        # Corresponds to the JSON property `findingCategory`
        # @return [String]
        attr_accessor :finding_category
      
        # Full resource name of the finding.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_finding = args[:canonical_finding] if args.key?(:canonical_finding)
          @finding_category = args[:finding_category] if args.key?(:finding_category)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A Kubernetes Pod.
      class Pod
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1::Container>]
        attr_accessor :containers
      
        # Pod labels. For Kubernetes containers, these are applied to the container.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1::Label>]
        attr_accessor :labels
      
        # Kubernetes Pod name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Kubernetes Pod namespace.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
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
        # @return [Array<Google::Apis::SecuritycenterV1::AuditConfig>]
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
        # @return [Array<Google::Apis::SecuritycenterV1::Binding>]
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
      
      # The policy field that violates the deployed posture and its expected and and
      # detected values.
      class PolicyDriftDetails
        include Google::Apis::Core::Hashable
      
        # The detected value that violates the deployed posture, for example, `false` or
        # `allowed_values=`"projects/22831892”``.
        # Corresponds to the JSON property `detectedValue`
        # @return [String]
        attr_accessor :detected_value
      
        # The value of this field that was configured in a posture, for example, `true`
        # or `allowed_values=`"projects/29831892”``.
        # Corresponds to the JSON property `expectedValue`
        # @return [String]
        attr_accessor :expected_value
      
        # The name of the updated field, for example constraint.implementation.
        # policy_rules[0].enforce
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_value = args[:detected_value] if args.key?(:detected_value)
          @expected_value = args[:expected_value] if args.key?(:expected_value)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # A position in the uploaded text version of a module.
      class Position
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `columnNumber`
        # @return [Fixnum]
        attr_accessor :column_number
      
        # 
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_number = args[:column_number] if args.key?(:column_number)
          @line_number = args[:line_number] if args.key?(:line_number)
        end
      end
      
      # Represents an operating system process.
      class Process
        include Google::Apis::Core::Hashable
      
        # Process arguments as JSON encoded strings.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # True if `args` is incomplete.
        # Corresponds to the JSON property `argumentsTruncated`
        # @return [Boolean]
        attr_accessor :arguments_truncated
        alias_method :arguments_truncated?, :arguments_truncated
      
        # File information about the related binary/library used by an executable, or
        # the script used by a script interpreter
        # Corresponds to the JSON property `binary`
        # @return [Google::Apis::SecuritycenterV1::File]
        attr_accessor :binary
      
        # Process environment variables.
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1::EnvironmentVariable>]
        attr_accessor :env_variables
      
        # True if `env_variables` is incomplete.
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # File information for libraries loaded by the process.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1::File>]
        attr_accessor :libraries
      
        # The process name, as displayed in utilities like `top` and `ps`. This name can
        # be accessed through `/proc/[pid]/comm` and changed with `prctl(PR_SET_NAME)`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The parent process ID.
        # Corresponds to the JSON property `parentPid`
        # @return [Fixnum]
        attr_accessor :parent_pid
      
        # The process ID.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # File information about the related binary/library used by an executable, or
        # the script used by a script interpreter
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::SecuritycenterV1::File]
        attr_accessor :script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @arguments_truncated = args[:arguments_truncated] if args.key?(:arguments_truncated)
          @binary = args[:binary] if args.key?(:binary)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @env_variables_truncated = args[:env_variables_truncated] if args.key?(:env_variables_truncated)
          @libraries = args[:libraries] if args.key?(:libraries)
          @name = args[:name] if args.key?(:name)
          @parent_pid = args[:parent_pid] if args.key?(:parent_pid)
          @pid = args[:pid] if args.key?(:pid)
          @script = args[:script] if args.key?(:script)
        end
      end
      
      # Indicates what signature matched this process.
      class ProcessSignature
        include Google::Apis::Core::Hashable
      
        # A signature corresponding to memory page hashes.
        # Corresponds to the JSON property `memoryHashSignature`
        # @return [Google::Apis::SecuritycenterV1::MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # Describes the type of resource associated with the signature.
        # Corresponds to the JSON property `signatureType`
        # @return [String]
        attr_accessor :signature_type
      
        # A signature corresponding to a YARA rule.
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1::YaraRuleSignature]
        attr_accessor :yara_rule_signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_hash_signature = args[:memory_hash_signature] if args.key?(:memory_hash_signature)
          @signature_type = args[:signature_type] if args.key?(:signature_type)
          @yara_rule_signature = args[:yara_rule_signature] if args.key?(:yara_rule_signature)
        end
      end
      
      # Additional Links
      class Reference
        include Google::Apis::Core::Hashable
      
        # Source of the reference e.g. NVD
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Uri for the mentioned source e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?
        # name=CVE-2021-34527.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Information related to the Google Cloud resource that is associated with this
      # finding.
      class Resource
        include Google::Apis::Core::Hashable
      
        # The human readable name of the resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Contains a Folder message for each folder in the assets ancestry. The first
        # folder is the deepest nested folder, and the last folder is the folder
        # directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1::Folder>]
        attr_accessor :folders
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parentName`
        # @return [String]
        attr_accessor :parent_name
      
        # The project ID that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `projectName`
        # @return [String]
        attr_accessor :project_name
      
        # The full resource type of the resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @folders = args[:folders] if args.key?(:folders)
          @name = args[:name] if args.key?(:name)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @parent_name = args[:parent_name] if args.key?(:parent_name)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @project_name = args[:project_name] if args.key?(:project_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Metadata about a ResourceValueConfig. For example, id and name.
      class ResourceValueConfigMetadata
        include Google::Apis::Core::Hashable
      
        # Resource value config name
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
      
      # Kubernetes Role or ClusterRole.
      class Role
        include Google::Apis::Core::Hashable
      
        # Role type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Role name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Role namespace.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # Request message for running asset discovery for an organization.
      class RunAssetDiscoveryRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SecurityBulletin are notifications of vulnerabilities of Google products.
      class SecurityBulletin
        include Google::Apis::Core::Hashable
      
        # ID of the bulletin corresponding to the vulnerability.
        # Corresponds to the JSON property `bulletinId`
        # @return [String]
        attr_accessor :bulletin_id
      
        # Submission time of this Security Bulletin.
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        # This represents a version that the cluster receiving this notification should
        # be upgraded to, based on its current version. For example, 1.15.0
        # Corresponds to the JSON property `suggestedUpgradeVersion`
        # @return [String]
        attr_accessor :suggested_upgrade_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bulletin_id = args[:bulletin_id] if args.key?(:bulletin_id)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
          @suggested_upgrade_version = args[:suggested_upgrade_version] if args.key?(:suggested_upgrade_version)
        end
      end
      
      # Security Command Center managed properties. These properties are managed by
      # Security Command Center and cannot be modified by the user.
      class SecurityCenterProperties
        include Google::Apis::Core::Hashable
      
        # Contains a Folder message for each folder in the assets ancestry. The first
        # folder is the deepest nested folder, and the last folder is the folder
        # directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1::Folder>]
        attr_accessor :folders
      
        # The user defined display name for this resource.
        # Corresponds to the JSON property `resourceDisplayName`
        # @return [String]
        attr_accessor :resource_display_name
      
        # The full resource name of the Google Cloud resource this asset represents.
        # This field is immutable after create time. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Owners of the Google Cloud resource.
        # Corresponds to the JSON property `resourceOwners`
        # @return [Array<String>]
        attr_accessor :resource_owners
      
        # The full resource name of the immediate parent of the resource. See: https://
        # cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceParent`
        # @return [String]
        attr_accessor :resource_parent
      
        # The user defined display name for the parent of this resource.
        # Corresponds to the JSON property `resourceParentDisplayName`
        # @return [String]
        attr_accessor :resource_parent_display_name
      
        # The full resource name of the project the resource belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceProject`
        # @return [String]
        attr_accessor :resource_project
      
        # The user defined display name for the project of this resource.
        # Corresponds to the JSON property `resourceProjectDisplayName`
        # @return [String]
        attr_accessor :resource_project_display_name
      
        # The type of the Google Cloud resource. Examples include: APPLICATION, PROJECT,
        # and ORGANIZATION. This is a case insensitive field defined by Security Command
        # Center and/or the producer of the resource and is immutable after create time.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @resource_display_name = args[:resource_display_name] if args.key?(:resource_display_name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_owners = args[:resource_owners] if args.key?(:resource_owners)
          @resource_parent = args[:resource_parent] if args.key?(:resource_parent)
          @resource_parent_display_name = args[:resource_parent_display_name] if args.key?(:resource_parent_display_name)
          @resource_project = args[:resource_project] if args.key?(:resource_project)
          @resource_project_display_name = args[:resource_project_display_name] if args.key?(:resource_project_display_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class SecurityMarks
        include Google::Apis::Core::Hashable
      
        # The canonical name of the marks. Examples: "organizations/`organization_id`/
        # assets/`asset_id`/securityMarks" "folders/`folder_id`/assets/`asset_id`/
        # securityMarks" "projects/`project_number`/assets/`asset_id`/securityMarks" "
        # organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "folders/`folder_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "projects/`project_number`/sources/`source_id`/findings/`
        # finding_id`/securityMarks"
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name Examples: "organizations/`
        # organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a posture that is deployed on Google Cloud by the Security Command
      # Center Posture Management service. A posture contains one or more policy sets.
      # A policy set is a group of policies that enforce a set of security rules on
      # Google Cloud.
      class SecurityPosture
        include Google::Apis::Core::Hashable
      
        # The name of the updated policy, for example, `projects/`project_id`/policies/`
        # constraint_name``.
        # Corresponds to the JSON property `changedPolicy`
        # @return [String]
        attr_accessor :changed_policy
      
        # Name of the posture, for example, `CIS-Posture`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the updated policy, for example, `compute-policy-1`.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # The details about a change in an updated policy that violates the deployed
        # posture.
        # Corresponds to the JSON property `policyDriftDetails`
        # @return [Array<Google::Apis::SecuritycenterV1::PolicyDriftDetails>]
        attr_accessor :policy_drift_details
      
        # The name of the updated policyset, for example, `cis-policyset`.
        # Corresponds to the JSON property `policySet`
        # @return [String]
        attr_accessor :policy_set
      
        # The name of the posture deployment, for example, `organizations/`org_id`/
        # posturedeployments/`posture_deployment_id``.
        # Corresponds to the JSON property `postureDeployment`
        # @return [String]
        attr_accessor :posture_deployment
      
        # The project, folder, or organization on which the posture is deployed, for
        # example, `projects/`project_number``.
        # Corresponds to the JSON property `postureDeploymentResource`
        # @return [String]
        attr_accessor :posture_deployment_resource
      
        # The version of the posture, for example, `c7cfa2a8`.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_policy = args[:changed_policy] if args.key?(:changed_policy)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @policy_drift_details = args[:policy_drift_details] if args.key?(:policy_drift_details)
          @policy_set = args[:policy_set] if args.key?(:policy_set)
          @posture_deployment = args[:posture_deployment] if args.key?(:posture_deployment)
          @posture_deployment_resource = args[:posture_deployment_resource] if args.key?(:posture_deployment_resource)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Identity delegation history of an authenticated service account.
      class ServiceAccountDelegationInfo
        include Google::Apis::Core::Hashable
      
        # The email address of a Google account.
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # A string representing the principal_subject associated with the identity. As
        # compared to `principal_email`, supports principals that aren't associated with
        # email addresses, such as third party principals. For most identities, the
        # format will be `principal://iam.googleapis.com/`identity pool name`/subjects/`
        # subject`` except for some GKE identities (GKE_WORKLOAD, FREEFORM,
        # GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:`
        # identity pool name`[`subject`]`
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
        end
      end
      
      # Request message for updating a finding's state.
      class SetFindingStateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The time at which the updated state takes effect.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The desired State of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
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
        # @return [Google::Apis::SecuritycenterV1::Policy]
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
      
      # Request message for updating a finding's mute status.
      class SetMuteRequest
        include Google::Apis::Core::Hashable
      
        # Required. The desired state of the Mute.
        # Corresponds to the JSON property `mute`
        # @return [String]
        attr_accessor :mute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mute = args[:mute] if args.key?(:mute)
        end
      end
      
      # Request message to simulate a CustomConfig against a given test resource.
      # Maximum size of the request is 4 MB by default.
      class SimulateSecurityHealthAnalyticsCustomModuleRequest
        include Google::Apis::Core::Hashable
      
        # Defines the properties in a custom module configuration for Security Health
        # Analytics. Use the custom module configuration to create custom detectors that
        # generate custom findings for resources that you specify.
        # Corresponds to the JSON property `customConfig`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1CustomConfig]
        attr_accessor :custom_config
      
        # Manually constructed resource name. If the custom module evaluates against
        # only the resource data, you can omit the `iam_policy_data` field. If it
        # evaluates only the `iam_policy_data` field, you can omit the resource data.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::SimulatedResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_config = args[:custom_config] if args.key?(:custom_config)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Response message for simulating a `SecurityHealthAnalyticsCustomModule`
      # against a given resource.
      class SimulateSecurityHealthAnalyticsCustomModuleResponse
        include Google::Apis::Core::Hashable
      
        # Possible test result.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::SecuritycenterV1::SimulatedResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Manually constructed resource name. If the custom module evaluates against
      # only the resource data, you can omit the `iam_policy_data` field. If it
      # evaluates only the `iam_policy_data` field, you can omit the resource data.
      class SimulatedResource
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
        # Corresponds to the JSON property `iamPolicyData`
        # @return [Google::Apis::SecuritycenterV1::Policy]
        attr_accessor :iam_policy_data
      
        # Optional. A representation of the Google Cloud resource. Should match the
        # Google Cloud resource JSON format.
        # Corresponds to the JSON property `resourceData`
        # @return [Hash<String,Object>]
        attr_accessor :resource_data
      
        # Required. The type of the resource, for example, `compute.googleapis.com/Disk`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_policy_data = args[:iam_policy_data] if args.key?(:iam_policy_data)
          @resource_data = args[:resource_data] if args.key?(:resource_data)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Possible test result.
      class SimulatedResult
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SecuritycenterV1::Status]
        attr_accessor :error
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::Finding]
        attr_accessor :finding
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `noViolation`
        # @return [Google::Apis::SecuritycenterV1::Empty]
        attr_accessor :no_violation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @finding = args[:finding] if args.key?(:finding)
          @no_violation = args[:no_violation] if args.key?(:no_violation)
        end
      end
      
      # Attack path simulation
      class Simulation
        include Google::Apis::Core::Hashable
      
        # Output only. Time simulation was created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Full resource name of the Simulation: organizations/123/simulations/456
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource value configurations' metadata used in this simulation. Maximum of
        # 100.
        # Corresponds to the JSON property `resourceValueConfigsMetadata`
        # @return [Array<Google::Apis::SecuritycenterV1::ResourceValueConfigMetadata>]
        attr_accessor :resource_value_configs_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @resource_value_configs_metadata = args[:resource_value_configs_metadata] if args.key?(:resource_value_configs_metadata)
        end
      end
      
      # Security Command Center finding source. A finding source is an entity or a
      # mechanism that can produce a finding. A source is like a container of findings
      # that come from the same scanner, logger, monitor, and other tools.
      class Source
        include Google::Apis::Core::Hashable
      
        # The canonical name of the finding source. It's either "organizations/`
        # organization_id`/sources/`source_id`", "folders/`folder_id`/sources/`source_id`
        # ", or "projects/`project_number`/sources/`source_id`", depending on the
        # closest CRM ancestor of the resource associated with the finding.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The description of the source (max of 1024 characters). Example: "Web Security
        # Scanner is a web security scanner for common vulnerabilities in App Engine
        # applications. It can automatically scan and detect four common vulnerabilities,
        # including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in
        # HTTPS), and outdated or insecure libraries."
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The source's display name. A source's display name must be unique amongst its
        # siblings, for example, two sources with the same parent can't share the same
        # display name. The display name must have a length between 1 and 64 characters (
        # inclusive).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The relative resource name of this source. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # The config for streaming-based notifications, which send each event as soon as
      # it is detected.
      class StreamingConfig
        include Google::Apis::Core::Hashable
      
        # Expression that defines the filter to apply across create/update events of
        # assets or findings as specified by the event type. The expression is a list of
        # zero or more restrictions combined via logical operators `AND` and `OR`.
        # Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. The fields map to those defined in the corresponding
        # resource. The supported operators are: * `=` for all value types. * `>`, `<`, `
        # >=`, `<=` for integer values. * `:`, meaning substring matching, for strings.
        # The supported value types are: * string literals in quotes. * integer literals
        # without quotes. * boolean literals `true` and `false` without quotes.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Represents a Kubernetes subject.
      class Subject
        include Google::Apis::Core::Hashable
      
        # Authentication type for the subject.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name for the subject.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace for the subject.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
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
      
      # Information about the ticket, if any, that is being used to track the
      # resolution of the issue that is identified by this finding.
      class TicketInfo
        include Google::Apis::Core::Hashable
      
        # The assignee of the ticket in the ticket system.
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # The description of the ticket in the ticket system.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The identifier of the ticket in the ticket system.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The latest status of the ticket, as reported by the ticket system.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The time when the ticket was last updated, as reported by the ticket system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The link to the ticket in the ticket system.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] if args.key?(:assignee)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Request to validate an Event Threat Detection custom module.
      class ValidateEventThreatDetectionCustomModuleRequest
        include Google::Apis::Core::Hashable
      
        # Required. The raw text of the module's contents. Used to generate error
        # messages.
        # Corresponds to the JSON property `rawText`
        # @return [String]
        attr_accessor :raw_text
      
        # Required. The type of the module (e.g. CONFIGURABLE_BAD_IP).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @raw_text = args[:raw_text] if args.key?(:raw_text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response to validating an Event Threat Detection custom module.
      class ValidateEventThreatDetectionCustomModuleResponse
        include Google::Apis::Core::Hashable
      
        # A list of zero or more errors encountered while validating the uploaded
        # configuration of an Event Threat Detection Custom Module.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::SecuritycenterV1::CustomModuleValidationErrors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # A resource that is determined to have value to a user's system
      class ValuedResource
        include Google::Apis::Core::Hashable
      
        # Human-readable name of the valued resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Exposed score for this valued resource. A value of 0 means no exposure was
        # detected exposure.
        # Corresponds to the JSON property `exposedScore`
        # @return [Float]
        attr_accessor :exposed_score
      
        # Valued resource name, for example, e.g.: `organizations/123/simulations/456/
        # valuedResources/789`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The [full resource name](https://cloud.google.com/apis/design/resource_names#
        # full_resource_name) of the valued resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The [resource type](https://cloud.google.com/asset-inventory/docs/supported-
        # asset-types) of the valued resource.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # How valuable this resource is.
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # List of resource value configurations' metadata used to determine the value of
        # this resource. Maximum of 100.
        # Corresponds to the JSON property `resourceValueConfigsUsed`
        # @return [Array<Google::Apis::SecuritycenterV1::ResourceValueConfigMetadata>]
        attr_accessor :resource_value_configs_used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @exposed_score = args[:exposed_score] if args.key?(:exposed_score)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
          @resource_value_configs_used = args[:resource_value_configs_used] if args.key?(:resource_value_configs_used)
        end
      end
      
      # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
      class Vulnerability
        include Google::Apis::Core::Hashable
      
        # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
        # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
        # vulnerability.
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1::Cve]
        attr_accessor :cve
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [Google::Apis::SecuritycenterV1::Package]
        attr_accessor :fixed_package
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `offendingPackage`
        # @return [Google::Apis::SecuritycenterV1::Package]
        attr_accessor :offending_package
      
        # SecurityBulletin are notifications of vulnerabilities of Google products.
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1::SecurityBulletin]
        attr_accessor :security_bulletin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @offending_package = args[:offending_package] if args.key?(:offending_package)
          @security_bulletin = args[:security_bulletin] if args.key?(:security_bulletin)
        end
      end
      
      # A signature corresponding to a YARA rule.
      class YaraRuleSignature
        include Google::Apis::Core::Hashable
      
        # The name of the YARA rule.
        # Corresponds to the JSON property `yaraRule`
        # @return [String]
        attr_accessor :yara_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @yara_rule = args[:yara_rule] if args.key?(:yara_rule)
        end
      end
    end
  end
end
