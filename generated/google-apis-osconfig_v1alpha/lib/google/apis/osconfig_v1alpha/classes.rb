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
    module OsconfigV1alpha
      
      # Common Vulnerability Scoring System version 3. For details, see https://www.
      # first.org/cvss/specification-document
      class CvsSv3
        include Google::Apis::Core::Hashable
      
        # This metric describes the conditions beyond the attacker's control that must
        # exist in order to exploit the vulnerability.
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # This metric reflects the context by which vulnerability exploitation is
        # possible.
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # This metric measures the impact to the availability of the impacted component
        # resulting from a successfully exploited vulnerability.
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # The base score is a function of the base metric scores. https://www.first.org/
        # cvss/specification-document#Base-Metrics
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # This metric measures the impact to the confidentiality of the information
        # resources managed by a software component due to a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # The Exploitability sub-score equation is derived from the Base Exploitability
        # metrics. https://www.first.org/cvss/specification-document#2-1-Exploitability-
        # Metrics
        # Corresponds to the JSON property `exploitabilityScore`
        # @return [Float]
        attr_accessor :exploitability_score
      
        # The Impact sub-score equation is derived from the Base Impact metrics.
        # Corresponds to the JSON property `impactScore`
        # @return [Float]
        attr_accessor :impact_score
      
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
          @exploitability_score = args[:exploitability_score] if args.key?(:exploitability_score)
          @impact_score = args[:impact_score] if args.key?(:impact_score)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
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
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
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
      
      # Message encapsulating a value that can be either absolute ("fixed") or
      # relative ("percent") to a value.
      class FixedOrPercent
        include Google::Apis::Core::Hashable
      
        # Specifies a fixed value.
        # Corresponds to the JSON property `fixed`
        # @return [Fixnum]
        attr_accessor :fixed
      
        # Specifies the relative value defined as a percentage, which will be multiplied
        # by a reference value.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed = args[:fixed] if args.key?(:fixed)
          @percent = args[:percent] if args.key?(:percent)
        end
      end
      
      # OS policy assignment operation metadata provided by OS policy assignment API
      # methods that return long running operations.
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The OS policy assignment API method.
        # Corresponds to the JSON property `apiMethod`
        # @return [String]
        attr_accessor :api_method
      
        # Reference to the `OSPolicyAssignment` API resource. Format: `projects/`
        # project_number`/locations/`location`/osPolicyAssignments/`
        # os_policy_assignment_id@revision_id``
        # Corresponds to the JSON property `osPolicyAssignment`
        # @return [String]
        attr_accessor :os_policy_assignment
      
        # Rollout start time
        # Corresponds to the JSON property `rolloutStartTime`
        # @return [String]
        attr_accessor :rollout_start_time
      
        # State of the rollout
        # Corresponds to the JSON property `rolloutState`
        # @return [String]
        attr_accessor :rollout_state
      
        # Rollout update time
        # Corresponds to the JSON property `rolloutUpdateTime`
        # @return [String]
        attr_accessor :rollout_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_method = args[:api_method] if args.key?(:api_method)
          @os_policy_assignment = args[:os_policy_assignment] if args.key?(:os_policy_assignment)
          @rollout_start_time = args[:rollout_start_time] if args.key?(:rollout_start_time)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @rollout_update_time = args[:rollout_update_time] if args.key?(:rollout_update_time)
        end
      end
      
      # This API resource represents the OS policies compliance data for a Compute
      # Engine virtual machine (VM) instance at a given point in time. A Compute
      # Engine VM can have multiple OS policy assignments, and each assignment can
      # have multiple OS policies. As a result, multiple OS policies could be applied
      # to a single VM. You can use this API resource to determine both the compliance
      # state of your VM as well as the compliance state of an individual OS policy.
      # For more information, see [View compliance](https://cloud.google.com/compute/
      # docs/os-configuration-management/view-compliance).
      class InstanceOsPoliciesCompliance
        include Google::Apis::Core::Hashable
      
        # Output only. Detailed compliance state of the VM. This field is populated only
        # when compliance state is `UNKNOWN`. It may contain one of the following values:
        # * `no-compliance-data`: Compliance data is not available for this VM. * `no-
        # agent-detected`: OS Config agent is not detected for this VM. * `config-not-
        # supported-by-agent`: The version of the OS Config agent running on this VM
        # does not support configuration management. * `inactive`: VM is not running. * `
        # internal-service-errors`: There were internal service errors encountered while
        # enforcing compliance. * `agent-errors`: OS config agent encountered errors
        # while enforcing compliance.
        # Corresponds to the JSON property `detailedState`
        # @return [String]
        attr_accessor :detailed_state
      
        # Output only. The reason for the `detailed_state` of the VM (if any).
        # Corresponds to the JSON property `detailedStateReason`
        # @return [String]
        attr_accessor :detailed_state_reason
      
        # Output only. The Compute Engine VM instance name.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Output only. Timestamp of the last compliance check for the VM.
        # Corresponds to the JSON property `lastComplianceCheckTime`
        # @return [String]
        attr_accessor :last_compliance_check_time
      
        # Output only. Unique identifier for the last compliance run. This id will be
        # logged by the OS config agent during a compliance run and can be used for
        # debugging and tracing purpose.
        # Corresponds to the JSON property `lastComplianceRunId`
        # @return [String]
        attr_accessor :last_compliance_run_id
      
        # Output only. The `InstanceOSPoliciesCompliance` API resource name. Format: `
        # projects/`project_number`/locations/`location`/instanceOSPoliciesCompliances/`
        # instance_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Compliance data for each `OSPolicy` that is applied to the VM.
        # Corresponds to the JSON property `osPolicyCompliances`
        # @return [Array<Google::Apis::OsconfigV1alpha::InstanceOsPoliciesComplianceOsPolicyCompliance>]
        attr_accessor :os_policy_compliances
      
        # Output only. Compliance state of the VM.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detailed_state = args[:detailed_state] if args.key?(:detailed_state)
          @detailed_state_reason = args[:detailed_state_reason] if args.key?(:detailed_state_reason)
          @instance = args[:instance] if args.key?(:instance)
          @last_compliance_check_time = args[:last_compliance_check_time] if args.key?(:last_compliance_check_time)
          @last_compliance_run_id = args[:last_compliance_run_id] if args.key?(:last_compliance_run_id)
          @name = args[:name] if args.key?(:name)
          @os_policy_compliances = args[:os_policy_compliances] if args.key?(:os_policy_compliances)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Compliance data for an OS policy
      class InstanceOsPoliciesComplianceOsPolicyCompliance
        include Google::Apis::Core::Hashable
      
        # Reference to the `OSPolicyAssignment` API resource that the `OSPolicy` belongs
        # to. Format: `projects/`project_number`/locations/`location`/
        # osPolicyAssignments/`os_policy_assignment_id@revision_id``
        # Corresponds to the JSON property `osPolicyAssignment`
        # @return [String]
        attr_accessor :os_policy_assignment
      
        # The OS policy id
        # Corresponds to the JSON property `osPolicyId`
        # @return [String]
        attr_accessor :os_policy_id
      
        # Compliance data for each `OSPolicyResource` that is applied to the VM.
        # Corresponds to the JSON property `osPolicyResourceCompliances`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyResourceCompliance>]
        attr_accessor :os_policy_resource_compliances
      
        # Compliance state of the OS policy.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_policy_assignment = args[:os_policy_assignment] if args.key?(:os_policy_assignment)
          @os_policy_id = args[:os_policy_id] if args.key?(:os_policy_id)
          @os_policy_resource_compliances = args[:os_policy_resource_compliances] if args.key?(:os_policy_resource_compliances)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # This API resource represents the available inventory data for a Compute Engine
      # virtual machine (VM) instance at a given point in time. You can use this API
      # resource to determine the inventory data of your VM. For more information, see
      # [Information provided by OS inventory management](https://cloud.google.com/
      # compute/docs/instances/os-inventory-management#data-collected).
      class Inventory
        include Google::Apis::Core::Hashable
      
        # Output only. Inventory items related to the VM keyed by an opaque unique
        # identifier for each inventory item. The identifier is unique to each distinct
        # and addressable inventory item and will change, when there is a new package
        # version.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::OsconfigV1alpha::InventoryItem>]
        attr_accessor :items
      
        # Output only. The `Inventory` API resource name. Format: `projects/`
        # project_number`/locations/`location`/instances/`instance_id`/inventory`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Operating system information for the VM.
        # Corresponds to the JSON property `osInfo`
        # @return [Google::Apis::OsconfigV1alpha::InventoryOsInfo]
        attr_accessor :os_info
      
        # Output only. Timestamp of the last reported inventory for the VM.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @name = args[:name] if args.key?(:name)
          @os_info = args[:os_info] if args.key?(:os_info)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A single piece of inventory on a VM.
      class InventoryItem
        include Google::Apis::Core::Hashable
      
        # Software package information of the operating system.
        # Corresponds to the JSON property `availablePackage`
        # @return [Google::Apis::OsconfigV1alpha::InventorySoftwarePackage]
        attr_accessor :available_package
      
        # When this inventory item was first detected.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier for this item, unique across items for this VM.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Software package information of the operating system.
        # Corresponds to the JSON property `installedPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventorySoftwarePackage]
        attr_accessor :installed_package
      
        # The origin of this inventory item.
        # Corresponds to the JSON property `originType`
        # @return [String]
        attr_accessor :origin_type
      
        # The specific type of inventory, correlating to its specific details.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # When this inventory item was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_package = args[:available_package] if args.key?(:available_package)
          @create_time = args[:create_time] if args.key?(:create_time)
          @id = args[:id] if args.key?(:id)
          @installed_package = args[:installed_package] if args.key?(:installed_package)
          @origin_type = args[:origin_type] if args.key?(:origin_type)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Operating system information for the VM.
      class InventoryOsInfo
        include Google::Apis::Core::Hashable
      
        # The system architecture of the operating system.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The VM hostname.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # The kernel release of the operating system.
        # Corresponds to the JSON property `kernelRelease`
        # @return [String]
        attr_accessor :kernel_release
      
        # The kernel version of the operating system.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # The operating system long name. For example 'Debian GNU/Linux 9' or 'Microsoft
        # Window Server 2019 Datacenter'.
        # Corresponds to the JSON property `longName`
        # @return [String]
        attr_accessor :long_name
      
        # The current version of the OS Config agent running on the VM.
        # Corresponds to the JSON property `osconfigAgentVersion`
        # @return [String]
        attr_accessor :osconfig_agent_version
      
        # The operating system short name. For example, 'windows' or 'debian'.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # The version of the operating system.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @hostname = args[:hostname] if args.key?(:hostname)
          @kernel_release = args[:kernel_release] if args.key?(:kernel_release)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @long_name = args[:long_name] if args.key?(:long_name)
          @osconfig_agent_version = args[:osconfig_agent_version] if args.key?(:osconfig_agent_version)
          @short_name = args[:short_name] if args.key?(:short_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Software package information of the operating system.
      class InventorySoftwarePackage
        include Google::Apis::Core::Hashable
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `aptPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryVersionedPackage]
        attr_accessor :apt_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `cosPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryVersionedPackage]
        attr_accessor :cos_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `googetPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryVersionedPackage]
        attr_accessor :googet_package
      
        # Information related to a Quick Fix Engineering package. Fields are taken from
        # Windows QuickFixEngineering Interface and match the source names: https://docs.
        # microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
        # Corresponds to the JSON property `qfePackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryWindowsQuickFixEngineeringPackage]
        attr_accessor :qfe_package
      
        # Contains information about a Windows application that is retrieved from the
        # Windows Registry. For more information about these fields, see: https://docs.
        # microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
        # Corresponds to the JSON property `windowsApplication`
        # @return [Google::Apis::OsconfigV1alpha::InventoryWindowsApplication]
        attr_accessor :windows_application
      
        # Details related to a Windows Update package. Field data and names are taken
        # from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/
        # windows/win32/api/_wua/ Descriptive fields like title, and description are
        # localized based on the locale of the VM being updated.
        # Corresponds to the JSON property `wuaPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryWindowsUpdatePackage]
        attr_accessor :wua_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `yumPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryVersionedPackage]
        attr_accessor :yum_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `zypperPackage`
        # @return [Google::Apis::OsconfigV1alpha::InventoryVersionedPackage]
        attr_accessor :zypper_package
      
        # Details related to a Zypper Patch.
        # Corresponds to the JSON property `zypperPatch`
        # @return [Google::Apis::OsconfigV1alpha::InventoryZypperPatch]
        attr_accessor :zypper_patch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt_package = args[:apt_package] if args.key?(:apt_package)
          @cos_package = args[:cos_package] if args.key?(:cos_package)
          @googet_package = args[:googet_package] if args.key?(:googet_package)
          @qfe_package = args[:qfe_package] if args.key?(:qfe_package)
          @windows_application = args[:windows_application] if args.key?(:windows_application)
          @wua_package = args[:wua_package] if args.key?(:wua_package)
          @yum_package = args[:yum_package] if args.key?(:yum_package)
          @zypper_package = args[:zypper_package] if args.key?(:zypper_package)
          @zypper_patch = args[:zypper_patch] if args.key?(:zypper_patch)
        end
      end
      
      # Information related to the a standard versioned package. This includes package
      # info for APT, Yum, Zypper, and Googet package managers.
      class InventoryVersionedPackage
        include Google::Apis::Core::Hashable
      
        # The system architecture this package is intended for.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The name of the package.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The version of the package.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @package_name = args[:package_name] if args.key?(:package_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Contains information about a Windows application that is retrieved from the
      # Windows Registry. For more information about these fields, see: https://docs.
      # microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
      class InventoryWindowsApplication
        include Google::Apis::Core::Hashable
      
        # The name of the application or product.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The version of the product or application in string format.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # The internet address for technical support.
        # Corresponds to the JSON property `helpLink`
        # @return [String]
        attr_accessor :help_link
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `installDate`
        # @return [Google::Apis::OsconfigV1alpha::Date]
        attr_accessor :install_date
      
        # The name of the manufacturer for the product or application.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_version = args[:display_version] if args.key?(:display_version)
          @help_link = args[:help_link] if args.key?(:help_link)
          @install_date = args[:install_date] if args.key?(:install_date)
          @publisher = args[:publisher] if args.key?(:publisher)
        end
      end
      
      # Information related to a Quick Fix Engineering package. Fields are taken from
      # Windows QuickFixEngineering Interface and match the source names: https://docs.
      # microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
      class InventoryWindowsQuickFixEngineeringPackage
        include Google::Apis::Core::Hashable
      
        # A short textual description of the QFE update.
        # Corresponds to the JSON property `caption`
        # @return [String]
        attr_accessor :caption
      
        # A textual description of the QFE update.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Unique identifier associated with a particular QFE update.
        # Corresponds to the JSON property `hotFixId`
        # @return [String]
        attr_accessor :hot_fix_id
      
        # Date that the QFE update was installed. Mapped from installed_on field.
        # Corresponds to the JSON property `installTime`
        # @return [String]
        attr_accessor :install_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caption = args[:caption] if args.key?(:caption)
          @description = args[:description] if args.key?(:description)
          @hot_fix_id = args[:hot_fix_id] if args.key?(:hot_fix_id)
          @install_time = args[:install_time] if args.key?(:install_time)
        end
      end
      
      # Details related to a Windows Update package. Field data and names are taken
      # from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/
      # windows/win32/api/_wua/ Descriptive fields like title, and description are
      # localized based on the locale of the VM being updated.
      class InventoryWindowsUpdatePackage
        include Google::Apis::Core::Hashable
      
        # The categories that are associated with this update package.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::OsconfigV1alpha::InventoryWindowsUpdatePackageWindowsUpdateCategory>]
        attr_accessor :categories
      
        # The localized description of the update package.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A collection of Microsoft Knowledge Base article IDs that are associated with
        # the update package.
        # Corresponds to the JSON property `kbArticleIds`
        # @return [Array<String>]
        attr_accessor :kb_article_ids
      
        # The last published date of the update, in (UTC) date and time.
        # Corresponds to the JSON property `lastDeploymentChangeTime`
        # @return [String]
        attr_accessor :last_deployment_change_time
      
        # A collection of URLs that provide more information about the update package.
        # Corresponds to the JSON property `moreInfoUrls`
        # @return [Array<String>]
        attr_accessor :more_info_urls
      
        # The revision number of this update package.
        # Corresponds to the JSON property `revisionNumber`
        # @return [Fixnum]
        attr_accessor :revision_number
      
        # A hyperlink to the language-specific support information for the update.
        # Corresponds to the JSON property `supportUrl`
        # @return [String]
        attr_accessor :support_url
      
        # The localized title of the update package.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Gets the identifier of an update package. Stays the same across revisions.
        # Corresponds to the JSON property `updateId`
        # @return [String]
        attr_accessor :update_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @kb_article_ids = args[:kb_article_ids] if args.key?(:kb_article_ids)
          @last_deployment_change_time = args[:last_deployment_change_time] if args.key?(:last_deployment_change_time)
          @more_info_urls = args[:more_info_urls] if args.key?(:more_info_urls)
          @revision_number = args[:revision_number] if args.key?(:revision_number)
          @support_url = args[:support_url] if args.key?(:support_url)
          @title = args[:title] if args.key?(:title)
          @update_id = args[:update_id] if args.key?(:update_id)
        end
      end
      
      # Categories specified by the Windows Update.
      class InventoryWindowsUpdatePackageWindowsUpdateCategory
        include Google::Apis::Core::Hashable
      
        # The identifier of the windows update category.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the windows update category.
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
      
      # Details related to a Zypper Patch.
      class InventoryZypperPatch
        include Google::Apis::Core::Hashable
      
        # The category of the patch.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The name of the patch.
        # Corresponds to the JSON property `patchName`
        # @return [String]
        attr_accessor :patch_name
      
        # The severity specified for this patch
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Any summary information provided about this patch.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @patch_name = args[:patch_name] if args.key?(:patch_name)
          @severity = args[:severity] if args.key?(:severity)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # A response message for listing OS policies compliance data for all Compute
      # Engine VMs in the given location.
      class ListInstanceOsPoliciesCompliancesResponse
        include Google::Apis::Core::Hashable
      
        # List of instance OS policies compliance objects.
        # Corresponds to the JSON property `instanceOsPoliciesCompliances`
        # @return [Array<Google::Apis::OsconfigV1alpha::InstanceOsPoliciesCompliance>]
        attr_accessor :instance_os_policies_compliances
      
        # The pagination token to retrieve the next page of instance OS policies
        # compliance objects.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_os_policies_compliances = args[:instance_os_policies_compliances] if args.key?(:instance_os_policies_compliances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response message for listing inventory data for all VMs in a specified
      # location.
      class ListInventoriesResponse
        include Google::Apis::Core::Hashable
      
        # List of inventory objects.
        # Corresponds to the JSON property `inventories`
        # @return [Array<Google::Apis::OsconfigV1alpha::Inventory>]
        attr_accessor :inventories
      
        # The pagination token to retrieve the next page of inventory objects.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventories = args[:inventories] if args.key?(:inventories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response message for listing OS Policy assignment reports including the page
      # of results and page token.
      class ListOsPolicyAssignmentReportsResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of OS policy assignment report
        # objects.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of OS policy assignment reports.
        # Corresponds to the JSON property `osPolicyAssignmentReports`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReport>]
        attr_accessor :os_policy_assignment_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @os_policy_assignment_reports = args[:os_policy_assignment_reports] if args.key?(:os_policy_assignment_reports)
        end
      end
      
      # A response message for listing all revisions for a OS policy assignment.
      class ListOsPolicyAssignmentRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of OS policy assignment
        # revisions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The OS policy assignment revisions
        # Corresponds to the JSON property `osPolicyAssignments`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignment>]
        attr_accessor :os_policy_assignments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @os_policy_assignments = args[:os_policy_assignments] if args.key?(:os_policy_assignments)
        end
      end
      
      # A response message for listing all assignments under given parent.
      class ListOsPolicyAssignmentsResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of OS policy assignments.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of assignments
        # Corresponds to the JSON property `osPolicyAssignments`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignment>]
        attr_accessor :os_policy_assignments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @os_policy_assignments = args[:os_policy_assignments] if args.key?(:os_policy_assignments)
        end
      end
      
      # A response message for listing vulnerability reports for all VM instances in
      # the specified location.
      class ListVulnerabilityReportsResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of vulnerabilityReports object.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of vulnerabilityReport objects.
        # Corresponds to the JSON property `vulnerabilityReports`
        # @return [Array<Google::Apis::OsconfigV1alpha::VulnerabilityReport>]
        attr_accessor :vulnerability_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @vulnerability_reports = args[:vulnerability_reports] if args.key?(:vulnerability_reports)
        end
      end
      
      # An OS policy defines the desired state configuration for a VM.
      class OsPolicy
        include Google::Apis::Core::Hashable
      
        # This flag determines the OS policy compliance status when none of the resource
        # groups within the policy are applicable for a VM. Set this value to `true` if
        # the policy needs to be reported as compliant even if the policy has nothing to
        # validate or enforce.
        # Corresponds to the JSON property `allowNoResourceGroupMatch`
        # @return [Boolean]
        attr_accessor :allow_no_resource_group_match
        alias_method :allow_no_resource_group_match?, :allow_no_resource_group_match
      
        # Policy description. Length of the description is limited to 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The id of the OS policy with the following restrictions: * Must
        # contain only lowercase letters, numbers, and hyphens. * Must start with a
        # letter. * Must be between 1-63 characters. * Must end with a number or a
        # letter. * Must be unique within the assignment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Policy mode
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Required. List of resource groups for the policy. For a particular VM,
        # resource groups are evaluated in the order specified and the first resource
        # group that is applicable is selected and the rest are ignored. If none of the
        # resource groups are applicable for a VM, the VM is considered to be non-
        # compliant w.r.t this policy. This behavior can be toggled by the flag `
        # allow_no_resource_group_match`
        # Corresponds to the JSON property `resourceGroups`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyResourceGroup>]
        attr_accessor :resource_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_no_resource_group_match = args[:allow_no_resource_group_match] if args.key?(:allow_no_resource_group_match)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @mode = args[:mode] if args.key?(:mode)
          @resource_groups = args[:resource_groups] if args.key?(:resource_groups)
        end
      end
      
      # OS policy assignment is an API resource that is used to apply a set of OS
      # policies to a dynamically targeted group of Compute Engine VM instances. An OS
      # policy is used to define the desired state configuration for a Compute Engine
      # VM instance through a set of configuration resources that provide capabilities
      # such as installing or removing software packages, or executing a script. For
      # more information, see [OS policy and OS policy assignment](https://cloud.
      # google.com/compute/docs/os-configuration-management/working-with-os-policies).
      class OsPolicyAssignment
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates that this revision has been successfully rolled out in
        # this zone and new VMs will be assigned OS policies from this revision. For a
        # given OS policy assignment, there is only one revision with a value of `true`
        # for this field.
        # Corresponds to the JSON property `baseline`
        # @return [Boolean]
        attr_accessor :baseline
        alias_method :baseline?, :baseline
      
        # Output only. Indicates that this revision deletes the OS policy assignment.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # OS policy assignment description. Length of the description is limited to 1024
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The etag for this OS policy assignment. If this is provided on update, it must
        # match the server's etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Filters to select target VMs for an assignment. If more than one filter
        # criteria is specified below, a VM will be selected if and only if it satisfies
        # all of them.
        # Corresponds to the JSON property `instanceFilter`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyAssignmentInstanceFilter]
        attr_accessor :instance_filter
      
        # Resource name. Format: `projects/`project_number`/locations/`location`/
        # osPolicyAssignments/`os_policy_assignment_id`` This field is ignored when you
        # create an OS policy assignment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. List of OS policies to be applied to the VMs.
        # Corresponds to the JSON property `osPolicies`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicy>]
        attr_accessor :os_policies
      
        # Output only. Indicates that reconciliation is in progress for the revision.
        # This value is `true` when the `rollout_state` is one of: * IN_PROGRESS *
        # CANCELLING
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. The assignment revision ID A new revision is committed whenever a
        # rollout is triggered for a OS policy assignment
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Message to configure the rollout at the zonal level for the OS policy
        # assignment.
        # Corresponds to the JSON property `rollout`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyAssignmentRollout]
        attr_accessor :rollout
      
        # Output only. OS policy assignment rollout state
        # Corresponds to the JSON property `rolloutState`
        # @return [String]
        attr_accessor :rollout_state
      
        # Output only. Server generated unique id for the OS policy assignment resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline = args[:baseline] if args.key?(:baseline)
          @deleted = args[:deleted] if args.key?(:deleted)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @instance_filter = args[:instance_filter] if args.key?(:instance_filter)
          @name = args[:name] if args.key?(:name)
          @os_policies = args[:os_policies] if args.key?(:os_policies)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @rollout = args[:rollout] if args.key?(:rollout)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Filters to select target VMs for an assignment. If more than one filter
      # criteria is specified below, a VM will be selected if and only if it satisfies
      # all of them.
      class OsPolicyAssignmentInstanceFilter
        include Google::Apis::Core::Hashable
      
        # Target all VMs in the project. If true, no other criteria is permitted.
        # Corresponds to the JSON property `all`
        # @return [Boolean]
        attr_accessor :all
        alias_method :all?, :all
      
        # List of label sets used for VM exclusion. If the list has more than one label
        # set, the VM is excluded if any of the label sets are applicable for the VM.
        # Corresponds to the JSON property `exclusionLabels`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentLabelSet>]
        attr_accessor :exclusion_labels
      
        # List of label sets used for VM inclusion. If the list has more than one `
        # LabelSet`, the VM is included if any of the label sets are applicable for the
        # VM.
        # Corresponds to the JSON property `inclusionLabels`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentLabelSet>]
        attr_accessor :inclusion_labels
      
        # List of inventories to select VMs. A VM is selected if its inventory data
        # matches at least one of the following inventories.
        # Corresponds to the JSON property `inventories`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentInstanceFilterInventory>]
        attr_accessor :inventories
      
        # Deprecated. Use the `inventories` field instead. A VM is selected if it's OS
        # short name matches with any of the values provided in this list.
        # Corresponds to the JSON property `osShortNames`
        # @return [Array<String>]
        attr_accessor :os_short_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all = args[:all] if args.key?(:all)
          @exclusion_labels = args[:exclusion_labels] if args.key?(:exclusion_labels)
          @inclusion_labels = args[:inclusion_labels] if args.key?(:inclusion_labels)
          @inventories = args[:inventories] if args.key?(:inventories)
          @os_short_names = args[:os_short_names] if args.key?(:os_short_names)
        end
      end
      
      # VM inventory details.
      class OsPolicyAssignmentInstanceFilterInventory
        include Google::Apis::Core::Hashable
      
        # Required. The OS short name
        # Corresponds to the JSON property `osShortName`
        # @return [String]
        attr_accessor :os_short_name
      
        # The OS version Prefix matches are supported if asterisk(*) is provided as the
        # last character. For example, to match all versions with a major version of `7`,
        # specify the following value for this field `7.*` An empty string matches all
        # OS versions.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_short_name = args[:os_short_name] if args.key?(:os_short_name)
          @os_version = args[:os_version] if args.key?(:os_version)
        end
      end
      
      # Message representing label set. * A label is a key value pair set for a VM. *
      # A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other
      # words, a LabelSet is applicable for a VM only if it matches all the labels in
      # the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=
      # webserver` will only be applicable for those VMs with both labels present.
      class OsPolicyAssignmentLabelSet
        include Google::Apis::Core::Hashable
      
        # Labels are identified by key/value pairs in this map. A VM should contain all
        # the key/value pairs specified in this map to be selected.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # OS policy assignment operation metadata provided by OS policy assignment API
      # methods that return long running operations.
      class OsPolicyAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The OS policy assignment API method.
        # Corresponds to the JSON property `apiMethod`
        # @return [String]
        attr_accessor :api_method
      
        # Reference to the `OSPolicyAssignment` API resource. Format: `projects/`
        # project_number`/locations/`location`/osPolicyAssignments/`
        # os_policy_assignment_id@revision_id``
        # Corresponds to the JSON property `osPolicyAssignment`
        # @return [String]
        attr_accessor :os_policy_assignment
      
        # Rollout start time
        # Corresponds to the JSON property `rolloutStartTime`
        # @return [String]
        attr_accessor :rollout_start_time
      
        # State of the rollout
        # Corresponds to the JSON property `rolloutState`
        # @return [String]
        attr_accessor :rollout_state
      
        # Rollout update time
        # Corresponds to the JSON property `rolloutUpdateTime`
        # @return [String]
        attr_accessor :rollout_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_method = args[:api_method] if args.key?(:api_method)
          @os_policy_assignment = args[:os_policy_assignment] if args.key?(:os_policy_assignment)
          @rollout_start_time = args[:rollout_start_time] if args.key?(:rollout_start_time)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @rollout_update_time = args[:rollout_update_time] if args.key?(:rollout_update_time)
        end
      end
      
      # A report of the OS policy assignment status for a given instance.
      class OsPolicyAssignmentReport
        include Google::Apis::Core::Hashable
      
        # The Compute Engine VM instance name.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Unique identifier of the last attempted run to apply the OS policies
        # associated with this assignment on the VM. This ID is logged by the OS Config
        # agent while applying the OS policies associated with this assignment on the VM.
        # NOTE: If the service is unable to successfully connect to the agent for this
        # run, then this id will not be available in the agent logs.
        # Corresponds to the JSON property `lastRunId`
        # @return [String]
        attr_accessor :last_run_id
      
        # The `OSPolicyAssignmentReport` API resource name. Format: `projects/`
        # project_number`/locations/`location`/instances/`instance_id`/
        # osPolicyAssignments/`os_policy_assignment_id`/report`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Reference to the `OSPolicyAssignment` API resource that the `OSPolicy` belongs
        # to. Format: `projects/`project_number`/locations/`location`/
        # osPolicyAssignments/`os_policy_assignment_id@revision_id``
        # Corresponds to the JSON property `osPolicyAssignment`
        # @return [String]
        attr_accessor :os_policy_assignment
      
        # Compliance data for each `OSPolicy` that is applied to the VM.
        # Corresponds to the JSON property `osPolicyCompliances`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyCompliance>]
        attr_accessor :os_policy_compliances
      
        # Timestamp for when the report was last generated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @last_run_id = args[:last_run_id] if args.key?(:last_run_id)
          @name = args[:name] if args.key?(:name)
          @os_policy_assignment = args[:os_policy_assignment] if args.key?(:os_policy_assignment)
          @os_policy_compliances = args[:os_policy_compliances] if args.key?(:os_policy_compliances)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Compliance data for an OS policy
      class OsPolicyAssignmentReportOsPolicyCompliance
        include Google::Apis::Core::Hashable
      
        # The compliance state of the OS policy.
        # Corresponds to the JSON property `complianceState`
        # @return [String]
        attr_accessor :compliance_state
      
        # The reason for the OS policy to be in an unknown compliance state. This field
        # is always populated when `compliance_state` is `UNKNOWN`. If populated, the
        # field can contain one of the following values: * `vm-not-running`: The VM was
        # not running. * `os-policies-not-supported-by-agent`: The version of the OS
        # Config agent running on the VM does not support running OS policies. * `no-
        # agent-detected`: The OS Config agent is not detected for the VM. * `resource-
        # execution-errors`: The OS Config agent encountered errors while executing one
        # or more resources in the policy. See `os_policy_resource_compliances` for
        # details. * `task-timeout`: The task sent to the agent to apply the policy
        # timed out. * `unexpected-agent-state`: The OS Config agent did not report the
        # final status of the task that attempted to apply the policy. Instead, the
        # agent unexpectedly started working on a different task. This mostly happens
        # when the agent or VM unexpectedly restarts while applying OS policies. * `
        # internal-service-errors`: Internal service errors were encountered while
        # attempting to apply the policy.
        # Corresponds to the JSON property `complianceStateReason`
        # @return [String]
        attr_accessor :compliance_state_reason
      
        # The OS policy id
        # Corresponds to the JSON property `osPolicyId`
        # @return [String]
        attr_accessor :os_policy_id
      
        # Compliance data for each resource within the policy that is applied to the VM.
        # Corresponds to the JSON property `osPolicyResourceCompliances`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance>]
        attr_accessor :os_policy_resource_compliances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_state = args[:compliance_state] if args.key?(:compliance_state)
          @compliance_state_reason = args[:compliance_state_reason] if args.key?(:compliance_state_reason)
          @os_policy_id = args[:os_policy_id] if args.key?(:os_policy_id)
          @os_policy_resource_compliances = args[:os_policy_resource_compliances] if args.key?(:os_policy_resource_compliances)
        end
      end
      
      # Compliance data for an OS policy resource.
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance
        include Google::Apis::Core::Hashable
      
        # The compliance state of the resource.
        # Corresponds to the JSON property `complianceState`
        # @return [String]
        attr_accessor :compliance_state
      
        # A reason for the resource to be in the given compliance state. This field is
        # always populated when `compliance_state` is `UNKNOWN`. The following values
        # are supported when `compliance_state == UNKNOWN` * `execution-errors`: Errors
        # were encountered by the agent while executing the resource and the compliance
        # state couldn't be determined. * `execution-skipped-by-agent`: Resource
        # execution was skipped by the agent because errors were encountered while
        # executing prior resources in the OS policy. * `os-policy-execution-attempt-
        # failed`: The execution of the OS policy containing this resource failed and
        # the compliance state couldn't be determined.
        # Corresponds to the JSON property `complianceStateReason`
        # @return [String]
        attr_accessor :compliance_state_reason
      
        # Ordered list of configuration completed by the agent for the OS policy
        # resource.
        # Corresponds to the JSON property `configSteps`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep>]
        attr_accessor :config_steps
      
        # ExecResource specific output.
        # Corresponds to the JSON property `execResourceOutput`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput]
        attr_accessor :exec_resource_output
      
        # The ID of the OS policy resource.
        # Corresponds to the JSON property `osPolicyResourceId`
        # @return [String]
        attr_accessor :os_policy_resource_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_state = args[:compliance_state] if args.key?(:compliance_state)
          @compliance_state_reason = args[:compliance_state_reason] if args.key?(:compliance_state_reason)
          @config_steps = args[:config_steps] if args.key?(:config_steps)
          @exec_resource_output = args[:exec_resource_output] if args.key?(:exec_resource_output)
          @os_policy_resource_id = args[:os_policy_resource_id] if args.key?(:os_policy_resource_id)
        end
      end
      
      # ExecResource specific output.
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput
        include Google::Apis::Core::Hashable
      
        # Output from enforcement phase output file (if run). Output size is limited to
        # 100K bytes.
        # Corresponds to the JSON property `enforcementOutput`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :enforcement_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforcement_output = args[:enforcement_output] if args.key?(:enforcement_output)
        end
      end
      
      # Step performed by the OS Config agent for configuring an `OSPolicy` resource
      # to its desired state.
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep
        include Google::Apis::Core::Hashable
      
        # An error message recorded during the execution of this step. Only populated if
        # errors were encountered during this step execution.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Configuration step type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Message to configure the rollout at the zonal level for the OS policy
      # assignment.
      class OsPolicyAssignmentRollout
        include Google::Apis::Core::Hashable
      
        # Message encapsulating a value that can be either absolute ("fixed") or
        # relative ("percent") to a value.
        # Corresponds to the JSON property `disruptionBudget`
        # @return [Google::Apis::OsconfigV1alpha::FixedOrPercent]
        attr_accessor :disruption_budget
      
        # Required. This determines the minimum duration of time to wait after the
        # configuration changes are applied through the current rollout. A VM continues
        # to count towards the `disruption_budget` at least until this duration of time
        # has passed after configuration changes are applied.
        # Corresponds to the JSON property `minWaitDuration`
        # @return [String]
        attr_accessor :min_wait_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disruption_budget = args[:disruption_budget] if args.key?(:disruption_budget)
          @min_wait_duration = args[:min_wait_duration] if args.key?(:min_wait_duration)
        end
      end
      
      # Filtering criteria to select VMs based on inventory details.
      class OsPolicyInventoryFilter
        include Google::Apis::Core::Hashable
      
        # Required. The OS short name
        # Corresponds to the JSON property `osShortName`
        # @return [String]
        attr_accessor :os_short_name
      
        # The OS version Prefix matches are supported if asterisk(*) is provided as the
        # last character. For example, to match all versions with a major version of `7`,
        # specify the following value for this field `7.*` An empty string matches all
        # OS versions.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_short_name = args[:os_short_name] if args.key?(:os_short_name)
          @os_version = args[:os_version] if args.key?(:os_version)
        end
      end
      
      # Filtering criteria to select VMs based on OS details.
      class OsPolicyOsFilter
        include Google::Apis::Core::Hashable
      
        # This should match OS short name emitted by the OS inventory agent. An empty
        # value matches any OS.
        # Corresponds to the JSON property `osShortName`
        # @return [String]
        attr_accessor :os_short_name
      
        # This value should match the version emitted by the OS inventory agent. Prefix
        # matches are supported if asterisk(*) is provided as the last character. For
        # example, to match all versions with a major version of `7`, specify the
        # following value for this field `7.*`
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_short_name = args[:os_short_name] if args.key?(:os_short_name)
          @os_version = args[:os_version] if args.key?(:os_version)
        end
      end
      
      # An OS policy resource is used to define the desired state configuration and
      # provides a specific functionality like installing/removing packages, executing
      # a script etc. The system ensures that resources are always in their desired
      # state by taking necessary actions if they have drifted from their desired
      # state.
      class OsPolicyResource
        include Google::Apis::Core::Hashable
      
        # A resource that allows executing scripts on the VM. The `ExecResource` has 2
        # stages: `validate` and `enforce` and both stages accept a script as an
        # argument to execute. When the `ExecResource` is applied by the agent, it first
        # executes the script in the `validate` stage. The `validate` stage can signal
        # that the `ExecResource` is already in the desired state by returning an exit
        # code of `100`. If the `ExecResource` is not in the desired state, it should
        # return an exit code of `101`. Any other exit code returned by this stage is
        # considered an error. If the `ExecResource` is not in the desired state based
        # on the exit code from the `validate` stage, the agent proceeds to execute the
        # script from the `enforce` stage. If the `ExecResource` is already in the
        # desired state, the `enforce` stage will not be run. Similar to `validate`
        # stage, the `enforce` stage should return an exit code of `100` to indicate
        # that the resource in now in its desired state. Any other exit code is
        # considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101`
        # vs `1`) to have an explicit indicator of `in desired state`, `not in desired
        # state` and errors. Because, for example, Powershell will always return an exit
        # code of `0` unless an `exit` statement is provided in the script. So, for
        # reasons of consistency and being explicit, exit codes `100` and `101` were
        # chosen.
        # Corresponds to the JSON property `exec`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResource]
        attr_accessor :exec
      
        # A resource that manages the state of a file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFileResource]
        attr_accessor :file
      
        # Required. The id of the resource with the following restrictions: * Must
        # contain only lowercase letters, numbers, and hyphens. * Must start with a
        # letter. * Must be between 1-63 characters. * Must end with a number or a
        # letter. * Must be unique within the OS policy.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A resource that manages a system package.
        # Corresponds to the JSON property `pkg`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResource]
        attr_accessor :pkg
      
        # A resource that manages a package repository.
        # Corresponds to the JSON property `repository`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResource]
        attr_accessor :repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exec = args[:exec] if args.key?(:exec)
          @file = args[:file] if args.key?(:file)
          @id = args[:id] if args.key?(:id)
          @pkg = args[:pkg] if args.key?(:pkg)
          @repository = args[:repository] if args.key?(:repository)
        end
      end
      
      # Compliance data for an OS policy resource.
      class OsPolicyResourceCompliance
        include Google::Apis::Core::Hashable
      
        # Ordered list of configuration steps taken by the agent for the OS policy
        # resource.
        # Corresponds to the JSON property `configSteps`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyResourceConfigStep>]
        attr_accessor :config_steps
      
        # ExecResource specific output.
        # Corresponds to the JSON property `execResourceOutput`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceComplianceExecResourceOutput]
        attr_accessor :exec_resource_output
      
        # The id of the OS policy resource.
        # Corresponds to the JSON property `osPolicyResourceId`
        # @return [String]
        attr_accessor :os_policy_resource_id
      
        # Compliance state of the OS policy resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_steps = args[:config_steps] if args.key?(:config_steps)
          @exec_resource_output = args[:exec_resource_output] if args.key?(:exec_resource_output)
          @os_policy_resource_id = args[:os_policy_resource_id] if args.key?(:os_policy_resource_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # ExecResource specific output.
      class OsPolicyResourceComplianceExecResourceOutput
        include Google::Apis::Core::Hashable
      
        # Output from Enforcement phase output file (if run). Output size is limited to
        # 100K bytes.
        # Corresponds to the JSON property `enforcementOutput`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :enforcement_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforcement_output = args[:enforcement_output] if args.key?(:enforcement_output)
        end
      end
      
      # Step performed by the OS Config agent for configuring an `OSPolicyResource` to
      # its desired state.
      class OsPolicyResourceConfigStep
        include Google::Apis::Core::Hashable
      
        # An error message recorded during the execution of this step. Only populated
        # when outcome is FAILED.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Outcome of the configuration step.
        # Corresponds to the JSON property `outcome`
        # @return [String]
        attr_accessor :outcome
      
        # Configuration step type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @outcome = args[:outcome] if args.key?(:outcome)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A resource that allows executing scripts on the VM. The `ExecResource` has 2
      # stages: `validate` and `enforce` and both stages accept a script as an
      # argument to execute. When the `ExecResource` is applied by the agent, it first
      # executes the script in the `validate` stage. The `validate` stage can signal
      # that the `ExecResource` is already in the desired state by returning an exit
      # code of `100`. If the `ExecResource` is not in the desired state, it should
      # return an exit code of `101`. Any other exit code returned by this stage is
      # considered an error. If the `ExecResource` is not in the desired state based
      # on the exit code from the `validate` stage, the agent proceeds to execute the
      # script from the `enforce` stage. If the `ExecResource` is already in the
      # desired state, the `enforce` stage will not be run. Similar to `validate`
      # stage, the `enforce` stage should return an exit code of `100` to indicate
      # that the resource in now in its desired state. Any other exit code is
      # considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101`
      # vs `1`) to have an explicit indicator of `in desired state`, `not in desired
      # state` and errors. Because, for example, Powershell will always return an exit
      # code of `0` unless an `exit` statement is provided in the script. So, for
      # reasons of consistency and being explicit, exit codes `100` and `101` were
      # chosen.
      class OsPolicyResourceExecResource
        include Google::Apis::Core::Hashable
      
        # A file or script to execute.
        # Corresponds to the JSON property `enforce`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResourceExec]
        attr_accessor :enforce
      
        # A file or script to execute.
        # Corresponds to the JSON property `validate`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResourceExec]
        attr_accessor :validate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforce = args[:enforce] if args.key?(:enforce)
          @validate = args[:validate] if args.key?(:validate)
        end
      end
      
      # A file or script to execute.
      class OsPolicyResourceExecResourceExec
        include Google::Apis::Core::Hashable
      
        # Optional arguments to pass to the source during execution.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # A remote or local file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFile]
        attr_accessor :file
      
        # Required. The script interpreter to use.
        # Corresponds to the JSON property `interpreter`
        # @return [String]
        attr_accessor :interpreter
      
        # Only recorded for enforce Exec. Path to an output file (that is created by
        # this Exec) whose content will be recorded in OSPolicyResourceCompliance after
        # a successful run. Absence or failure to read this file will result in this
        # ExecResource being non-compliant. Output file size is limited to 100K bytes.
        # Corresponds to the JSON property `outputFilePath`
        # @return [String]
        attr_accessor :output_file_path
      
        # An inline script. The size of the script is limited to 32KiB.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @file = args[:file] if args.key?(:file)
          @interpreter = args[:interpreter] if args.key?(:interpreter)
          @output_file_path = args[:output_file_path] if args.key?(:output_file_path)
          @script = args[:script] if args.key?(:script)
        end
      end
      
      # A remote or local file.
      class OsPolicyResourceFile
        include Google::Apis::Core::Hashable
      
        # Defaults to false. When false, files are subject to validations based on the
        # file type: Remote: A checksum must be specified. Cloud Storage: An object
        # generation number must be specified.
        # Corresponds to the JSON property `allowInsecure`
        # @return [Boolean]
        attr_accessor :allow_insecure
        alias_method :allow_insecure?, :allow_insecure
      
        # Specifies a file available as a Cloud Storage Object.
        # Corresponds to the JSON property `gcs`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFileGcs]
        attr_accessor :gcs
      
        # A local path within the VM to use.
        # Corresponds to the JSON property `localPath`
        # @return [String]
        attr_accessor :local_path
      
        # Specifies a file available via some URI.
        # Corresponds to the JSON property `remote`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFileRemote]
        attr_accessor :remote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_insecure = args[:allow_insecure] if args.key?(:allow_insecure)
          @gcs = args[:gcs] if args.key?(:gcs)
          @local_path = args[:local_path] if args.key?(:local_path)
          @remote = args[:remote] if args.key?(:remote)
        end
      end
      
      # Specifies a file available as a Cloud Storage Object.
      class OsPolicyResourceFileGcs
        include Google::Apis::Core::Hashable
      
        # Required. Bucket of the Cloud Storage object.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Generation number of the Cloud Storage object.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Required. Name of the Cloud Storage object.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Specifies a file available via some URI.
      class OsPolicyResourceFileRemote
        include Google::Apis::Core::Hashable
      
        # SHA256 checksum of the remote file.
        # Corresponds to the JSON property `sha256Checksum`
        # @return [String]
        attr_accessor :sha256_checksum
      
        # Required. URI from which to fetch the object. It should contain both the
        # protocol and path following the format ``protocol`://`location``.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256_checksum = args[:sha256_checksum] if args.key?(:sha256_checksum)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A resource that manages the state of a file.
      class OsPolicyResourceFileResource
        include Google::Apis::Core::Hashable
      
        # A a file with this content. The size of the content is limited to 32KiB.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # A remote or local file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFile]
        attr_accessor :file
      
        # Required. The absolute path of the file within the VM.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Consists of three octal digits which represent, in order, the permissions of
        # the owner, group, and other users for the file (similarly to the numeric mode
        # used in the linux chmod utility). Each digit represents a three bit number
        # with the 4 bit corresponding to the read permissions, the 2 bit corresponds to
        # the write bit, and the one bit corresponds to the execute permission. Default
        # behavior is 755. Below are some examples of permissions and their associated
        # values: read, write, and execute: 7 read and execute: 5 read and write: 6 read
        # only: 4
        # Corresponds to the JSON property `permissions`
        # @return [String]
        attr_accessor :permissions
      
        # Required. Desired state of the file.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @file = args[:file] if args.key?(:file)
          @path = args[:path] if args.key?(:path)
          @permissions = args[:permissions] if args.key?(:permissions)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Resource groups provide a mechanism to group OS policy resources. Resource
      # groups enable OS policy authors to create a single OS policy to be applied to
      # VMs running different operating Systems. When the OS policy is applied to a
      # target VM, the appropriate resource group within the OS policy is selected
      # based on the `OSFilter` specified within the resource group.
      class OsPolicyResourceGroup
        include Google::Apis::Core::Hashable
      
        # List of inventory filters for the resource group. The resources in this
        # resource group are applied to the target VM if it satisfies at least one of
        # the following inventory filters. For example, to apply this resource group to
        # VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for
        # the list with following values: inventory_filters[0].os_short_name='rhel' and
        # inventory_filters[1].os_short_name='centos' If the list is empty, this
        # resource group will be applied to the target VM unconditionally.
        # Corresponds to the JSON property `inventoryFilters`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyInventoryFilter>]
        attr_accessor :inventory_filters
      
        # Filtering criteria to select VMs based on OS details.
        # Corresponds to the JSON property `osFilter`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyOsFilter]
        attr_accessor :os_filter
      
        # Required. List of resources configured for this resource group. The resources
        # are executed in the exact order specified here.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::OsconfigV1alpha::OsPolicyResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_filters = args[:inventory_filters] if args.key?(:inventory_filters)
          @os_filter = args[:os_filter] if args.key?(:os_filter)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # A resource that manages a system package.
      class OsPolicyResourcePackageResource
        include Google::Apis::Core::Hashable
      
        # A package managed by APT. - install: `apt-get update && apt-get -y install [
        # name]` - remove: `apt-get -y remove [name]`
        # Corresponds to the JSON property `apt`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceApt]
        attr_accessor :apt
      
        # A deb package file. dpkg packages only support INSTALLED state.
        # Corresponds to the JSON property `deb`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceDeb]
        attr_accessor :deb
      
        # Required. The desired state the agent should maintain for this package.
        # Corresponds to the JSON property `desiredState`
        # @return [String]
        attr_accessor :desired_state
      
        # A package managed by GooGet. - install: `googet -noconfirm install package` -
        # remove: `googet -noconfirm remove package`
        # Corresponds to the JSON property `googet`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceGooGet]
        attr_accessor :googet
      
        # An MSI package. MSI packages only support INSTALLED state.
        # Corresponds to the JSON property `msi`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceMsi]
        attr_accessor :msi
      
        # An RPM package file. RPM packages only support INSTALLED state.
        # Corresponds to the JSON property `rpm`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceRpm]
        attr_accessor :rpm
      
        # A package managed by YUM. - install: `yum -y install package` - remove: `yum -
        # y remove package`
        # Corresponds to the JSON property `yum`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceYum]
        attr_accessor :yum
      
        # A package managed by Zypper. - install: `zypper -y install package` - remove: `
        # zypper -y rm package`
        # Corresponds to the JSON property `zypper`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceZypper]
        attr_accessor :zypper
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt = args[:apt] if args.key?(:apt)
          @deb = args[:deb] if args.key?(:deb)
          @desired_state = args[:desired_state] if args.key?(:desired_state)
          @googet = args[:googet] if args.key?(:googet)
          @msi = args[:msi] if args.key?(:msi)
          @rpm = args[:rpm] if args.key?(:rpm)
          @yum = args[:yum] if args.key?(:yum)
          @zypper = args[:zypper] if args.key?(:zypper)
        end
      end
      
      # A package managed by APT. - install: `apt-get update && apt-get -y install [
      # name]` - remove: `apt-get -y remove [name]`
      class OsPolicyResourcePackageResourceApt
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
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
      
      # A deb package file. dpkg packages only support INSTALLED state.
      class OsPolicyResourcePackageResourceDeb
        include Google::Apis::Core::Hashable
      
        # Whether dependencies should also be installed. - install when false: `dpkg -i
        # package` - install when true: `apt-get update && apt-get -y install package.
        # deb`
        # Corresponds to the JSON property `pullDeps`
        # @return [Boolean]
        attr_accessor :pull_deps
        alias_method :pull_deps?, :pull_deps
      
        # A remote or local file.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFile]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pull_deps = args[:pull_deps] if args.key?(:pull_deps)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A package managed by GooGet. - install: `googet -noconfirm install package` -
      # remove: `googet -noconfirm remove package`
      class OsPolicyResourcePackageResourceGooGet
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
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
      
      # An MSI package. MSI packages only support INSTALLED state.
      class OsPolicyResourcePackageResourceMsi
        include Google::Apis::Core::Hashable
      
        # Additional properties to use during installation. This should be in the format
        # of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=
        # ReallySuppress`.
        # Corresponds to the JSON property `properties`
        # @return [Array<String>]
        attr_accessor :properties
      
        # A remote or local file.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFile]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # An RPM package file. RPM packages only support INSTALLED state.
      class OsPolicyResourcePackageResourceRpm
        include Google::Apis::Core::Hashable
      
        # Whether dependencies should also be installed. - install when false: `rpm --
        # upgrade --replacepkgs package.rpm` - install when true: `yum -y install
        # package.rpm` or `zypper -y install package.rpm`
        # Corresponds to the JSON property `pullDeps`
        # @return [Boolean]
        attr_accessor :pull_deps
        alias_method :pull_deps?, :pull_deps
      
        # A remote or local file.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceFile]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pull_deps = args[:pull_deps] if args.key?(:pull_deps)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A package managed by YUM. - install: `yum -y install package` - remove: `yum -
      # y remove package`
      class OsPolicyResourcePackageResourceYum
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
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
      
      # A package managed by Zypper. - install: `zypper -y install package` - remove: `
      # zypper -y rm package`
      class OsPolicyResourcePackageResourceZypper
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
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
      
      # A resource that manages a package repository.
      class OsPolicyResourceRepositoryResource
        include Google::Apis::Core::Hashable
      
        # Represents a single apt package repository. These will be added to a repo file
        # that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
        # Corresponds to the JSON property `apt`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceAptRepository]
        attr_accessor :apt
      
        # Represents a Goo package repository. These are added to a repo file that is
        # managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
        # Corresponds to the JSON property `goo`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceGooRepository]
        attr_accessor :goo
      
        # Represents a single yum package repository. These are added to a repo file
        # that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
        # Corresponds to the JSON property `yum`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceYumRepository]
        attr_accessor :yum
      
        # Represents a single zypper package repository. These are added to a repo file
        # that is managed at `/etc/zypp/repos.d/google_osconfig.repo`.
        # Corresponds to the JSON property `zypper`
        # @return [Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceZypperRepository]
        attr_accessor :zypper
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt = args[:apt] if args.key?(:apt)
          @goo = args[:goo] if args.key?(:goo)
          @yum = args[:yum] if args.key?(:yum)
          @zypper = args[:zypper] if args.key?(:zypper)
        end
      end
      
      # Represents a single apt package repository. These will be added to a repo file
      # that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
      class OsPolicyResourceRepositoryResourceAptRepository
        include Google::Apis::Core::Hashable
      
        # Required. Type of archive files in this repository.
        # Corresponds to the JSON property `archiveType`
        # @return [String]
        attr_accessor :archive_type
      
        # Required. List of components for this repository. Must contain at least one
        # item.
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # Required. Distribution of this repository.
        # Corresponds to the JSON property `distribution`
        # @return [String]
        attr_accessor :distribution
      
        # URI of the key file for this repository. The agent maintains a keyring at `/
        # etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
        # Corresponds to the JSON property `gpgKey`
        # @return [String]
        attr_accessor :gpg_key
      
        # Required. URI for this repository.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_type = args[:archive_type] if args.key?(:archive_type)
          @components = args[:components] if args.key?(:components)
          @distribution = args[:distribution] if args.key?(:distribution)
          @gpg_key = args[:gpg_key] if args.key?(:gpg_key)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents a Goo package repository. These are added to a repo file that is
      # managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
      class OsPolicyResourceRepositoryResourceGooRepository
        include Google::Apis::Core::Hashable
      
        # Required. The name of the repository.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The url of the repository.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents a single yum package repository. These are added to a repo file
      # that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
      class OsPolicyResourceRepositoryResourceYumRepository
        include Google::Apis::Core::Hashable
      
        # Required. The location of the repository directory.
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # The display name of the repository.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URIs of GPG keys.
        # Corresponds to the JSON property `gpgKeys`
        # @return [Array<String>]
        attr_accessor :gpg_keys
      
        # Required. A one word, unique name for this repository. This is the `repo id`
        # in the yum config file and also the `display_name` if `display_name` is
        # omitted. This id is also used as the unique identifier when checking for
        # resource conflicts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_url = args[:base_url] if args.key?(:base_url)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gpg_keys = args[:gpg_keys] if args.key?(:gpg_keys)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Represents a single zypper package repository. These are added to a repo file
      # that is managed at `/etc/zypp/repos.d/google_osconfig.repo`.
      class OsPolicyResourceRepositoryResourceZypperRepository
        include Google::Apis::Core::Hashable
      
        # Required. The location of the repository directory.
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # The display name of the repository.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URIs of GPG keys.
        # Corresponds to the JSON property `gpgKeys`
        # @return [Array<String>]
        attr_accessor :gpg_keys
      
        # Required. A one word, unique name for this repository. This is the `repo id`
        # in the zypper config file and also the `display_name` if `display_name` is
        # omitted. This id is also used as the unique identifier when checking for
        # GuestPolicy conflicts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_url = args[:base_url] if args.key?(:base_url)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gpg_keys = args[:gpg_keys] if args.key?(:gpg_keys)
          @id = args[:id] if args.key?(:id)
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
        # @return [Google::Apis::OsconfigV1alpha::Status]
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
      
      # This API resource represents the vulnerability report for a specified Compute
      # Engine virtual machine (VM) instance at a given point in time. For more
      # information, see [Vulnerability reports](https://cloud.google.com/compute/docs/
      # instances/os-inventory-management#vulnerability-reports).
      class VulnerabilityReport
        include Google::Apis::Core::Hashable
      
        # Output only. The `vulnerabilityReport` API resource name. Format: `projects/`
        # project_number`/locations/`location`/instances/`instance_id`/
        # vulnerabilityReport`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp for when the last vulnerability report was
        # generated for the VM.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. List of vulnerabilities affecting the VM.
        # Corresponds to the JSON property `vulnerabilities`
        # @return [Array<Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerability>]
        attr_accessor :vulnerabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vulnerabilities = args[:vulnerabilities] if args.key?(:vulnerabilities)
        end
      end
      
      # A vulnerability affecting the VM instance.
      class VulnerabilityReportVulnerability
        include Google::Apis::Core::Hashable
      
        # Corresponds to the `AVAILABLE_PACKAGE` inventory item on the VM. If the
        # vulnerability report was not updated after the VM inventory update, these
        # values might not display in VM inventory. If there is no available fix, the
        # field is empty. The `inventory_item` value specifies the latest `
        # SoftwarePackage` available to the VM that fixes the vulnerability.
        # Corresponds to the JSON property `availableInventoryItemIds`
        # @return [Array<String>]
        attr_accessor :available_inventory_item_ids
      
        # The timestamp for when the vulnerability was first detected.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Contains metadata information for the vulnerability. This information is
        # collected from the upstream feed of the operating system.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityDetails]
        attr_accessor :details
      
        # Corresponds to the `INSTALLED_PACKAGE` inventory item on the VM. This field
        # displays the inventory items affected by this vulnerability. If the
        # vulnerability report was not updated after the VM inventory update, these
        # values might not display in VM inventory. For some distros, this field may be
        # empty.
        # Corresponds to the JSON property `installedInventoryItemIds`
        # @return [Array<String>]
        attr_accessor :installed_inventory_item_ids
      
        # List of items affected by the vulnerability.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityItem>]
        attr_accessor :items
      
        # The timestamp for when the vulnerability was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_inventory_item_ids = args[:available_inventory_item_ids] if args.key?(:available_inventory_item_ids)
          @create_time = args[:create_time] if args.key?(:create_time)
          @details = args[:details] if args.key?(:details)
          @installed_inventory_item_ids = args[:installed_inventory_item_ids] if args.key?(:installed_inventory_item_ids)
          @items = args[:items] if args.key?(:items)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Contains metadata information for the vulnerability. This information is
      # collected from the upstream feed of the operating system.
      class VulnerabilityReportVulnerabilityDetails
        include Google::Apis::Core::Hashable
      
        # The CVE of the vulnerability. CVE cannot be empty and the combination of
        # should be unique across vulnerabilities for a VM.
        # Corresponds to the JSON property `cve`
        # @return [String]
        attr_accessor :cve
      
        # The CVSS V2 score of this vulnerability. CVSS V2 score is on a scale of 0 - 10
        # where 0 indicates low severity and 10 indicates high severity.
        # Corresponds to the JSON property `cvssV2Score`
        # @return [Float]
        attr_accessor :cvss_v2_score
      
        # Common Vulnerability Scoring System version 3. For details, see https://www.
        # first.org/cvss/specification-document
        # Corresponds to the JSON property `cvssV3`
        # @return [Google::Apis::OsconfigV1alpha::CvsSv3]
        attr_accessor :cvss_v3
      
        # The note or description describing the vulnerability from the distro.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Corresponds to the references attached to the `VulnerabilityDetails`.
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityDetailsReference>]
        attr_accessor :references
      
        # Assigned severity/impact ranking from the distro.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @cvss_v2_score = args[:cvss_v2_score] if args.key?(:cvss_v2_score)
          @cvss_v3 = args[:cvss_v3] if args.key?(:cvss_v3)
          @description = args[:description] if args.key?(:description)
          @references = args[:references] if args.key?(:references)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A reference for this vulnerability.
      class VulnerabilityReportVulnerabilityDetailsReference
        include Google::Apis::Core::Hashable
      
        # The source of the reference e.g. NVD.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The url of the reference.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # OS inventory item that is affected by a vulnerability or fixed as a result of
      # a vulnerability.
      class VulnerabilityReportVulnerabilityItem
        include Google::Apis::Core::Hashable
      
        # Corresponds to the `AVAILABLE_PACKAGE` inventory item on the VM. If the
        # vulnerability report was not updated after the VM inventory update, these
        # values might not display in VM inventory. If there is no available fix, the
        # field is empty. The `inventory_item` value specifies the latest `
        # SoftwarePackage` available to the VM that fixes the vulnerability.
        # Corresponds to the JSON property `availableInventoryItemId`
        # @return [String]
        attr_accessor :available_inventory_item_id
      
        # The recommended [CPE URI](https://cpe.mitre.org/specification/) update that
        # contains a fix for this vulnerability.
        # Corresponds to the JSON property `fixedCpeUri`
        # @return [String]
        attr_accessor :fixed_cpe_uri
      
        # Corresponds to the `INSTALLED_PACKAGE` inventory item on the VM. This field
        # displays the inventory items affected by this vulnerability. If the
        # vulnerability report was not updated after the VM inventory update, these
        # values might not display in VM inventory. For some operating systems, this
        # field might be empty.
        # Corresponds to the JSON property `installedInventoryItemId`
        # @return [String]
        attr_accessor :installed_inventory_item_id
      
        # The upstream OS patch, packages or KB that fixes the vulnerability.
        # Corresponds to the JSON property `upstreamFix`
        # @return [String]
        attr_accessor :upstream_fix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_inventory_item_id = args[:available_inventory_item_id] if args.key?(:available_inventory_item_id)
          @fixed_cpe_uri = args[:fixed_cpe_uri] if args.key?(:fixed_cpe_uri)
          @installed_inventory_item_id = args[:installed_inventory_item_id] if args.key?(:installed_inventory_item_id)
          @upstream_fix = args[:upstream_fix] if args.key?(:upstream_fix)
        end
      end
    end
  end
end
