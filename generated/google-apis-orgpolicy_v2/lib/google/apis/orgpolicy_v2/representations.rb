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
    module OrgpolicyV2
      
      class GoogleCloudOrgpolicyV2AlternatePolicySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2Constraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2ConstraintListConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2CustomConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2ListConstraintsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2ListCustomConstraintsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOrgpolicyV2ListPoliciesResponse
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
      
      class GoogleProtobufEmpty
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
          property :spec, as: 'spec', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2Constraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_constraint, as: 'booleanConstraint', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ConstraintBooleanConstraint, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ConstraintBooleanConstraint::Representation
      
          property :constraint_default, as: 'constraintDefault'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :list_constraint, as: 'listConstraint', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ConstraintListConstraint, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ConstraintListConstraint::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudOrgpolicyV2ConstraintListConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :supports_in, as: 'supportsIn'
          property :supports_under, as: 'supportsUnder'
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
      
      class GoogleCloudOrgpolicyV2ListConstraintsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :constraints, as: 'constraints', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Constraint, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Constraint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudOrgpolicyV2ListCustomConstraintsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_constraints, as: 'customConstraints', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudOrgpolicyV2ListPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policies, as: 'policies', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate, as: 'alternate', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2AlternatePolicySpec, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2AlternatePolicySpec::Representation
      
          property :dry_run_spec, as: 'dryRunSpec', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec::Representation
      
          property :name, as: 'name'
          property :spec, as: 'spec', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2PolicySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :inherit_from_parent, as: 'inheritFromParent'
          property :reset, as: 'reset'
          collection :rules, as: 'rules', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpecPolicyRule, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpecPolicyRule::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all, as: 'allowAll'
          property :condition, as: 'condition', class: Google::Apis::OrgpolicyV2::GoogleTypeExpr, decorator: Google::Apis::OrgpolicyV2::GoogleTypeExpr::Representation
      
          property :deny_all, as: 'denyAll'
          property :enforce, as: 'enforce'
          property :values, as: 'values', class: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues, decorator: Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues::Representation
      
        end
      end
      
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          collection :denied_values, as: 'deniedValues'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
