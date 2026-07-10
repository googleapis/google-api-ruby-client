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
    module PolicytroubleshooterV3
      
      class GoogleCloudPolicytroubleshooterIamV3AccessTuple
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse
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
      
      class GoogleIamV2DenyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV2PolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AccessTuple
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition_context, as: 'conditionContext', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContext, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContext::Representation
      
          property :full_resource_name, as: 'fullResourceName'
          property :permission, as: 'permission'
          property :permission_fqdn, as: 'permissionFqdn'
          property :principal, as: 'principal'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_access_state, as: 'allowAccessState'
          property :combined_membership, as: 'combinedMembership', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership::Representation
      
          property :condition, as: 'condition', class: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr, decorator: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr::Representation
      
          property :condition_explanation, as: 'conditionExplanation', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanation, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanation::Representation
      
          hash :memberships, as: 'memberships', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership::Representation
      
          property :relevance, as: 'relevance'
          property :role, as: 'role'
          property :role_permission, as: 'rolePermission'
          property :role_permission_relevance, as: 'rolePermissionRelevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership'
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_access_state, as: 'allowAccessState'
          collection :explained_policies, as: 'explainedPolicies', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy::Representation
      
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer::Representation
      
          collection :effective_tags, as: 'effectiveTags', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag::Representation
      
          property :request, as: 'request', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest::Representation
      
          property :resource, as: 'resource', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextResource, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextResource::Representation
      
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inherited, as: 'inherited'
          property :namespaced_tag_key, as: 'namespacedTagKey'
          property :namespaced_tag_value, as: 'namespacedTagValue'
          property :tag_key, as: 'tagKey'
          property :tag_key_parent_name, as: 'tagKeyParentName'
          property :tag_value, as: 'tagValue'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip, as: 'ip'
          property :port, :numeric_string => true, as: 'port'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :receive_time, as: 'receiveTime'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :service, as: 'service'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::PolicytroubleshooterV3::GoogleRpcStatus, decorator: Google::Apis::PolicytroubleshooterV3::GoogleRpcStatus::Representation
      
          collection :evaluation_states, as: 'evaluationStates', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          collection :errors, as: 'errors', class: Google::Apis::PolicytroubleshooterV3::GoogleRpcStatus, decorator: Google::Apis::PolicytroubleshooterV3::GoogleRpcStatus::Representation
      
          property :start, as: 'start'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deny_access_state, as: 'denyAccessState'
          collection :explained_resources, as: 'explainedResources', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource::Representation
      
          property :permission_deniable, as: 'permissionDeniable'
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combined_denied_permission, as: 'combinedDeniedPermission', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching::Representation
      
          property :combined_denied_principal, as: 'combinedDeniedPrincipal', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching::Representation
      
          property :combined_exception_permission, as: 'combinedExceptionPermission', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching::Representation
      
          property :combined_exception_principal, as: 'combinedExceptionPrincipal', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching::Representation
      
          property :condition, as: 'condition', class: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr, decorator: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr::Representation
      
          property :condition_explanation, as: 'conditionExplanation', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanation, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanation::Representation
      
          hash :denied_permissions, as: 'deniedPermissions', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching::Representation
      
          hash :denied_principals, as: 'deniedPrincipals', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching::Representation
      
          property :deny_access_state, as: 'denyAccessState'
          hash :exception_permissions, as: 'exceptionPermissions', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching::Representation
      
          hash :exception_principals, as: 'exceptionPrincipals', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching::Representation
      
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership'
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission_matching_state, as: 'permissionMatchingState'
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_access_state, as: 'allowAccessState'
          collection :binding_explanations, as: 'bindingExplanations', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation::Representation
      
          property :full_resource_name, as: 'fullResourceName'
          property :policy, as: 'policy', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV1Policy, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV1Policy::Representation
      
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deny_access_state, as: 'denyAccessState'
          property :policy, as: 'policy', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV2Policy, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV2Policy::Representation
      
          property :relevance, as: 'relevance'
          collection :rule_explanations, as: 'ruleExplanations', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation::Representation
      
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deny_access_state, as: 'denyAccessState'
          collection :explained_policies, as: 'explainedPolicies', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy::Representation
      
          property :full_resource_name, as: 'fullResourceName'
          property :relevance, as: 'relevance'
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_tuple, as: 'accessTuple', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AccessTuple, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AccessTuple::Representation
      
        end
      end
      
      class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_tuple, as: 'accessTuple', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AccessTuple, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AccessTuple::Representation
      
          property :allow_policy_explanation, as: 'allowPolicyExplanation', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation::Representation
      
          property :deny_policy_explanation, as: 'denyPolicyExplanation', class: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation, decorator: Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation::Representation
      
          property :overall_access_state, as: 'overallAccessState'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV1AuditLogConfig, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV1AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr, decorator: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV1AuditConfig, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV1Binding, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV2DenyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :denial_condition, as: 'denialCondition', class: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr, decorator: Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr::Representation
      
          collection :denied_permissions, as: 'deniedPermissions'
          collection :denied_principals, as: 'deniedPrincipals'
          collection :exception_permissions, as: 'exceptionPermissions'
          collection :exception_principals, as: 'exceptionPrincipals'
        end
      end
      
      class GoogleIamV2Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV2PolicyRule, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV2PolicyRule::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleIamV2PolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deny_rule, as: 'denyRule', class: Google::Apis::PolicytroubleshooterV3::GoogleIamV2DenyRule, decorator: Google::Apis::PolicytroubleshooterV3::GoogleIamV2DenyRule::Representation
      
          property :description, as: 'description'
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
