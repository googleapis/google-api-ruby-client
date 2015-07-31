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
    module CloudresourcemanagerV1beta1
      
      # A Project is a high-level Google Cloud Platform entity. It is a container for
      # ACLs, APIs, AppEngine Apps, VMs, and other Google Cloud Platform resources.
      class Project
        include Google::Apis::Core::Hashable
      
        # The number uniquely identifying the project. Example: 415104041262 Read-only.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # The unique, user-assigned ID of the project. It must be 6 to 30 lowercase
        # letters, digits, or hyphens. It must start with a letter. Trailing hyphens are
        # prohibited. Example: tokyo-rain-123 Read-only after creation.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The project lifecycle state. Read-only.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # The user-assigned name of the project. This field is optional and can remain
        # unset. Allowed characters are: lowercase and uppercase letters, numbers,
        # hyphen, single-quote, double-quote, space, and exclamation point. Example: My
        # Project Read-write.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Creation time. Read-only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The labels associated with this project. Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: \[a-z\](\
        # [-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63 characters long
        # and must conform to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?.
        # No more than 256 labels can be associated with a given resource. Clients
        # should store labels in a representation such as JSON that does not depend on
        # specific characters being disallowed. Example: "environment" : "dev" Read-
        # write.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_number = args[:project_number] unless args[:project_number].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @lifecycle_state = args[:lifecycle_state] unless args[:lifecycle_state].nil?
          @name = args[:name] unless args[:name].nil?
          @create_time = args[:create_time] unless args[:create_time].nil?
          @labels = args[:labels] unless args[:labels].nil?
        end
      end
      
      # A page of the response received from the [ListProjects][google.
      # cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects] method.
      # A paginated response where more pages are available has `next_page_token` set.
      # This token can be used in a subsequent request to retrieve the next request
      # page.
      class ListProjectsResponse
        include Google::Apis::Core::Hashable
      
        # The list of projects that matched the list filter. This list can be paginated.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Project>]
        attr_accessor :projects
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime. Note: pagination is not yet
        # supported; the server will not set this field.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @projects = args[:projects] unless args[:projects].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # # Overview The `Policy` defines an access control policy language. It is used
      # to define policies that are attached to resources like files, folders, VMs,
      # etc. # Policy structure A `Policy` consists of a list of bindings. A `Binding`
      # binds a set of members to a role, where the members include user accounts,
      # user groups, user domains, and service accounts. A 'role' is a named set of
      # permissions, defined by IAM. The definition of a role is outside the policy. A
      # permission check first determines the roles that include the specified
      # permission, and then determines if the principal specified is a member of a
      # binding to at least one of these roles. The membership check is recursive when
      # a group is bound to a role. Policy examples: ``` ` "bindings": [ ` "role": "
      # roles/owner", "members": [ "user:mike@example.com", "group:admins@example.com",
      # "domain:google.com", "serviceAccount:frontend@example.iam.gserviceaccounts.
      # com"] `, ` "role": "roles/viewer", "members": ["user:sean@example.com"] ` ] ` `
      # ``
      class Policy
        include Google::Apis::Core::Hashable
      
        # The policy language version. The version of the policy is represented by the
        # etag. The default version is 0.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # It is an error to specify multiple bindings for the same role. It is an error
        # to specify a binding with no members.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Binding>]
        attr_accessor :bindings
      
        # 
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Rule>]
        attr_accessor :rules
      
        # Can be used to perform a read-modify-write.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] unless args[:version].nil?
          @bindings = args[:bindings] unless args[:bindings].nil?
          @rules = args[:rules] unless args[:rules].nil?
          @etag = args[:etag] unless args[:etag].nil?
        end
      end
      
      # Associates members with roles. See below for allowed formats of members.
      class Binding
        include Google::Apis::Core::Hashable
      
        # The name of the role to which the members should be bound. Examples: "roles/
        # viewer", "roles/editor", "roles/owner". Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Format of member entries: 1. allUsers Matches any requesting principal (users,
        # service accounts or anonymous). 2. allAuthenticatedUsers Matches any
        # requesting authenticated principal (users or service accounts). 3. user:`
        # emailid` A google user account using an email address. For example alice@gmail.
        # com, joe@example.com 4. serviceAccount:`emailid` An service account email. 5.
        # group:`emailid` A google group with an email address. For example auth-ti-
        # cloud@google.com 6. domain:`domain` A Google Apps domain name. For example
        # google.com, example.com
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] unless args[:role].nil?
          @members = args[:members] unless args[:members].nil?
        end
      end
      
      # A rule to be applied in a Policy.
      class Rule
        include Google::Apis::Core::Hashable
      
        # Human-readable description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value
        # of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.
        # *') matches all verbs.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in this set of entries.
        # Corresponds to the JSON property `in`
        # @return [Array<String>]
        attr_accessor :in
      
        # The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is not in this set of
        # entries. The formation for in and not_in entries is the same as members in a
        # Binding above.
        # Corresponds to the JSON property `notIn`
        # @return [Array<String>]
        attr_accessor :not_in
      
        # Additional restrictions that must be met
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Condition>]
        attr_accessor :conditions
      
        # The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
        # that match the LOG action.
        # Corresponds to the JSON property `logConfig`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::LogConfig>]
        attr_accessor :log_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @action = args[:action] unless args[:action].nil?
          @in = args[:in] unless args[:in].nil?
          @not_in = args[:not_in] unless args[:not_in].nil?
          @conditions = args[:conditions] unless args[:conditions].nil?
          @log_config = args[:log_config] unless args[:log_config].nil?
        end
      end
      
      # A condition to be met.
      class Condition
        include Google::Apis::Core::Hashable
      
        # Trusted attributes supplied by the IAM system.
        # Corresponds to the JSON property `iam`
        # @return [String]
        attr_accessor :iam
      
        # Trusted attributes supplied by any service that owns resources and uses the
        # IAM system for access control.
        # Corresponds to the JSON property `sys`
        # @return [String]
        attr_accessor :sys
      
        # Trusted attributes discharged by the service.
        # Corresponds to the JSON property `svc`
        # @return [String]
        attr_accessor :svc
      
        # An operator to apply the subject with.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # The object of the condition. Exactly one of these must be set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The objects of the condition. This is mutually exclusive with 'value'.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam = args[:iam] unless args[:iam].nil?
          @sys = args[:sys] unless args[:sys].nil?
          @svc = args[:svc] unless args[:svc].nil?
          @op = args[:op] unless args[:op].nil?
          @value = args[:value] unless args[:value].nil?
          @values = args[:values] unless args[:values].nil?
        end
      end
      
      # Specifies what kind of log the caller must write Increment a streamz counter
      # with the specified metric and field names. Metric names should start with a '/'
      # , generally be lowercase-only, and end in "_count". Field names should not
      # contain an initial slash. The actual exported metric names will have "/iam/
      # policy" prepended. Field names correspond to IAM request parameters and field
      # values are their respective values. At present only "iam_principal",
      # corresponding to IAMContext.principal, is supported. Examples: counter `
      # metric: "/debug_access_count" field: "iam_principal" ` ==> increment counter /
      # iam/policy/backend_debug_access_count `iam_principal=[value of IAMContext.
      # principal]` At this time we do not support: * multiple field names (though
      # this may be supported in the future) * decrementing the counter * incrementing
      # it by anything other than 1
      class LogConfig
        include Google::Apis::Core::Hashable
      
        # Options for counters
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::CounterOptions]
        attr_accessor :counter
      
        # Write a Data Access (Gin) log
        # Corresponds to the JSON property `dataAccess`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::DataAccessOptions]
        attr_accessor :data_access
      
        # Write a Cloud Audit log
        # Corresponds to the JSON property `cloudAudit`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::CloudAuditOptions]
        attr_accessor :cloud_audit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counter = args[:counter] unless args[:counter].nil?
          @data_access = args[:data_access] unless args[:data_access].nil?
          @cloud_audit = args[:cloud_audit] unless args[:cloud_audit].nil?
        end
      end
      
      # Options for counters
      class CounterOptions
        include Google::Apis::Core::Hashable
      
        # The metric to update.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The field value to attribute.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] unless args[:metric].nil?
          @field = args[:field] unless args[:field].nil?
        end
      end
      
      # Write a Data Access (Gin) log
      class DataAccessOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Write a Cloud Audit log
      class CloudAuditOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # # Overview The `Policy` defines an access control policy language. It is used
        # to define policies that are attached to resources like files, folders, VMs,
        # etc. # Policy structure A `Policy` consists of a list of bindings. A `Binding`
        # binds a set of members to a role, where the members include user accounts,
        # user groups, user domains, and service accounts. A 'role' is a named set of
        # permissions, defined by IAM. The definition of a role is outside the policy. A
        # permission check first determines the roles that include the specified
        # permission, and then determines if the principal specified is a member of a
        # binding to at least one of these roles. The membership check is recursive when
        # a group is bound to a role. Policy examples: ``` ` "bindings": [ ` "role": "
        # roles/owner", "members": [ "user:mike@example.com", "group:admins@example.com",
        # "domain:google.com", "serviceAccount:frontend@example.iam.gserviceaccounts.
        # com"] `, ` "role": "roles/viewer", "members": ["user:sean@example.com"] ` ] ` `
        # ``
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] unless args[:policy].nil?
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the 'resource'. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
    end
  end
end
