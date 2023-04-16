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
      
      # Similar to PolicySpec but with an extra 'launch' field for launch reference.
      # The PolicySpec here is specific for dry-run/darklaunch.
      class GoogleCloudOrgpolicyV2AlternatePolicySpec
        include Google::Apis::Core::Hashable
      
        # Reference to the launch that will be used while audit logging and to control
        # the launch. Should be set only in the alternate policy.
        # Corresponds to the JSON property `launch`
        # @return [String]
        attr_accessor :launch
      
        # Defines a Google Cloud policy specification which is used to specify
        # constraints for configurations of Google Cloud resources.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @launch = args[:launch] if args.key?(:launch)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # A constraint describes a way to restrict resource's configuration. For example,
      # you could enforce a constraint that controls which Google Cloud services can
      # be activated across an organization, or whether a Compute Engine instance can
      # have serial port connections established. Constraints can be configured by the
      # organization policy administrator to fit the needs of the organization by
      # setting a policy that includes constraints at different locations in the
      # organization's resource hierarchy. Policies are inherited down the resource
      # hierarchy from higher levels, but can also be overridden. For details about
      # the inheritance rules please read about `policies`. Constraints have a default
      # behavior determined by the `constraint_default` field, which is the
      # enforcement behavior that is used in the absence of a policy being defined or
      # inherited for the resource in question.
      class GoogleCloudOrgpolicyV2Constraint
        include Google::Apis::Core::Hashable
      
        # A constraint that is either enforced or not. For example, a constraint `
        # constraints/compute.disableSerialPortAccess`. If it is enforced on a VM
        # instance, serial port connections will not be opened to that instance.
        # Corresponds to the JSON property `booleanConstraint`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ConstraintBooleanConstraint]
        attr_accessor :boolean_constraint
      
        # The evaluation behavior of this constraint in the absence of a policy.
        # Corresponds to the JSON property `constraintDefault`
        # @return [String]
        attr_accessor :constraint_default
      
        # Detailed description of what this constraint controls as well as how and where
        # it is enforced. Mutable.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable name. Mutable.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A constraint that allows or disallows a list of string values, which are
        # configured by an Organization Policy administrator with a policy.
        # Corresponds to the JSON property `listConstraint`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2ConstraintListConstraint]
        attr_accessor :list_constraint
      
        # Immutable. The resource name of the constraint. Must be in one of the
        # following forms: * `projects/`project_number`/constraints/`constraint_name`` *
        # `folders/`folder_id`/constraints/`constraint_name`` * `organizations/`
        # organization_id`/constraints/`constraint_name`` For example, "/projects/123/
        # constraints/compute.disableSerialPortAccess".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Shows if dry run is supported for this constraint or not.
        # Corresponds to the JSON property `supportsDryRun`
        # @return [Boolean]
        attr_accessor :supports_dry_run
        alias_method :supports_dry_run?, :supports_dry_run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_constraint = args[:boolean_constraint] if args.key?(:boolean_constraint)
          @constraint_default = args[:constraint_default] if args.key?(:constraint_default)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @list_constraint = args[:list_constraint] if args.key?(:list_constraint)
          @name = args[:name] if args.key?(:name)
          @supports_dry_run = args[:supports_dry_run] if args.key?(:supports_dry_run)
        end
      end
      
      # A constraint that is either enforced or not. For example, a constraint `
      # constraints/compute.disableSerialPortAccess`. If it is enforced on a VM
      # instance, serial port connections will not be opened to that instance.
      class GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A constraint that allows or disallows a list of string values, which are
      # configured by an Organization Policy administrator with a policy.
      class GoogleCloudOrgpolicyV2ConstraintListConstraint
        include Google::Apis::Core::Hashable
      
        # Indicates whether values grouped into categories can be used in `Policy.
        # allowed_values` and `Policy.denied_values`. For example, `"in:Python"` would
        # match any value in the 'Python' group.
        # Corresponds to the JSON property `supportsIn`
        # @return [Boolean]
        attr_accessor :supports_in
        alias_method :supports_in?, :supports_in
      
        # Indicates whether subtrees of the Resource Manager resource hierarchy can be
        # used in `Policy.allowed_values` and `Policy.denied_values`. For example, `"
        # under:folders/123"` would match any resource under the 'folders/123' folder.
        # Corresponds to the JSON property `supportsUnder`
        # @return [Boolean]
        attr_accessor :supports_under
        alias_method :supports_under?, :supports_under
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @supports_in = args[:supports_in] if args.key?(:supports_in)
          @supports_under = args[:supports_under] if args.key?(:supports_under)
        end
      end
      
      # A custom constraint defined by customers which can *only* be applied to the
      # given resource types and organization. By creating a custom constraint,
      # customers can apply policies of this custom constraint. *Creating a custom
      # constraint itself does NOT apply any policy enforcement*.
      class GoogleCloudOrgpolicyV2CustomConstraint
        include Google::Apis::Core::Hashable
      
        # Allow or deny type.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # Org policy condition/expression. For example: `resource.instanceName.matches("[
        # production|test]_.*_(\d)+")'` or, `resource.management.auto_upgrade == true`
        # The max length of the condition is 1000 characters.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Detailed information about this custom policy constraint. The max length of
        # the description is 2000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # One line display name for the UI. The max length of the display_name is 200
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # All the operations being applied for this constraint.
        # Corresponds to the JSON property `methodTypes`
        # @return [Array<String>]
        attr_accessor :method_types
      
        # Immutable. Name of the constraint. This is unique within the organization.
        # Format of the name should be * `organizations/`organization_id`/
        # customConstraints/`custom_constraint_id`` Example: `organizations/123/
        # customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters
        # and the minimum length is 1. Note that the prefix `organizations/`
        # organization_id`/customConstraints/` is not counted.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The resource instance type on which this policy applies. Format
        # will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        # Output only. The last time this custom constraint was updated. This represents
        # the last time that the `CreateCustomConstraint` or `UpdateCustomConstraint`
        # RPC was called
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @method_types = args[:method_types] if args.key?(:method_types)
          @name = args[:name] if args.key?(:name)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The response returned from the ListConstraints method.
      class GoogleCloudOrgpolicyV2ListConstraintsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of constraints that are available on the targeted resource.
        # Corresponds to the JSON property `constraints`
        # @return [Array<Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Constraint>]
        attr_accessor :constraints
      
        # Page token used to retrieve the next page. This is currently not used.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraints = args[:constraints] if args.key?(:constraints)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response returned from the ListCustomConstraints method. It will be empty
      # if no custom constraints are set on the organization resource.
      class GoogleCloudOrgpolicyV2ListCustomConstraintsResponse
        include Google::Apis::Core::Hashable
      
        # All custom constraints that exist on the organization resource. It will be
        # empty if no custom constraints are set.
        # Corresponds to the JSON property `customConstraints`
        # @return [Array<Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2CustomConstraint>]
        attr_accessor :custom_constraints
      
        # Page token used to retrieve the next page. This is currently not used, but the
        # server may at any point start supplying a valid token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraints = args[:custom_constraints] if args.key?(:custom_constraints)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response returned from the ListPolicies method. It will be empty if no
      # policies are set on the resource.
      class GoogleCloudOrgpolicyV2ListPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Page token used to retrieve the next page. This is currently not used, but the
        # server may at any point start supplying a valid token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All policies that exist on the resource. It will be empty if no policies are
        # set.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2Policy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # Defines an organization policy which is used to specify constraints for
      # configurations of Google Cloud resources.
      class GoogleCloudOrgpolicyV2Policy
        include Google::Apis::Core::Hashable
      
        # Similar to PolicySpec but with an extra 'launch' field for launch reference.
        # The PolicySpec here is specific for dry-run/darklaunch.
        # Corresponds to the JSON property `alternate`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2AlternatePolicySpec]
        attr_accessor :alternate
      
        # Defines a Google Cloud policy specification which is used to specify
        # constraints for configurations of Google Cloud resources.
        # Corresponds to the JSON property `dryRunSpec`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec]
        attr_accessor :dry_run_spec
      
        # Immutable. The resource name of the policy. Must be one of the following forms,
        # where constraint_name is the name of the constraint which this policy
        # configures: * `projects/`project_number`/policies/`constraint_name`` * `
        # folders/`folder_id`/policies/`constraint_name`` * `organizations/`
        # organization_id`/policies/`constraint_name`` For example, "projects/123/
        # policies/compute.disableSerialPortAccess". Note: `projects/`project_id`/
        # policies/`constraint_name`` is also an acceptable name for API requests, but
        # responses will return the name using the equivalent project number.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines a Google Cloud policy specification which is used to specify
        # constraints for configurations of Google Cloud resources.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate = args[:alternate] if args.key?(:alternate)
          @dry_run_spec = args[:dry_run_spec] if args.key?(:dry_run_spec)
          @name = args[:name] if args.key?(:name)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Defines a Google Cloud policy specification which is used to specify
      # constraints for configurations of Google Cloud resources.
      class GoogleCloudOrgpolicyV2PolicySpec
        include Google::Apis::Core::Hashable
      
        # An opaque tag indicating the current version of the policy, used for
        # concurrency control. This field is ignored if used in a `CreatePolicy` request.
        # When the policy` is returned from either a `GetPolicy` or a `ListPolicies`
        # request, this `etag` indicates the version of the current policy to use when
        # executing a read-modify-write loop. When the policy is returned from a `
        # GetEffectivePolicy` request, the `etag` will be unset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Determines the inheritance behavior for this policy. If `inherit_from_parent`
        # is true, policy rules set higher up in the hierarchy (up to the closest root)
        # are inherited and present in the effective policy. If it is false, then no
        # rules are inherited, and this policy becomes the new root for evaluation. This
        # field can be set only for policies which configure list constraints.
        # Corresponds to the JSON property `inheritFromParent`
        # @return [Boolean]
        attr_accessor :inherit_from_parent
        alias_method :inherit_from_parent?, :inherit_from_parent
      
        # Ignores policies set above this resource and restores the `constraint_default`
        # enforcement behavior of the specific constraint at this resource. This field
        # can be set in policies for either list or boolean constraints. If set, `rules`
        # must be empty and `inherit_from_parent` must be set to false.
        # Corresponds to the JSON property `reset`
        # @return [Boolean]
        attr_accessor :reset
        alias_method :reset?, :reset
      
        # In policies for boolean constraints, the following requirements apply: - There
        # must be one and only one policy rule where condition is unset. - Boolean
        # policy rules with conditions must set `enforced` to the opposite of the policy
        # rule without a condition. - During policy evaluation, policy rules with
        # conditions that are true for a target resource take precedence.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpecPolicyRule>]
        attr_accessor :rules
      
        # Output only. The time stamp this was previously updated. This represents the
        # last time a call to `CreatePolicy` or `UpdatePolicy` was made for that policy.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @inherit_from_parent = args[:inherit_from_parent] if args.key?(:inherit_from_parent)
          @reset = args[:reset] if args.key?(:reset)
          @rules = args[:rules] if args.key?(:rules)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A rule used to express this policy.
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRule
        include Google::Apis::Core::Hashable
      
        # Setting this to true means that all values are allowed. This field can be set
        # only in policies for list constraints.
        # Corresponds to the JSON property `allowAll`
        # @return [Boolean]
        attr_accessor :allow_all
        alias_method :allow_all?, :allow_all
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::OrgpolicyV2::GoogleTypeExpr]
        attr_accessor :condition
      
        # Setting this to true means that all values are denied. This field can be set
        # only in policies for list constraints.
        # Corresponds to the JSON property `denyAll`
        # @return [Boolean]
        attr_accessor :deny_all
        alias_method :deny_all?, :deny_all
      
        # If `true`, then the policy is enforced. If `false`, then any configuration is
        # acceptable. This field can be set only in policies for boolean constraints.
        # Corresponds to the JSON property `enforce`
        # @return [Boolean]
        attr_accessor :enforce
        alias_method :enforce?, :enforce
      
        # A message that holds specific allowed and denied values. This message can
        # define specific values and subtrees of the Resource Manager resource hierarchy
        # (`Organizations`, `Folders`, `Projects`) that are allowed or denied. This is
        # achieved by using the `under:` and optional `is:` prefixes. The `under:`
        # prefix is used to denote resource subtree values. The `is:` prefix is used to
        # denote specific values, and is required only if the value contains a ":".
        # Values prefixed with "is:" are treated the same as values with no prefix.
        # Ancestry subtrees must be in one of the following formats: - "projects/", e.g.
        # "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/",
        # e.g. "organizations/1234" The `supports_under` field of the associated `
        # Constraint` defines whether ancestry prefixes can be used.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::OrgpolicyV2::GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all = args[:allow_all] if args.key?(:allow_all)
          @condition = args[:condition] if args.key?(:condition)
          @deny_all = args[:deny_all] if args.key?(:deny_all)
          @enforce = args[:enforce] if args.key?(:enforce)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A message that holds specific allowed and denied values. This message can
      # define specific values and subtrees of the Resource Manager resource hierarchy
      # (`Organizations`, `Folders`, `Projects`) that are allowed or denied. This is
      # achieved by using the `under:` and optional `is:` prefixes. The `under:`
      # prefix is used to denote resource subtree values. The `is:` prefix is used to
      # denote specific values, and is required only if the value contains a ":".
      # Values prefixed with "is:" are treated the same as values with no prefix.
      # Ancestry subtrees must be in one of the following formats: - "projects/", e.g.
      # "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/",
      # e.g. "organizations/1234" The `supports_under` field of the associated `
      # Constraint` defines whether ancestry prefixes can be used.
      class GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
        include Google::Apis::Core::Hashable
      
        # List of values allowed at this resource.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        # List of values denied at this resource.
        # Corresponds to the JSON property `deniedValues`
        # @return [Array<String>]
        attr_accessor :denied_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @denied_values = args[:denied_values] if args.key?(:denied_values)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class GoogleTypeExpr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
    end
  end
end
