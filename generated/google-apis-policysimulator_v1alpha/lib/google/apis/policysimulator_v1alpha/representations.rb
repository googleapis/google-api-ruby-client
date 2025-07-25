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
    module PolicysimulatorV1alpha
      
      class GoogleCloudOrgpolicyV2AlternatePolicySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2CustomConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2PolicySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1Replay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1ReplayConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1ReplayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1ReplayResultsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaCreateOrgPolicyViolationsPreviewOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaGenerateOrgPolicyViolationsPreviewOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
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
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2AlternatePolicySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :launch, as: 'launch'
          property :spec, as: 'spec', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2CustomConstraint
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
      
      class GoogleCloudOrgpolicyV2Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate, as: 'alternate', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2AlternatePolicySpec, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2AlternatePolicySpec::Representation
      
          property :dry_run_spec, as: 'dryRunSpec', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec::Representation
      
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :spec, as: 'spec', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2PolicySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :inherit_from_parent, as: 'inheritFromParent'
          property :reset, as: 'reset'
          collection :rules, as: 'rules', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpecPolicyRule, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpecPolicyRule::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all, as: 'allowAll'
          property :condition, as: 'condition', class: Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr::Representation
      
          property :deny_all, as: 'denyAll'
          property :enforce, as: 'enforce'
          hash :parameters, as: 'parameters'
          property :values, as: 'values', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          collection :denied_values, as: 'deniedValues'
        end
      end
      
      class GoogleCloudPolicysimulatorV1Replay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1ReplayConfig, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1ReplayConfig::Representation
      
          property :name, as: 'name'
          property :results_summary, as: 'resultsSummary', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1ReplayResultsSummary, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1ReplayResultsSummary::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudPolicysimulatorV1ReplayConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_source, as: 'logSource'
          hash :policy_overlay, as: 'policyOverlay', class: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Policy, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Policy::Representation
      
        end
      end
      
      class GoogleCloudPolicysimulatorV1ReplayOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudPolicysimulatorV1ReplayResultsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :difference_count, as: 'differenceCount'
          property :error_count, as: 'errorCount'
          property :log_count, as: 'logCount'
          property :newest_date, as: 'newestDate', class: Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate::Representation
      
          property :oldest_date, as: 'oldestDate', class: Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate::Representation
      
          property :unchanged_count, as: 'unchangedCount'
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaCreateOrgPolicyViolationsPreviewOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_time, as: 'requestTime'
          property :resources_found, as: 'resourcesFound'
          property :resources_pending, as: 'resourcesPending'
          property :resources_scanned, as: 'resourcesScanned'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaGenerateOrgPolicyViolationsPreviewOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_time, as: 'requestTime'
          property :resources_found, as: 'resourcesFound'
          property :resources_pending, as: 'resourcesPending'
          property :resources_scanned, as: 'resourcesScanned'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_constraints, as: 'customConstraints', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay::Representation
      
          collection :policies, as: 'policies', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay::Representation
      
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_constraint, as: 'customConstraint', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2CustomConstraint, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2CustomConstraint::Representation
      
          property :custom_constraint_parent, as: 'customConstraintParent'
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2Policy, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2Policy::Representation
      
          property :policy_parent, as: 'policyParent'
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :custom_constraints, as: 'customConstraints'
          property :name, as: 'name'
          property :overlay, as: 'overlay', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay::Representation
      
          property :resource_counts, as: 'resourceCounts', class: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts::Representation
      
          property :state, as: 'state'
          property :violations_count, as: 'violationsCount'
        end
      end
      
      class GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliant, as: 'compliant'
          property :errors, as: 'errors'
          property :noncompliant, as: 'noncompliant'
          property :scanned, as: 'scanned'
          property :unenforced, as: 'unenforced'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1AuditLogConfig, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1AuditConfig, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Binding, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::PolicysimulatorV1alpha::GoogleRpcStatus, decorator: Google::Apis::PolicysimulatorV1alpha::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
