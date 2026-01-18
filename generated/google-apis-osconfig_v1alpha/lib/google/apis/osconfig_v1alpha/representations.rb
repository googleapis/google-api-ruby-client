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
      
      class CvsSv3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedOrPercent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigCommonV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigCommonV1alphaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigCommonV1mainOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2betaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceOsPoliciesCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceOsPoliciesComplianceOsPolicyCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Inventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryOsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySoftwarePackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryVersionedPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsQuickFixEngineeringPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsUpdatePackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryWindowsUpdatePackageWindowsUpdateCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryZypperPatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstanceOsPoliciesCompliancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOsPolicyAssignmentReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOsPolicyAssignmentRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOsPolicyAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVulnerabilityReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentInstanceFilterInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentLabelSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentRollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyInventoryFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyOsFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceComplianceExecResourceOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceConfigStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceExecResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceExecResourceExec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileGcs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileRemote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceApt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceDeb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceGooGet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceMsi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceRpm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceYum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceZypper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceAptRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceGooRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceYumRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceZypperRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerabilityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerabilityDetailsReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityReportVulnerabilityItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CvsSv3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_complexity, as: 'attackComplexity'
          property :attack_vector, as: 'attackVector'
          property :availability_impact, as: 'availabilityImpact'
          property :base_score, as: 'baseScore'
          property :confidentiality_impact, as: 'confidentialityImpact'
          property :exploitability_score, as: 'exploitabilityScore'
          property :impact_score, as: 'impactScore'
          property :integrity_impact, as: 'integrityImpact'
          property :privileges_required, as: 'privilegesRequired'
          property :scope, as: 'scope'
          property :user_interaction, as: 'userInteraction'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FixedOrPercent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed, as: 'fixed'
          property :percent, as: 'percent'
        end
      end
      
      class GoogleCloudOsconfigCommonV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudOsconfigCommonV1alphaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudOsconfigCommonV1mainOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method, as: 'apiMethod'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :rollout_start_time, as: 'rolloutStartTime'
          property :rollout_state, as: 'rolloutState'
          property :rollout_update_time, as: 'rolloutUpdateTime'
        end
      end
      
      class GoogleCloudOsconfigV2OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudOsconfigV2betaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class InstanceOsPoliciesCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detailed_state, as: 'detailedState'
          property :detailed_state_reason, as: 'detailedStateReason'
          property :instance, as: 'instance'
          property :last_compliance_check_time, as: 'lastComplianceCheckTime'
          property :last_compliance_run_id, as: 'lastComplianceRunId'
          property :name, as: 'name'
          collection :os_policy_compliances, as: 'osPolicyCompliances', class: Google::Apis::OsconfigV1alpha::InstanceOsPoliciesComplianceOsPolicyCompliance, decorator: Google::Apis::OsconfigV1alpha::InstanceOsPoliciesComplianceOsPolicyCompliance::Representation
      
          property :state, as: 'state'
        end
      end
      
      class InstanceOsPoliciesComplianceOsPolicyCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :os_policy_id, as: 'osPolicyId'
          collection :os_policy_resource_compliances, as: 'osPolicyResourceCompliances', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceCompliance, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceCompliance::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Inventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :items, as: 'items', class: Google::Apis::OsconfigV1alpha::InventoryItem, decorator: Google::Apis::OsconfigV1alpha::InventoryItem::Representation
      
          property :name, as: 'name'
          property :os_info, as: 'osInfo', class: Google::Apis::OsconfigV1alpha::InventoryOsInfo, decorator: Google::Apis::OsconfigV1alpha::InventoryOsInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class InventoryItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_package, as: 'availablePackage', class: Google::Apis::OsconfigV1alpha::InventorySoftwarePackage, decorator: Google::Apis::OsconfigV1alpha::InventorySoftwarePackage::Representation
      
          property :create_time, as: 'createTime'
          property :id, as: 'id'
          property :installed_package, as: 'installedPackage', class: Google::Apis::OsconfigV1alpha::InventorySoftwarePackage, decorator: Google::Apis::OsconfigV1alpha::InventorySoftwarePackage::Representation
      
          property :origin_type, as: 'originType'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InventoryOsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :hostname, as: 'hostname'
          property :kernel_release, as: 'kernelRelease'
          property :kernel_version, as: 'kernelVersion'
          property :long_name, as: 'longName'
          property :osconfig_agent_version, as: 'osconfigAgentVersion'
          property :short_name, as: 'shortName'
          property :version, as: 'version'
        end
      end
      
      class InventorySoftwarePackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt_package, as: 'aptPackage', class: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage::Representation
      
          property :cos_package, as: 'cosPackage', class: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage::Representation
      
          property :googet_package, as: 'googetPackage', class: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage::Representation
      
          property :qfe_package, as: 'qfePackage', class: Google::Apis::OsconfigV1alpha::InventoryWindowsQuickFixEngineeringPackage, decorator: Google::Apis::OsconfigV1alpha::InventoryWindowsQuickFixEngineeringPackage::Representation
      
          property :windows_application, as: 'windowsApplication', class: Google::Apis::OsconfigV1alpha::InventoryWindowsApplication, decorator: Google::Apis::OsconfigV1alpha::InventoryWindowsApplication::Representation
      
          property :wua_package, as: 'wuaPackage', class: Google::Apis::OsconfigV1alpha::InventoryWindowsUpdatePackage, decorator: Google::Apis::OsconfigV1alpha::InventoryWindowsUpdatePackage::Representation
      
          property :yum_package, as: 'yumPackage', class: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage::Representation
      
          property :zypper_package, as: 'zypperPackage', class: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage, decorator: Google::Apis::OsconfigV1alpha::InventoryVersionedPackage::Representation
      
          property :zypper_patch, as: 'zypperPatch', class: Google::Apis::OsconfigV1alpha::InventoryZypperPatch, decorator: Google::Apis::OsconfigV1alpha::InventoryZypperPatch::Representation
      
        end
      end
      
      class InventoryVersionedPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :package_name, as: 'packageName'
          property :version, as: 'version'
        end
      end
      
      class InventoryWindowsApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :display_version, as: 'displayVersion'
          property :help_link, as: 'helpLink'
          property :install_date, as: 'installDate', class: Google::Apis::OsconfigV1alpha::Date, decorator: Google::Apis::OsconfigV1alpha::Date::Representation
      
          property :publisher, as: 'publisher'
        end
      end
      
      class InventoryWindowsQuickFixEngineeringPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caption, as: 'caption'
          property :description, as: 'description'
          property :hot_fix_id, as: 'hotFixId'
          property :install_time, as: 'installTime'
        end
      end
      
      class InventoryWindowsUpdatePackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::OsconfigV1alpha::InventoryWindowsUpdatePackageWindowsUpdateCategory, decorator: Google::Apis::OsconfigV1alpha::InventoryWindowsUpdatePackageWindowsUpdateCategory::Representation
      
          property :description, as: 'description'
          collection :kb_article_ids, as: 'kbArticleIds'
          property :last_deployment_change_time, as: 'lastDeploymentChangeTime'
          collection :more_info_urls, as: 'moreInfoUrls'
          property :revision_number, as: 'revisionNumber'
          property :support_url, as: 'supportUrl'
          property :title, as: 'title'
          property :update_id, as: 'updateId'
        end
      end
      
      class InventoryWindowsUpdatePackageWindowsUpdateCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class InventoryZypperPatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :patch_name, as: 'patchName'
          property :severity, as: 'severity'
          property :summary, as: 'summary'
        end
      end
      
      class ListInstanceOsPoliciesCompliancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_os_policies_compliances, as: 'instanceOsPoliciesCompliances', class: Google::Apis::OsconfigV1alpha::InstanceOsPoliciesCompliance, decorator: Google::Apis::OsconfigV1alpha::InstanceOsPoliciesCompliance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventories, as: 'inventories', class: Google::Apis::OsconfigV1alpha::Inventory, decorator: Google::Apis::OsconfigV1alpha::Inventory::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOsPolicyAssignmentReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :os_policy_assignment_reports, as: 'osPolicyAssignmentReports', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReport, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReport::Representation
      
        end
      end
      
      class ListOsPolicyAssignmentRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :os_policy_assignments, as: 'osPolicyAssignments', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignment, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignment::Representation
      
        end
      end
      
      class ListOsPolicyAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :os_policy_assignments, as: 'osPolicyAssignments', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignment, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignment::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::OsconfigV1alpha::Operation, decorator: Google::Apis::OsconfigV1alpha::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListVulnerabilityReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :vulnerability_reports, as: 'vulnerabilityReports', class: Google::Apis::OsconfigV1alpha::VulnerabilityReport, decorator: Google::Apis::OsconfigV1alpha::VulnerabilityReport::Representation
      
        end
      end
      
      class MessageSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_no_resource_group_match, as: 'allowNoResourceGroupMatch'
          property :description, as: 'description'
          property :id, as: 'id'
          property :mode, as: 'mode'
          collection :resource_groups, as: 'resourceGroups', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceGroup, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceGroup::Representation
      
        end
      end
      
      class OsPolicyAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline, as: 'baseline'
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentInstanceFilter, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentInstanceFilter::Representation
      
          property :name, as: 'name'
          collection :os_policies, as: 'osPolicies', class: Google::Apis::OsconfigV1alpha::OsPolicy, decorator: Google::Apis::OsconfigV1alpha::OsPolicy::Representation
      
          property :reconciling, as: 'reconciling'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentRollout, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentRollout::Representation
      
          property :rollout_state, as: 'rolloutState'
          property :uid, as: 'uid'
        end
      end
      
      class OsPolicyAssignmentInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :exclusion_labels, as: 'exclusionLabels', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentLabelSet, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentLabelSet::Representation
      
          collection :inclusion_labels, as: 'inclusionLabels', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentLabelSet, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentLabelSet::Representation
      
          collection :inventories, as: 'inventories', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentInstanceFilterInventory, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentInstanceFilterInventory::Representation
      
          collection :os_short_names, as: 'osShortNames'
        end
      end
      
      class OsPolicyAssignmentInstanceFilterInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyAssignmentLabelSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class OsPolicyAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method, as: 'apiMethod'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :rollout_start_time, as: 'rolloutStartTime'
          property :rollout_state, as: 'rolloutState'
          property :rollout_update_time, as: 'rolloutUpdateTime'
        end
      end
      
      class OsPolicyAssignmentReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
          property :last_run_id, as: 'lastRunId'
          property :name, as: 'name'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          collection :os_policy_compliances, as: 'osPolicyCompliances', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyCompliance, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyCompliance::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_state, as: 'complianceState'
          property :compliance_state_reason, as: 'complianceStateReason'
          property :os_policy_id, as: 'osPolicyId'
          collection :os_policy_resource_compliances, as: 'osPolicyResourceCompliances', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance::Representation
      
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_state, as: 'complianceState'
          property :compliance_state_reason, as: 'complianceStateReason'
          collection :config_steps, as: 'configSteps', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep::Representation
      
          property :exec_resource_output, as: 'execResourceOutput', class: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput, decorator: Google::Apis::OsconfigV1alpha::OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput::Representation
      
          property :os_policy_resource_id, as: 'osPolicyResourceId'
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceExecResourceOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_output, :base64 => true, as: 'enforcementOutput'
        end
      end
      
      class OsPolicyAssignmentReportOsPolicyComplianceOsPolicyResourceComplianceOsPolicyResourceConfigStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :type, as: 'type'
        end
      end
      
      class OsPolicyAssignmentRollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::OsconfigV1alpha::FixedOrPercent, decorator: Google::Apis::OsconfigV1alpha::FixedOrPercent::Representation
      
          property :min_wait_duration, as: 'minWaitDuration'
        end
      end
      
      class OsPolicyInventoryFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyOsFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResource, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResource::Representation
      
          property :file, as: 'file', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFileResource, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFileResource::Representation
      
          property :id, as: 'id'
          property :pkg, as: 'pkg', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResource, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResource::Representation
      
          property :repository, as: 'repository', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResource, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResource::Representation
      
        end
      end
      
      class OsPolicyResourceCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :config_steps, as: 'configSteps', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceConfigStep, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceConfigStep::Representation
      
          property :exec_resource_output, as: 'execResourceOutput', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceComplianceExecResourceOutput, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceComplianceExecResourceOutput::Representation
      
          property :os_policy_resource_id, as: 'osPolicyResourceId'
          property :state, as: 'state'
        end
      end
      
      class OsPolicyResourceComplianceExecResourceOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_output, :base64 => true, as: 'enforcementOutput'
        end
      end
      
      class OsPolicyResourceConfigStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :outcome, as: 'outcome'
          property :type, as: 'type'
        end
      end
      
      class OsPolicyResourceExecResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforce, as: 'enforce', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResourceExec, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResourceExec::Representation
      
          property :validate, as: 'validate', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResourceExec, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceExecResourceExec::Representation
      
        end
      end
      
      class OsPolicyResourceExecResourceExec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :file, as: 'file', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile::Representation
      
          property :interpreter, as: 'interpreter'
          property :output_file_path, as: 'outputFilePath'
          property :script, as: 'script'
        end
      end
      
      class OsPolicyResourceFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_insecure, as: 'allowInsecure'
          property :gcs, as: 'gcs', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFileGcs, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFileGcs::Representation
      
          property :local_path, as: 'localPath'
          property :remote, as: 'remote', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFileRemote, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFileRemote::Representation
      
        end
      end
      
      class OsPolicyResourceFileGcs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class OsPolicyResourceFileRemote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_checksum, as: 'sha256Checksum'
          property :uri, as: 'uri'
        end
      end
      
      class OsPolicyResourceFileResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :file, as: 'file', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile::Representation
      
          property :path, as: 'path'
          property :permissions, as: 'permissions'
          property :state, as: 'state'
        end
      end
      
      class OsPolicyResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_filters, as: 'inventoryFilters', class: Google::Apis::OsconfigV1alpha::OsPolicyInventoryFilter, decorator: Google::Apis::OsconfigV1alpha::OsPolicyInventoryFilter::Representation
      
          property :os_filter, as: 'osFilter', class: Google::Apis::OsconfigV1alpha::OsPolicyOsFilter, decorator: Google::Apis::OsconfigV1alpha::OsPolicyOsFilter::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::OsconfigV1alpha::OsPolicyResource, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResource::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceApt, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceApt::Representation
      
          property :deb, as: 'deb', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceDeb, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceDeb::Representation
      
          property :desired_state, as: 'desiredState'
          property :googet, as: 'googet', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceGooGet, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceGooGet::Representation
      
          property :msi, as: 'msi', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceMsi, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceMsi::Representation
      
          property :rpm, as: 'rpm', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceRpm, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceRpm::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceYum, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceYum::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceZypper, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourcePackageResourceZypper::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceApt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceDeb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_deps, as: 'pullDeps'
          property :source, as: 'source', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceGooGet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceMsi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties'
          property :source, as: 'source', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceRpm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_deps, as: 'pullDeps'
          property :source, as: 'source', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceYum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceZypper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourceRepositoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceAptRepository, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceAptRepository::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceGooRepository, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceGooRepository::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceYumRepository, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceYumRepository::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceZypperRepository, decorator: Google::Apis::OsconfigV1alpha::OsPolicyResourceRepositoryResourceZypperRepository::Representation
      
        end
      end
      
      class OsPolicyResourceRepositoryResourceAptRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_type, as: 'archiveType'
          collection :components, as: 'components'
          property :distribution, as: 'distribution'
          property :gpg_key, as: 'gpgKey'
          property :uri, as: 'uri'
        end
      end
      
      class OsPolicyResourceRepositoryResourceGooRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class OsPolicyResourceRepositoryResourceYumRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
        end
      end
      
      class OsPolicyResourceRepositoryResourceZypperRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::OsconfigV1alpha::Status, decorator: Google::Apis::OsconfigV1alpha::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StatusProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_code, as: 'canonicalCode'
          property :code, as: 'code'
          property :message, as: 'message'
          property :message_set, as: 'messageSet', class: Google::Apis::OsconfigV1alpha::MessageSet, decorator: Google::Apis::OsconfigV1alpha::MessageSet::Representation
      
          property :space, as: 'space'
        end
      end
      
      class VulnerabilityReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :highest_upgradable_cve_severity, as: 'highestUpgradableCveSeverity'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          collection :vulnerabilities, as: 'vulnerabilities', class: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerability, decorator: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerability::Representation
      
        end
      end
      
      class VulnerabilityReportVulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_inventory_item_ids, as: 'availableInventoryItemIds'
          property :create_time, as: 'createTime'
          property :details, as: 'details', class: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityDetails, decorator: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityDetails::Representation
      
          collection :installed_inventory_item_ids, as: 'installedInventoryItemIds'
          collection :items, as: 'items', class: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityItem, decorator: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityItem::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class VulnerabilityReportVulnerabilityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve'
          property :cvss_v2_score, as: 'cvssV2Score'
          property :cvss_v3, as: 'cvssV3', class: Google::Apis::OsconfigV1alpha::CvsSv3, decorator: Google::Apis::OsconfigV1alpha::CvsSv3::Representation
      
          property :description, as: 'description'
          collection :references, as: 'references', class: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityDetailsReference, decorator: Google::Apis::OsconfigV1alpha::VulnerabilityReportVulnerabilityDetailsReference::Representation
      
          property :severity, as: 'severity'
        end
      end
      
      class VulnerabilityReportVulnerabilityDetailsReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
          property :url, as: 'url'
        end
      end
      
      class VulnerabilityReportVulnerabilityItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_inventory_item_id, as: 'availableInventoryItemId'
          property :fixed_cpe_uri, as: 'fixedCpeUri'
          property :installed_inventory_item_id, as: 'installedInventoryItemId'
          property :upstream_fix, as: 'upstreamFix'
        end
      end
    end
  end
end
