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
    module AssuredworkloadsV1
      
      class GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1ListViolationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1Violation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadKmsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadResourceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
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
      
      class GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :non_compliant_org_policy, as: 'nonCompliantOrgPolicy'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_regime, as: 'complianceRegime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1ListViolationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :violations, as: 'violations', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1Violation, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1Violation::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workloads, as: 'workloads', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1Workload, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1Workload::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :partner_permissions, as: 'partnerPermissions', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :restriction_type, as: 'restrictionType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1Violation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledged, as: 'acknowledged'
          property :acknowledgement_time, as: 'acknowledgementTime'
          property :audit_log_link, as: 'auditLogLink'
          property :begin_time, as: 'beginTime'
          property :category, as: 'category'
          property :description, as: 'description'
          property :exception_audit_log_link, as: 'exceptionAuditLogLink'
          property :name, as: 'name'
          property :non_compliant_org_policy, as: 'nonCompliantOrgPolicy'
          property :org_policy_constraint, as: 'orgPolicyConstraint'
          property :remediation, as: 'remediation', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediation, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediation::Representation
      
          property :resolve_time, as: 'resolveTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliant_values, as: 'compliantValues'
          property :instructions, as: 'instructions', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions::Representation
      
          property :remediation_type, as: 'remediationType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :console_instructions, as: 'consoleInstructions', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole::Representation
      
          property :gcloud_instructions, as: 'gcloudInstructions', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_links, as: 'additionalLinks'
          collection :console_uris, as: 'consoleUris'
          collection :steps, as: 'steps'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_links, as: 'additionalLinks'
          collection :gcloud_commands, as: 'gcloudCommands'
          collection :steps, as: 'steps'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account, as: 'billingAccount'
          property :compliance_regime, as: 'complianceRegime'
          property :compliance_status, as: 'complianceStatus', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus::Representation
      
          collection :compliant_but_disallowed_services, as: 'compliantButDisallowedServices'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :ekm_provisioning_response, as: 'ekmProvisioningResponse', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse::Representation
      
          property :enable_sovereign_controls, as: 'enableSovereignControls'
          property :etag, as: 'etag'
          property :kaj_enrollment_state, as: 'kajEnrollmentState'
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :partner, as: 'partner'
          property :provisioned_resources_parent, as: 'provisionedResourcesParent'
          collection :resource_settings, as: 'resourceSettings', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadResourceSettings, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadResourceSettings::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadResourceInfo, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadResourceInfo::Representation
      
          property :saa_enrollment_response, as: 'saaEnrollmentResponse', class: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse, decorator: Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledged_violation_count, as: 'acknowledgedViolationCount'
          property :active_violation_count, as: 'activeViolationCount'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ekm_provisioning_error_domain, as: 'ekmProvisioningErrorDomain'
          property :ekm_provisioning_error_mapping, as: 'ekmProvisioningErrorMapping'
          property :ekm_provisioning_state, as: 'ekmProvisioningState'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadKmsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_rotation_time, as: 'nextRotationTime'
          property :rotation_period, as: 'rotationPeriod'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_logs_viewer, as: 'dataLogsViewer'
          property :remediate_folder_violations, as: 'remediateFolderViolations'
          property :service_access_approver, as: 'serviceAccessApprover'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, :numeric_string => true, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadResourceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
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
          collection :operations, as: 'operations', class: Google::Apis::AssuredworkloadsV1::GoogleLongrunningOperation, decorator: Google::Apis::AssuredworkloadsV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AssuredworkloadsV1::GoogleRpcStatus, decorator: Google::Apis::AssuredworkloadsV1::GoogleRpcStatus::Representation
      
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
