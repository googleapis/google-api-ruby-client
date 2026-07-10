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
      
      # Information about the principal, resource, and permission to check.
      class GoogleCloudPolicytroubleshooterIamV3AccessTuple
        include Google::Apis::Core::Hashable
      
        # Additional context for troubleshooting conditional role bindings and deny
        # rules.
        # Corresponds to the JSON property `conditionContext`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContext]
        attr_accessor :condition_context
      
        # Required. The full resource name that identifies the resource. For example, `//
        # compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-
        # instance`. For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Required. The IAM permission to check for, either in the `v1` permission
        # format or the `v2` permission format. For a complete list of IAM permissions
        # in the `v1` format, see https://cloud.google.com/iam/help/permissions/
        # reference. For a list of IAM permissions in the `v2` format, see https://cloud.
        # google.com/iam/help/deny/supported-permissions. For a complete list of
        # predefined IAM roles and the permissions in each role, see https://cloud.
        # google.com/iam/help/roles/reference.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # Output only. The permission that Policy Troubleshooter checked for, in the `v2`
        # format.
        # Corresponds to the JSON property `permissionFqdn`
        # @return [String]
        attr_accessor :permission_fqdn
      
        # Required. The email address of the principal whose access you want to check.
        # For example, `alice@example.com` or `my-service-account@my-project.iam.
        # gserviceaccount.com`. The principal must be a Google Account or a service
        # account. Other types of principals are not supported.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_context = args[:condition_context] if args.key?(:condition_context)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @permission = args[:permission] if args.key?(:permission)
          @permission_fqdn = args[:permission_fqdn] if args.key?(:permission_fqdn)
          @principal = args[:principal] if args.key?(:principal)
        end
      end
      
      # Details about how a role binding in an allow policy affects a principal's
      # ability to use a permission.
      class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether _this role binding_ gives the specified permission
        # to the specified principal on the specified resource. This field does _not_
        # indicate whether the principal actually has the permission on the resource.
        # There might be another role binding that overrides this role binding. To
        # determine whether the principal actually has the permission, use the `
        # overall_access_state` field in the TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `allowAccessState`
        # @return [String]
        attr_accessor :allow_access_state
      
        # Details about whether the role binding includes the principal.
        # Corresponds to the JSON property `combinedMembership`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership]
        attr_accessor :combined_membership
      
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
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr]
        attr_accessor :condition
      
        # Explanation for how a condition affects a principal's access
        # Corresponds to the JSON property `conditionExplanation`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanation]
        attr_accessor :condition_explanation
      
        # Indicates whether each role binding includes the principal specified in the
        # request, either directly or indirectly. Each key identifies a principal in the
        # role binding, and each value indicates whether the principal in the role
        # binding includes the principal in the request. For example, suppose that a
        # role binding includes the following principals: * `user:alice@example.com` * `
        # group:product-eng@example.com` You want to troubleshoot access for `user:bob@
        # example.com`. This user is a member of the group `group:product-eng@example.
        # com`. For the first principal in the role binding, the key is `user:alice@
        # example.com`, and the `membership` field in the value is set to `NOT_INCLUDED`.
        # For the second principal in the role binding, the key is `group:product-eng@
        # example.com`, and the `membership` field in the value is set to `INCLUDED`.
        # Corresponds to the JSON property `memberships`
        # @return [Hash<String,Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership>]
        attr_accessor :memberships
      
        # The relevance of this role binding to the overall determination for the entire
        # policy.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        # The role that this role binding grants. For example, `roles/compute.admin`.
        # For a complete list of predefined IAM roles, as well as the permissions in
        # each role, see https://cloud.google.com/iam/help/roles/reference.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Indicates whether the role granted by this role binding contains the specified
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
          @allow_access_state = args[:allow_access_state] if args.key?(:allow_access_state)
          @combined_membership = args[:combined_membership] if args.key?(:combined_membership)
          @condition = args[:condition] if args.key?(:condition)
          @condition_explanation = args[:condition_explanation] if args.key?(:condition_explanation)
          @memberships = args[:memberships] if args.key?(:memberships)
          @relevance = args[:relevance] if args.key?(:relevance)
          @role = args[:role] if args.key?(:role)
          @role_permission = args[:role_permission] if args.key?(:role_permission)
          @role_permission_relevance = args[:role_permission_relevance] if args.key?(:role_permission_relevance)
        end
      end
      
      # Details about whether the role binding includes the principal.
      class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
        include Google::Apis::Core::Hashable
      
        # Indicates whether the role binding includes the principal.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        # The relevance of the principal's status to the overall determination for the
        # role binding.
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
      
      # Details about how the relevant IAM allow policies affect the final access
      # state.
      class GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation
        include Google::Apis::Core::Hashable
      
        # Indicates whether the principal has the specified permission for the specified
        # resource, based on evaluating all applicable IAM allow policies.
        # Corresponds to the JSON property `allowAccessState`
        # @return [String]
        attr_accessor :allow_access_state
      
        # List of IAM allow policies that were evaluated to check the principal's
        # permissions, with annotations to indicate how each policy contributed to the
        # final result. The list of policies includes the policy for the resource itself,
        # as well as allow policies that are inherited from higher levels of the
        # resource hierarchy, including the organization, the folder, and the project.
        # To learn more about the resource hierarchy, see https://cloud.google.com/iam/
        # help/resource-hierarchy.
        # Corresponds to the JSON property `explainedPolicies`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy>]
        attr_accessor :explained_policies
      
        # The relevance of the allow policy type to the overall access state.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_access_state = args[:allow_access_state] if args.key?(:allow_access_state)
          @explained_policies = args[:explained_policies] if args.key?(:explained_policies)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Additional context for troubleshooting conditional role bindings and deny
      # rules.
      class GoogleCloudPolicytroubleshooterIamV3ConditionContext
        include Google::Apis::Core::Hashable
      
        # This message defines attributes for a node that handles a network request. The
        # node can be either a service or an application that sends, forwards, or
        # receives the request. Service peers should fill in `principal` and `labels` as
        # appropriate.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer]
        attr_accessor :destination
      
        # Output only. The effective tags on the resource. The effective tags are
        # fetched during troubleshooting.
        # Corresponds to the JSON property `effectiveTags`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag>]
        attr_accessor :effective_tags
      
        # This message defines attributes for an HTTP request. If the actual request is
        # not an HTTP request, the runtime system should try to map the actual request
        # to an equivalent HTTP request.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest]
        attr_accessor :request
      
        # Core attributes for a resource. A resource is an addressable (named) entity
        # provided by the destination service. For example, a Compute Engine instance.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionContextResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @effective_tags = args[:effective_tags] if args.key?(:effective_tags)
          @request = args[:request] if args.key?(:request)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # A tag that applies to a resource during policy evaluation. Tags can be either
      # directly bound to a resource or inherited from its ancestor. `EffectiveTag`
      # contains the `name` and `namespaced_name` of the tag value and tag key, with
      # additional fields of `inherited` to indicate the inheritance status of the
      # effective tag.
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates the inheritance status of a tag value attached to the
        # given resource. If the tag value is inherited from one of the resource's
        # ancestors, inherited will be true. If false, then the tag value is directly
        # attached to the resource, inherited will be false.
        # Corresponds to the JSON property `inherited`
        # @return [Boolean]
        attr_accessor :inherited
        alias_method :inherited?, :inherited
      
        # Output only. The namespaced name of the TagKey. Can be in the form ``
        # organization_id`/`tag_key_short_name`` or ``project_id`/`tag_key_short_name``
        # or ``project_number`/`tag_key_short_name``.
        # Corresponds to the JSON property `namespacedTagKey`
        # @return [String]
        attr_accessor :namespaced_tag_key
      
        # Output only. The namespaced name of the TagValue. Can be in the form ``
        # organization_id`/`tag_key_short_name`/`tag_value_short_name`` or ``project_id`/
        # `tag_key_short_name`/`tag_value_short_name`` or ``project_number`/`
        # tag_key_short_name`/`tag_value_short_name``.
        # Corresponds to the JSON property `namespacedTagValue`
        # @return [String]
        attr_accessor :namespaced_tag_value
      
        # Output only. The name of the TagKey, in the format `tagKeys/`id``, such as `
        # tagKeys/123`.
        # Corresponds to the JSON property `tagKey`
        # @return [String]
        attr_accessor :tag_key
      
        # The parent name of the tag key. Must be in the format `organizations/`
        # organization_id`` or `projects/`project_number``
        # Corresponds to the JSON property `tagKeyParentName`
        # @return [String]
        attr_accessor :tag_key_parent_name
      
        # Output only. Resource name for TagValue in the format `tagValues/456`.
        # Corresponds to the JSON property `tagValue`
        # @return [String]
        attr_accessor :tag_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inherited = args[:inherited] if args.key?(:inherited)
          @namespaced_tag_key = args[:namespaced_tag_key] if args.key?(:namespaced_tag_key)
          @namespaced_tag_value = args[:namespaced_tag_value] if args.key?(:namespaced_tag_value)
          @tag_key = args[:tag_key] if args.key?(:tag_key)
          @tag_key_parent_name = args[:tag_key_parent_name] if args.key?(:tag_key_parent_name)
          @tag_value = args[:tag_value] if args.key?(:tag_value)
        end
      end
      
      # This message defines attributes for a node that handles a network request. The
      # node can be either a service or an application that sends, forwards, or
      # receives the request. Service peers should fill in `principal` and `labels` as
      # appropriate.
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer
        include Google::Apis::Core::Hashable
      
        # The IPv4 or IPv6 address of the peer.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # The network port of the peer.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip = args[:ip] if args.key?(:ip)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # This message defines attributes for an HTTP request. If the actual request is
      # not an HTTP request, the runtime system should try to map the actual request
      # to an equivalent HTTP request.
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The timestamp when the destination service receives the first byte
        # of the request.
        # Corresponds to the JSON property `receiveTime`
        # @return [String]
        attr_accessor :receive_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @receive_time = args[:receive_time] if args.key?(:receive_time)
        end
      end
      
      # Core attributes for a resource. A resource is an addressable (named) entity
      # provided by the destination service. For example, a Compute Engine instance.
      class GoogleCloudPolicytroubleshooterIamV3ConditionContextResource
        include Google::Apis::Core::Hashable
      
        # The stable identifier (name) of a resource on the `service`. A resource can be
        # logically identified as `//`resource.service`/`resource.name``. Unlike the
        # resource URI, the resource name doesn't contain any protocol and version
        # information. For a list of full resource name formats, see https://cloud.
        # google.com/iam/help/troubleshooter/full-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the service that this resource belongs to, such as `compute.
        # googleapis.com`. The service name might not match the DNS hostname that
        # actually serves the request. For a full list of resource service values, see
        # https://cloud.google.com/iam/help/conditions/resource-services
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The type of the resource, in the format ``service`/`kind``. For a full list of
        # resource type values, see https://cloud.google.com/iam/help/conditions/
        # resource-types
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @service = args[:service] if args.key?(:service)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Explanation for how a condition affects a principal's access
      class GoogleCloudPolicytroubleshooterIamV3ConditionExplanation
        include Google::Apis::Core::Hashable
      
        # Any errors that prevented complete evaluation of the condition expression.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleRpcStatus>]
        attr_accessor :errors
      
        # The value of each statement of the condition expression. The value can be `
        # true`, `false`, or `null`. The value is `null` if the statement can't be
        # evaluated.
        # Corresponds to the JSON property `evaluationStates`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState>]
        attr_accessor :evaluation_states
      
        # Value of the condition.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @evaluation_states = args[:evaluation_states] if args.key?(:evaluation_states)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Evaluated state of a condition expression.
      class GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
        include Google::Apis::Core::Hashable
      
        # End position of an expression in the condition, by character, end included,
        # for example: the end position of the first part of `a==b || c==d` would be 4.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Any errors that prevented complete evaluation of the condition expression.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleRpcStatus>]
        attr_accessor :errors
      
        # Start position of an expression in the condition, by character.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        # Value of this expression.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @errors = args[:errors] if args.key?(:errors)
          @start = args[:start] if args.key?(:start)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Details about how the relevant IAM deny policies affect the final access state.
      class GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation
        include Google::Apis::Core::Hashable
      
        # Indicates whether the principal is denied the specified permission for the
        # specified resource, based on evaluating all applicable IAM deny policies.
        # Corresponds to the JSON property `denyAccessState`
        # @return [String]
        attr_accessor :deny_access_state
      
        # List of resources with IAM deny policies that were evaluated to check the
        # principal's denied permissions, with annotations to indicate how each policy
        # contributed to the final result. The list of resources includes the policy for
        # the resource itself, as well as policies that are inherited from higher levels
        # of the resource hierarchy, including the organization, the folder, and the
        # project. The order of the resources starts from the resource and climbs up the
        # resource hierarchy. To learn more about the resource hierarchy, see https://
        # cloud.google.com/iam/help/resource-hierarchy.
        # Corresponds to the JSON property `explainedResources`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource>]
        attr_accessor :explained_resources
      
        # Indicates whether the permission to troubleshoot is supported in deny policies.
        # Corresponds to the JSON property `permissionDeniable`
        # @return [Boolean]
        attr_accessor :permission_deniable
        alias_method :permission_deniable?, :permission_deniable
      
        # The relevance of the deny policy result to the overall access state.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deny_access_state = args[:deny_access_state] if args.key?(:deny_access_state)
          @explained_resources = args[:explained_resources] if args.key?(:explained_resources)
          @permission_deniable = args[:permission_deniable] if args.key?(:permission_deniable)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Details about how a deny rule in a deny policy affects a principal's ability
      # to use a permission.
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation
        include Google::Apis::Core::Hashable
      
        # Details about whether the permission in the request is denied by the deny rule.
        # Corresponds to the JSON property `combinedDeniedPermission`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching]
        attr_accessor :combined_denied_permission
      
        # Details about whether the principal in the request is listed as a denied
        # principal in the deny rule, either directly or through membership in a
        # principal set.
        # Corresponds to the JSON property `combinedDeniedPrincipal`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching]
        attr_accessor :combined_denied_principal
      
        # Details about whether the permission in the request is denied by the deny rule.
        # Corresponds to the JSON property `combinedExceptionPermission`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching]
        attr_accessor :combined_exception_permission
      
        # Details about whether the principal in the request is listed as a denied
        # principal in the deny rule, either directly or through membership in a
        # principal set.
        # Corresponds to the JSON property `combinedExceptionPrincipal`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching]
        attr_accessor :combined_exception_principal
      
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
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr]
        attr_accessor :condition
      
        # Explanation for how a condition affects a principal's access
        # Corresponds to the JSON property `conditionExplanation`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ConditionExplanation]
        attr_accessor :condition_explanation
      
        # Lists all denied permissions in the deny rule and indicates whether each
        # permission matches the permission in the request. Each key identifies a denied
        # permission in the rule, and each value indicates whether the denied permission
        # matches the permission in the request.
        # Corresponds to the JSON property `deniedPermissions`
        # @return [Hash<String,Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching>]
        attr_accessor :denied_permissions
      
        # Lists all denied principals in the deny rule and indicates whether each
        # principal matches the principal in the request, either directly or through
        # membership in a principal set. Each key identifies a denied principal in the
        # rule, and each value indicates whether the denied principal matches the
        # principal in the request.
        # Corresponds to the JSON property `deniedPrincipals`
        # @return [Hash<String,Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching>]
        attr_accessor :denied_principals
      
        # Required. Indicates whether _this rule_ denies the specified permission to the
        # specified principal for the specified resource. This field does _not_ indicate
        # whether the principal is actually denied on the permission for the resource.
        # There might be another rule that overrides this rule. To determine whether the
        # principal actually has the permission, use the `overall_access_state` field in
        # the TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `denyAccessState`
        # @return [String]
        attr_accessor :deny_access_state
      
        # Lists all exception permissions in the deny rule and indicates whether each
        # permission matches the permission in the request. Each key identifies a
        # exception permission in the rule, and each value indicates whether the
        # exception permission matches the permission in the request.
        # Corresponds to the JSON property `exceptionPermissions`
        # @return [Hash<String,Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching>]
        attr_accessor :exception_permissions
      
        # Lists all exception principals in the deny rule and indicates whether each
        # principal matches the principal in the request, either directly or through
        # membership in a principal set. Each key identifies a exception principal in
        # the rule, and each value indicates whether the exception principal matches the
        # principal in the request.
        # Corresponds to the JSON property `exceptionPrincipals`
        # @return [Hash<String,Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching>]
        attr_accessor :exception_principals
      
        # The relevance of this role binding to the overall determination for the entire
        # policy.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_denied_permission = args[:combined_denied_permission] if args.key?(:combined_denied_permission)
          @combined_denied_principal = args[:combined_denied_principal] if args.key?(:combined_denied_principal)
          @combined_exception_permission = args[:combined_exception_permission] if args.key?(:combined_exception_permission)
          @combined_exception_principal = args[:combined_exception_principal] if args.key?(:combined_exception_principal)
          @condition = args[:condition] if args.key?(:condition)
          @condition_explanation = args[:condition_explanation] if args.key?(:condition_explanation)
          @denied_permissions = args[:denied_permissions] if args.key?(:denied_permissions)
          @denied_principals = args[:denied_principals] if args.key?(:denied_principals)
          @deny_access_state = args[:deny_access_state] if args.key?(:deny_access_state)
          @exception_permissions = args[:exception_permissions] if args.key?(:exception_permissions)
          @exception_principals = args[:exception_principals] if args.key?(:exception_principals)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Details about whether the principal in the request is listed as a denied
      # principal in the deny rule, either directly or through membership in a
      # principal set.
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
        include Google::Apis::Core::Hashable
      
        # Indicates whether the principal is listed as a denied principal in the deny
        # rule, either directly or through membership in a principal set.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        # The relevance of the principal's status to the overall determination for the
        # role binding.
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
      
      # Details about whether the permission in the request is denied by the deny rule.
      class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
        include Google::Apis::Core::Hashable
      
        # Indicates whether the permission in the request is denied by the deny rule.
        # Corresponds to the JSON property `permissionMatchingState`
        # @return [String]
        attr_accessor :permission_matching_state
      
        # The relevance of the permission status to the overall determination for the
        # rule.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_matching_state = args[:permission_matching_state] if args.key?(:permission_matching_state)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Details about how a specific IAM allow policy contributed to the final access
      # state.
      class GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether _this policy_ provides the specified permission to
        # the specified principal for the specified resource. This field does _not_
        # indicate whether the principal actually has the permission for the resource.
        # There might be another policy that overrides this policy. To determine whether
        # the principal actually has the permission, use the `overall_access_state`
        # field in the TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `allowAccessState`
        # @return [String]
        attr_accessor :allow_access_state
      
        # Details about how each role binding in the policy affects the principal's
        # ability, or inability, to use the permission for the resource. The order of
        # the role bindings matches the role binding order in the policy. If the sender
        # of the request does not have access to the policy, this field is omitted.
        # Corresponds to the JSON property `bindingExplanations`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation>]
        attr_accessor :binding_explanations
      
        # The full resource name that identifies the resource. For example, `//compute.
        # googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
        # If the sender of the request does not have access to the policy, this field is
        # omitted. For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
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
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleIamV1Policy]
        attr_accessor :policy
      
        # The relevance of this policy to the overall access state in the
        # TroubleshootIamPolicyResponse. If the sender of the request does not have
        # access to the policy, this field is omitted.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_access_state = args[:allow_access_state] if args.key?(:allow_access_state)
          @binding_explanations = args[:binding_explanations] if args.key?(:binding_explanations)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @policy = args[:policy] if args.key?(:policy)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Details about how a specific IAM deny policy Policy contributed to the access
      # check.
      class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether _this policy_ denies the specified permission to
        # the specified principal for the specified resource. This field does _not_
        # indicate whether the principal actually has the permission for the resource.
        # There might be another policy that overrides this policy. To determine whether
        # the principal actually has the permission, use the `overall_access_state`
        # field in the TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `denyAccessState`
        # @return [String]
        attr_accessor :deny_access_state
      
        # Data for an IAM policy.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleIamV2Policy]
        attr_accessor :policy
      
        # The relevance of this policy to the overall access state in the
        # TroubleshootIamPolicyResponse. If the sender of the request does not have
        # access to the policy, this field is omitted.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        # Details about how each rule in the policy affects the principal's inability to
        # use the permission for the resource. The order of the deny rule matches the
        # order of the rules in the deny policy. If the sender of the request does not
        # have access to the policy, this field is omitted.
        # Corresponds to the JSON property `ruleExplanations`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation>]
        attr_accessor :rule_explanations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deny_access_state = args[:deny_access_state] if args.key?(:deny_access_state)
          @policy = args[:policy] if args.key?(:policy)
          @relevance = args[:relevance] if args.key?(:relevance)
          @rule_explanations = args[:rule_explanations] if args.key?(:rule_explanations)
        end
      end
      
      # Details about how a specific resource contributed to the deny policy
      # evaluation.
      class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether any policies attached to _this resource_ deny the
        # specific permission to the specified principal for the specified resource.
        # This field does _not_ indicate whether the principal actually has the
        # permission for the resource. There might be another policy that overrides this
        # policy. To determine whether the principal actually has the permission, use
        # the `overall_access_state` field in the TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `denyAccessState`
        # @return [String]
        attr_accessor :deny_access_state
      
        # List of IAM deny policies that were evaluated to check the principal's denied
        # permissions, with annotations to indicate how each policy contributed to the
        # final result.
        # Corresponds to the JSON property `explainedPolicies`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy>]
        attr_accessor :explained_policies
      
        # The full resource name that identifies the resource. For example, `//compute.
        # googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
        # If the sender of the request does not have access to the policy, this field is
        # omitted. For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # The relevance of this policy to the overall access state in the
        # TroubleshootIamPolicyResponse. If the sender of the request does not have
        # access to the policy, this field is omitted.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deny_access_state = args[:deny_access_state] if args.key?(:deny_access_state)
          @explained_policies = args[:explained_policies] if args.key?(:explained_policies)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @relevance = args[:relevance] if args.key?(:relevance)
        end
      end
      
      # Request for TroubleshootIamPolicy.
      class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Information about the principal, resource, and permission to check.
        # Corresponds to the JSON property `accessTuple`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AccessTuple]
        attr_accessor :access_tuple
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_tuple = args[:access_tuple] if args.key?(:access_tuple)
        end
      end
      
      # Response for TroubleshootIamPolicy.
      class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse
        include Google::Apis::Core::Hashable
      
        # Information about the principal, resource, and permission to check.
        # Corresponds to the JSON property `accessTuple`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AccessTuple]
        attr_accessor :access_tuple
      
        # Details about how the relevant IAM allow policies affect the final access
        # state.
        # Corresponds to the JSON property `allowPolicyExplanation`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation]
        attr_accessor :allow_policy_explanation
      
        # Details about how the relevant IAM deny policies affect the final access state.
        # Corresponds to the JSON property `denyPolicyExplanation`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation]
        attr_accessor :deny_policy_explanation
      
        # Indicates whether the principal has the specified permission for the specified
        # resource, based on evaluating all types of the applicable IAM policies.
        # Corresponds to the JSON property `overallAccessState`
        # @return [String]
        attr_accessor :overall_access_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_tuple = args[:access_tuple] if args.key?(:access_tuple)
          @allow_policy_explanation = args[:allow_policy_explanation] if args.key?(:allow_policy_explanation)
          @deny_policy_explanation = args[:deny_policy_explanation] if args.key?(:deny_policy_explanation)
          @overall_access_state = args[:overall_access_state] if args.key?(:overall_access_state)
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
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleIamV1AuditLogConfig>]
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
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr]
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
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleIamV1AuditConfig>]
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
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleIamV1Binding>]
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
      
      # A deny rule in an IAM deny policy.
      class GoogleIamV2DenyRule
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
        # Corresponds to the JSON property `denialCondition`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleTypeExpr]
        attr_accessor :denial_condition
      
        # The permissions that are explicitly denied by this rule. Each permission uses
        # the format ``service_fqdn`/`resource`.`verb``, where ``service_fqdn`` is the
        # fully qualified domain name for the service. For example, `iam.googleapis.com/
        # roles.list`.
        # Corresponds to the JSON property `deniedPermissions`
        # @return [Array<String>]
        attr_accessor :denied_permissions
      
        # The identities that are prevented from using one or more permissions on
        # Google Cloud resources. This field can contain the following values: * `
        # principal://goog/subject/`email_id``: A specific Google Account. Includes
        # Gmail, Cloud Identity, and Google Workspace user accounts. For example, `
        # principal://goog/subject/alice@example.com`. * `principal://iam.googleapis.com/
        # projects/-/serviceAccounts/`service_account_id``: A Google Cloud service
        # account. For example, `principal://iam.googleapis.com/projects/-/
        # serviceAccounts/my-service-account@iam.gserviceaccount.com`. * `principalSet://
        # goog/group/`group_id``: A Google group. For example, `principalSet://goog/
        # group/admins@example.com`. * `principalSet://goog/public:all`: A special
        # identifier that represents any principal that is on the internet, even if they
        # do not have a Google Account or are not logged in. * `principalSet://goog/
        # cloudIdentityCustomerId/`customer_id``: All of the principals associated with
        # the specified Google Workspace or Cloud Identity customer ID. For example, `
        # principalSet://goog/cloudIdentityCustomerId/C01Abc35`. * `principal://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `principalSet://cloudresourcemanager.googleapis.com/[projects|folders|
        # organizations]/`project_number|folder_number|org_number`/type/ServiceAccount`:
        # All service accounts grouped under a resource (project, folder, or
        # organization). * `principalSet://cloudresourcemanager.googleapis.com/[projects|
        # folders|organizations]/`project_number|folder_number|org_number`/type/
        # ServiceAgent`: All service agents grouped under a resource (project, folder,
        # or organization). * `deleted:principal://goog/subject/`email_id`?uid=`uid``: A
        # specific Google Account that was deleted recently. For example, `deleted:
        # principal://goog/subject/alice@example.com?uid=1234567890`. If the Google
        # Account is recovered, this identifier reverts to the standard identifier for a
        # Google Account. * `deleted:principalSet://goog/group/`group_id`?uid=`uid``: A
        # Google group that was deleted recently. For example, `deleted:principalSet://
        # goog/group/admins@example.com?uid=1234567890`. If the Google group is restored,
        # this identifier reverts to the standard identifier for a Google group. * `
        # deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/`
        # service_account_id`?uid=`uid``: A Google Cloud service account that was
        # deleted recently. For example, `deleted:principal://iam.googleapis.com/
        # projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com?uid=
        # 1234567890`. If the service account is undeleted, this identifier reverts to
        # the standard identifier for a service account. * `deleted:principal://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: Deleted single identity in a workforce identity
        # pool. For example, `deleted:principal://iam.googleapis.com/locations/global/
        # workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `deniedPrincipals`
        # @return [Array<String>]
        attr_accessor :denied_principals
      
        # Specifies the permissions that this rule excludes from the set of denied
        # permissions given by `denied_permissions`. If a permission appears in `
        # denied_permissions` _and_ in `exception_permissions` then it will _not_ be
        # denied. The excluded permissions can be specified using the same syntax as `
        # denied_permissions`.
        # Corresponds to the JSON property `exceptionPermissions`
        # @return [Array<String>]
        attr_accessor :exception_permissions
      
        # The identities that are excluded from the deny rule, even if they are listed
        # in the `denied_principals`. For example, you could add a Google group to the `
        # denied_principals`, then exclude specific users who belong to that group. This
        # field can contain the same values as the `denied_principals` field, excluding `
        # principalSet://goog/public:all`, which represents all users on the internet.
        # Corresponds to the JSON property `exceptionPrincipals`
        # @return [Array<String>]
        attr_accessor :exception_principals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @denial_condition = args[:denial_condition] if args.key?(:denial_condition)
          @denied_permissions = args[:denied_permissions] if args.key?(:denied_permissions)
          @denied_principals = args[:denied_principals] if args.key?(:denied_principals)
          @exception_permissions = args[:exception_permissions] if args.key?(:exception_permissions)
          @exception_principals = args[:exception_principals] if args.key?(:exception_principals)
        end
      end
      
      # Data for an IAM policy.
      class GoogleIamV2Policy
        include Google::Apis::Core::Hashable
      
        # A key-value map to store arbitrary metadata for the `Policy`. Keys can be up
        # to 63 characters. Values can be up to 255 characters.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The time when the `Policy` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the `Policy` was deleted. Empty if the policy is
        # not deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A user-specified description of the `Policy`. This value can be up to 63
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # An opaque tag that identifies the current version of the `Policy`. IAM uses
        # this value to help manage concurrent updates, so they do not cause one update
        # to be overwritten by another. If this field is present in a
        # CreatePolicyRequest, the value is ignored.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The kind of the `Policy`. Always contains the value `DenyPolicy`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Immutable. The resource name of the `Policy`, which must be unique. Format: `
        # policies/`attachment_point`/denypolicies/`policy_id`` The attachment point is
        # identified by its URL-encoded full resource name, which means that the forward-
        # slash character, `/`, must be written as `%2F`. For example, `policies/
        # cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-
        # deny-policy`. For organizations and folders, use the numeric ID in the full
        # resource name. For projects, requests can use the alphanumeric or the numeric
        # ID. Responses always contain the numeric ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of rules that specify the behavior of the `Policy`. All of the rules
        # should be of the `kind` specified in the `Policy`.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::PolicytroubleshooterV3::GoogleIamV2PolicyRule>]
        attr_accessor :rules
      
        # Immutable. The globally unique ID of the `Policy`. Assigned automatically when
        # the `Policy` is created.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the `Policy` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A single rule in a `Policy`.
      class GoogleIamV2PolicyRule
        include Google::Apis::Core::Hashable
      
        # A deny rule in an IAM deny policy.
        # Corresponds to the JSON property `denyRule`
        # @return [Google::Apis::PolicytroubleshooterV3::GoogleIamV2DenyRule]
        attr_accessor :deny_rule
      
        # A user-specified description of the rule. This value can be up to 256
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deny_rule = args[:deny_rule] if args.key?(:deny_rule)
          @description = args[:description] if args.key?(:description)
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
