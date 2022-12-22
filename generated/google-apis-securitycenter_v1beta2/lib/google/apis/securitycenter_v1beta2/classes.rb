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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ServiceAccountDelegationInfo>]
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
      
      # The details pertaining to specific contacts
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
      
        # Optional container image id, when provided by the container runtime. Uniquely
        # identifies the container image launched using a container image digest.
        # Corresponds to the JSON property `imageId`
        # @return [String]
        attr_accessor :image_id
      
        # Container labels, as provided by the container runtime.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Label>]
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
      
      # CVE stands for Common Vulnerabilities and Exposures. More information: https://
      # cve.mitre.org
      class Cve
        include Google::Apis::Core::Hashable
      
        # Common Vulnerability Scoring System version 3.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1beta2::Cvssv3]
        attr_accessor :cvssv3
      
        # The unique identifier for the vulnerability. e.g. CVE-2021-34527
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ExfilResource>]
        attr_accessor :sources
      
        # If there are multiple targets, each target would get a complete copy of the "
        # joined" source data.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::ExfilResource>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Access]
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
      
        # Containers associated with the finding. containers provides information for
        # both Kubernetes and non-Kubernetes containers.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Container>]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Database]
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
      
        # Represents IAM bindings associated with the Finding.
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
      
        # MITRE ATT&CK tactics and techniques related to this finding. See: https://
        # attack.mitre.org
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1beta2::MitreAttack]
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
        # @return [Google::Apis::SecuritycenterV1beta2::Vulnerability]
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
          @kernel_rootkit = args[:kernel_rootkit] if args.key?(:kernel_rootkit)
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Edge>]
        attr_accessor :edges
      
        # A resource that is exposed as a result of a finding.
        # Corresponds to the JSON property `exposedResource`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ExposedResource]
        attr_accessor :exposed_resource
      
        # Exposure Path Name e.g.: `organizations/123/attackExposureResults/456/
        # exposurePaths/789`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of nodes that exist in this exposure path.
        # Corresponds to the JSON property `pathNodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::PathNode>]
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
      
        # Full resource name of the external system, for example: "organizations/1234/
        # sources/5678/findings/123456/externalSystems/jira", "folders/1234/sources/5678/
        # findings/123456/externalSystems/jira", "projects/1234/sources/5678/findings/
        # 123456/externalSystems/jira"
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
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Folder>]
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
      
        # Rootkit name when available.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True when unexpected modifications of kernel code memory are present.
        # Corresponds to the JSON property `unexpectedCodeModification`
        # @return [Boolean]
        attr_accessor :unexpected_code_modification
        alias_method :unexpected_code_modification?, :unexpected_code_modification
      
        # True when `ftrace` points are present with callbacks pointing to regions that
        # are not in the expected kernel or module code range.
        # Corresponds to the JSON property `unexpectedFtraceHandler`
        # @return [Boolean]
        attr_accessor :unexpected_ftrace_handler
        alias_method :unexpected_ftrace_handler?, :unexpected_ftrace_handler
      
        # True when interrupt handlers that are are not in the expected kernel or module
        # code regions are present.
        # Corresponds to the JSON property `unexpectedInterruptHandler`
        # @return [Boolean]
        attr_accessor :unexpected_interrupt_handler
        alias_method :unexpected_interrupt_handler?, :unexpected_interrupt_handler
      
        # True when kernel code pages that are not in the expected kernel or module code
        # regions are present.
        # Corresponds to the JSON property `unexpectedKernelCodePages`
        # @return [Boolean]
        attr_accessor :unexpected_kernel_code_pages
        alias_method :unexpected_kernel_code_pages?, :unexpected_kernel_code_pages
      
        # True when `kprobe` points are present with callbacks pointing to regions that
        # are not in the expected kernel or module code range.
        # Corresponds to the JSON property `unexpectedKprobeHandler`
        # @return [Boolean]
        attr_accessor :unexpected_kprobe_handler
        alias_method :unexpected_kprobe_handler?, :unexpected_kprobe_handler
      
        # True when unexpected processes in the scheduler run queue are present. Such
        # processes are in the run queue, but not in the process task list.
        # Corresponds to the JSON property `unexpectedProcessesInRunqueue`
        # @return [Boolean]
        attr_accessor :unexpected_processes_in_runqueue
        alias_method :unexpected_processes_in_runqueue?, :unexpected_processes_in_runqueue
      
        # True when unexpected modifications of kernel read-only data memory are present.
        # Corresponds to the JSON property `unexpectedReadOnlyDataModification`
        # @return [Boolean]
        attr_accessor :unexpected_read_only_data_modification
        alias_method :unexpected_read_only_data_modification?, :unexpected_read_only_data_modification
      
        # True when system call handlers that are are not in the expected kernel or
        # module code regions are present.
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
      
        # Provides information on any Kubernetes access reviews (i.e. privilege checks)
        # relevant to the finding.
        # Corresponds to the JSON property `accessReviews`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::AccessReview>]
        attr_accessor :access_reviews
      
        # Provides Kubernetes role binding information for findings that involve
        # RoleBindings or ClusterRoleBindings.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Binding>]
        attr_accessor :bindings
      
        # GKE Node Pools associated with the finding. This field will contain NodePool
        # information for each Node, when it is available.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::NodePool>]
        attr_accessor :node_pools
      
        # Provides Kubernetes Node information.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Node>]
        attr_accessor :nodes
      
        # Kubernetes Pods associated with the finding. This field will contain Pod
        # records for each container that is owned by a Pod.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Pod>]
        attr_accessor :pods
      
        # Provides Kubernetes role information for findings that involve Roles or
        # ClusterRoles.
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
      
      # Resource capturing onboarding information for a given CRM resource.
      class OnboardingState
        include Google::Apis::Core::Hashable
      
        # The resource name of the OnboardingState. Format: organizations/`organization`/
        # onboardingState Format: folders/`folder`/onboardingState Format: projects/`
        # project`/onboardingState
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes the level a given organization, folder, or project is onboarded with
        # SCC. If the resource wasn't onboarded, NOT_FOUND would have been thrown.
        # Corresponds to the JSON property `onboardingLevel`
        # @return [String]
        attr_accessor :onboarding_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @onboarding_level = args[:onboarding_level] if args.key?(:onboarding_level)
        end
      end
      
      # Represents one point that an attacker passes through in this exposure path.
      class PathNode
        include Google::Apis::Core::Hashable
      
        # The findings associated with this node in the exposure path.
        # Corresponds to the JSON property `associatedFindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::AssociatedFinding>]
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
      
      # Resource capturing the settings for Security Center.
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
      
        # CVE stands for Common Vulnerabilities and Exposures. More information: https://
        # cve.mitre.org
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta2::Cve]
        attr_accessor :cve
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
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
