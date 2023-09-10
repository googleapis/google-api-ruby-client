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
    module AssuredworkloadsV1beta1
      
      class GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1MoveImpact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Violation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledge_type, as: 'acknowledgeType'
          property :comment, as: 'comment'
          property :non_compliant_org_policy, as: 'nonCompliantOrgPolicy'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_move_analyses, as: 'assetMoveAnalyses', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analysis_groups, as: 'analysisGroups', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup::Representation
      
          property :asset, as: 'asset'
          property :asset_type, as: 'assetType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_regime, as: 'complianceRegime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
          collection :resource_settings, as: 'resourceSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :violations, as: 'violations', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workloads, as: 'workloads', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1MoveAnalysisGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_result, as: 'analysisResult', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult::Representation
      
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1MoveAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blockers, as: 'blockers', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveImpact, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveImpact::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveImpact, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1MoveImpact::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1MoveImpact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :restriction_type, as: 'restrictionType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Violation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledged, as: 'acknowledged'
          property :acknowledgement_time, as: 'acknowledgementTime'
          property :associated_org_policy_violation_id, as: 'associatedOrgPolicyViolationId'
          property :audit_log_link, as: 'auditLogLink'
          property :begin_time, as: 'beginTime'
          property :category, as: 'category'
          property :description, as: 'description'
          property :exception_audit_log_link, as: 'exceptionAuditLogLink'
          collection :exception_contexts, as: 'exceptionContexts', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext::Representation
      
          property :name, as: 'name'
          property :non_compliant_org_policy, as: 'nonCompliantOrgPolicy'
          property :org_policy_constraint, as: 'orgPolicyConstraint'
          property :parent_project_number, as: 'parentProjectNumber'
          property :remediation, as: 'remediation', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediation, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediation::Representation
      
          property :resolve_time, as: 'resolveTime'
          property :resource_name, as: 'resourceName'
          property :resource_type, as: 'resourceType'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :violation_type, as: 'violationType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationExceptionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledgement_time, as: 'acknowledgementTime'
          property :comment, as: 'comment'
          property :user_name, as: 'userName'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliant_values, as: 'compliantValues'
          property :instructions, as: 'instructions', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions::Representation
      
          property :remediation_type, as: 'remediationType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :console_instructions, as: 'consoleInstructions', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole::Representation
      
          property :gcloud_instructions, as: 'gcloudInstructions', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsConsole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_links, as: 'additionalLinks'
          collection :console_uris, as: 'consoleUris'
          collection :steps, as: 'steps'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ViolationRemediationInstructionsGcloud
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_links, as: 'additionalLinks'
          collection :gcloud_commands, as: 'gcloudCommands'
          collection :steps, as: 'steps'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account, as: 'billingAccount'
          property :cjis_settings, as: 'cjisSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings::Representation
      
          property :compliance_regime, as: 'complianceRegime'
          property :compliance_status, as: 'complianceStatus', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus::Representation
      
          collection :compliant_but_disallowed_services, as: 'compliantButDisallowedServices'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :ekm_provisioning_response, as: 'ekmProvisioningResponse', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse::Representation
      
          property :enable_sovereign_controls, as: 'enableSovereignControls'
          property :etag, as: 'etag'
          property :fedramp_high_settings, as: 'fedrampHighSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings::Representation
      
          property :fedramp_moderate_settings, as: 'fedrampModerateSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings::Representation
      
          property :il4_settings, as: 'il4Settings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings::Representation
      
          property :kaj_enrollment_state, as: 'kajEnrollmentState'
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :partner, as: 'partner'
          property :partner_permissions, as: 'partnerPermissions', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions::Representation
      
          property :provisioned_resources_parent, as: 'provisionedResourcesParent'
          property :resource_monitoring_enabled, as: 'resourceMonitoringEnabled'
          collection :resource_settings, as: 'resourceSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo::Representation
      
          property :saa_enrollment_response, as: 'saaEnrollmentResponse', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse::Representation
      
          property :violation_notifications_enabled, as: 'violationNotificationsEnabled'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledged_resource_violation_count, as: 'acknowledgedResourceViolationCount'
          property :acknowledged_violation_count, as: 'acknowledgedViolationCount'
          property :active_resource_violation_count, as: 'activeResourceViolationCount'
          property :active_violation_count, as: 'activeViolationCount'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ekm_provisioning_error_domain, as: 'ekmProvisioningErrorDomain'
          property :ekm_provisioning_error_mapping, as: 'ekmProvisioningErrorMapping'
          property :ekm_provisioning_state, as: 'ekmProvisioningState'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_rotation_time, as: 'nextRotationTime'
          property :rotation_period, as: 'rotationPeriod'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assured_workloads_monitoring, as: 'assuredWorkloadsMonitoring'
          property :data_logs_viewer, as: 'dataLogsViewer'
          property :service_access_approver, as: 'serviceAccessApprover'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, :numeric_string => true, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :setup_errors, as: 'setupErrors'
          property :setup_status, as: 'setupStatus'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
    end
  end
end
