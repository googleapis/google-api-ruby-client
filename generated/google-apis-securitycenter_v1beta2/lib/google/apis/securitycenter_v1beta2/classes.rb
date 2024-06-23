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
    module SecuritycenterV1beta2
      
      # Represents an access event.
      class Access
        include Google::Apis::Core::Hashable
      
        # Caller's IP address, such as "1.1.1.1".
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # Represents a geographical location for a given access.
        # Corresponds to the JSON property `callerIpGeo`
        # @return [Google::Apis::SecuritycenterV1beta2::Geolocation]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ServiceAccountDelegationInfo>]
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
      
      # Information about [Google Cloud Armor Adaptive Protection](https://cloud.
      # google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-
      # protection).
      class AdaptiveProtection
        include Google::Apis::Core::Hashable
      
        # A score of 0 means that there is low confidence that the detected event is an
        # actual attack. A score of 1 means that there is high confidence that the
        # detected event is an attack. See the [Adaptive Protection documentation](https:
        # //cloud.google.com/armor/docs/adaptive-protection-overview#configure-alert-
        # tuning) for further explanation.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
        end
      end
      
      # Represents an application associated with a finding.
      class Application
        include Google::Apis::Core::Hashable
      
        # The base URI that identifies the network location of the application in which
        # the vulnerability was detected. For example, `http://example.com`.
        # Corresponds to the JSON property `baseUri`
        # @return [String]
        attr_accessor :base_uri
      
        # The full URI with payload that can be used to reproduce the vulnerability. For
        # example, `http://example.com?p=aMmYgI6H`.
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
      
      # Information about DDoS attack volume and classification.
      class Attack
        include Google::Apis::Core::Hashable
      
        # Type of attack, for example, 'SYN-flood', 'NTP-udp', or 'CHARGEN-udp'.
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # Total BPS (bytes per second) volume of attack.
        # Corresponds to the JSON property `volumeBps`
        # @return [Fixnum]
        attr_accessor :volume_bps
      
        # Total PPS (packets per second) volume of attack.
        # Corresponds to the JSON property `volumePps`
        # @return [Fixnum]
        attr_accessor :volume_pps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @volume_bps = args[:volume_bps] if args.key?(:volume_bps)
          @volume_pps = args[:volume_pps] if args.key?(:volume_pps)
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
      
      # An AWS account that is a member of an organization.
      class AwsAccount
        include Google::Apis::Core::Hashable
      
        # The unique identifier (ID) of the account, containing exactly 12 digits.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The friendly name of this account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # AWS metadata associated with the resource, only applicable if the finding's
      # cloud provider is Amazon Web Services.
      class AwsMetadata
        include Google::Apis::Core::Hashable
      
        # An AWS account that is a member of an organization.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::SecuritycenterV1beta2::AwsAccount]
        attr_accessor :account
      
        # An organization is a collection of accounts that are centrally managed
        # together using consolidated billing, organized hierarchically with
        # organizational units (OUs), and controlled with policies.
        # Corresponds to the JSON property `organization`
        # @return [Google::Apis::SecuritycenterV1beta2::AwsOrganization]
        attr_accessor :organization
      
        # A list of AWS organizational units associated with the resource, ordered from
        # lowest level (closest to the account) to highest level.
        # Corresponds to the JSON property `organizationalUnits`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::AwsOrganizationalUnit>]
        attr_accessor :organizational_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_units = args[:organizational_units] if args.key?(:organizational_units)
        end
      end
      
      # An organization is a collection of accounts that are centrally managed
      # together using consolidated billing, organized hierarchically with
      # organizational units (OUs), and controlled with policies.
      class AwsOrganization
        include Google::Apis::Core::Hashable
      
        # The unique identifier (ID) for the organization. The regex pattern for an
        # organization ID string requires "o-" followed by from 10 to 32 lowercase
        # letters or digits.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # An Organizational Unit (OU) is a container of AWS accounts within a root of an
      # organization. Policies that are attached to an OU apply to all accounts
      # contained in that OU and in any child OUs.
      class AwsOrganizationalUnit
        include Google::Apis::Core::Hashable
      
        # The unique identifier (ID) associated with this OU. The regex pattern for an
        # organizational unit ID string requires "ou-" followed by from 4 to 32
        # lowercase letters or digits (the ID of the root that contains the OU). This
        # string is followed by a second "-" dash and from 8 to 32 additional lowercase
        # letters or digits. For example, "ou-ab12-cd34ef56".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The friendly name of the OU.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents an Azure management group.
      class AzureManagementGroup
        include Google::Apis::Core::Hashable
      
        # The display name of the Azure management group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The UUID of the Azure management group, for example, "20000000-0001-0000-0000-
        # 000000000000".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Azure metadata associated with the resource, only applicable if the finding's
      # cloud provider is Microsoft Azure.
      class AzureMetadata
        include Google::Apis::Core::Hashable
      
        # A list of Azure management groups associated with the resource, ordered from
        # lowest level (closest to the subscription) to highest level.
        # Corresponds to the JSON property `managementGroups`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::AzureManagementGroup>]
        attr_accessor :management_groups
      
        # Represents an Azure resource group.
        # Corresponds to the JSON property `resourceGroup`
        # @return [Google::Apis::SecuritycenterV1beta2::AzureResourceGroup]
        attr_accessor :resource_group
      
        # Represents an Azure subscription.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::SecuritycenterV1beta2::AzureSubscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management_groups = args[:management_groups] if args.key?(:management_groups)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Represents an Azure resource group.
      class AzureResourceGroup
        include Google::Apis::Core::Hashable
      
        # The name of the Azure resource group. This is not a UUID.
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
      
      # Represents an Azure subscription.
      class AzureSubscription
        include Google::Apis::Core::Hashable
      
        # The display name of the Azure subscription.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The UUID of the Azure subscription, for example, "291bba3f-e0a5-47bc-a099-
        # 3bdcb2a50a05".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Information related to Google Cloud Backup and DR Service findings.
      class BackupDisasterRecovery
        include Google::Apis::Core::Hashable
      
        # The name of the Backup and DR appliance that captures, moves, and manages the
        # lifecycle of backup data. For example, `backup-server-57137`.
        # Corresponds to the JSON property `appliance`
        # @return [String]
        attr_accessor :appliance
      
        # The names of Backup and DR applications. An application is a VM, database, or
        # file system on a managed host monitored by a backup and recovery appliance.
        # For example, `centos7-01-vol00`, `centos7-01-vol01`, `centos7-01-vol02`.
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
        # For example, `snap-ov`.
        # Corresponds to the JSON property `backupTemplate`
        # @return [String]
        attr_accessor :backup_template
      
        # The backup type of the Backup and DR image. For example, `Snapshot`, `Remote
        # Snapshot`, `OnVault`.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # The name of a Backup and DR host, which is managed by the backup and recovery
        # appliance and known to the management console. The host can be of type Generic
        # (for example, Compute Engine, SQL Server, Oracle DB, SMB file system, etc.),
        # vCenter, or an ESX server. See the [Backup and DR documentation on hosts](
        # https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-
        # hosts-and-their-applications) for more information. For example, `centos7-01`.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The names of Backup and DR policies that are associated with a template and
        # that define when to run a backup, how frequently to run a backup, and how long
        # to retain the backup image. For example, `onvaults`.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # The names of Backup and DR advanced policy options of a policy applying to an
        # application. See the [Backup and DR documentation on policy options](https://
        # cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings).
        # For example, `skipofflineappsincongrp, nounmap`.
        # Corresponds to the JSON property `policyOptions`
        # @return [Array<String>]
        attr_accessor :policy_options
      
        # The name of the Backup and DR resource profile that specifies the storage
        # media for backups of application and VM data. See the [Backup and DR
        # documentation on profiles](https://cloud.google.com/backup-disaster-recovery/
        # docs/concepts/backup-plan#profile). For example, `GCP`.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # The name of the Backup and DR storage pool that the backup and recovery
        # appliance is storing data in. The storage pool could be of type Cloud, Primary,
        # Snapshot, or OnVault. See the [Backup and DR documentation on storage pools](
        # https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools).
        # For example, `DiskPoolOne`.
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
      
      # Fields related to Google Cloud Armor findings.
      class CloudArmor
        include Google::Apis::Core::Hashable
      
        # Information about [Google Cloud Armor Adaptive Protection](https://cloud.
        # google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-
        # protection).
        # Corresponds to the JSON property `adaptiveProtection`
        # @return [Google::Apis::SecuritycenterV1beta2::AdaptiveProtection]
        attr_accessor :adaptive_protection
      
        # Information about DDoS attack volume and classification.
        # Corresponds to the JSON property `attack`
        # @return [Google::Apis::SecuritycenterV1beta2::Attack]
        attr_accessor :attack
      
        # Duration of attack from the start until the current moment (updated every 5
        # minutes).
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Information about the requests relevant to the finding.
        # Corresponds to the JSON property `requests`
        # @return [Google::Apis::SecuritycenterV1beta2::Requests]
        attr_accessor :requests
      
        # Information about the [Google Cloud Armor security policy](https://cloud.
        # google.com/armor/docs/security-policy-overview) relevant to the finding.
        # Corresponds to the JSON property `securityPolicy`
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityPolicy]
        attr_accessor :security_policy
      
        # Distinguish between volumetric & protocol DDoS attack and application layer
        # attacks. For example, "L3_4" for Layer 3 and Layer 4 DDoS attacks, or "L_7"
        # for Layer 7 DDoS attacks.
        # Corresponds to the JSON property `threatVector`
        # @return [String]
        attr_accessor :threat_vector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adaptive_protection = args[:adaptive_protection] if args.key?(:adaptive_protection)
          @attack = args[:attack] if args.key?(:attack)
          @duration = args[:duration] if args.key?(:duration)
          @requests = args[:requests] if args.key?(:requests)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
          @threat_vector = args[:threat_vector] if args.key?(:threat_vector)
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
      
        # The cloud provider for the compliance snapshot.
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
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
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @compliance_standard = args[:compliance_standard] if args.key?(:compliance_standard)
          @compliance_version = args[:compliance_version] if args.key?(:compliance_version)
          @count = args[:count] if args.key?(:count)
          @leaf_container_resource = args[:leaf_container_resource] if args.key?(:leaf_container_resource)
          @name = args[:name] if args.key?(:name)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Configuration of a module.
      class Config
        include Google::Apis::Core::Hashable
      
        # The state of enablement for the module at its level of the resource hierarchy.
        # Corresponds to the JSON property `moduleEnablementState`
        # @return [String]
        attr_accessor :module_enablement_state
      
        # The configuration value for the module. The absence of this field implies its
        # inheritance from the parent.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @module_enablement_state = args[:module_enablement_state] if args.key?(:module_enablement_state)
          @value = args[:value] if args.key?(:value)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Contact>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Label>]
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
      
      # Resource capturing the settings for the Container Threat Detection service.
      class ContainerThreatDetectionSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the ContainerThreatDetectionSettings. Formats: *
        # organizations/`organization`/containerThreatDetectionSettings * folders/`
        # folder`/containerThreatDetectionSettings * projects/`project`/
        # containerThreatDetectionSettings * projects/`project`/locations/`location`/
        # clusters/`cluster`/containerThreatDetectionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account used by Container Threat Detection for
        # scanning. Service accounts are scoped at the project level meaning this field
        # will be empty at any level above a project.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
      # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
      # vulnerability.
      class Cve
        include Google::Apis::Core::Hashable
      
        # Common Vulnerability Scoring System version 3.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1beta2::Cvssv3]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Reference>]
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
      
      # Details of a subscription.
      class Details
        include Google::Apis::Core::Hashable
      
        # The time the subscription has or will end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time the subscription has or will start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The type of subscription
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
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
      
      # Resource capturing the settings for the Event Threat Detection service.
      class EventThreatDetectionSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the EventThreatDetectionSettings. Formats: *
        # organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        # eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ExfilResource>]
        attr_accessor :sources
      
        # If there are multiple targets, each target would get a complete copy of the "
        # joined" source data.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ExfilResource>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::DiskPath]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Access]
        attr_accessor :access
      
        # Represents an application associated with a finding.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta2::Application]
        attr_accessor :application
      
        # An attack exposure contains the results of an attack path simulation run.
        # Corresponds to the JSON property `attackExposure`
        # @return [Google::Apis::SecuritycenterV1beta2::AttackExposure]
        attr_accessor :attack_exposure
      
        # Information related to Google Cloud Backup and DR Service findings.
        # Corresponds to the JSON property `backupDisasterRecovery`
        # @return [Google::Apis::SecuritycenterV1beta2::BackupDisasterRecovery]
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
      
        # Fields related to Google Cloud Armor findings.
        # Corresponds to the JSON property `cloudArmor`
        # @return [Google::Apis::SecuritycenterV1beta2::CloudArmor]
        attr_accessor :cloud_armor
      
        # The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated
        # with the finding.
        # Corresponds to the JSON property `cloudDlpDataProfile`
        # @return [Google::Apis::SecuritycenterV1beta2::CloudDlpDataProfile]
        attr_accessor :cloud_dlp_data_profile
      
        # Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](
        # https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the
        # finding.
        # Corresponds to the JSON property `cloudDlpInspection`
        # @return [Google::Apis::SecuritycenterV1beta2::CloudDlpInspection]
        attr_accessor :cloud_dlp_inspection
      
        # Contains compliance information for security standards associated to the
        # finding.
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Compliance>]
        attr_accessor :compliances
      
        # Contains information about the IP connection associated with the finding.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Connection>]
        attr_accessor :connections
      
        # Output only. Map containing the points of contact for the given finding. The
        # key represents the type of contact, while the value contains a list of all the
        # contacts that pertain. Please refer to: https://cloud.google.com/resource-
        # manager/docs/managing-notification-contacts#notification-categories ` "
        # security": ` "contacts": [ ` "email": "person1@company.com" `, ` "email": "
        # person2@company.com" ` ] ` `
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::ContactDetails>]
        attr_accessor :contacts
      
        # Containers associated with the finding. This field provides information for
        # both Kubernetes and non-Kubernetes containers.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Container>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Database]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Exfiltration]
        attr_accessor :exfiltration
      
        # Output only. Third party SIEM/SOAR fields within SCC, contains external system
        # information and external system finding fields.
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ExternalSystem>]
        attr_accessor :external_systems
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # File associated with the finding.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::File>]
        attr_accessor :files
      
        # The class of the finding.
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # Contains details about groups of which this finding is a member. A group is a
        # collection of findings that are related in some way. This field cannot be
        # updated. Its value is ignored in all update requests.
        # Corresponds to the JSON property `groupMemberships`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GroupMembership>]
        attr_accessor :group_memberships
      
        # Represents IAM bindings associated with the finding.
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::IamBinding>]
        attr_accessor :iam_bindings
      
        # Represents what's commonly known as an _indicator of compromise_ (IoC) in
        # computer forensics. This is an artifact observed on a network or in an
        # operating system that, with high confidence, indicates a computer intrusion.
        # For more information, see [Indicator of compromise](https://en.wikipedia.org/
        # wiki/Indicator_of_compromise).
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1beta2::Indicator]
        attr_accessor :indicator
      
        # Kernel mode rootkit signatures.
        # Corresponds to the JSON property `kernelRootkit`
        # @return [Google::Apis::SecuritycenterV1beta2::KernelRootkit]
        attr_accessor :kernel_rootkit
      
        # Kubernetes-related attributes.
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1beta2::Kubernetes]
        attr_accessor :kubernetes
      
        # The load balancers associated with the finding.
        # Corresponds to the JSON property `loadBalancers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::LoadBalancer>]
        attr_accessor :load_balancers
      
        # Log entries that are relevant to the finding.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::LogEntry>]
        attr_accessor :log_entries
      
        # MITRE ATT&CK tactics and techniques related to this finding. See: https://
        # attack.mitre.org
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1beta2::MitreAttack]
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
      
        # Represents a Jupyter notebook IPYNB file, such as a [Colab Enterprise notebook]
        # (https://cloud.google.com/colab/docs/introduction) file, that is associated
        # with a finding.
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::SecuritycenterV1beta2::Notebook]
        attr_accessor :notebook
      
        # Contains information about the org policies associated with the finding.
        # Corresponds to the JSON property `orgPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::OrgPolicy>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Process>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityMarks]
        attr_accessor :security_marks
      
        # Represents a posture that is deployed on Google Cloud by the Security Command
        # Center Posture Management service. A posture contains one or more policy sets.
        # A policy set is a group of policies that enforce a set of security rules on
        # Google Cloud.
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityPosture]
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
      
        # Contains details about a group of security issues that, when the issues occur
        # together, represent a greater risk than when the issues occur independently. A
        # group of such issues is referred to as a toxic combination.
        # Corresponds to the JSON property `toxicCombination`
        # @return [Google::Apis::SecuritycenterV1beta2::ToxicCombination]
        attr_accessor :toxic_combination
      
        # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1beta2::Vulnerability]
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
          @cloud_armor = args[:cloud_armor] if args.key?(:cloud_armor)
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
          @group_memberships = args[:group_memberships] if args.key?(:group_memberships)
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
          @notebook = args[:notebook] if args.key?(:notebook)
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
          @toxic_combination = args[:toxic_combination] if args.key?(:toxic_combination)
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
      
      # GCP metadata associated with the resource, only applicable if the finding's
      # cloud provider is Google Cloud Platform.
      class GcpMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Contains a Folder message for each folder in the assets ancestry.
        # The first folder is the deepest nested folder, and the last folder is the
        # folder directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Folder>]
        attr_accessor :folders
      
        # The name of the organization that the resource belongs to.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @organization = args[:organization] if args.key?(:organization)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
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
        # @return [Google::Apis::SecuritycenterV1beta2::Role]
        attr_accessor :role
      
        # Represents one or more subjects that are bound to the role. Not always
        # available for PATCH requests.
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Subject>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomOutputSpec]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Expr]
        attr_accessor :predicate
      
        # An explanation of the recommended steps that security teams can take to
        # resolve the detected issue. This explanation is returned with each finding
        # generated by this module in the `nextSteps` property of the finding JSON.
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        # Resource for selecting resource type.
        # Corresponds to the JSON property `resourceSelector`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceSelector]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Property>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomConfig]
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
      
        # The time when the case was closed, as reported by the external system.
        # Corresponds to the JSON property `caseCloseTime`
        # @return [String]
        attr_accessor :case_close_time
      
        # The time when the case was created, as reported by the external system.
        # Corresponds to the JSON property `caseCreateTime`
        # @return [String]
        attr_accessor :case_create_time
      
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
        # @return [Google::Apis::SecuritycenterV1beta2::TicketInfo]
        attr_accessor :ticket_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @case_close_time = args[:case_close_time] if args.key?(:case_close_time)
          @case_create_time = args[:case_create_time] if args.key?(:case_create_time)
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
        # @return [Google::Apis::SecuritycenterV1beta2::Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Resource]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Expr]
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
      
        # AWS metadata associated with the resource, only applicable if the finding's
        # cloud provider is Amazon Web Services.
        # Corresponds to the JSON property `awsMetadata`
        # @return [Google::Apis::SecuritycenterV1beta2::AwsMetadata]
        attr_accessor :aws_metadata
      
        # Azure metadata associated with the resource, only applicable if the finding's
        # cloud provider is Microsoft Azure.
        # Corresponds to the JSON property `azureMetadata`
        # @return [Google::Apis::SecuritycenterV1beta2::AzureMetadata]
        attr_accessor :azure_metadata
      
        # Indicates which cloud provider the resource resides in.
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # The human readable name of the resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Contains a Folder message for each folder in the assets ancestry.
        # The first folder is the deepest nested folder, and the last folder is the
        # folder directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Folder>]
        attr_accessor :folders
      
        # The region or location of the service (if applicable).
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates which organization or tenant in the cloud provider the finding
        # applies to.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
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
      
        # Represents the path of resources leading up to the resource this finding is
        # about.
        # Corresponds to the JSON property `resourcePath`
        # @return [Google::Apis::SecuritycenterV1beta2::ResourcePath]
        attr_accessor :resource_path
      
        # A string representation of the resource path. For Google Cloud, it has the
        # format of organizations/`organization_id`/folders/`folder_id`/folders/`
        # folder_id`/projects/`project_id` where there can be any number of folders. For
        # AWS, it has the format of org/`organization_id`/ou/`organizational_unit_id`/ou/
        # `organizational_unit_id`/account/`account_id` where there can be any number of
        # organizational units. For Azure, it has the format of mg/`management_group_id`/
        # mg/`management_group_id`/subscription/`subscription_id`/rg/`
        # resource_group_name` where there can be any number of management groups.
        # Corresponds to the JSON property `resourcePathString`
        # @return [String]
        attr_accessor :resource_path_string
      
        # The parent service or product from which the resource is provided, for example,
        # GKE or SNS.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The full resource type of the resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_metadata = args[:aws_metadata] if args.key?(:aws_metadata)
          @azure_metadata = args[:azure_metadata] if args.key?(:azure_metadata)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @display_name = args[:display_name] if args.key?(:display_name)
          @folders = args[:folders] if args.key?(:folders)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @organization = args[:organization] if args.key?(:organization)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @resource_path = args[:resource_path] if args.key?(:resource_path)
          @resource_path_string = args[:resource_path_string] if args.key?(:resource_path_string)
          @service = args[:service] if args.key?(:service)
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
      
      # A resource value configuration (RVC) is a mapping configuration of user's
      # resources to resource values. Used in Attack path simulations.
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # Cloud provider this configuration applies to
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # Output only. Timestamp this resource value configuration was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the resource value configuration.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name for the resource value configuration
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of resource labels to search for, evaluated with AND. For example, "
        # resource_labels_selector": `"key": "value", "env": "prod"` will match
        # resources with labels "key": "value" AND "env": "prod" https://cloud.google.
        # com/resource-manager/docs/creating-managing-labels
        # Corresponds to the JSON property `resourceLabelsSelector`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels_selector
      
        # Apply resource_value only to resources that match resource_type. resource_type
        # will be checked with AND of other resources. For example, "storage.googleapis.
        # com/Bucket" with resource_value "HIGH" will apply "HIGH" value only to "
        # storage.googleapis.com/Bucket" resources.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Required. Resource value level this expression represents
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # Project or folder to scope this configuration to. For example, "project/456"
        # would apply this configuration only to resources in "project/456" scope will
        # be checked with AND of other resources.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Resource value mapping for Sensitive Data Protection findings. If any of these
        # mappings have a resource value that is not unspecified, the resource_value
        # field will be ignored when reading this configuration.
        # Corresponds to the JSON property `sensitiveDataProtectionMapping`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping]
        attr_accessor :sensitive_data_protection_mapping
      
        # Required. Tag values combined with AND to check against. Values in the form "
        # tagValues/123" Example: [ "tagValues/123", "tagValues/456", "tagValues/789" ]
        # https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # Output only. Timestamp this resource value configuration was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomConfig]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Resource]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Folder>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Geolocation]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo>]
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
      
      # Information about [Google Cloud Armor Adaptive Protection](https://cloud.
      # google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-
      # protection).
      class GoogleCloudSecuritycenterV2AdaptiveProtection
        include Google::Apis::Core::Hashable
      
        # A score of 0 means that there is low confidence that the detected event is an
        # actual attack. A score of 1 means that there is high confidence that the
        # detected event is an attack. See the [Adaptive Protection documentation](https:
        # //cloud.google.com/armor/docs/adaptive-protection-overview#configure-alert-
        # tuning) for further explanation.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
        end
      end
      
      # Represents an application associated with a finding.
      class GoogleCloudSecuritycenterV2Application
        include Google::Apis::Core::Hashable
      
        # The base URI that identifies the network location of the application in which
        # the vulnerability was detected. For example, `http://example.com`.
        # Corresponds to the JSON property `baseUri`
        # @return [String]
        attr_accessor :base_uri
      
        # The full URI with payload that could be used to reproduce the vulnerability.
        # For example, `http://example.com?p=aMmYgI6H`.
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
      
      # Information about DDoS attack volume and classification.
      class GoogleCloudSecuritycenterV2Attack
        include Google::Apis::Core::Hashable
      
        # Type of attack, for example, 'SYN-flood', 'NTP-udp', or 'CHARGEN-udp'.
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # Total BPS (bytes per second) volume of attack.
        # Corresponds to the JSON property `volumeBps`
        # @return [Fixnum]
        attr_accessor :volume_bps
      
        # Total PPS (packets per second) volume of attack.
        # Corresponds to the JSON property `volumePps`
        # @return [Fixnum]
        attr_accessor :volume_pps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @volume_bps = args[:volume_bps] if args.key?(:volume_bps)
          @volume_pps = args[:volume_pps] if args.key?(:volume_pps)
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
      
      # An AWS account that is a member of an organization.
      class GoogleCloudSecuritycenterV2AwsAccount
        include Google::Apis::Core::Hashable
      
        # The unique identifier (ID) of the account, containing exactly 12 digits.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The friendly name of this account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # AWS metadata associated with the resource, only applicable if the finding's
      # cloud provider is Amazon Web Services.
      class GoogleCloudSecuritycenterV2AwsMetadata
        include Google::Apis::Core::Hashable
      
        # An AWS account that is a member of an organization.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsAccount]
        attr_accessor :account
      
        # An organization is a collection of accounts that are centrally managed
        # together using consolidated billing, organized hierarchically with
        # organizational units (OUs), and controlled with policies.
        # Corresponds to the JSON property `organization`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsOrganization]
        attr_accessor :organization
      
        # A list of AWS organizational units associated with the resource, ordered from
        # lowest level (closest to the account) to highest level.
        # Corresponds to the JSON property `organizationalUnits`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsOrganizationalUnit>]
        attr_accessor :organizational_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_units = args[:organizational_units] if args.key?(:organizational_units)
        end
      end
      
      # An organization is a collection of accounts that are centrally managed
      # together using consolidated billing, organized hierarchically with
      # organizational units (OUs), and controlled with policies.
      class GoogleCloudSecuritycenterV2AwsOrganization
        include Google::Apis::Core::Hashable
      
        # The unique identifier (ID) for the organization. The regex pattern for an
        # organization ID string requires "o-" followed by from 10 to 32 lowercase
        # letters or digits.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # An Organizational Unit (OU) is a container of AWS accounts within a root of an
      # organization. Policies that are attached to an OU apply to all accounts
      # contained in that OU and in any child OUs.
      class GoogleCloudSecuritycenterV2AwsOrganizationalUnit
        include Google::Apis::Core::Hashable
      
        # The unique identifier (ID) associated with this OU. The regex pattern for an
        # organizational unit ID string requires "ou-" followed by from 4 to 32
        # lowercase letters or digits (the ID of the root that contains the OU). This
        # string is followed by a second "-" dash and from 8 to 32 additional lowercase
        # letters or digits. For example, "ou-ab12-cd34ef56".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The friendly name of the OU.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents an Azure management group.
      class GoogleCloudSecuritycenterV2AzureManagementGroup
        include Google::Apis::Core::Hashable
      
        # The display name of the Azure management group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The UUID of the Azure management group, for example, "20000000-0001-0000-0000-
        # 000000000000".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Azure metadata associated with the resource, only applicable if the finding's
      # cloud provider is Microsoft Azure.
      class GoogleCloudSecuritycenterV2AzureMetadata
        include Google::Apis::Core::Hashable
      
        # A list of Azure management groups associated with the resource, ordered from
        # lowest level (closest to the subscription) to highest level.
        # Corresponds to the JSON property `managementGroups`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureManagementGroup>]
        attr_accessor :management_groups
      
        # Represents an Azure resource group.
        # Corresponds to the JSON property `resourceGroup`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureResourceGroup]
        attr_accessor :resource_group
      
        # Represents an Azure subscription.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureSubscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management_groups = args[:management_groups] if args.key?(:management_groups)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Represents an Azure resource group.
      class GoogleCloudSecuritycenterV2AzureResourceGroup
        include Google::Apis::Core::Hashable
      
        # The name of the Azure resource group. This is not a UUID.
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
      
      # Represents an Azure subscription.
      class GoogleCloudSecuritycenterV2AzureSubscription
        include Google::Apis::Core::Hashable
      
        # The display name of the Azure subscription.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The UUID of the Azure subscription, for example, "291bba3f-e0a5-47bc-a099-
        # 3bdcb2a50a05".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Information related to Google Cloud Backup and DR Service findings.
      class GoogleCloudSecuritycenterV2BackupDisasterRecovery
        include Google::Apis::Core::Hashable
      
        # The name of the Backup and DR appliance that captures, moves, and manages the
        # lifecycle of backup data. For example, `backup-server-57137`.
        # Corresponds to the JSON property `appliance`
        # @return [String]
        attr_accessor :appliance
      
        # The names of Backup and DR applications. An application is a VM, database, or
        # file system on a managed host monitored by a backup and recovery appliance.
        # For example, `centos7-01-vol00`, `centos7-01-vol01`, `centos7-01-vol02`.
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
        # For example, `snap-ov`.
        # Corresponds to the JSON property `backupTemplate`
        # @return [String]
        attr_accessor :backup_template
      
        # The backup type of the Backup and DR image. For example, `Snapshot`, `Remote
        # Snapshot`, `OnVault`.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # The name of a Backup and DR host, which is managed by the backup and recovery
        # appliance and known to the management console. The host can be of type Generic
        # (for example, Compute Engine, SQL Server, Oracle DB, SMB file system, etc.),
        # vCenter, or an ESX server. See the [Backup and DR documentation on hosts](
        # https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-
        # hosts-and-their-applications) for more information. For example, `centos7-01`.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The names of Backup and DR policies that are associated with a template and
        # that define when to run a backup, how frequently to run a backup, and how long
        # to retain the backup image. For example, `onvaults`.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # The names of Backup and DR advanced policy options of a policy applying to an
        # application. See the [Backup and DR documentation on policy options](https://
        # cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings).
        # For example, `skipofflineappsincongrp, nounmap`.
        # Corresponds to the JSON property `policyOptions`
        # @return [Array<String>]
        attr_accessor :policy_options
      
        # The name of the Backup and DR resource profile that specifies the storage
        # media for backups of application and VM data. See the [Backup and DR
        # documentation on profiles](https://cloud.google.com/backup-disaster-recovery/
        # docs/concepts/backup-plan#profile). For example, `GCP`.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # The name of the Backup and DR storage pool that the backup and recovery
        # appliance is storing data in. The storage pool could be of type Cloud, Primary,
        # Snapshot, or OnVault. See the [Backup and DR documentation on storage pools](
        # https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools).
        # For example, `DiskPoolOne`.
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Role]
        attr_accessor :role
      
        # Represents one or more subjects that are bound to the role. Not always
        # available for PATCH requests.
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Subject>]
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
      
      # Fields related to Google Cloud Armor findings.
      class GoogleCloudSecuritycenterV2CloudArmor
        include Google::Apis::Core::Hashable
      
        # Information about [Google Cloud Armor Adaptive Protection](https://cloud.
        # google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-
        # protection).
        # Corresponds to the JSON property `adaptiveProtection`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AdaptiveProtection]
        attr_accessor :adaptive_protection
      
        # Information about DDoS attack volume and classification.
        # Corresponds to the JSON property `attack`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Attack]
        attr_accessor :attack
      
        # Duration of attack from the start until the current moment (updated every 5
        # minutes).
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Information about the requests relevant to the finding.
        # Corresponds to the JSON property `requests`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Requests]
        attr_accessor :requests
      
        # Information about the [Google Cloud Armor security policy](https://cloud.
        # google.com/armor/docs/security-policy-overview) relevant to the finding.
        # Corresponds to the JSON property `securityPolicy`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityPolicy]
        attr_accessor :security_policy
      
        # Distinguish between volumetric & protocol DDoS attack and application layer
        # attacks. For example, "L3_4" for Layer 3 and Layer 4 DDoS attacks, or "L_7"
        # for Layer 7 DDoS attacks.
        # Corresponds to the JSON property `threatVector`
        # @return [String]
        attr_accessor :threat_vector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adaptive_protection = args[:adaptive_protection] if args.key?(:adaptive_protection)
          @attack = args[:attack] if args.key?(:attack)
          @duration = args[:duration] if args.key?(:duration)
          @requests = args[:requests] if args.key?(:requests)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
          @threat_vector = args[:threat_vector] if args.key?(:threat_vector)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Contact>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Label>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cvssv3]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Reference>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExfilResource>]
        attr_accessor :sources
      
        # If there are multiple targets, each target would get a complete copy of the "
        # joined" source data.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExfilResource>]
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
      
        # The time when the case was closed, as reported by the external system.
        # Corresponds to the JSON property `caseCloseTime`
        # @return [String]
        attr_accessor :case_close_time
      
        # The time when the case was created, as reported by the external system.
        # Corresponds to the JSON property `caseCreateTime`
        # @return [String]
        attr_accessor :case_create_time
      
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2TicketInfo]
        attr_accessor :ticket_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @case_close_time = args[:case_close_time] if args.key?(:case_close_time)
          @case_create_time = args[:case_create_time] if args.key?(:case_create_time)
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DiskPath]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Access]
        attr_accessor :access
      
        # Represents an application associated with a finding.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Application]
        attr_accessor :application
      
        # An attack exposure contains the results of an attack path simulation run.
        # Corresponds to the JSON property `attackExposure`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AttackExposure]
        attr_accessor :attack_exposure
      
        # Information related to Google Cloud Backup and DR Service findings.
        # Corresponds to the JSON property `backupDisasterRecovery`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2BackupDisasterRecovery]
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
      
        # Fields related to Google Cloud Armor findings.
        # Corresponds to the JSON property `cloudArmor`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudArmor]
        attr_accessor :cloud_armor
      
        # The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated
        # with the finding.
        # Corresponds to the JSON property `cloudDlpDataProfile`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudDlpDataProfile]
        attr_accessor :cloud_dlp_data_profile
      
        # Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](
        # https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the
        # finding.
        # Corresponds to the JSON property `cloudDlpInspection`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudDlpInspection]
        attr_accessor :cloud_dlp_inspection
      
        # Contains compliance information for security standards associated to the
        # finding.
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Compliance>]
        attr_accessor :compliances
      
        # Contains information about the IP connection associated with the finding.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Connection>]
        attr_accessor :connections
      
        # Output only. Map containing the points of contact for the given finding. The
        # key represents the type of contact, while the value contains a list of all the
        # contacts that pertain. Please refer to: https://cloud.google.com/resource-
        # manager/docs/managing-notification-contacts#notification-categories ` "
        # security": ` "contacts": [ ` "email": "person1@company.com" `, ` "email": "
        # person2@company.com" ` ] ` `
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ContactDetails>]
        attr_accessor :contacts
      
        # Containers associated with the finding. This field provides information for
        # both Kubernetes and non-Kubernetes containers.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Database]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Exfiltration]
        attr_accessor :exfiltration
      
        # Output only. Third party SIEM/SOAR fields within SCC, contains external system
        # information and external system finding fields.
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExternalSystem>]
        attr_accessor :external_systems
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # File associated with the finding.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File>]
        attr_accessor :files
      
        # The class of the finding.
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # Contains details about groups of which this finding is a member. A group is a
        # collection of findings that are related in some way. This field cannot be
        # updated. Its value is ignored in all update requests.
        # Corresponds to the JSON property `groupMemberships`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2GroupMembership>]
        attr_accessor :group_memberships
      
        # Represents IAM bindings associated with the finding.
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IamBinding>]
        attr_accessor :iam_bindings
      
        # Represents what's commonly known as an _indicator of compromise_ (IoC) in
        # computer forensics. This is an artifact observed on a network or in an
        # operating system that, with high confidence, indicates a computer intrusion.
        # For more information, see [Indicator of compromise](https://en.wikipedia.org/
        # wiki/Indicator_of_compromise).
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Indicator]
        attr_accessor :indicator
      
        # Kernel mode rootkit signatures.
        # Corresponds to the JSON property `kernelRootkit`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2KernelRootkit]
        attr_accessor :kernel_rootkit
      
        # Kubernetes-related attributes.
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Kubernetes]
        attr_accessor :kubernetes
      
        # The load balancers associated with the finding.
        # Corresponds to the JSON property `loadBalancers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2LoadBalancer>]
        attr_accessor :load_balancers
      
        # Log entries that are relevant to the finding.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2LogEntry>]
        attr_accessor :log_entries
      
        # MITRE ATT&CK tactics and techniques related to this finding. See: https://
        # attack.mitre.org
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MitreAttack]
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
      
        # Represents a Jupyter notebook IPYNB file, such as a [Colab Enterprise notebook]
        # (https://cloud.google.com/colab/docs/introduction) file, that is associated
        # with a finding.
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Notebook]
        attr_accessor :notebook
      
        # Contains information about the org policies associated with the finding.
        # Corresponds to the JSON property `orgPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2OrgPolicy>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Process>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityMarks]
        attr_accessor :security_marks
      
        # Represents a posture that is deployed on Google Cloud by the Security Command
        # Center Posture Management service. A posture contains one or more policy sets.
        # A policy set is a group of policies that enforce a set of security rules on
        # Google Cloud.
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityPosture]
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
      
        # Contains details about a group of security issues that, when the issues occur
        # together, represent a greater risk than when the issues occur independently. A
        # group of such issues is referred to as a toxic combination.
        # Corresponds to the JSON property `toxicCombination`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ToxicCombination]
        attr_accessor :toxic_combination
      
        # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Vulnerability]
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
          @cloud_armor = args[:cloud_armor] if args.key?(:cloud_armor)
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
          @group_memberships = args[:group_memberships] if args.key?(:group_memberships)
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
          @notebook = args[:notebook] if args.key?(:notebook)
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
          @toxic_combination = args[:toxic_combination] if args.key?(:toxic_combination)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # Message that contains the resource name and display name of a folder resource.
      class GoogleCloudSecuritycenterV2Folder
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
      
      # Contains details about groups of which this finding is a member. A group is a
      # collection of findings that are related in some way.
      class GoogleCloudSecuritycenterV2GroupMembership
        include Google::Apis::Core::Hashable
      
        # ID of the group.
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # Type of group.
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @group_type = args[:group_type] if args.key?(:group_type)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ProcessSignature>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AccessReview>]
        attr_accessor :access_reviews
      
        # Provides Kubernetes role binding information for findings that involve [
        # RoleBindings or ClusterRoleBindings](https://cloud.google.com/kubernetes-
        # engine/docs/how-to/role-based-access-control).
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Binding>]
        attr_accessor :bindings
      
        # GKE [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-
        # pools) associated with the finding. This field contains node pool information
        # for each node, when it is available.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2NodePool>]
        attr_accessor :node_pools
      
        # Provides Kubernetes [node](https://cloud.google.com/kubernetes-engine/docs/
        # concepts/cluster-architecture#nodes) information.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Node>]
        attr_accessor :nodes
      
        # Kubernetes objects related to the finding.
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Object>]
        attr_accessor :objects
      
        # Kubernetes [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod)
        # associated with the finding. This field contains Pod records for each
        # container that is owned by a Pod.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Pod>]
        attr_accessor :pods
      
        # Provides Kubernetes role information for findings that involve [Roles or
        # ClusterRoles](https://cloud.google.com/kubernetes-engine/docs/how-to/role-
        # based-access-control).
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Role>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudLoggingEntry]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Detection>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Node>]
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
      
      # Represents a Jupyter notebook IPYNB file, such as a [Colab Enterprise notebook]
      # (https://cloud.google.com/colab/docs/introduction) file, that is associated
      # with a finding.
      class GoogleCloudSecuritycenterV2Notebook
        include Google::Apis::Core::Hashable
      
        # The user ID of the latest author to modify the notebook.
        # Corresponds to the JSON property `lastAuthor`
        # @return [String]
        attr_accessor :last_author
      
        # The name of the notebook.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The most recent time the notebook was updated.
        # Corresponds to the JSON property `notebookUpdateTime`
        # @return [String]
        attr_accessor :notebook_update_time
      
        # The source notebook service, for example, "Colab Enterprise".
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_author = args[:last_author] if args.key?(:last_author)
          @name = args[:name] if args.key?(:name)
          @notebook_update_time = args[:notebook_update_time] if args.key?(:notebook_update_time)
          @service = args[:service] if args.key?(:service)
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Resource]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # Pod labels. For Kubernetes containers, these are applied to the container.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Label>]
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
        # `allowed_values=`"projects/22831892"``.
        # Corresponds to the JSON property `detectedValue`
        # @return [String]
        attr_accessor :detected_value
      
        # The value of this field that was configured in a posture, for example, `true`
        # or `allowed_values=`"projects/29831892"``.
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File]
        attr_accessor :binary
      
        # Process environment variables.
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2EnvironmentVariable>]
        attr_accessor :env_variables
      
        # True if `env_variables` is incomplete.
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # File information for libraries loaded by the process.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File]
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
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # Describes the type of resource associated with the signature.
        # Corresponds to the JSON property `signatureType`
        # @return [String]
        attr_accessor :signature_type
      
        # A signature corresponding to a YARA rule.
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2YaraRuleSignature]
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
      
      # Information about the requests relevant to the finding.
      class GoogleCloudSecuritycenterV2Requests
        include Google::Apis::Core::Hashable
      
        # Allowed RPS (requests per second) over the long term.
        # Corresponds to the JSON property `longTermAllowed`
        # @return [Fixnum]
        attr_accessor :long_term_allowed
      
        # Denied RPS (requests per second) over the long term.
        # Corresponds to the JSON property `longTermDenied`
        # @return [Fixnum]
        attr_accessor :long_term_denied
      
        # For 'Increasing deny ratio', the ratio is the denied traffic divided by the
        # allowed traffic. For 'Allowed traffic spike', the ratio is the allowed traffic
        # in the short term divided by allowed traffic in the long term.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # Allowed RPS (requests per second) in the short term.
        # Corresponds to the JSON property `shortTermAllowed`
        # @return [Fixnum]
        attr_accessor :short_term_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @long_term_allowed = args[:long_term_allowed] if args.key?(:long_term_allowed)
          @long_term_denied = args[:long_term_denied] if args.key?(:long_term_denied)
          @ratio = args[:ratio] if args.key?(:ratio)
          @short_term_allowed = args[:short_term_allowed] if args.key?(:short_term_allowed)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV2Resource
        include Google::Apis::Core::Hashable
      
        # AWS metadata associated with the resource, only applicable if the finding's
        # cloud provider is Amazon Web Services.
        # Corresponds to the JSON property `awsMetadata`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsMetadata]
        attr_accessor :aws_metadata
      
        # Azure metadata associated with the resource, only applicable if the finding's
        # cloud provider is Microsoft Azure.
        # Corresponds to the JSON property `azureMetadata`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureMetadata]
        attr_accessor :azure_metadata
      
        # Indicates which cloud provider the finding is from.
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # The human readable name of the resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # GCP metadata associated with the resource, only applicable if the finding's
        # cloud provider is Google Cloud Platform.
        # Corresponds to the JSON property `gcpMetadata`
        # @return [Google::Apis::SecuritycenterV1beta2::GcpMetadata]
        attr_accessor :gcp_metadata
      
        # The region or location of the service (if applicable).
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents the path of resources leading up to the resource this finding is
        # about.
        # Corresponds to the JSON property `resourcePath`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourcePath]
        attr_accessor :resource_path
      
        # A string representation of the resource path. For Google Cloud, it has the
        # format of organizations/`organization_id`/folders/`folder_id`/folders/`
        # folder_id`/projects/`project_id` where there can be any number of folders. For
        # AWS, it has the format of org/`organization_id`/ou/`organizational_unit_id`/ou/
        # `organizational_unit_id`/account/`account_id` where there can be any number of
        # organizational units. For Azure, it has the format of mg/`management_group_id`/
        # mg/`management_group_id`/subscription/`subscription_id`/rg/`
        # resource_group_name` where there can be any number of management groups.
        # Corresponds to the JSON property `resourcePathString`
        # @return [String]
        attr_accessor :resource_path_string
      
        # The service or resource provider associated with the resource.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The full resource type of the resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_metadata = args[:aws_metadata] if args.key?(:aws_metadata)
          @azure_metadata = args[:azure_metadata] if args.key?(:azure_metadata)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gcp_metadata = args[:gcp_metadata] if args.key?(:gcp_metadata)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @resource_path = args[:resource_path] if args.key?(:resource_path)
          @resource_path_string = args[:resource_path_string] if args.key?(:resource_path_string)
          @service = args[:service] if args.key?(:service)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents the path of resources leading up to the resource this finding is
      # about.
      class GoogleCloudSecuritycenterV2ResourcePath
        include Google::Apis::Core::Hashable
      
        # The list of nodes that make the up resource path, ordered from lowest level to
        # highest level.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourcePathNode>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # A node within the resource path. Each node represents a resource within the
      # resource hierarchy.
      class GoogleCloudSecuritycenterV2ResourcePathNode
        include Google::Apis::Core::Hashable
      
        # The display name of the resource this node represents.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ID of the resource this node represents.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of resource this node represents.
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @node_type = args[:node_type] if args.key?(:node_type)
        end
      end
      
      # A resource value configuration (RVC) is a mapping configuration of user's
      # resources to resource values. Used in Attack path simulations.
      class GoogleCloudSecuritycenterV2ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # Cloud provider this configuration applies to
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # Output only. Timestamp this resource value configuration was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the resource value configuration.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name for the resource value configuration
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of resource labels to search for, evaluated with AND. For example, "
        # resource_labels_selector": `"key": "value", "env": "prod"` will match
        # resources with labels "key": "value" AND "env": "prod" https://cloud.google.
        # com/resource-manager/docs/creating-managing-labels
        # Corresponds to the JSON property `resourceLabelsSelector`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels_selector
      
        # Apply resource_value only to resources that match resource_type. resource_type
        # will be checked with AND of other resources. For example, "storage.googleapis.
        # com/Bucket" with resource_value "HIGH" will apply "HIGH" value only to "
        # storage.googleapis.com/Bucket" resources.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Resource value level this expression represents Only required when there is no
        # SDP mapping in the request
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # Project or folder to scope this configuration to. For example, "project/456"
        # would apply this configuration only to resources in "project/456" scope will
        # be checked with AND of other resources.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Resource value mapping for Sensitive Data Protection findings If any of these
        # mappings have a resource value that is not unspecified, the resource_value
        # field will be ignored when reading this configuration.
        # Corresponds to the JSON property `sensitiveDataProtectionMapping`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping]
        attr_accessor :sensitive_data_protection_mapping
      
        # Required. Tag values combined with AND to check against. Values in the form "
        # tagValues/123" Example: [ "tagValues/123", "tagValues/456", "tagValues/789" ]
        # https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # Output only. Timestamp this resource value configuration was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
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
        # organizations/`organization_id`/assets/`asset_id`/securityMarks` + `
        # organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks` + `organizations/`organization_id`/sources/`source_id`/
        # locations/`location`/findings/`finding_id`/securityMarks` + `folders/`
        # folder_id`/assets/`asset_id`/securityMarks` + `folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`/securityMarks` + `folders/`folder_id`/sources/
        # `source_id`/locations/`location`/findings/`finding_id`/securityMarks` + `
        # projects/`project_number`/assets/`asset_id`/securityMarks` + `projects/`
        # project_number`/sources/`source_id`/findings/`finding_id`/securityMarks` + `
        # projects/`project_number`/sources/`source_id`/locations/`location`/findings/`
        # finding_id`/securityMarks`
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
      
      # Information about the [Google Cloud Armor security policy](https://cloud.
      # google.com/armor/docs/security-policy-overview) relevant to the finding.
      class GoogleCloudSecuritycenterV2SecurityPolicy
        include Google::Apis::Core::Hashable
      
        # The name of the Google Cloud Armor security policy, for example, "my-security-
        # policy".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether or not the associated rule or policy is in preview mode.
        # Corresponds to the JSON property `preview`
        # @return [Boolean]
        attr_accessor :preview
        alias_method :preview?, :preview
      
        # The type of Google Cloud Armor security policy for example, 'backend security
        # policy', 'edge security policy', 'network edge security policy', or 'always-on
        # DDoS protection'.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @preview = args[:preview] if args.key?(:preview)
          @type = args[:type] if args.key?(:type)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2PolicyDriftDetails>]
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
      
      # Contains details about a group of security issues that, when the issues occur
      # together, represent a greater risk than when the issues occur independently. A
      # group of such issues is referred to as a toxic combination.
      class GoogleCloudSecuritycenterV2ToxicCombination
        include Google::Apis::Core::Hashable
      
        # The [Attack exposure score](https://cloud.google.com/security-command-center/
        # docs/attack-exposure-learn#attack_exposure_scores) of this toxic combination.
        # The score is a measure of how much this toxic combination exposes one or more
        # high-value resources to potential attack.
        # Corresponds to the JSON property `attackExposureScore`
        # @return [Float]
        attr_accessor :attack_exposure_score
      
        # List of resource names of findings associated with this toxic combination. For
        # example, organizations/123/sources/456/findings/789.
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<String>]
        attr_accessor :related_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_score = args[:attack_exposure_score] if args.key?(:attack_exposure_score)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
        end
      end
      
      # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
      class GoogleCloudSecuritycenterV2Vulnerability
        include Google::Apis::Core::Hashable
      
        # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
        # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
        # vulnerability.
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cve]
        attr_accessor :cve
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Package]
        attr_accessor :fixed_package
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `offendingPackage`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Package]
        attr_accessor :offending_package
      
        # SecurityBulletin are notifications of vulnerabilities of Google products.
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityBulletin]
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
      
      # Contains details about groups of which this finding is a member. A group is a
      # collection of findings that are related in some way.
      class GroupMembership
        include Google::Apis::Core::Hashable
      
        # ID of the group.
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # Type of group.
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @group_type = args[:group_type] if args.key?(:group_type)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ProcessSignature>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::AccessReview>]
        attr_accessor :access_reviews
      
        # Provides Kubernetes role binding information for findings that involve [
        # RoleBindings or ClusterRoleBindings](https://cloud.google.com/kubernetes-
        # engine/docs/how-to/role-based-access-control).
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Binding>]
        attr_accessor :bindings
      
        # GKE [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-
        # pools) associated with the finding. This field contains node pool information
        # for each node, when it is available.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::NodePool>]
        attr_accessor :node_pools
      
        # Provides Kubernetes [node](https://cloud.google.com/kubernetes-engine/docs/
        # concepts/cluster-architecture#nodes) information.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Node>]
        attr_accessor :nodes
      
        # Kubernetes objects related to the finding.
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Object>]
        attr_accessor :objects
      
        # Kubernetes [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod)
        # associated with the finding. This field contains Pod records for each
        # container that is owned by a Pod.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Pod>]
        attr_accessor :pods
      
        # Provides Kubernetes role information for findings that involve [Roles or
        # ClusterRoles](https://cloud.google.com/kubernetes-engine/docs/how-to/role-
        # based-access-control).
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Role>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::CloudLoggingEntry]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Detection>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Node>]
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
      
      # Represents a Jupyter notebook IPYNB file, such as a [Colab Enterprise notebook]
      # (https://cloud.google.com/colab/docs/introduction) file, that is associated
      # with a finding.
      class Notebook
        include Google::Apis::Core::Hashable
      
        # The user ID of the latest author to modify the notebook.
        # Corresponds to the JSON property `lastAuthor`
        # @return [String]
        attr_accessor :last_author
      
        # The name of the notebook.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The most recent time the notebook was updated.
        # Corresponds to the JSON property `notebookUpdateTime`
        # @return [String]
        attr_accessor :notebook_update_time
      
        # The source notebook service, for example, "Colab Enterprise".
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_author = args[:last_author] if args.key?(:last_author)
          @name = args[:name] if args.key?(:name)
          @notebook_update_time = args[:notebook_update_time] if args.key?(:notebook_update_time)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Kubernetes object related to the finding, uniquely identified by GKNN. Used if
      # the object Kind is not one of Pod, Node, NodePool, Binding, or AccessReview.
      class Object
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Container>]
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
      
      # A Kubernetes Pod.
      class Pod
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Container>]
        attr_accessor :containers
      
        # Pod labels. For Kubernetes containers, these are applied to the container.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Label>]
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
      class PolicyDriftDetails
        include Google::Apis::Core::Hashable
      
        # The detected value that violates the deployed posture, for example, `false` or
        # `allowed_values=`"projects/22831892"``.
        # Corresponds to the JSON property `detectedValue`
        # @return [String]
        attr_accessor :detected_value
      
        # The value of this field that was configured in a posture, for example, `true`
        # or `allowed_values=`"projects/29831892"``.
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
        # @return [Google::Apis::SecuritycenterV1beta2::File]
        attr_accessor :binary
      
        # Process environment variables.
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::EnvironmentVariable>]
        attr_accessor :env_variables
      
        # True if `env_variables` is incomplete.
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # File information for libraries loaded by the process.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::File>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::File]
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
        # @return [Google::Apis::SecuritycenterV1beta2::MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # Describes the type of resource associated with the signature.
        # Corresponds to the JSON property `signatureType`
        # @return [String]
        attr_accessor :signature_type
      
        # A signature corresponding to a YARA rule.
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1beta2::YaraRuleSignature]
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
      
      # Resource capturing the settings for the Rapid Vulnerability Detection service.
      class RapidVulnerabilityDetectionSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the RapidVulnerabilityDetectionSettings. Formats: *
        # organizations/`organization`/rapidVulnerabilityDetectionSettings * folders/`
        # folder`/rapidVulnerabilityDetectionSettings * projects/`project`/
        # rapidVulnerabilityDetectionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Information about the requests relevant to the finding.
      class Requests
        include Google::Apis::Core::Hashable
      
        # Allowed RPS (requests per second) over the long term.
        # Corresponds to the JSON property `longTermAllowed`
        # @return [Fixnum]
        attr_accessor :long_term_allowed
      
        # Denied RPS (requests per second) over the long term.
        # Corresponds to the JSON property `longTermDenied`
        # @return [Fixnum]
        attr_accessor :long_term_denied
      
        # For 'Increasing deny ratio', the ratio is the denied traffic divided by the
        # allowed traffic. For 'Allowed traffic spike', the ratio is the allowed traffic
        # in the short term divided by allowed traffic in the long term.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # Allowed RPS (requests per second) in the short term.
        # Corresponds to the JSON property `shortTermAllowed`
        # @return [Fixnum]
        attr_accessor :short_term_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @long_term_allowed = args[:long_term_allowed] if args.key?(:long_term_allowed)
          @long_term_denied = args[:long_term_denied] if args.key?(:long_term_denied)
          @ratio = args[:ratio] if args.key?(:ratio)
          @short_term_allowed = args[:short_term_allowed] if args.key?(:short_term_allowed)
        end
      end
      
      # Represents the path of resources leading up to the resource this finding is
      # about.
      class ResourcePath
        include Google::Apis::Core::Hashable
      
        # The list of nodes that make the up resource path, ordered from lowest level to
        # highest level.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ResourcePathNode>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # A node within the resource path. Each node represents a resource within the
      # resource hierarchy.
      class ResourcePathNode
        include Google::Apis::Core::Hashable
      
        # The display name of the resource this node represents.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ID of the resource this node represents.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of resource this node represents.
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @node_type = args[:node_type] if args.key?(:node_type)
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
      
      # Resource capturing the settings for Security Center. Next ID: 12
      class SecurityCenterSettings
        include Google::Apis::Core::Hashable
      
        # The resource name of the project to send logs to. This project must be part of
        # the organization this resource resides in. The format is `projects/`project_id`
        # `. An empty value disables logging. This value is only referenced by services
        # that support log sink. Please refer to the documentation for an updated list
        # of compatible services. This may only be specified for organization level
        # onboarding.
        # Corresponds to the JSON property `logSinkProject`
        # @return [String]
        attr_accessor :log_sink_project
      
        # The resource name of the SecurityCenterSettings. Format: organizations/`
        # organization`/securityCenterSettings Format: folders/`folder`/
        # securityCenterSettings Format: projects/`project`/securityCenterSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp of when the customer organization was onboarded to SCC.
        # Corresponds to the JSON property `onboardingTime`
        # @return [String]
        attr_accessor :onboarding_time
      
        # Output only. The organization level service account to be used for security
        # center components.
        # Corresponds to the JSON property `orgServiceAccount`
        # @return [String]
        attr_accessor :org_service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_sink_project = args[:log_sink_project] if args.key?(:log_sink_project)
          @name = args[:name] if args.key?(:name)
          @onboarding_time = args[:onboarding_time] if args.key?(:onboarding_time)
          @org_service_account = args[:org_service_account] if args.key?(:org_service_account)
        end
      end
      
      # Resource capturing the settings for the Security Health Analytics service.
      class SecurityHealthAnalyticsSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the SecurityHealthAnalyticsSettings. Formats: *
        # organizations/`organization`/securityHealthAnalyticsSettings * folders/`folder`
        # /securityHealthAnalyticsSettings * projects/`project`/
        # securityHealthAnalyticsSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account used by Security Health Analytics detectors.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Information about the [Google Cloud Armor security policy](https://cloud.
      # google.com/armor/docs/security-policy-overview) relevant to the finding.
      class SecurityPolicy
        include Google::Apis::Core::Hashable
      
        # The name of the Google Cloud Armor security policy, for example, "my-security-
        # policy".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether or not the associated rule or policy is in preview mode.
        # Corresponds to the JSON property `preview`
        # @return [Boolean]
        attr_accessor :preview
        alias_method :preview?, :preview
      
        # The type of Google Cloud Armor security policy for example, 'backend security
        # policy', 'edge security policy', 'network edge security policy', or 'always-on
        # DDoS protection'.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @preview = args[:preview] if args.key?(:preview)
          @type = args[:type] if args.key?(:type)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::PolicyDriftDetails>]
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
      
      # Resource capturing the state of an organization's subscription.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Details of a subscription.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::SecuritycenterV1beta2::Details]
        attr_accessor :details
      
        # The resource name of the subscription. Format: organizations/`organization`/
        # subscription
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The tier of SCC features this organization currently has access to.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @name = args[:name] if args.key?(:name)
          @tier = args[:tier] if args.key?(:tier)
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
      
      # Contains details about a group of security issues that, when the issues occur
      # together, represent a greater risk than when the issues occur independently. A
      # group of such issues is referred to as a toxic combination.
      class ToxicCombination
        include Google::Apis::Core::Hashable
      
        # The [Attack exposure score](https://cloud.google.com/security-command-center/
        # docs/attack-exposure-learn#attack_exposure_scores) of this toxic combination.
        # The score is a measure of how much this toxic combination exposes one or more
        # high-value resources to potential attack.
        # Corresponds to the JSON property `attackExposureScore`
        # @return [Float]
        attr_accessor :attack_exposure_score
      
        # List of resource names of findings associated with this toxic combination. For
        # example, organizations/123/sources/456/findings/789.
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<String>]
        attr_accessor :related_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_score = args[:attack_exposure_score] if args.key?(:attack_exposure_score)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
        end
      end
      
      # Resource capturing the settings for the Virtual Machine Threat Detection
      # service.
      class VirtualMachineThreatDetectionSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the VirtualMachineThreatDetectionSettings. Formats: *
        # organizations/`organization`/virtualMachineThreatDetectionSettings * folders/`
        # folder`/virtualMachineThreatDetectionSettings * projects/`project`/
        # virtualMachineThreatDetectionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account used by Virtual Machine Threat Detection
        # detectors.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
      class Vulnerability
        include Google::Apis::Core::Hashable
      
        # CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE
        # record](https://www.cve.org/ResourcesSupport/Glossary) that describes this
        # vulnerability.
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta2::Cve]
        attr_accessor :cve
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [Google::Apis::SecuritycenterV1beta2::Package]
        attr_accessor :fixed_package
      
        # Package is a generic definition of a package.
        # Corresponds to the JSON property `offendingPackage`
        # @return [Google::Apis::SecuritycenterV1beta2::Package]
        attr_accessor :offending_package
      
        # SecurityBulletin are notifications of vulnerabilities of Google products.
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityBulletin]
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
      
      # Vulnerability count by severity.
      class VulnerabilityCountBySeverity
        include Google::Apis::Core::Hashable
      
        # Key is the Severity enum.
        # Corresponds to the JSON property `severityToFindingCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :severity_to_finding_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @severity_to_finding_count = args[:severity_to_finding_count] if args.key?(:severity_to_finding_count)
        end
      end
      
      # Result containing the properties and count of a VulnerabilitySnapshot request.
      class VulnerabilitySnapshot
        include Google::Apis::Core::Hashable
      
        # The cloud provider for the vulnerability snapshot.
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # Vulnerability count by severity.
        # Corresponds to the JSON property `findingCount`
        # @return [Google::Apis::SecuritycenterV1beta2::VulnerabilityCountBySeverity]
        attr_accessor :finding_count
      
        # Identifier. The vulnerability snapshot name. Format: //locations//
        # vulnerabilitySnapshots/
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time that the snapshot was taken.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @finding_count = args[:finding_count] if args.key?(:finding_count)
          @name = args[:name] if args.key?(:name)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Resource capturing the settings for the Web Security Scanner service.
      class WebSecurityScannerSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the WebSecurityScannerSettings. Formats: * organizations/`
        # organization`/webSecurityScannerSettings * folders/`folder`/
        # webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
