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
      
      class GoogleCloudAssuredworkloadsV1beta1AggregateDbFrameworkComplianceReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AggregatedComplianceReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ArchiveResourceEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ArchiveResourceEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CelExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CloudControlAssessmentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CloudControlReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1DbControlComplianceSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1DbFindingSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1DbFrameworkComplianceSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1FetchDbFrameworkComplianceReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListDbControlComplianceSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListDbFindingSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListDbFrameworkComplianceSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ManualCloudControlAssessmentDetails
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
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate
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
      
      class GoogleCloudAssuredworkloadsV1beta1RevertArchivedResourceEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1RevertArchivedResourceEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1SimilarControls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1TargetResourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Trend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1UpdateDetails
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
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions
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
      
      class GoogleCloudAssuredworkloadsV1beta1AggregateDbFrameworkComplianceReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregated_compliance_reports, as: 'aggregatedComplianceReports', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AggregatedComplianceReport, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AggregatedComplianceReport::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AggregatedComplianceReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_assessment_details, as: 'controlAssessmentDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails::Representation
      
          property :report_time, as: 'reportTime'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_move_analyses, as: 'assetMoveAnalyses', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AssetMoveAnalysis::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :update_name, as: 'updateName'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ApplyWorkloadUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_update, as: 'appliedUpdate', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ArchiveResourceEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_time, as: 'archiveTime'
          property :batch_size, as: 'batchSize'
          property :event_cutoff_time, as: 'eventCutoffTime'
          property :max_events_move, as: 'maxEventsMove'
          property :organization_id, :numeric_string => true, as: 'organizationId'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ArchiveResourceEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :moved_events_count, as: 'movedEventsCount'
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
      
      class GoogleCloudAssuredworkloadsV1beta1CelExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression'
          property :resource_types_values, as: 'resourceTypesValues', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1StringList, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1StringList::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CloudControlAssessmentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation_state, as: 'evaluationState'
          property :findings_count, as: 'findingsCount'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CloudControlReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          property :cloud_control, as: 'cloudControl'
          property :cloud_control_assessment_details, as: 'cloudControlAssessmentDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1CloudControlAssessmentDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1CloudControlAssessmentDetails::Representation
      
          property :cloud_control_deployment, as: 'cloudControlDeployment'
          property :cloud_control_type, as: 'cloudControlType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enforcement_mode, as: 'enforcementMode'
          property :finding_category, as: 'findingCategory'
          property :finding_severity, as: 'findingSeverity'
          collection :framework_major_revision_ids, as: 'frameworkMajorRevisionIds'
          property :major_revision_id, :numeric_string => true, as: 'majorRevisionId'
          property :manual_cloud_control_assessment_details, as: 'manualCloudControlAssessmentDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ManualCloudControlAssessmentDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ManualCloudControlAssessmentDetails::Representation
      
          property :minor_revision_id, :numeric_string => true, as: 'minorRevisionId'
          collection :rules, as: 'rules', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Rule, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Rule::Representation
      
          collection :similar_controls, as: 'similarControls', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1SimilarControls, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1SimilarControls::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assessed_passing_control_ids, as: 'assessedPassingControlIds'
          property :assessed_passing_controls, as: 'assessedPassingControls'
          collection :failing_control_ids, as: 'failingControlIds'
          property :failing_controls, as: 'failingControls'
          collection :not_assessed_control_ids, as: 'notAssessedControlIds'
          property :not_assessed_controls, as: 'notAssessedControls'
          collection :passing_control_ids, as: 'passingControlIds'
          property :passing_controls, as: 'passingControls'
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
      
      class GoogleCloudAssuredworkloadsV1beta1DbControlComplianceSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_control_reports, as: 'cloudControlReports', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1CloudControlReport, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1CloudControlReport::Representation
      
          collection :compliance_frameworks, as: 'complianceFrameworks'
          property :control, as: 'control'
          property :control_responsibility_type, as: 'controlResponsibilityType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_fake_control, as: 'isFakeControl'
          property :name, as: 'name'
          property :overall_evaluation_state, as: 'overallEvaluationState'
          collection :similar_controls, as: 'similarControls', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1SimilarControls, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1SimilarControls::Representation
      
          property :total_findings_count, as: 'totalFindingsCount'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1DbFindingSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding_category, as: 'findingCategory'
          property :finding_class, as: 'findingClass'
          property :finding_count, :numeric_string => true, as: 'findingCount'
          property :name, as: 'name'
          property :organization_policy_finding_count, :numeric_string => true, as: 'organizationPolicyFindingCount'
          collection :related_frameworks, as: 'relatedFrameworks'
          property :resource_finding_count, :numeric_string => true, as: 'resourceFindingCount'
          property :severity, as: 'severity'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1DbFrameworkComplianceSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_assessment_details, as: 'controlAssessmentDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails::Representation
      
          property :controls_passing_trend, as: 'controlsPassingTrend', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Trend, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Trend::Representation
      
          property :finding_count, :numeric_string => true, as: 'findingCount'
          property :framework, as: 'framework'
          collection :framework_categories, as: 'frameworkCategories'
          property :framework_display_name, as: 'frameworkDisplayName'
          property :framework_type, as: 'frameworkType'
          property :major_revision_id, :numeric_string => true, as: 'majorRevisionId'
          property :minor_revision_id, :numeric_string => true, as: 'minorRevisionId'
          property :name, as: 'name'
          collection :supported_cloud_providers, as: 'supportedCloudProviders'
          collection :target_resource_details, as: 'targetResourceDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1TargetResourceDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1TargetResourceDetails::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1EnableComplianceUpdatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1EnableResourceMonitoringResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1FetchDbFrameworkComplianceReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_assessment_details, as: 'controlAssessmentDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ControlAssessmentDetails::Representation
      
          property :framework, as: 'framework'
          collection :framework_categories, as: 'frameworkCategories'
          property :framework_description, as: 'frameworkDescription'
          property :framework_display_name, as: 'frameworkDisplayName'
          property :framework_type, as: 'frameworkType'
          property :major_revision_id, :numeric_string => true, as: 'majorRevisionId'
          property :minor_revision_id, :numeric_string => true, as: 'minorRevisionId'
          property :name, as: 'name'
          collection :supported_cloud_providers, as: 'supportedCloudProviders'
          collection :target_resource_details, as: 'targetResourceDetails', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1TargetResourceDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1TargetResourceDetails::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListDbControlComplianceSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_control_compliance_summaries, as: 'dbControlComplianceSummaries', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1DbControlComplianceSummary, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1DbControlComplianceSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListDbFindingSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_finding_summaries, as: 'dbFindingSummaries', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1DbFindingSummary, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1DbFindingSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListDbFrameworkComplianceSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_framework_compliance_summaries, as: 'dbFrameworkComplianceSummaries', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1DbFrameworkComplianceSummary, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1DbFrameworkComplianceSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
          collection :violations, as: 'violations', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadUpdatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workload_updates, as: 'workloadUpdates', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workloads, as: 'workloads', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ManualCloudControlAssessmentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manual_cloud_control_guide, as: 'manualCloudControlGuide'
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
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraint, as: 'constraint'
          property :inherit, as: 'inherit'
          property :reset, as: 'reset'
          property :resource, as: 'resource'
          property :rule, as: 'rule', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all, as: 'allowAll'
          property :deny_all, as: 'denyAll'
          property :enforce, as: 'enforce'
          property :values, as: 'values', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicyPolicyRuleStringValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          collection :denied_values, as: 'deniedValues'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_policy, as: 'appliedPolicy', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicy, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicy::Representation
      
          property :suggested_policy, as: 'suggestedPolicy', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicy, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicy::Representation
      
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
      
      class GoogleCloudAssuredworkloadsV1beta1RevertArchivedResourceEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_end_time, as: 'archiveEndTime'
          property :archive_start_time, as: 'archiveStartTime'
          property :batch_size, as: 'batchSize'
          property :max_events_move, as: 'maxEventsMove'
          property :organization_id, :numeric_string => true, as: 'organizationId'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1RevertArchivedResourceEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :moved_events_count, as: 'movedEventsCount'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cel_expression, as: 'celExpression', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1CelExpression, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1CelExpression::Representation
      
          property :description, as: 'description'
          collection :rule_action_types, as: 'ruleActionTypes'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1SimilarControls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
          property :framework, as: 'framework'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1TargetResourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :framework_deployment, as: 'frameworkDeployment'
          property :major_revision_id, :numeric_string => true, as: 'majorRevisionId'
          property :minor_revision_id, :numeric_string => true, as: 'minorRevisionId'
          property :target_resource, as: 'targetResource'
          property :target_resource_display_name, as: 'targetResourceDisplayName'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Trend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :value_percent, as: 'valuePercent'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1UpdateDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :org_policy_update, as: 'orgPolicyUpdate', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1OrgPolicyUpdate::Representation
      
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
          property :available_updates, as: 'availableUpdates'
          property :billing_account, as: 'billingAccount'
          property :cjis_settings, as: 'cjisSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings::Representation
      
          property :compliance_regime, as: 'complianceRegime'
          property :compliance_status, as: 'complianceStatus', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatus::Representation
      
          property :compliance_updates_enabled, as: 'complianceUpdatesEnabled'
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
      
          property :partner_services_billing_account, as: 'partnerServicesBillingAccount'
          property :provisioned_resources_parent, as: 'provisionedResourcesParent'
          property :resource_monitoring_enabled, as: 'resourceMonitoringEnabled'
          collection :resource_settings, as: 'resourceSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo::Representation
      
          property :saa_enrollment_response, as: 'saaEnrollmentResponse', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponse::Representation
      
          property :violation_notifications_enabled, as: 'violationNotificationsEnabled'
          property :workload_options, as: 'workloadOptions', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions::Representation
      
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
          property :access_transparency_logs_support_case_viewer, as: 'accessTransparencyLogsSupportCaseViewer'
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
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :details, as: 'details', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1UpdateDetails, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1UpdateDetails::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadWorkloadOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kaj_enrollment_type, as: 'kajEnrollmentType'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
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
