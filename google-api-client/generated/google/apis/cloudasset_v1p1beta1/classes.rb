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
    module CloudassetV1p1beta1
      
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
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::CloudassetV1p1beta1::AuditLogConfig>]
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
      class AuditLogConfig
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
      
      # Associates `members` with a `role`.
      class Binding
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
        # @return [Google::Apis::CloudassetV1p1beta1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
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
      
      # Explanation about the IAM policy search result.
      class Explanation
        include Google::Apis::Core::Hashable
      
        # The map from roles to their included permission matching the permission query (
        # e.g. containing `policy.role.permissions:`). A sample role string: "roles/
        # compute.instanceAdmin". The roles can also be found in the returned `policy`
        # bindings. Note that the map is populated only if requesting with a permission
        # query.
        # Corresponds to the JSON property `matchedPermissions`
        # @return [Hash<String,Google::Apis::CloudassetV1p1beta1::Permissions>]
        attr_accessor :matched_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matched_permissions = args[:matched_permissions] if args.key?(:matched_permissions)
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
      class Expr
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
      
      # The result for a IAM Policy search.
      class IamPolicySearchResult
        include Google::Apis::Core::Hashable
      
        # Explanation about the IAM policy search result.
        # Corresponds to the JSON property `explanation`
        # @return [Google::Apis::CloudassetV1p1beta1::Explanation]
        attr_accessor :explanation
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudassetV1p1beta1::Policy]
        attr_accessor :policy
      
        # The project that the associated GCP resource belongs to, in the form of `
        # projects/`project_number``. If an IAM policy is set on a resource (like VM
        # instance, Cloud Storage bucket), the project field will indicate the project
        # that contains the resource. If an IAM policy is set on a folder or orgnization,
        # the project field will be empty.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The [full resource name](https://cloud.google.com/apis/design/resource_names#
        # full_resource_name) of the resource associated with this IAM policy.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation = args[:explanation] if args.key?(:explanation)
          @policy = args[:policy] if args.key?(:policy)
          @project = args[:project] if args.key?(:project)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # IAM permissions
      class Permissions
        include Google::Apis::Core::Hashable
      
        # A list of permissions. A sample permission string: "compute.disk.get".
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::CloudassetV1p1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudassetV1p1beta1::Binding>]
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
      
      # Search all IAM policies response.
      class SearchAllIamPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Set if there are more results than those appearing in this response; to get
        # the next set of results, call this method again, using this value as the `
        # page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of IamPolicy that match the search query. Related information such as
        # the associated resource is returned along with the policy.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudassetV1p1beta1::IamPolicySearchResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Search all resources response.
      class SearchAllResourcesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of resource that match the search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudassetV1p1beta1::StandardResourceMetadata>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # The standard metadata of a cloud resource.
      class StandardResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Additional searchable attributes of this resource. Informational only. The
        # exact set of attributes is subject to change. For example: project id, DNS
        # name etc.
        # Corresponds to the JSON property `additionalAttributes`
        # @return [Array<String>]
        attr_accessor :additional_attributes
      
        # The type of this resource. For example: "compute.googleapis.com/Disk".
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # One or more paragraphs of text description of this resource. Maximum length
        # could be up to 1M bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of this resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels associated with this resource. See [Labelling and grouping GCP
        # resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-
        # your-google-cloud-platform-resources) for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Location can be "global", regional like "us-east1", or zonal like "us-west1-b".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full resource name. For example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1`. See [Resource Names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network tags associated with this resource. Like labels, network tags are a
        # type of annotations used to group GCP resources. See [Labelling GCP resources](
        # lhttps://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-
        # cloud-platform-resources) for more information.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # The project that this resource belongs to, in the form of `projects/`
        # project_number``.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_attributes = args[:additional_attributes] if args.key?(:additional_attributes)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @project = args[:project] if args.key?(:project)
        end
      end
    end
  end
end
