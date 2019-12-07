# Copyright 2015 Google Inc.
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
    module PolicytroubleshooterV1beta
      
      # Information about the member, resource, and permission to check.
      class GoogleCloudPolicytroubleshooterV1betaAccessTuple
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name that identifies the resource. For example,
        # `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-
        # instance`.
        # For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Required. The IAM permission to check for the specified member and resource.
        # For a complete list of IAM permissions, see
        # https://cloud.google.com/iam/help/permissions/reference.
        # For a complete list of predefined IAM roles and the permissions in each
        # role, see https://cloud.google.com/iam/help/roles/reference.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # Required. The member, or principal, whose access you want to check, in the
        # form of
        # the email address that represents that member. For example,
        # `alice@example.com` or
        # `my-service-account@my-project.iam.gserviceaccount.com`.
        # The member must be a Google Account or a service account. Other types of
        # members are not supported.
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
      
      # Details about how a binding in a policy affects a member's ability to use a
      # permission.
      class GoogleCloudPolicytroubleshooterV1betaBindingExplanation
        include Google::Apis::Core::Hashable
      
        # Indicates whether _this binding_ provides the specified permission to the
        # specified member for the specified resource.
        # This field does _not_ indicate whether the member actually has the
        # permission for the resource. There might be another binding that overrides
        # this binding. To determine whether the member actually has the permission,
        # use the `access` field in the
        # TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::PolicytroubleshooterV1beta::GoogleTypeExpr]
        attr_accessor :condition
      
        # Indicates whether each member in the binding includes the member specified
        # in the request, either directly or indirectly. Each key identifies a member
        # in the binding, and each value indicates whether the member in the binding
        # includes the member in the request.
        # For example, suppose that a binding includes the following members:
        # * `user:alice@example.com`
        # * `group:product-eng@example.com`
        # You want to troubleshoot access for `user:bob@example.com`. This user is a
        # member of the group `group:product-eng@example.com`.
        # For the first member in the binding, the key is `user:alice@example.com`,
        # and the `membership` field in the value is set to
        # `MEMBERSHIP_NOT_INCLUDED`.
        # For the second member in the binding, the key is
        # `group:product-eng@example.com`, and the `membership` field in the value is
        # set to `MEMBERSHIP_INCLUDED`.
        # Corresponds to the JSON property `memberships`
        # @return [Hash<String,Google::Apis::PolicytroubleshooterV1beta::GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership>]
        attr_accessor :memberships
      
        # The relevance of this binding to the overall determination for the entire
        # policy.
        # Corresponds to the JSON property `relevance`
        # @return [String]
        attr_accessor :relevance
      
        # The role that this binding grants. For example,
        # `roles/compute.serviceAgent`.
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
      
        # The relevance of the permission's existence, or nonexistence, in the role
        # to the overall determination for the entire policy.
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
      
      # Details about whether the binding includes the member.
      class GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership
        include Google::Apis::Core::Hashable
      
        # Indicates whether the binding includes the member.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        # The relevance of the member's status to the overall determination for the
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
      
      # Details about how a specific IAM Policy contributed
      # to the access check.
      class GoogleCloudPolicytroubleshooterV1betaExplainedPolicy
        include Google::Apis::Core::Hashable
      
        # Indicates whether _this policy_ provides the specified permission to the
        # specified member for the specified resource.
        # This field does _not_ indicate whether the member actually has the
        # permission for the resource. There might be another policy that overrides
        # this policy. To determine whether the member actually has the permission,
        # use the `access` field in the
        # TroubleshootIamPolicyResponse.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
        # Details about how each binding in the policy affects the member's ability,
        # or inability, to use the permission for the resource.
        # If the sender of the request does not have access to the policy, this field
        # is omitted.
        # Corresponds to the JSON property `bindingExplanations`
        # @return [Array<Google::Apis::PolicytroubleshooterV1beta::GoogleCloudPolicytroubleshooterV1betaBindingExplanation>]
        attr_accessor :binding_explanations
      
        # The full resource name that identifies the resource. For example,
        # `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-
        # instance`.
        # If the sender of the request does not have access to the policy, this field
        # is omitted.
        # For examples of full resource names for Google Cloud services, see
        # https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources.
        # A `Policy` is a collection of `bindings`. A `binding` binds one or more
        # `members` to a single `role`. Members can be user accounts, service accounts,
        # Google groups, and domains (such as G Suite). A `role` is a named list of
        # permissions; each `role` can be an IAM predefined role or a user-created
        # custom role.
        # Optionally, a `binding` can specify a `condition`, which is a logical
        # expression that allows access to a resource only if the expression evaluates
        # to `true`. A condition can add constraints based on attributes of the
        # request, the resource, or both.
        # **JSON example:**
        # `
        # "bindings": [
        # `
        # "role": "roles/resourcemanager.organizationAdmin",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-project-id@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/resourcemanager.organizationViewer",
        # "members": ["user:eve@example.com"],
        # "condition": `
        # "title": "expirable access",
        # "description": "Does not grant access after Sep 2020",
        # "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')
        # ",
        # `
        # `
        # ],
        # "etag": "BwWWja0YfJA=",
        # "version": 3
        # `
        # **YAML example:**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin
        # - members:
        # - user:eve@example.com
        # role: roles/resourcemanager.organizationViewer
        # condition:
        # title: expirable access
        # description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
        # - etag: BwWWja0YfJA=
        # - version: 3
        # For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PolicytroubleshooterV1beta::GoogleIamV1Policy]
        attr_accessor :policy
      
        # The relevance of this policy to the overall determination in the
        # TroubleshootIamPolicyResponse.
        # If the sender of the request does not have access to the policy, this field
        # is omitted.
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
      
      # Request for TroubleshootIamPolicy.
      class GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Information about the member, resource, and permission to check.
        # Corresponds to the JSON property `accessTuple`
        # @return [Google::Apis::PolicytroubleshooterV1beta::GoogleCloudPolicytroubleshooterV1betaAccessTuple]
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
      class GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse
        include Google::Apis::Core::Hashable
      
        # Indicates whether the member has the specified permission for the specified
        # resource, based on evaluating all of the applicable policies.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
        # List of IAM policies that were evaluated to check the member's permissions,
        # with annotations to indicate how each policy contributed to the final
        # result.
        # The list of policies can include the policy for the resource itself. It can
        # also include policies that are inherited from higher levels of the resource
        # hierarchy, including the organization, the folder, and the project.
        # To learn more about the resource hierarchy, see
        # https://cloud.google.com/iam/help/resource-hierarchy.
        # Corresponds to the JSON property `explainedPolicies`
        # @return [Array<Google::Apis::PolicytroubleshooterV1beta::GoogleCloudPolicytroubleshooterV1betaExplainedPolicy>]
        attr_accessor :explained_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @explained_policies = args[:explained_policies] if args.key?(:explained_policies)
        end
      end
      
      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditLogConfig are exempted.
      # Example Policy with multiple AuditConfigs:
      # `
      # "audit_configs": [
      # `
      # "service": "allServices"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:jose@example.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `,
      # `
      # "log_type": "ADMIN_READ",
      # `
      # ]
      # `,
      # `
      # "service": "sampleservice.googleapis.com"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # "exempted_members": [
      # "user:aliya@example.com"
      # ]
      # `
      # ]
      # `
      # ]
      # `
      # For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts jose@example.com from DATA_READ logging, and
      # aliya@example.com from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::PolicytroubleshooterV1beta::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
        # `allServices` is a special value that covers all services.
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
      
      # Provides the configuration for logging a type of permissions.
      # Example:
      # `
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:jose@example.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `
      # ]
      # `
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # jose@example.com from DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of
        # permission.
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
      
      # Associates `members` with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::PolicytroubleshooterV1beta::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@example.com` .
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For
        # example, `alice@example.com?uid=123456789012345678901`. If the user is
        # recovered, this value reverts to `user:`emailid`` and the recovered user
        # retains the role in the binding.
        # * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus
        # unique identifier) representing a service account that has been recently
        # deleted. For example,
        # `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to
        # `serviceAccount:`emailid`` and the undeleted service account retains the
        # role in the binding.
        # * `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently
        # deleted. For example, `admins@example.com?uid=123456789012345678901`. If
        # the group is recovered, this value reverts to `group:`emailid`` and the
        # recovered group retains the role in the binding.
        # * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
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
      # controls for Google Cloud resources.
      # A `Policy` is a collection of `bindings`. A `binding` binds one or more
      # `members` to a single `role`. Members can be user accounts, service accounts,
      # Google groups, and domains (such as G Suite). A `role` is a named list of
      # permissions; each `role` can be an IAM predefined role or a user-created
      # custom role.
      # Optionally, a `binding` can specify a `condition`, which is a logical
      # expression that allows access to a resource only if the expression evaluates
      # to `true`. A condition can add constraints based on attributes of the
      # request, the resource, or both.
      # **JSON example:**
      # `
      # "bindings": [
      # `
      # "role": "roles/resourcemanager.organizationAdmin",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-project-id@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/resourcemanager.organizationViewer",
      # "members": ["user:eve@example.com"],
      # "condition": `
      # "title": "expirable access",
      # "description": "Does not grant access after Sep 2020",
      # "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')
      # ",
      # `
      # `
      # ],
      # "etag": "BwWWja0YfJA=",
      # "version": 3
      # `
      # **YAML example:**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin
      # - members:
      # - user:eve@example.com
      # role: roles/resourcemanager.organizationViewer
      # condition:
      # title: expirable access
      # description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
      # - etag: BwWWja0YfJA=
      # - version: 3
      # For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::PolicytroubleshooterV1beta::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a
        # `condition` that determines how and when the `bindings` are applied. Each
        # of the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PolicytroubleshooterV1beta::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # **Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows
        # you to overwrite a version `3` policy with a version `1` policy, and all of
        # the conditions in the version `3` policy are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.
        # Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
        # are rejected.
        # Any operation that affects conditional role bindings must specify version
        # `3`. This requirement applies to the following operations:
        # * Getting a policy that includes a conditional role binding
        # * Adding a conditional role binding to a policy
        # * Changing a conditional role binding in a policy
        # * Removing any role binding, with or without a condition, from a policy
        # that includes conditions
        # **Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows
        # you to overwrite a version `3` policy with a version `1` policy, and all of
        # the conditions in the version `3` policy are lost.
        # If a policy does not include any conditions, operations on that policy may
        # specify any valid version or leave the field unset.
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
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class GoogleTypeExpr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
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
