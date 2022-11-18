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
    module SecuritycenterV1beta1
      
      # Represents an access event.
      class Access
        include Google::Apis::Core::Hashable
      
        # Caller's IP address, such as "1.1.1.1".
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # Represents a geographical location for a given access.
        # Corresponds to the JSON property `callerIpGeo`
        # @return [Google::Apis::SecuritycenterV1beta1::Geolocation]
        attr_accessor :caller_ip_geo
      
        # The method that the service account called, e.g. "SetIamPolicy".
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # Associated email, such as "foo@google.com". The email address of the
        # authenticated user (or service account on behalf of third party principal)
        # making the request. For third party identity callers, the `principal_subject`
        # field is populated instead of this field. For privacy reasons, the principal
        # email address is sometimes redacted. For more information, see [Caller
        # identities in audit logs](https://cloud.google.com/logging/docs/audit#user-id).
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
      
        # Identity delegation history of an authenticated service account that makes the
        # request. It contains information on the real authorities that try to access
        # GCP resources by delegating on a service account. When multiple authorities
        # are present, they are guaranteed to be sorted based on the original ordering
        # of the identity delegation events.
        # Corresponds to the JSON property `serviceAccountDelegationInfo`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ServiceAccountDelegationInfo>]
        attr_accessor :service_account_delegation_info
      
        # The name of the service account key used to create or exchange credentials for
        # authenticating the service account making the request. This is a scheme-less
        # URI full resource name. For example: "//iam.googleapis.com/projects/`
        # PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key`"
        # Corresponds to the JSON property `serviceAccountKeyName`
        # @return [String]
        attr_accessor :service_account_key_name
      
        # This is the API service that the service account made a call to, e.g. "iam.
        # googleapis.com"
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # What kind of user agent is associated, e.g. operating system shells, embedded
        # or stand-alone applications, etc.
        # Corresponds to the JSON property `userAgentFamily`
        # @return [String]
        attr_accessor :user_agent_family
      
        # A string representing a username. This is likely not an IAM principal. For
        # instance, this may be the system user name if the finding is VM-related, or
        # this may be some type of application login user name, depending on the type of
        # finding.
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
          @user_agent_family = args[:user_agent_family] if args.key?(:user_agent_family)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # Conveys information about a Kubernetes access review (e.g. kubectl auth can-i .
      # ..) that was involved in a finding.
      class AccessReview
        include Google::Apis::Core::Hashable
      
        # Group is the API Group of the Resource. "*" means all.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Name is the name of the resource being requested. Empty means all.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace of the action being requested. Currently, there is no distinction
        # between no namespace and all namespaces. Both are represented by "" (empty).
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # Resource is the optional resource type requested. "*" means all.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Subresource is the optional subresource type.
        # Corresponds to the JSON property `subresource`
        # @return [String]
        attr_accessor :subresource
      
        # Verb is a Kubernetes resource API verb, like: get, list, watch, create, update,
        # delete, proxy. "*" means all.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        # Version is the API Version of the Resource. "*" means all.
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
      
      # Security Command Center representation of a Google Cloud resource. The Asset
      # is a Security Command Center resource that captures information about a single
      # Google Cloud resource. All modifications to an Asset are only within the
      # context of Security Command Center and don't affect the referenced Google
      # Cloud resource.
      class Asset
        include Google::Apis::Core::Hashable
      
        # The time at which the asset was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
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
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityCenterProperties]
        attr_accessor :security_center_properties
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # The time at which the asset was last updated, added, or deleted in Security
        # Command Center.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
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
          @inclusion_mode = args[:inclusion_mode] if args.key?(:inclusion_mode)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # A finding that is associated with this node in the exposure path.
      class AssociatedFinding
        include Google::Apis::Core::Hashable
      
        # Canonical name of the associated findings. Example: organizations/123/sources/
        # 456/findings/789
        # Corresponds to the JSON property `canonicalFindingName`
        # @return [String]
        attr_accessor :canonical_finding_name
      
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
          @canonical_finding_name = args[:canonical_finding_name] if args.key?(:canonical_finding_name)
          @finding_category = args[:finding_category] if args.key?(:finding_category)
          @name = args[:name] if args.key?(:name)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AuditLogConfig>]
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
        # @return [Google::Apis::SecuritycenterV1beta1::Expr]
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
      
      # Contains compliance information about a security standard indicating unmet
      # recommendations.
      class Compliance
        include Google::Apis::Core::Hashable
      
        # Policies within the standard/benchmark e.g. A.12.4.1
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # Refers to industry wide standards or benchmarks e.g. "cis", "pci", "owasp",
        # etc.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # Version of the standard/benchmark e.g. 1.1
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
      
      # Representa a single contact's email address
      class Contact
        include Google::Apis::Core::Hashable
      
        # An email address e.g. "person123@company.com"
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
      
      # The details pertaining to specific contacts
      class ContactDetails
        include Google::Apis::Core::Hashable
      
        # A list of contacts
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Contact>]
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
      
        # Optional container image id, when provided by the container runtime. Uniquely
        # identifies the container image launched using a container image digest.
        # Corresponds to the JSON property `imageId`
        # @return [String]
        attr_accessor :image_id
      
        # Container labels, as provided by the container runtime.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Label>]
        attr_accessor :labels
      
        # Container name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Container image URI provided when configuring a pod/container. May identify a
        # container image version using mutable tags.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_id = args[:image_id] if args.key?(:image_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # CVE stands for Common Vulnerabilities and Exposures. More information: https://
      # cve.mitre.org
      class Cve
        include Google::Apis::Core::Hashable
      
        # Common Vulnerability Scoring System version 3.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1beta1::Cvssv3]
        attr_accessor :cvssv3
      
        # The unique identifier for the vulnerability. e.g. CVE-2021-34527
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/
        # cvename.cgi?name=CVE-2021-34527
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Reference>]
        attr_accessor :references
      
        # Whether upstream fix is available for the CVE.
        # Corresponds to the JSON property `upstreamFixAvailable`
        # @return [Boolean]
        attr_accessor :upstream_fix_available
        alias_method :upstream_fix_available?, :upstream_fix_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @id = args[:id] if args.key?(:id)
          @references = args[:references] if args.key?(:references)
          @upstream_fix_available = args[:upstream_fix_available] if args.key?(:upstream_fix_available)
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
      # sub-resource of an instance (as in the case of CloudSQL instances or Cloud
      # Spanner instances), or the database instance itself. Some database resources
      # may not have the full resource name populated because these resource types are
      # not yet supported by Cloud Asset Inventory (e.g. CloudSQL databases). In these
      # cases only the display name will be provided.
      class Database
        include Google::Apis::Core::Hashable
      
        # The human readable name of the database the user connected to.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The target usernames/roles/groups of a SQL privilege grant (not an IAM policy
        # change).
        # Corresponds to the JSON property `grantees`
        # @return [Array<String>]
        attr_accessor :grantees
      
        # The full resource name of the database the user connected to, if it is
        # supported by CAI. (https://google.aip.dev/122#full-resource-names)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The SQL statement associated with the relevant access.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The username used to connect to the DB. This may not necessarily be an IAM
        # principal, and has no required format.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
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
      
      # Represents a connection between a source node and a destination node in this
      # exposure path.
      class Edge
        include Google::Apis::Core::Hashable
      
        # This is the resource name of the destination node.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # This is the resource name of the source node.
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
      
      # EnvironmentVariable is a name-value pair to store environment variables for
      # Process.
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
      
      # Resource that has been exfiltrated or exfiltrated_to.
      class ExfilResource
        include Google::Apis::Core::Hashable
      
        # Subcomponents of the asset that is exfiltrated - these could be URIs used
        # during exfiltration, table names, databases, filenames, etc. For example,
        # multiple tables may be exfiltrated from the same CloudSQL instance, or
        # multiple files from the same Cloud Storage bucket.
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # Resource's URI (https://google.aip.dev/122#full-resource-names)
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
      
      # Exfiltration represents a data exfiltration attempt of one or more sources to
      # one or more targets. Sources represent the source of data that is exfiltrated,
      # and Targets represents the destination the data was copied to.
      class Exfiltration
        include Google::Apis::Core::Hashable
      
        # If there are multiple sources, then the data is considered "joined" between
        # them. For instance, BigQuery can join multiple tables, and each table would be
        # considered a source.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ExfilResource>]
        attr_accessor :sources
      
        # If there are multiple targets, each target would get a complete copy of the "
        # joined" source data.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ExfilResource>]
        attr_accessor :targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sources = args[:sources] if args.key?(:sources)
          @targets = args[:targets] if args.key?(:targets)
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
      
        # Prefix of the file contents as a JSON encoded string. (Currently only
        # populated for Malicious Script Executed findings.)
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
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
        # @return [Google::Apis::SecuritycenterV1beta1::Access]
        attr_accessor :access
      
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
      
        # Contains compliance information for security standards associated to the
        # finding.
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Compliance>]
        attr_accessor :compliances
      
        # Contains information about the IP connection associated with the finding.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Connection>]
        attr_accessor :connections
      
        # Output only. Map containing the points of contact for the given finding. The
        # key represents the type of contact, while the value contains a list of all the
        # contacts that pertain. Please refer to: https://cloud.google.com/resource-
        # manager/docs/managing-notification-contacts#notification-categories ` "
        # security": ` "contacts": [ ` "email": "person1@company.com" `, ` "email": "
        # person2@company.com" ` ] ` `
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta1::ContactDetails>]
        attr_accessor :contacts
      
        # Containers associated with the finding. containers provides information for
        # both Kubernetes and non-Kubernetes containers.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Container>]
        attr_accessor :containers
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Represents database access information, such as queries. A database may be a
        # sub-resource of an instance (as in the case of CloudSQL instances or Cloud
        # Spanner instances), or the database instance itself. Some database resources
        # may not have the full resource name populated because these resource types are
        # not yet supported by Cloud Asset Inventory (e.g. CloudSQL databases). In these
        # cases only the display name will be provided.
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::SecuritycenterV1beta1::Database]
        attr_accessor :database
      
        # Contains more detail about the finding.
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
      
        # Exfiltration represents a data exfiltration attempt of one or more sources to
        # one or more targets. Sources represent the source of data that is exfiltrated,
        # and Targets represents the destination the data was copied to.
        # Corresponds to the JSON property `exfiltration`
        # @return [Google::Apis::SecuritycenterV1beta1::Exfiltration]
        attr_accessor :exfiltration
      
        # Output only. Third party SIEM/SOAR fields within SCC, contains external system
        # information and external system finding fields.
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ExternalSystem>]
        attr_accessor :external_systems
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # File associated with the finding.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::File>]
        attr_accessor :files
      
        # The class of the finding.
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # Represents IAM bindings associated with the Finding.
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::IamBinding>]
        attr_accessor :iam_bindings
      
        # Represents what's commonly known as an Indicator of compromise (IoC) in
        # computer forensics. This is an artifact observed on a network or in an
        # operating system that, with high confidence, indicates a computer intrusion.
        # Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1beta1::Indicator]
        attr_accessor :indicator
      
        # Kubernetes related attributes.
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1beta1::Kubernetes]
        attr_accessor :kubernetes
      
        # MITRE ATT&CK tactics and techniques related to this finding. See: https://
        # attack.mitre.org
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1beta1::MitreAttack]
        attr_accessor :mitre_attack
      
        # Indicates the mute state of a finding (either muted, unmuted or undefined).
        # Unlike other attributes of a finding, a finding provider shouldn't set the
        # value of mute.
        # Corresponds to the JSON property `mute`
        # @return [String]
        attr_accessor :mute
      
        # First known as mute_annotation. Records additional information about the mute
        # operation e.g. mute config that muted the finding, user who muted the finding,
        # etc. Unlike other attributes of a finding, a finding provider shouldn't set
        # the value of mute.
        # Corresponds to the JSON property `muteInitiator`
        # @return [String]
        attr_accessor :mute_initiator
      
        # Output only. The most recent time this finding was muted or unmuted.
        # Corresponds to the JSON property `muteUpdateTime`
        # @return [String]
        attr_accessor :mute_update_time
      
        # The relative resource name of this finding. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Next steps associate to the finding.
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Process>]
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
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityMarks]
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
      
        # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1beta1::Vulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
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
          @kubernetes = args[:kubernetes] if args.key?(:kubernetes)
          @mitre_attack = args[:mitre_attack] if args.key?(:mitre_attack)
          @mute = args[:mute] if args.key?(:mute)
          @mute_initiator = args[:mute_initiator] if args.key?(:mute_initiator)
          @mute_update_time = args[:mute_update_time] if args.key?(:mute_update_time)
          @name = args[:name] if args.key?(:name)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @processes = args[:processes] if args.key?(:processes)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
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
        # @return [Google::Apis::SecuritycenterV1beta1::GetPolicyOptions]
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
      
        # Output only. The time at which the big query export was created. This field is
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
      
        # Output only. Email address of the user who last edited the big query export.
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
      
        # Output only. The service account that needs permission to create table, upload
        # data to the big query dataset.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # Output only. The most recent time at which the big export was updated. This
        # field is set by the server and will be ignored if provided on export creation
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
      
        # Name for binding.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace for binding.
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # Kubernetes Role or ClusterRole.
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::SecuritycenterV1beta1::Role]
        attr_accessor :role
      
        # Represents the subjects(s) bound to the role. Not always available for PATCH
        # requests.
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Subject>]
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
      
      # A resource that is exposed as a result of a finding.
      class GoogleCloudSecuritycenterV1ExposedResource
        include Google::Apis::Core::Hashable
      
        # Human readable name of the resource that is exposed.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ways in which this resource is exposed. Examples: Read, Write
        # Corresponds to the JSON property `methods`
        # @return [Array<String>]
        attr_accessor :methods_prop
      
        # Exposed Resource Name e.g.: `organizations/123/attackExposureResults/456/
        # exposedResources/789`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the resource that is exposed. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The resource type of the exposed resource. See: https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # How valuable this resource is.
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
        end
      end
      
      # A path that an attacker could take to reach an exposed resource.
      class GoogleCloudSecuritycenterV1ExposurePath
        include Google::Apis::Core::Hashable
      
        # A list of the edges between nodes in this exposure path.
        # Corresponds to the JSON property `edges`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Edge>]
        attr_accessor :edges
      
        # A resource that is exposed as a result of a finding.
        # Corresponds to the JSON property `exposedResource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ExposedResource]
        attr_accessor :exposed_resource
      
        # Exposure Path Name e.g.: `organizations/123/attackExposureResults/456/
        # exposurePaths/789`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of nodes that exist in this exposure path.
        # Corresponds to the JSON property `pathNodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::PathNode>]
        attr_accessor :path_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edges = args[:edges] if args.key?(:edges)
          @exposed_resource = args[:exposed_resource] if args.key?(:exposed_resource)
          @name = args[:name] if args.key?(:name)
          @path_nodes = args[:path_nodes] if args.key?(:path_nodes)
        end
      end
      
      # Representation of third party SIEM/SOAR fields within SCC.
      class GoogleCloudSecuritycenterV1ExternalSystem
        include Google::Apis::Core::Hashable
      
        # References primary/secondary etc assignees in the external system.
        # Corresponds to the JSON property `assignees`
        # @return [Array<String>]
        attr_accessor :assignees
      
        # The most recent time when the corresponding finding's ticket/tracker was
        # updated in the external system.
        # Corresponds to the JSON property `externalSystemUpdateTime`
        # @return [String]
        attr_accessor :external_system_update_time
      
        # Identifier that's used to track the given finding in the external system.
        # Corresponds to the JSON property `externalUid`
        # @return [String]
        attr_accessor :external_uid
      
        # External System Name e.g. jira, demisto, etc. e.g.: `organizations/1234/
        # sources/5678/findings/123456/externalSystems/jira` `folders/1234/sources/5678/
        # findings/123456/externalSystems/jira` `projects/1234/sources/5678/findings/
        # 123456/externalSystems/jira`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Most recent status of the corresponding finding's ticket/tracker in the
        # external system.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @external_system_update_time = args[:external_system_update_time] if args.key?(:external_system_update_time)
          @external_uid = args[:external_uid] if args.key?(:external_uid)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
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
        # muteConfigs/`mute_config`" "projects/`project`/muteConfigs/`mute_config`"
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
        # @return [Google::Apis::SecuritycenterV1beta1::Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1Resource]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Folder>]
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
      
      # A resource value config is a mapping configuration of user's tag values to
      # resource values. Used by the attack path simulation.
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # Name for the resource value config
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
      
        # Required. Tag values combined with AND to check against. Values in the form "
        # tagValues/123" E.g. [ "tagValues/123", "tagValues/456", "tagValues/789" ]
        # https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
          @scope = args[:scope] if args.key?(:scope)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
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
      
      # Security Command Center finding. A finding is a record of assessment data (
      # security, risk, health or privacy) ingested into Security Command Center for
      # presentation, notification, analysis, policy testing, and enforcement. For
      # example, an XSS vulnerability in an App Engine application is a finding.
      class GoogleCloudSecuritycenterV1beta1Finding
        include Google::Apis::Core::Hashable
      
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
        # this time would reflect when the finding was resolved.
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
      
        # Immutable. The relative resource name of the source the finding belongs to.
        # See: https://cloud.google.com/apis/design/resource_names#
        # relative_resource_name This field is immutable after creation time. For
        # example: "organizations/`organization_id`/sources/`source_id`"
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
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1beta1SecurityMarks]
        attr_accessor :security_marks
      
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
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
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
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class GoogleCloudSecuritycenterV1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
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
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
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
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
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
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1Resource]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1Folder>]
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
      
      # Request message for grouping by assets.
      class GroupAssetsRequest
        include Google::Apis::Core::Hashable
      
        # When compare_duration is set, the Asset's "state" property is updated to
        # indicate whether the asset was added, removed, or remained present during the
        # compare_duration period of time that precedes the read_time. This is the time
        # between (read_time - compare_duration) and read_time. The state value is
        # derived based on the presence of the asset at the two points in time.
        # Intermediate state changes between the two times don't affect the result. For
        # example, the results aren't affected if the asset is removed and re-created
        # again. Possible "state" values when compare_duration is specified: * "ADDED":
        # indicates that the asset was not present before compare_duration, but present
        # at reference_time. * "REMOVED": indicates that the asset was present at the
        # start of compare_duration, but not present at reference_time. * "ACTIVE":
        # indicates that the asset was present at both the start and the end of the time
        # period defined by compare_duration and reference_time. This field is ignored
        # if `state` is not a field in `group_by`.
        # Corresponds to the JSON property `compareDuration`
        # @return [String]
        attr_accessor :compare_duration
      
        # Expression that defines the filter to apply across assets. The expression is a
        # list of zero or more restrictions combined via logical operators `AND` and `OR`
        # . Parentheses are not supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. The fields map to those defined in the Asset resource.
        # Examples include: * name * security_center_properties.resource_name *
        # resource_properties.a_property * security_marks.marks.marka The supported
        # operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer
        # values. * `:`, meaning substring matching, for strings. The supported value
        # types are: * string literals in quotes. * integer literals without quotes. *
        # boolean literals `true` and `false` without quotes. For example, `
        # resource_properties.size = 100` is a valid filter string.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Expression that defines what assets fields to use for grouping. The
        # string value should follow SQL syntax: comma separated list of fields. For
        # example: "security_center_properties.resource_project,
        # security_center_properties.project". The following fields are supported when
        # compare_duration is not set: * security_center_properties.resource_project *
        # security_center_properties.resource_type * security_center_properties.
        # resource_parent The following fields are supported when compare_duration is
        # set: * security_center_properties.resource_type
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GroupResult>]
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # Request message for grouping by findings.
      class GroupFindingsRequest
        include Google::Apis::Core::Hashable
      
        # Expression that defines the filter to apply across findings. The expression is
        # a list of one or more restrictions combined via logical operators `AND` and `
        # OR`. Parentheses are not supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. Examples include: * name * source_properties.a_property *
        # security_marks.marks.marka The supported operators are: * `=` for all value
        # types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring
        # matching, for strings. The supported value types are: * string literals in
        # quotes. * integer literals without quotes. * boolean literals `true` and `
        # false` without quotes. For example, `source_properties.size = 100` is a valid
        # filter string.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Expression that defines what assets fields to use for grouping (
        # including `state`). The string value should follow SQL syntax: comma separated
        # list of fields. For example: "parent,resource_name". The following fields are
        # supported: * resource_name * category * state * parent
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GroupResult>]
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
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
      
        # A single identity requesting access for a Cloud Platform resource, e.g. "foo@
        # google.com".
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
      
      # Represents what's commonly known as an Indicator of compromise (IoC) in
      # computer forensics. This is an artifact observed on a network or in an
      # operating system that, with high confidence, indicates a computer intrusion.
      # Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise
      class Indicator
        include Google::Apis::Core::Hashable
      
        # List of domains associated to the Finding.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # List of ip addresses associated to the Finding.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # The list of matched signatures indicating that the given process is present in
        # the environment.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ProcessSignature>]
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
      
      # Kubernetes related attributes.
      class Kubernetes
        include Google::Apis::Core::Hashable
      
        # Provides information on any Kubernetes access reviews (i.e. privilege checks)
        # relevant to the finding.
        # Corresponds to the JSON property `accessReviews`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AccessReview>]
        attr_accessor :access_reviews
      
        # Provides Kubernetes role binding information for findings that involve
        # RoleBindings or ClusterRoleBindings.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1Binding>]
        attr_accessor :bindings
      
        # GKE Node Pools associated with the finding. This field will contain NodePool
        # information for each Node, when it is available.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::NodePool>]
        attr_accessor :node_pools
      
        # Provides Kubernetes Node information.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Node>]
        attr_accessor :nodes
      
        # Kubernetes Pods associated with the finding. This field will contain Pod
        # records for each container that is owned by a Pod.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Pod>]
        attr_accessor :pods
      
        # Provides Kubernetes role information for findings that involve Roles or
        # ClusterRoles.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Role>]
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
          @pods = args[:pods] if args.key?(:pods)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Label represents a generic name=value label. Label has separate name and value
      # fields to support filtering with contains().
      class Label
        include Google::Apis::Core::Hashable
      
        # Label name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Label value.
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ListAssetsResult>]
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
        # @return [Google::Apis::SecuritycenterV1beta1::Asset]
        attr_accessor :asset
      
        # State of the asset.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response message for listing findings.
      class ListFindingsResponse
        include Google::Apis::Core::Hashable
      
        # Findings matching the list request.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1beta1Finding>]
        attr_accessor :findings
      
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
          @findings = args[:findings] if args.key?(:findings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Operation>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Source>]
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
      
      # A signature corresponding to memory page hashes.
      class MemoryHashSignature
        include Google::Apis::Core::Hashable
      
        # The binary family.
        # Corresponds to the JSON property `binaryFamily`
        # @return [String]
        attr_accessor :binary_family
      
        # The list of memory hash detections contributing to the binary family match.
        # Corresponds to the JSON property `detections`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Detection>]
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
      
      # Kubernetes Nodes associated with the finding.
      class Node
        include Google::Apis::Core::Hashable
      
        # Full Resource name of the Compute Engine VM running the cluster node.
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
      
      # Provides GKE Node Pool information.
      class NodePool
        include Google::Apis::Core::Hashable
      
        # Kubernetes Node pool name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Nodes associated with the finding.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Node>]
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
        # @return [Google::Apis::SecuritycenterV1beta1::Status]
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
      
      # User specified settings that are attached to the Security Command Center
      # organization.
      class OrganizationSettings
        include Google::Apis::Core::Hashable
      
        # The configuration used for Asset Discovery runs.
        # Corresponds to the JSON property `assetDiscoveryConfig`
        # @return [Google::Apis::SecuritycenterV1beta1::AssetDiscoveryConfig]
        attr_accessor :asset_discovery_config
      
        # A flag that indicates if Asset Discovery should be enabled. If the flag is set
        # to `true`, then discovery of assets will occur. If it is set to `false, all
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
      
      # Represents one point that an attacker passes through in this exposure path.
      class PathNode
        include Google::Apis::Core::Hashable
      
        # The findings associated with this node in the exposure path.
        # Corresponds to the JSON property `associatedFindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AssociatedFinding>]
        attr_accessor :associated_findings
      
        # Human readable name of this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the resource at this point in the exposure path. The format of the
        # name is: https://cloud.google.com/apis/design/resource_names#
        # full_resource_name
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The resource type of this resource. See: https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associated_findings = args[:associated_findings] if args.key?(:associated_findings)
          @display_name = args[:display_name] if args.key?(:display_name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Kubernetes Pod.
      class Pod
        include Google::Apis::Core::Hashable
      
        # Pod containers associated with this finding, if any.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Container>]
        attr_accessor :containers
      
        # Pod labels. For Kubernetes containers, these are applied to the container.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Label>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AuditConfig>]
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
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Binding>]
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
        # @return [Google::Apis::SecuritycenterV1beta1::File]
        attr_accessor :binary
      
        # Process environment variables.
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::EnvironmentVariable>]
        attr_accessor :env_variables
      
        # True if `env_variables` is incomplete.
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # File information for libraries loaded by the process.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::File>]
        attr_accessor :libraries
      
        # The process name visible in utilities like `top` and `ps`; it can be accessed
        # via `/proc/[pid]/comm` and changed with `prctl(PR_SET_NAME)`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The parent process id.
        # Corresponds to the JSON property `parentPid`
        # @return [Fixnum]
        attr_accessor :parent_pid
      
        # The process id.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # File information about the related binary/library used by an executable, or
        # the script used by a script interpreter
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::SecuritycenterV1beta1::File]
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
        # @return [Google::Apis::SecuritycenterV1beta1::MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # A signature corresponding to a YARA rule.
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1beta1::YaraRuleSignature]
        attr_accessor :yara_rule_signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_hash_signature = args[:memory_hash_signature] if args.key?(:memory_hash_signature)
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
      
      # Security Command Center managed properties. These properties are managed by
      # Security Command Center and cannot be modified by the user.
      class SecurityCenterProperties
        include Google::Apis::Core::Hashable
      
        # Immutable. The full resource name of the Google Cloud resource this asset
        # represents. This field is immutable after create time. See: https://cloud.
        # google.com/apis/design/resource_names#full_resource_name
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
      
        # The full resource name of the project the resource belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceProject`
        # @return [String]
        attr_accessor :resource_project
      
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
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_owners = args[:resource_owners] if args.key?(:resource_owners)
          @resource_parent = args[:resource_parent] if args.key?(:resource_parent)
          @resource_project = args[:resource_project] if args.key?(:resource_project)
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
        # @return [Google::Apis::SecuritycenterV1beta1::Policy]
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
      
      # Security Command Center finding source. A finding source is an entity or a
      # mechanism that can produce a finding. A source is like a container of findings
      # that come from the same scanner, logger, monitor, etc.
      class Source
        include Google::Apis::Core::Hashable
      
        # The description of the source (max of 1024 characters). Example: "Web Security
        # Scanner is a web security scanner for common vulnerabilities in App Engine
        # applications. It can automatically scan and detect four common vulnerabilities,
        # including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in
        # HTTPS), and outdated/insecure libraries."
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
      
      # Represents a Kubernetes Subject.
      class Subject
        include Google::Apis::Core::Hashable
      
        # Authentication type for subject.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name for subject.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Namespace for subject.
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
      
      # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
      class Vulnerability
        include Google::Apis::Core::Hashable
      
        # CVE stands for Common Vulnerabilities and Exposures. More information: https://
        # cve.mitre.org
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta1::Cve]
        attr_accessor :cve
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
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
