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
    module SecuritypostureV1
      
      class AssetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceStandard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Constraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateIaCValidationReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomOutputSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtractPostureRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritypostureV1CustomConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritypostureV1PolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritypostureV1PolicyRuleStringValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IaC
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IaCValidationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IacValidationFailureCriteria
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPostureDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPostureRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPostureTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPosturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrgPolicyConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrgPolicyConstraintCustom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Posture
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostureDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostureTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceTypes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityHealthAnalyticsCustomModule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityHealthAnalyticsModule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeverityCountThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Violation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          property :asset_type, as: 'assetType'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ComplianceStandard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control, as: 'control'
          property :standard, as: 'standard'
        end
      end
      
      class Constraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :org_policy_constraint, as: 'orgPolicyConstraint', class: Google::Apis::SecuritypostureV1::OrgPolicyConstraint, decorator: Google::Apis::SecuritypostureV1::OrgPolicyConstraint::Representation
      
          property :org_policy_constraint_custom, as: 'orgPolicyConstraintCustom', class: Google::Apis::SecuritypostureV1::OrgPolicyConstraintCustom, decorator: Google::Apis::SecuritypostureV1::OrgPolicyConstraintCustom::Representation
      
          property :security_health_analytics_custom_module, as: 'securityHealthAnalyticsCustomModule', class: Google::Apis::SecuritypostureV1::SecurityHealthAnalyticsCustomModule, decorator: Google::Apis::SecuritypostureV1::SecurityHealthAnalyticsCustomModule::Representation
      
          property :security_health_analytics_module, as: 'securityHealthAnalyticsModule', class: Google::Apis::SecuritypostureV1::SecurityHealthAnalyticsModule, decorator: Google::Apis::SecuritypostureV1::SecurityHealthAnalyticsModule::Representation
      
        end
      end
      
      class CreateIaCValidationReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iac, as: 'iac', class: Google::Apis::SecuritypostureV1::IaC, decorator: Google::Apis::SecuritypostureV1::IaC::Representation
      
        end
      end
      
      class CustomConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_output, as: 'customOutput', class: Google::Apis::SecuritypostureV1::CustomOutputSpec, decorator: Google::Apis::SecuritypostureV1::CustomOutputSpec::Representation
      
          property :description, as: 'description'
          property :predicate, as: 'predicate', class: Google::Apis::SecuritypostureV1::Expr, decorator: Google::Apis::SecuritypostureV1::Expr::Representation
      
          property :recommendation, as: 'recommendation'
          property :resource_selector, as: 'resourceSelector', class: Google::Apis::SecuritypostureV1::ResourceSelector, decorator: Google::Apis::SecuritypostureV1::ResourceSelector::Representation
      
          property :severity, as: 'severity'
        end
      end
      
      class CustomOutputSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties', class: Google::Apis::SecuritypostureV1::Property, decorator: Google::Apis::SecuritypostureV1::Property::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ExtractPostureRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :posture_id, as: 'postureId'
          property :workload, as: 'workload'
        end
      end
      
      class GoogleCloudSecuritypostureV1CustomConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_type, as: 'actionType'
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :method_types, as: 'methodTypes'
          property :name, as: 'name'
          collection :resource_types, as: 'resourceTypes'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritypostureV1PolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all, as: 'allowAll'
          property :condition, as: 'condition', class: Google::Apis::SecuritypostureV1::Expr, decorator: Google::Apis::SecuritypostureV1::Expr::Representation
      
          property :deny_all, as: 'denyAll'
          property :enforce, as: 'enforce'
          hash :parameters, as: 'parameters'
          property :resource_types, as: 'resourceTypes', class: Google::Apis::SecuritypostureV1::ResourceTypes, decorator: Google::Apis::SecuritypostureV1::ResourceTypes::Representation
      
          property :values, as: 'values', class: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRuleStringValues, decorator: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRuleStringValues::Representation
      
        end
      end
      
      class GoogleCloudSecuritypostureV1PolicyRuleStringValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          collection :denied_values, as: 'deniedValues'
        end
      end
      
      class IaC
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tf_plan, :base64 => true, as: 'tfPlan'
        end
      end
      
      class IaCValidationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :note, as: 'note'
          collection :violations, as: 'violations', class: Google::Apis::SecuritypostureV1::Violation, decorator: Google::Apis::SecuritypostureV1::Violation::Representation
      
        end
      end
      
      class IacValidationFailureCriteria
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :name, as: 'name'
          collection :severity_count_thresholds, as: 'severityCountThresholds', class: Google::Apis::SecuritypostureV1::SeverityCountThreshold, decorator: Google::Apis::SecuritypostureV1::SeverityCountThreshold::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::SecuritypostureV1::Location, decorator: Google::Apis::SecuritypostureV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SecuritypostureV1::Operation, decorator: Google::Apis::SecuritypostureV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListPostureDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :posture_deployments, as: 'postureDeployments', class: Google::Apis::SecuritypostureV1::PostureDeployment, decorator: Google::Apis::SecuritypostureV1::PostureDeployment::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListPostureRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :revisions, as: 'revisions', class: Google::Apis::SecuritypostureV1::Posture, decorator: Google::Apis::SecuritypostureV1::Posture::Representation
      
        end
      end
      
      class ListPostureTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :posture_templates, as: 'postureTemplates', class: Google::Apis::SecuritypostureV1::PostureTemplate, decorator: Google::Apis::SecuritypostureV1::PostureTemplate::Representation
      
        end
      end
      
      class ListPosturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :postures, as: 'postures', class: Google::Apis::SecuritypostureV1::Posture, decorator: Google::Apis::SecuritypostureV1::Posture::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::SecuritypostureV1::Report, decorator: Google::Apis::SecuritypostureV1::Report::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::SecuritypostureV1::Status, decorator: Google::Apis::SecuritypostureV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error_message, as: 'errorMessage'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class OrgPolicyConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canned_constraint_id, as: 'cannedConstraintId'
          collection :policy_rules, as: 'policyRules', class: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRule, decorator: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRule::Representation
      
        end
      end
      
      class OrgPolicyConstraintCustom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_constraint, as: 'customConstraint', class: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1CustomConstraint, decorator: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1CustomConstraint::Representation
      
          collection :policy_rules, as: 'policyRules', class: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRule, decorator: Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRule::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliance_standards, as: 'complianceStandards', class: Google::Apis::SecuritypostureV1::ComplianceStandard, decorator: Google::Apis::SecuritypostureV1::ComplianceStandard::Representation
      
          property :constraint, as: 'constraint', class: Google::Apis::SecuritypostureV1::Constraint, decorator: Google::Apis::SecuritypostureV1::Constraint::Representation
      
          property :description, as: 'description'
          property :policy_id, as: 'policyId'
        end
      end
      
      class PolicyDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliance_standards, as: 'complianceStandards'
          property :constraint, as: 'constraint'
          property :constraint_type, as: 'constraintType'
          property :description, as: 'description'
        end
      end
      
      class PolicySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :policies, as: 'policies', class: Google::Apis::SecuritypostureV1::Policy, decorator: Google::Apis::SecuritypostureV1::Policy::Representation
      
          property :policy_set_id, as: 'policySetId'
        end
      end
      
      class Posture
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :categories, as: 'categories'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :name, as: 'name'
          collection :policy_sets, as: 'policySets', class: Google::Apis::SecuritypostureV1::PolicySet, decorator: Google::Apis::SecuritypostureV1::PolicySet::Representation
      
          property :reconciling, as: 'reconciling'
          property :revision_id, as: 'revisionId'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PostureDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :categories, as: 'categories'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :desired_posture_id, as: 'desiredPostureId'
          property :desired_posture_revision_id, as: 'desiredPostureRevisionId'
          property :etag, as: 'etag'
          property :failure_message, as: 'failureMessage'
          property :name, as: 'name'
          property :posture_id, as: 'postureId'
          property :posture_revision_id, as: 'postureRevisionId'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :target_resource, as: 'targetResource'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PostureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_set, as: 'policySet'
          property :posture, as: 'posture'
          property :posture_deployment, as: 'postureDeployment'
          property :posture_deployment_target_resource, as: 'postureDeploymentTargetResource'
          property :posture_revision_id, as: 'postureRevisionId'
        end
      end
      
      class PostureTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          property :description, as: 'description'
          property :name, as: 'name'
          collection :policy_sets, as: 'policySets', class: Google::Apis::SecuritypostureV1::PolicySet, decorator: Google::Apis::SecuritypostureV1::PolicySet::Representation
      
          property :revision_id, as: 'revisionId'
          property :state, as: 'state'
        end
      end
      
      class Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value_expression, as: 'valueExpression', class: Google::Apis::SecuritypostureV1::Expr, decorator: Google::Apis::SecuritypostureV1::Expr::Representation
      
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :iac_validation_report, as: 'iacValidationReport', class: Google::Apis::SecuritypostureV1::IaCValidationReport, decorator: Google::Apis::SecuritypostureV1::IaCValidationReport::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ResourceSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_types, as: 'resourceTypes'
        end
      end
      
      class ResourceTypes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included, as: 'included'
        end
      end
      
      class SecurityHealthAnalyticsCustomModule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::SecuritypostureV1::CustomConfig, decorator: Google::Apis::SecuritypostureV1::CustomConfig::Representation
      
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :module_enablement_state, as: 'moduleEnablementState'
        end
      end
      
      class SecurityHealthAnalyticsModule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :module_enablement_state, as: 'moduleEnablementState'
          property :module_name, as: 'moduleName'
        end
      end
      
      class SeverityCountThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :severity, as: 'severity'
          property :threshold_count, as: 'thresholdCount'
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
      
      class Violation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_id, as: 'assetId'
          property :next_steps, as: 'nextSteps'
          property :policy_id, as: 'policyId'
          property :severity, as: 'severity'
          property :violated_asset, as: 'violatedAsset', class: Google::Apis::SecuritypostureV1::AssetDetails, decorator: Google::Apis::SecuritypostureV1::AssetDetails::Representation
      
          property :violated_policy, as: 'violatedPolicy', class: Google::Apis::SecuritypostureV1::PolicyDetails, decorator: Google::Apis::SecuritypostureV1::PolicyDetails::Representation
      
          property :violated_posture, as: 'violatedPosture', class: Google::Apis::SecuritypostureV1::PostureDetails, decorator: Google::Apis::SecuritypostureV1::PostureDetails::Representation
      
        end
      end
    end
  end
end
