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
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec]
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
        # production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true`
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
      
      # Defines an organization policy which is used to specify constraints for
      # configurations of Google Cloud resources.
      class GoogleCloudOrgpolicyV2Policy
        include Google::Apis::Core::Hashable
      
        # Similar to PolicySpec but with an extra 'launch' field for launch reference.
        # The PolicySpec here is specific for dry-run/darklaunch.
        # Corresponds to the JSON property `alternate`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2AlternatePolicySpec]
        attr_accessor :alternate
      
        # Defines a Google Cloud policy specification which is used to specify
        # constraints for configurations of Google Cloud resources.
        # Corresponds to the JSON property `dryRunSpec`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec]
        attr_accessor :dry_run_spec
      
        # Optional. An opaque tag indicating the current state of the policy, used for
        # concurrency control. This 'etag' is computed by the server based on the value
        # of other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Immutable. The resource name of the policy. Must be one of the following forms,
        # where `constraint_name` is the name of the constraint which this policy
        # configures: * `projects/`project_number`/policies/`constraint_name`` * `
        # folders/`folder_id`/policies/`constraint_name`` * `organizations/`
        # organization_id`/policies/`constraint_name`` For example, `projects/123/
        # policies/compute.disableSerialPortAccess`. Note: `projects/`project_id`/
        # policies/`constraint_name`` is also an acceptable name for API requests, but
        # responses will return the name using the equivalent project number.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines a Google Cloud policy specification which is used to specify
        # constraints for configurations of Google Cloud resources.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate = args[:alternate] if args.key?(:alternate)
          @dry_run_spec = args[:dry_run_spec] if args.key?(:dry_run_spec)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Defines a Google Cloud policy specification which is used to specify
      # constraints for configurations of Google Cloud resources.
      class GoogleCloudOrgpolicyV2PolicySpec
        include Google::Apis::Core::Hashable
      
        # An opaque tag indicating the current version of the policySpec, used for
        # concurrency control. This field is ignored if used in a `CreatePolicy` request.
        # When the policy is returned from either a `GetPolicy` or a `ListPolicies`
        # request, this `etag` indicates the version of the current policySpec to use
        # when executing a read-modify-write loop. When the policy is returned from a `
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
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpecPolicyRule>]
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
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr]
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
        # Ancestry subtrees must be in one of the following formats: - `projects/` (for
        # example, `projects/tokyo-rain-123`) - `folders/` (for example, `folders/1234`)
        # - `organizations/` (for example, `organizations/1234`) The `supports_under`
        # field of the associated `Constraint` defines whether ancestry prefixes can be
        # used.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues]
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
      # Ancestry subtrees must be in one of the following formats: - `projects/` (for
      # example, `projects/tokyo-rain-123`) - `folders/` (for example, `folders/1234`)
      # - `organizations/` (for example, `organizations/1234`) The `supports_under`
      # field of the associated `Constraint` defines whether ancestry prefixes can be
      # used.
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
      
      # A resource describing a `Replay`, or simulation.
      class GoogleCloudPolicysimulatorV1Replay
        include Google::Apis::Core::Hashable
      
        # The configuration used for a Replay.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1ReplayConfig]
        attr_accessor :config
      
        # Output only. The resource name of the `Replay`, which has the following format:
        # ``projects|folders|organizations`/`resource-id`/locations/global/replays/`
        # replay-id``, where ``resource-id`` is the ID of the project, folder, or
        # organization that owns the Replay. Example: `projects/my-example-project/
        # locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Summary statistics about the replayed log entries.
        # Corresponds to the JSON property `resultsSummary`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1ReplayResultsSummary]
        attr_accessor :results_summary
      
        # Output only. The current state of the `Replay`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @name = args[:name] if args.key?(:name)
          @results_summary = args[:results_summary] if args.key?(:results_summary)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The configuration used for a Replay.
      class GoogleCloudPolicysimulatorV1ReplayConfig
        include Google::Apis::Core::Hashable
      
        # The logs to use as input for the Replay.
        # Corresponds to the JSON property `logSource`
        # @return [String]
        attr_accessor :log_source
      
        # A mapping of the resources that you want to simulate policies for and the
        # policies that you want to simulate. Keys are the full resource names for the
        # resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-
        # project`. For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values
        # are Policy objects representing the policies that you want to simulate.
        # Replays automatically take into account any IAM policies inherited through the
        # resource hierarchy, and any policies set on descendant resources. You do not
        # need to include these policies in the policy overlay.
        # Corresponds to the JSON property `policyOverlay`
        # @return [Hash<String,Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Policy>]
        attr_accessor :policy_overlay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_source = args[:log_source] if args.key?(:log_source)
          @policy_overlay = args[:policy_overlay] if args.key?(:policy_overlay)
        end
      end
      
      # Metadata about a Replay operation.
      class GoogleCloudPolicysimulatorV1ReplayOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time when the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Summary statistics about the replayed log entries.
      class GoogleCloudPolicysimulatorV1ReplayResultsSummary
        include Google::Apis::Core::Hashable
      
        # The number of replayed log entries with a difference between baseline and
        # simulated policies.
        # Corresponds to the JSON property `differenceCount`
        # @return [Fixnum]
        attr_accessor :difference_count
      
        # The number of log entries that could not be replayed.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # The total number of log entries replayed.
        # Corresponds to the JSON property `logCount`
        # @return [Fixnum]
        attr_accessor :log_count
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `newestDate`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate]
        attr_accessor :newest_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `oldestDate`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate]
        attr_accessor :oldest_date
      
        # The number of replayed log entries with no difference between baseline and
        # simulated policies.
        # Corresponds to the JSON property `unchangedCount`
        # @return [Fixnum]
        attr_accessor :unchanged_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @difference_count = args[:difference_count] if args.key?(:difference_count)
          @error_count = args[:error_count] if args.key?(:error_count)
          @log_count = args[:log_count] if args.key?(:log_count)
          @newest_date = args[:newest_date] if args.key?(:newest_date)
          @oldest_date = args[:oldest_date] if args.key?(:oldest_date)
          @unchanged_count = args[:unchanged_count] if args.key?(:unchanged_count)
        end
      end
      
      # A summary and comparison of the principal's access under the current (baseline)
      # policies and the proposed (simulated) policies for a single access tuple.
      class GoogleCloudPolicysimulatorV1alphaAccessStateDiff
        include Google::Apis::Core::Hashable
      
        # How the principal's access, specified in the AccessState field, changed
        # between the current (baseline) policies and proposed (simulated) policies.
        # Corresponds to the JSON property `accessChange`
        # @return [String]
        attr_accessor :access_change
      
        # Details about how a set of policies, listed in ExplainedPolicy, resulted in a
        # certain AccessState when replaying an access tuple.
        # Corresponds to the JSON property `baseline`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaExplainedAccess]
        attr_accessor :baseline
      
        # Details about how a set of policies, listed in ExplainedPolicy, resulted in a
        # certain AccessState when replaying an access tuple.
        # Corresponds to the JSON property `simulated`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaExplainedAccess]
        attr_accessor :simulated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_change = args[:access_change] if args.key?(:access_change)
          @baseline = args[:baseline] if args.key?(:baseline)
          @simulated = args[:simulated] if args.key?(:simulated)
        end
      end
      
      # Information about the principal, resource, and permission to check.
      class GoogleCloudPolicysimulatorV1alphaAccessTuple
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name that identifies the resource. For example, `//
        # compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-
        # instance`. For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Required. The IAM permission to check for the specified principal and resource.
        # For a complete list of IAM permissions, see https://cloud.google.com/iam/help/
        # permissions/reference. For a complete list of predefined IAM roles and the
        # permissions in each role, see https://cloud.google.com/iam/help/roles/
        # reference.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # Required. The principal whose access you want to check, in the form of the
        # email address that represents that principal. For example, `alice@example.com`
        # or `my-service-account@my-project.iam.gserviceaccount.com`. The principal must
        # be a Google Account or a service account. Other types of principals are not
        # supported.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @permission = args[:permission] if args.key?(:permission)
          @principal = args[:principal] if args.key?(:principal)
        end
      end
      
      # Details about how a binding in a policy affects a principal's ability to use a
      # permission.
      class GoogleCloudPolicysimulatorV1alphaBindingExplanation
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether _this binding_ provides the specified permission
        # to the specified principal for the specified resource. This field does _not_
        # indicate whether the principal actually has the permission for the resource.
        # There might be another binding that overrides this binding. To determine
        # whether the principal actually has the permission, use the `access` field in
        # the TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
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
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr]
        attr_accessor :condition
      
        # Indicates whether each principal in the binding includes the principal
        # specified in the request, either directly or indirectly. Each key identifies a
        # principal in the binding, and each value indicates whether the principal in
        # the binding includes the principal in the request. For example, suppose that a
        # binding includes the following principals: * `user:alice@example.com` * `group:
        # product-eng@example.com` The principal in the replayed access tuple is `user:
        # bob@example.com`. This user is a principal of the group `group:product-eng@
        # example.com`. For the first principal in the binding, the key is `user:alice@
        # example.com`, and the `membership` field in the value is set to `
        # MEMBERSHIP_NOT_INCLUDED`. For the second principal in the binding, the key is `
        # group:product-eng@example.com`, and the `membership` field in the value is set
        # to `MEMBERSHIP_INCLUDED`.
        # Corresponds to the JSON property `memberships`
        # @return [Hash<String,Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaBindingExplanationAnnotatedMembership>]
        attr_accessor :memberships
      
        # The relevance of this binding to the overall determination for the entire
        # policy.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        # The role that this binding grants. For example, `roles/compute.serviceAgent`.
        # For a complete list of predefined IAM roles, as well as the permissions in
        # each role, see https://cloud.google.com/iam/help/roles/reference.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Indicates whether the role granted by this binding contains the specified
        # permission.
        # Corresponds to the JSON property `rolePermission`
        # @return [String]
        attr_accessor :role_permission
      
        # The relevance of the permission's existence, or nonexistence, in the role to
        # the overall determination for the entire policy.
        # Corresponds to the JSON property `rolePermissionRelevance`
        # @return [String]
        attr_accessor :role_permission_relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @condition = args[:condition] if args.key?(:condition)
          @memberships = args[:memberships] if args.key?(:memberships)
          @relevance = args[:relevance] if args.key?(:relevance)
          @role = args[:role] if args.key?(:role)
          @role_permission = args[:role_permission] if args.key?(:role_permission)
          @role_permission_relevance = args[:role_permission_relevance] if args.key?(:role_permission_relevance)
        end
      end
      
      # Details about whether the binding includes the principal.
      class GoogleCloudPolicysimulatorV1alphaBindingExplanationAnnotatedMembership
        include Google::Apis::Core::Hashable
      
        # Indicates whether the binding includes the principal.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        # The relevance of the principal's status to the overall determination for the
        # binding.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Details about how a set of policies, listed in ExplainedPolicy, resulted in a
      # certain AccessState when replaying an access tuple.
      class GoogleCloudPolicysimulatorV1alphaExplainedAccess
        include Google::Apis::Core::Hashable
      
        # Whether the principal in the access tuple has permission to access the
        # resource in the access tuple under the given policies.
        # Corresponds to the JSON property `accessState`
        # @return [String]
        attr_accessor :access_state
      
        # If the AccessState is `UNKNOWN`, this field contains a list of errors
        # explaining why the result is `UNKNOWN`. If the `AccessState` is `GRANTED` or `
        # NOT_GRANTED`, this field is omitted.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleRpcStatus>]
        attr_accessor :errors
      
        # If the AccessState is `UNKNOWN`, this field contains the policies that led to
        # that result. If the `AccessState` is `GRANTED` or `NOT_GRANTED`, this field is
        # omitted.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaExplainedPolicy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_state = args[:access_state] if args.key?(:access_state)
          @errors = args[:errors] if args.key?(:errors)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # Details about how a specific IAM Policy contributed to the access check.
      class GoogleCloudPolicysimulatorV1alphaExplainedPolicy
        include Google::Apis::Core::Hashable
      
        # Indicates whether _this policy_ provides the specified permission to the
        # specified principal for the specified resource. This field does _not_ indicate
        # whether the principal actually has the permission for the resource. There
        # might be another policy that overrides this policy. To determine whether the
        # principal actually has the permission, use the `access` field in the
        # TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
        # Details about how each binding in the policy affects the principal's ability,
        # or inability, to use the permission for the resource. If the user who created
        # the Replay does not have access to the policy, this field is omitted.
        # Corresponds to the JSON property `bindingExplanations`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaBindingExplanation>]
        attr_accessor :binding_explanations
      
        # The full resource name that identifies the resource. For example, `//compute.
        # googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
        # If the user who created the Replay does not have access to the policy, this
        # field is omitted. For examples of full resource names for Google Cloud
        # services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-
        # names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Policy]
        attr_accessor :policy
      
        # The relevance of this policy to the overall determination in the
        # TroubleshootIamPolicyResponse. If the user who created the Replay does not
        # have access to the policy, this field is omitted.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @binding_explanations = args[:binding_explanations] if args.key?(:binding_explanations)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @policy = args[:policy] if args.key?(:policy)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # GenerateOrgPolicyViolationsPreviewOperationMetadata is metadata about an
      # OrgPolicyViolationsPreview generations operation.
      class GoogleCloudPolicysimulatorV1alphaGenerateOrgPolicyViolationsPreviewOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time when the request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # Total number of resources that need scanning. Should equal resource_scanned +
        # resources_pending
        # Corresponds to the JSON property `resourcesFound`
        # @return [Fixnum]
        attr_accessor :resources_found
      
        # Number of resources still to scan.
        # Corresponds to the JSON property `resourcesPending`
        # @return [Fixnum]
        attr_accessor :resources_pending
      
        # Number of resources already scanned.
        # Corresponds to the JSON property `resourcesScanned`
        # @return [Fixnum]
        attr_accessor :resources_scanned
      
        # Time when the request started processing, i.e. when the state was set to
        # RUNNING.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_time = args[:request_time] if args.key?(:request_time)
          @resources_found = args[:resources_found] if args.key?(:resources_found)
          @resources_pending = args[:resources_pending] if args.key?(:resources_pending)
          @resources_scanned = args[:resources_scanned] if args.key?(:resources_scanned)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # ListOrgPolicyViolationsPreviewsResponse is the response message for
      # OrgPolicyViolationsPreviewService.ListOrgPolicyViolationsPreviews.
      class GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsPreviewsResponse
        include Google::Apis::Core::Hashable
      
        # A token that you can use to retrieve the next page of results. If this field
        # is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of OrgPolicyViolationsPreview
        # Corresponds to the JSON property `orgPolicyViolationsPreviews`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview>]
        attr_accessor :org_policy_violations_previews
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @org_policy_violations_previews = args[:org_policy_violations_previews] if args.key?(:org_policy_violations_previews)
        end
      end
      
      # ListOrgPolicyViolationsResponse is the response message for
      # OrgPolicyViolationsPreviewService.ListOrgPolicyViolations
      class GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsResponse
        include Google::Apis::Core::Hashable
      
        # A token that you can use to retrieve the next page of results. If this field
        # is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of OrgPolicyViolations
        # Corresponds to the JSON property `orgPolicyViolations`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolation>]
        attr_accessor :org_policy_violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @org_policy_violations = args[:org_policy_violations] if args.key?(:org_policy_violations)
        end
      end
      
      # Response message for Simulator.ListReplayResults.
      class GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse
        include Google::Apis::Core::Hashable
      
        # A token that you can use to retrieve the next page of ReplayResult objects. If
        # this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The results of running a Replay.
        # Corresponds to the JSON property `replayResults`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplayResult>]
        attr_accessor :replay_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @replay_results = args[:replay_results] if args.key?(:replay_results)
        end
      end
      
      # Response message for Simulator.ListReplays.
      class GoogleCloudPolicysimulatorV1alphaListReplaysResponse
        include Google::Apis::Core::Hashable
      
        # A token that you can use to retrieve the next page of results. If this field
        # is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Replay objects.
        # Corresponds to the JSON property `replays`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay>]
        attr_accessor :replays
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @replays = args[:replays] if args.key?(:replays)
        end
      end
      
      # The proposed changes to OrgPolicy.
      class GoogleCloudPolicysimulatorV1alphaOrgPolicyOverlay
        include Google::Apis::Core::Hashable
      
        # The OrgPolicy CustomConstraint changes to preview violations for. Any existing
        # CustomConstraints with the same name will be overridden in the simulation.
        # That is, violations will be determined as if all custom constraints in the
        # overlay were instantiated. Only a single custom_constraint is supported in the
        # overlay at a time. For evaluating multiple constraints, multiple `
        # GenerateOrgPolicyViolationsPreview` requests are made, where each request
        # evaluates a single constraint.
        # Corresponds to the JSON property `customConstraints`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyOverlayCustomConstraintOverlay>]
        attr_accessor :custom_constraints
      
        # The OrgPolicy changes to preview violations for. Any existing OrgPolicies with
        # the same name will be overridden in the simulation. That is, violations will
        # be determined as if all policies in the overlay were created or updated.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyOverlayPolicyOverlay>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraints = args[:custom_constraints] if args.key?(:custom_constraints)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # A change to an OrgPolicy custom constraint.
      class GoogleCloudPolicysimulatorV1alphaOrgPolicyOverlayCustomConstraintOverlay
        include Google::Apis::Core::Hashable
      
        # A custom constraint defined by customers which can *only* be applied to the
        # given resource types and organization. By creating a custom constraint,
        # customers can apply policies of this custom constraint. *Creating a custom
        # constraint itself does NOT apply any policy enforcement*.
        # Corresponds to the JSON property `customConstraint`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2CustomConstraint]
        attr_accessor :custom_constraint
      
        # Resource the constraint is attached to. Example: "organization/987654"
        # Corresponds to the JSON property `customConstraintParent`
        # @return [String]
        attr_accessor :custom_constraint_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraint = args[:custom_constraint] if args.key?(:custom_constraint)
          @custom_constraint_parent = args[:custom_constraint_parent] if args.key?(:custom_constraint_parent)
        end
      end
      
      # A change to an OrgPolicy.
      class GoogleCloudPolicysimulatorV1alphaOrgPolicyOverlayPolicyOverlay
        include Google::Apis::Core::Hashable
      
        # Defines an organization policy which is used to specify constraints for
        # configurations of Google Cloud resources.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2Policy]
        attr_accessor :policy
      
        # The parent of the policy we are attaching to. Example: "projects/123456"
        # Corresponds to the JSON property `policyParent`
        # @return [String]
        attr_accessor :policy_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @policy_parent = args[:policy_parent] if args.key?(:policy_parent)
        end
      end
      
      # OrgPolicyViolation is a resource representing a single resource violating a
      # single OrgPolicy constraint.
      class GoogleCloudPolicysimulatorV1alphaOrgPolicyViolation
        include Google::Apis::Core::Hashable
      
        # A custom constraint defined by customers which can *only* be applied to the
        # given resource types and organization. By creating a custom constraint,
        # customers can apply policies of this custom constraint. *Creating a custom
        # constraint itself does NOT apply any policy enforcement*.
        # Corresponds to the JSON property `customConstraint`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2CustomConstraint]
        attr_accessor :custom_constraint
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleRpcStatus]
        attr_accessor :error
      
        # The name of the `OrgPolicyViolation`. Example: organizations/my-example-org/
        # locations/global/orgPolicyViolationsPreviews/506a5f7f/orgPolicyViolations/38ce`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ResourceContext provides the context we know about a resource. It is similar
        # in concept to google.cloud.asset.v1.Resource, but focuses on the information
        # specifically used by Simulator.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaResourceContext]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraint = args[:custom_constraint] if args.key?(:custom_constraint)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # OrgPolicyViolationsPreview is a resource providing a preview of the violations
      # that will exist if an OrgPolicy change is made. The list of violations are
      # modeled as child resources and retrieved via a ListOrgPolicyViolations API
      # call. There are potentially more OrgPolicyViolations than could fit in an
      # embedded field. Thus, the use of a child resource instead of a field.
      class GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this `OrgPolicyViolationsPreview` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The names of the constraints against which all `
        # OrgPolicyViolations` were evaluated. If `OrgPolicyOverlay` only contains `
        # PolicyOverlay` then it contains the name of the configured custom constraint,
        # applicable to the specified policies. Otherwise it contains the name of the
        # constraint specified in `CustomConstraintOverlay`. Format: `organizations/`
        # organization_id`/customConstraints/`custom_constraint_id`` Example: `
        # organizations/123/customConstraints/custom.createOnlyE2TypeVms`
        # Corresponds to the JSON property `customConstraints`
        # @return [Array<String>]
        attr_accessor :custom_constraints
      
        # Output only. The resource name of the `OrgPolicyViolationsPreview`. It has the
        # following format: `organizations/`organization`/locations/`location`/
        # orgPolicyViolationsPreviews/`orgPolicyViolationsPreview`` Example: `
        # organizations/my-example-org/locations/global/orgPolicyViolationsPreviews/
        # 506a5f7f`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The proposed changes to OrgPolicy.
        # Corresponds to the JSON property `overlay`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyOverlay]
        attr_accessor :overlay
      
        # A summary of the state of all resources scanned for compliance with the
        # changed OrgPolicy.
        # Corresponds to the JSON property `resourceCounts`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreviewResourceCounts]
        attr_accessor :resource_counts
      
        # Output only. The state of the `OrgPolicyViolationsPreview`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The number of OrgPolicyViolations in this `
        # OrgPolicyViolationsPreview`. This count may differ from `resource_summary.
        # noncompliant_count` because each OrgPolicyViolation is specific to a resource *
        # *and** constraint. If there are multiple constraints being evaluated (i.e.
        # multiple policies in the overlay), a single resource may violate multiple
        # constraints.
        # Corresponds to the JSON property `violationsCount`
        # @return [Fixnum]
        attr_accessor :violations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_constraints = args[:custom_constraints] if args.key?(:custom_constraints)
          @name = args[:name] if args.key?(:name)
          @overlay = args[:overlay] if args.key?(:overlay)
          @resource_counts = args[:resource_counts] if args.key?(:resource_counts)
          @state = args[:state] if args.key?(:state)
          @violations_count = args[:violations_count] if args.key?(:violations_count)
        end
      end
      
      # A summary of the state of all resources scanned for compliance with the
      # changed OrgPolicy.
      class GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreviewResourceCounts
        include Google::Apis::Core::Hashable
      
        # Number of scanned resources with zero violations.
        # Corresponds to the JSON property `compliant`
        # @return [Fixnum]
        attr_accessor :compliant
      
        # Number of resources that returned an error when scanned.
        # Corresponds to the JSON property `errors`
        # @return [Fixnum]
        attr_accessor :errors
      
        # Number of scanned resources with at least one violation.
        # Corresponds to the JSON property `noncompliant`
        # @return [Fixnum]
        attr_accessor :noncompliant
      
        # Number of resources checked for compliance. Must equal: unenforced +
        # noncompliant + compliant + error
        # Corresponds to the JSON property `scanned`
        # @return [Fixnum]
        attr_accessor :scanned
      
        # Number of resources where the constraint was not enforced, i.e. the Policy set
        # `enforced: false` for that resource.
        # Corresponds to the JSON property `unenforced`
        # @return [Fixnum]
        attr_accessor :unenforced
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliant = args[:compliant] if args.key?(:compliant)
          @errors = args[:errors] if args.key?(:errors)
          @noncompliant = args[:noncompliant] if args.key?(:noncompliant)
          @scanned = args[:scanned] if args.key?(:scanned)
          @unenforced = args[:unenforced] if args.key?(:unenforced)
        end
      end
      
      # A resource describing a `Replay`, or simulation.
      class GoogleCloudPolicysimulatorV1alphaReplay
        include Google::Apis::Core::Hashable
      
        # The configuration used for a Replay.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplayConfig]
        attr_accessor :config
      
        # Output only. The resource name of the `Replay`, which has the following format:
        # ``projects|folders|organizations`/`resource-id`/locations/global/replays/`
        # replay-id``, where ``resource-id`` is the ID of the project, folder, or
        # organization that owns the Replay. Example: `projects/my-example-project/
        # locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Summary statistics about the replayed log entries.
        # Corresponds to the JSON property `resultsSummary`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplayResultsSummary]
        attr_accessor :results_summary
      
        # Output only. The current state of the `Replay`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @name = args[:name] if args.key?(:name)
          @results_summary = args[:results_summary] if args.key?(:results_summary)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The configuration used for a Replay.
      class GoogleCloudPolicysimulatorV1alphaReplayConfig
        include Google::Apis::Core::Hashable
      
        # The logs to use as input for the Replay.
        # Corresponds to the JSON property `logSource`
        # @return [String]
        attr_accessor :log_source
      
        # A mapping of the resources that you want to simulate policies for and the
        # policies that you want to simulate. Keys are the full resource names for the
        # resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-
        # project`. For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values
        # are Policy objects representing the policies that you want to simulate.
        # Replays automatically take into account any IAM policies inherited through the
        # resource hierarchy, and any policies set on descendant resources. You do not
        # need to include these policies in the policy overlay.
        # Corresponds to the JSON property `policyOverlay`
        # @return [Hash<String,Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Policy>]
        attr_accessor :policy_overlay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_source = args[:log_source] if args.key?(:log_source)
          @policy_overlay = args[:policy_overlay] if args.key?(:policy_overlay)
        end
      end
      
      # The difference between the results of evaluating an access tuple under the
      # current (baseline) policies and under the proposed (simulated) policies. This
      # difference explains how a principal's access could change if the proposed
      # policies were applied.
      class GoogleCloudPolicysimulatorV1alphaReplayDiff
        include Google::Apis::Core::Hashable
      
        # A summary and comparison of the principal's access under the current (baseline)
        # policies and the proposed (simulated) policies for a single access tuple.
        # Corresponds to the JSON property `accessDiff`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaAccessStateDiff]
        attr_accessor :access_diff
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_diff = args[:access_diff] if args.key?(:access_diff)
        end
      end
      
      # The result of replaying a single access tuple against a simulated state.
      class GoogleCloudPolicysimulatorV1alphaReplayResult
        include Google::Apis::Core::Hashable
      
        # Information about the principal, resource, and permission to check.
        # Corresponds to the JSON property `accessTuple`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaAccessTuple]
        attr_accessor :access_tuple
      
        # The difference between the results of evaluating an access tuple under the
        # current (baseline) policies and under the proposed (simulated) policies. This
        # difference explains how a principal's access could change if the proposed
        # policies were applied.
        # Corresponds to the JSON property `diff`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplayDiff]
        attr_accessor :diff
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleRpcStatus]
        attr_accessor :error
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `lastSeenDate`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate]
        attr_accessor :last_seen_date
      
        # The resource name of the `ReplayResult`, in the following format: ``projects|
        # folders|organizations`/`resource-id`/locations/global/replays/`replay-id`/
        # results/`replay-result-id``, where ``resource-id`` is the ID of the project,
        # folder, or organization that owns the Replay. Example: `projects/my-example-
        # project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36/results/
        # 1234`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Replay that the access tuple was included in.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_tuple = args[:access_tuple] if args.key?(:access_tuple)
          @diff = args[:diff] if args.key?(:diff)
          @error = args[:error] if args.key?(:error)
          @last_seen_date = args[:last_seen_date] if args.key?(:last_seen_date)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Summary statistics about the replayed log entries.
      class GoogleCloudPolicysimulatorV1alphaReplayResultsSummary
        include Google::Apis::Core::Hashable
      
        # The number of replayed log entries with a difference between baseline and
        # simulated policies.
        # Corresponds to the JSON property `differenceCount`
        # @return [Fixnum]
        attr_accessor :difference_count
      
        # The number of log entries that could not be replayed.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # The total number of log entries replayed.
        # Corresponds to the JSON property `logCount`
        # @return [Fixnum]
        attr_accessor :log_count
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `newestDate`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate]
        attr_accessor :newest_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `oldestDate`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeDate]
        attr_accessor :oldest_date
      
        # The number of replayed log entries with no difference between baseline and
        # simulated policies.
        # Corresponds to the JSON property `unchangedCount`
        # @return [Fixnum]
        attr_accessor :unchanged_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @difference_count = args[:difference_count] if args.key?(:difference_count)
          @error_count = args[:error_count] if args.key?(:error_count)
          @log_count = args[:log_count] if args.key?(:log_count)
          @newest_date = args[:newest_date] if args.key?(:newest_date)
          @oldest_date = args[:oldest_date] if args.key?(:oldest_date)
          @unchanged_count = args[:unchanged_count] if args.key?(:unchanged_count)
        end
      end
      
      # ResourceContext provides the context we know about a resource. It is similar
      # in concept to google.cloud.asset.v1.Resource, but focuses on the information
      # specifically used by Simulator.
      class GoogleCloudPolicysimulatorV1alphaResourceContext
        include Google::Apis::Core::Hashable
      
        # The ancestry path of the resource in Google Cloud [resource hierarchy](https://
        # cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. If the resource is a
        # project, folder, or organization, the ancestry path starts from the resource
        # itself. Example: `["projects/123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The asset type of the resource as defined by CAIS. Example: `compute.
        # googleapis.com/Firewall` See [Supported asset types](https://cloud.google.com/
        # asset-inventory/docs/supported-asset-types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The full name of the resource. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # GenerateOrgPolicyViolationsPreviewOperationMetadata is metadata about an
      # OrgPolicyViolationsPreview generations operation.
      class GoogleCloudPolicysimulatorV1betaGenerateOrgPolicyViolationsPreviewOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time when the request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # Total number of resources that need scanning. Should equal resource_scanned +
        # resources_pending
        # Corresponds to the JSON property `resourcesFound`
        # @return [Fixnum]
        attr_accessor :resources_found
      
        # Number of resources still to scan.
        # Corresponds to the JSON property `resourcesPending`
        # @return [Fixnum]
        attr_accessor :resources_pending
      
        # Number of resources already scanned.
        # Corresponds to the JSON property `resourcesScanned`
        # @return [Fixnum]
        attr_accessor :resources_scanned
      
        # Time when the request started processing, i.e. when the state was set to
        # RUNNING.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_time = args[:request_time] if args.key?(:request_time)
          @resources_found = args[:resources_found] if args.key?(:resources_found)
          @resources_pending = args[:resources_pending] if args.key?(:resources_pending)
          @resources_scanned = args[:resources_scanned] if args.key?(:resources_scanned)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The proposed changes to OrgPolicy.
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay
        include Google::Apis::Core::Hashable
      
        # The OrgPolicy CustomConstraint changes to preview violations for. Any existing
        # CustomConstraints with the same name will be overridden in the simulation.
        # That is, violations will be determined as if all custom constraints in the
        # overlay were instantiated. Only a single custom_constraint is supported in the
        # overlay at a time. For evaluating multiple constraints, multiple `
        # GenerateOrgPolicyViolationsPreview` requests are made, where each request
        # evaluates a single constraint.
        # Corresponds to the JSON property `customConstraints`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay>]
        attr_accessor :custom_constraints
      
        # The OrgPolicy changes to preview violations for. Any existing OrgPolicies with
        # the same name will be overridden in the simulation. That is, violations will
        # be determined as if all policies in the overlay were created or updated.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraints = args[:custom_constraints] if args.key?(:custom_constraints)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # A change to an OrgPolicy custom constraint.
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay
        include Google::Apis::Core::Hashable
      
        # A custom constraint defined by customers which can *only* be applied to the
        # given resource types and organization. By creating a custom constraint,
        # customers can apply policies of this custom constraint. *Creating a custom
        # constraint itself does NOT apply any policy enforcement*.
        # Corresponds to the JSON property `customConstraint`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2CustomConstraint]
        attr_accessor :custom_constraint
      
        # Resource the constraint is attached to. Example: "organization/987654"
        # Corresponds to the JSON property `customConstraintParent`
        # @return [String]
        attr_accessor :custom_constraint_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraint = args[:custom_constraint] if args.key?(:custom_constraint)
          @custom_constraint_parent = args[:custom_constraint_parent] if args.key?(:custom_constraint_parent)
        end
      end
      
      # A change to an OrgPolicy.
      class GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay
        include Google::Apis::Core::Hashable
      
        # Defines an organization policy which is used to specify constraints for
        # configurations of Google Cloud resources.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudOrgpolicyV2Policy]
        attr_accessor :policy
      
        # The parent of the policy we are attaching to. Example: "projects/123456"
        # Corresponds to the JSON property `policyParent`
        # @return [String]
        attr_accessor :policy_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @policy_parent = args[:policy_parent] if args.key?(:policy_parent)
        end
      end
      
      # OrgPolicyViolationsPreview is a resource providing a preview of the violations
      # that will exist if an OrgPolicy change is made. The list of violations are
      # modeled as child resources and retrieved via a ListOrgPolicyViolations API
      # call. There are potentially more OrgPolicyViolations than could fit in an
      # embedded field. Thus, the use of a child resource instead of a field.
      class GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this `OrgPolicyViolationsPreview` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The names of the constraints against which all `
        # OrgPolicyViolations` were evaluated. If `OrgPolicyOverlay` only contains `
        # PolicyOverlay` then it contains the name of the configured custom constraint,
        # applicable to the specified policies. Otherwise it contains the name of the
        # constraint specified in `CustomConstraintOverlay`. Format: `organizations/`
        # organization_id`/customConstraints/`custom_constraint_id`` Example: `
        # organizations/123/customConstraints/custom.createOnlyE2TypeVms`
        # Corresponds to the JSON property `customConstraints`
        # @return [Array<String>]
        attr_accessor :custom_constraints
      
        # Output only. The resource name of the `OrgPolicyViolationsPreview`. It has the
        # following format: `organizations/`organization`/locations/`location`/
        # orgPolicyViolationsPreviews/`orgPolicyViolationsPreview`` Example: `
        # organizations/my-example-org/locations/global/orgPolicyViolationsPreviews/
        # 506a5f7f`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The proposed changes to OrgPolicy.
        # Corresponds to the JSON property `overlay`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay]
        attr_accessor :overlay
      
        # A summary of the state of all resources scanned for compliance with the
        # changed OrgPolicy.
        # Corresponds to the JSON property `resourceCounts`
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts]
        attr_accessor :resource_counts
      
        # Output only. The state of the `OrgPolicyViolationsPreview`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The number of OrgPolicyViolations in this `
        # OrgPolicyViolationsPreview`. This count may differ from `resource_summary.
        # noncompliant_count` because each OrgPolicyViolation is specific to a resource *
        # *and** constraint. If there are multiple constraints being evaluated (i.e.
        # multiple policies in the overlay), a single resource may violate multiple
        # constraints.
        # Corresponds to the JSON property `violationsCount`
        # @return [Fixnum]
        attr_accessor :violations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_constraints = args[:custom_constraints] if args.key?(:custom_constraints)
          @name = args[:name] if args.key?(:name)
          @overlay = args[:overlay] if args.key?(:overlay)
          @resource_counts = args[:resource_counts] if args.key?(:resource_counts)
          @state = args[:state] if args.key?(:state)
          @violations_count = args[:violations_count] if args.key?(:violations_count)
        end
      end
      
      # A summary of the state of all resources scanned for compliance with the
      # changed OrgPolicy.
      class GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts
        include Google::Apis::Core::Hashable
      
        # Number of scanned resources with zero violations.
        # Corresponds to the JSON property `compliant`
        # @return [Fixnum]
        attr_accessor :compliant
      
        # Number of resources that returned an error when scanned.
        # Corresponds to the JSON property `errors`
        # @return [Fixnum]
        attr_accessor :errors
      
        # Number of scanned resources with at least one violation.
        # Corresponds to the JSON property `noncompliant`
        # @return [Fixnum]
        attr_accessor :noncompliant
      
        # Number of resources checked for compliance. Must equal: unenforced +
        # noncompliant + compliant + error
        # Corresponds to the JSON property `scanned`
        # @return [Fixnum]
        attr_accessor :scanned
      
        # Number of resources where the constraint was not enforced, i.e. the Policy set
        # `enforced: false` for that resource.
        # Corresponds to the JSON property `unenforced`
        # @return [Fixnum]
        attr_accessor :unenforced
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliant = args[:compliant] if args.key?(:compliant)
          @errors = args[:errors] if args.key?(:errors)
          @noncompliant = args[:noncompliant] if args.key?(:noncompliant)
          @scanned = args[:scanned] if args.key?(:scanned)
          @unenforced = args[:unenforced] if args.key?(:unenforced)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
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
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleRpcStatus]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      class GoogleRpcStatus
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
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
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
