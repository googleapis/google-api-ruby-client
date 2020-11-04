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
    module IamV1
      
      # Audit log information specific to Cloud IAM admin APIs. This message is
      # serialized as an `Any` type in the `ServiceData` message of an `AuditLog`
      # message.
      class AdminAuditData
        include Google::Apis::Core::Hashable
      
        # A PermissionDelta message to record the added_permissions and
        # removed_permissions inside a role.
        # Corresponds to the JSON property `permissionDelta`
        # @return [Google::Apis::IamV1::PermissionDelta]
        attr_accessor :permission_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_delta = args[:permission_delta] if args.key?(:permission_delta)
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
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::IamV1::AuditLogConfig>]
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
      
      # Audit log information specific to Cloud IAM. This message is serialized as an `
      # Any` type in the `ServiceData` message of an `AuditLog` message.
      class AuditData
        include Google::Apis::Core::Hashable
      
        # The difference delta between two policies.
        # Corresponds to the JSON property `policyDelta`
        # @return [Google::Apis::IamV1::PolicyDelta]
        attr_accessor :policy_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_delta = args[:policy_delta] if args.key?(:policy_delta)
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
      
      # Contains information about an auditable service.
      class AuditableService
        include Google::Apis::Core::Hashable
      
        # Public name of the service. For example, the service name for Cloud IAM is '
        # iam.googleapis.com'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
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
        # @return [Google::Apis::IamV1::Expr]
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
      
      # One delta entry for Binding. Each individual change (only one member in each
      # entry) to a binding will be a separate entry.
      class BindingDelta
        include Google::Apis::Core::Hashable
      
        # The action that was performed on a Binding. Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
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
        # @return [Google::Apis::IamV1::Expr]
        attr_accessor :condition
      
        # A single identity requesting access for a Cloud Platform resource. Follows the
        # same format of Binding.members. Required
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`. Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @condition = args[:condition] if args.key?(:condition)
          @member = args[:member] if args.key?(:member)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # The request to create a new role.
      class CreateRoleRequest
        include Google::Apis::Core::Hashable
      
        # A role in the Identity and Access Management API.
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::IamV1::Role]
        attr_accessor :role
      
        # The role ID to use for this role. A role ID may contain alphanumeric
        # characters, underscores (`_`), and periods (`.`). It must contain a minimum of
        # 3 characters and a maximum of 64 characters.
        # Corresponds to the JSON property `roleId`
        # @return [String]
        attr_accessor :role_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] if args.key?(:role)
          @role_id = args[:role_id] if args.key?(:role_id)
        end
      end
      
      # The service account key create request.
      class CreateServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        # Which type of key and algorithm to use for the key. The default is currently a
        # 2K RSA key. However this may change in the future.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # The output format of the private key. The default value is `
        # TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
        end
      end
      
      # The service account create request.
      class CreateServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # Required. The account id that is used to generate the service account email
        # address and a stable unique id. It is unique within a project, must be 6-30
        # characters long, and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])`
        # to comply with RFC1035.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # An IAM service account. A service account is an account for an application or
        # a virtual machine (VM) instance, not a person. You can use a service account
        # to call Google APIs. To learn more, read the [overview of service accounts](
        # https://cloud.google.com/iam/help/service-accounts/overview). When you create
        # a service account, you specify the project ID that owns the service account,
        # as well as a name that must be unique within the project. IAM uses these
        # values to create an email address that identifies the service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # The service account disable request.
      class DisableServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The service account enable request.
      class EnableServiceAccountRequest
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
      
      # The request to lint a Cloud IAM policy object.
      class LintPolicyRequest
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
        # @return [Google::Apis::IamV1::Expr]
        attr_accessor :condition
      
        # The full resource name of the policy this lint request is about. The name
        # follows the Google Cloud Platform (GCP) resource format. For example, a GCP
        # project with ID `my-project` will be named `//cloudresourcemanager.googleapis.
        # com/projects/my-project`. The resource name is not used to read the policy
        # instance from the Cloud IAM database. The candidate policy for lint has to be
        # provided in the same request object.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # The response of a lint operation. An empty response indicates the operation
      # was able to fully execute and no lint issue was found.
      class LintPolicyResponse
        include Google::Apis::Core::Hashable
      
        # List of lint results sorted by `severity` in descending order.
        # Corresponds to the JSON property `lintResults`
        # @return [Array<Google::Apis::IamV1::LintResult>]
        attr_accessor :lint_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lint_results = args[:lint_results] if args.key?(:lint_results)
        end
      end
      
      # Structured response of a single validation unit.
      class LintResult
        include Google::Apis::Core::Hashable
      
        # Human readable debug message associated with the issue.
        # Corresponds to the JSON property `debugMessage`
        # @return [String]
        attr_accessor :debug_message
      
        # The name of the field for which this lint result is about. For nested messages
        # `field_name` consists of names of the embedded fields separated by period
        # character. The top-level qualifier is the input object to lint in the request.
        # For example, the `field_name` value `condition.expression` identifies a lint
        # result for the `expression` field of the provided condition.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The validation unit level.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # 0-based character position of problematic construct within the object
        # identified by `field_name`. Currently, this is populated only for condition
        # expression.
        # Corresponds to the JSON property `locationOffset`
        # @return [Fixnum]
        attr_accessor :location_offset
      
        # The validation unit severity.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The validation unit name, for instance "lintValidationUnits/
        # ConditionComplexityCheck".
        # Corresponds to the JSON property `validationUnitName`
        # @return [String]
        attr_accessor :validation_unit_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_message = args[:debug_message] if args.key?(:debug_message)
          @field_name = args[:field_name] if args.key?(:field_name)
          @level = args[:level] if args.key?(:level)
          @location_offset = args[:location_offset] if args.key?(:location_offset)
          @severity = args[:severity] if args.key?(:severity)
          @validation_unit_name = args[:validation_unit_name] if args.key?(:validation_unit_name)
        end
      end
      
      # The response containing the roles defined under a resource.
      class ListRolesResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set `ListRolesRequest.page_token` to
        # this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Roles defined on this resource.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::IamV1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # The service account keys list response.
      class ListServiceAccountKeysResponse
        include Google::Apis::Core::Hashable
      
        # The public keys for the service account.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::IamV1::ServiceAccountKey>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # The service account list response.
      class ListServiceAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching service accounts.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::IamV1::ServiceAccount>]
        attr_accessor :accounts
      
        # To retrieve the next page of results, set ListServiceAccountsRequest.
        # page_token to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request for PatchServiceAccount. You can patch only the `display_name` and
      # `description` fields. You must use the `update_mask` field to specify which of
      # these fields you want to patch. Only the fields specified in the request are
      # guaranteed to be returned in the response. Other fields may be empty in the
      # response.
      class PatchServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # An IAM service account. A service account is an account for an application or
        # a virtual machine (VM) instance, not a person. You can use a service account
        # to call Google APIs. To learn more, read the [overview of service accounts](
        # https://cloud.google.com/iam/help/service-accounts/overview). When you create
        # a service account, you specify the project ID that owns the service account,
        # as well as a name that must be unique within the project. IAM uses these
        # values to create an email address that identifies the service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :service_account
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A permission which can be included by a role.
      class Permission
        include Google::Apis::Core::Hashable
      
        # The service API associated with the permission is not enabled.
        # Corresponds to the JSON property `apiDisabled`
        # @return [Boolean]
        attr_accessor :api_disabled
        alias_method :api_disabled?, :api_disabled
      
        # The current custom role support level.
        # Corresponds to the JSON property `customRolesSupportLevel`
        # @return [String]
        attr_accessor :custom_roles_support_level
      
        # A brief description of what this Permission is used for. This permission can
        # ONLY be used in predefined roles.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name of this Permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `onlyInPredefinedRoles`
        # @return [Boolean]
        attr_accessor :only_in_predefined_roles
        alias_method :only_in_predefined_roles?, :only_in_predefined_roles
      
        # The preferred name for this permission. If present, then this permission is an
        # alias of, and equivalent to, the listed primary_permission.
        # Corresponds to the JSON property `primaryPermission`
        # @return [String]
        attr_accessor :primary_permission
      
        # The current launch stage of the permission.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # The title of this Permission.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_disabled = args[:api_disabled] if args.key?(:api_disabled)
          @custom_roles_support_level = args[:custom_roles_support_level] if args.key?(:custom_roles_support_level)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @only_in_predefined_roles = args[:only_in_predefined_roles] if args.key?(:only_in_predefined_roles)
          @primary_permission = args[:primary_permission] if args.key?(:primary_permission)
          @stage = args[:stage] if args.key?(:stage)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A PermissionDelta message to record the added_permissions and
      # removed_permissions inside a role.
      class PermissionDelta
        include Google::Apis::Core::Hashable
      
        # Added permissions.
        # Corresponds to the JSON property `addedPermissions`
        # @return [Array<String>]
        attr_accessor :added_permissions
      
        # Removed permissions.
        # Corresponds to the JSON property `removedPermissions`
        # @return [Array<String>]
        attr_accessor :removed_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_permissions = args[:added_permissions] if args.key?(:added_permissions)
          @removed_permissions = args[:removed_permissions] if args.key?(:removed_permissions)
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
        # @return [Array<Google::Apis::IamV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::IamV1::Binding>]
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
      
      # The difference delta between two policies.
      class PolicyDelta
        include Google::Apis::Core::Hashable
      
        # The delta for Bindings between two policies.
        # Corresponds to the JSON property `bindingDeltas`
        # @return [Array<Google::Apis::IamV1::BindingDelta>]
        attr_accessor :binding_deltas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_deltas = args[:binding_deltas] if args.key?(:binding_deltas)
        end
      end
      
      # A request to get the list of auditable services for a resource.
      class QueryAuditableServicesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of auditable services.
        # The name follows the Google Cloud Platform resource format. For example, a
        # Cloud Platform project with id `my-project` will be named `//
        # cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # A response containing a list of auditable services for a resource.
      class QueryAuditableServicesResponse
        include Google::Apis::Core::Hashable
      
        # The auditable services for a resource.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::IamV1::AuditableService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # The grantable role query request.
      class QueryGrantableRolesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of grantable roles.
        # The name follows the Google Cloud Platform resource format. For example, a
        # Cloud Platform project with id `my-project` will be named `//
        # cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Optional limit on the number of roles to include in the response. The default
        # is 300, and the maximum is 1,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional pagination token returned in an earlier QueryGrantableRolesResponse.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # 
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # The grantable role query response.
      class QueryGrantableRolesResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set `QueryGrantableRolesRequest.
        # page_token` to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching roles.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::IamV1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # A request to get permissions which can be tested on a resource.
      class QueryTestablePermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of testable
        # permissions. The name follows the Google Cloud Platform resource format. For
        # example, a Cloud Platform project with id `my-project` will be named `//
        # cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Optional limit on the number of permissions to include in the response. The
        # default is 100, and the maximum is 1,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional pagination token returned in an earlier
        # QueryTestablePermissionsRequest.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # The response containing permissions which can be tested on a resource.
      class QueryTestablePermissionsResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set `QueryTestableRolesRequest.
        # page_token` to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Permissions testable on the requested resource.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::IamV1::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # A role in the Identity and Access Management API.
      class Role
        include Google::Apis::Core::Hashable
      
        # The current deleted state of the role. This field is read only. It will be
        # ignored in calls to CreateRole and UpdateRole.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Optional. A human-readable description for the role.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Used to perform a consistent read-modify-write.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # The names of the permissions this role grants when bound in an IAM policy.
        # Corresponds to the JSON property `includedPermissions`
        # @return [Array<String>]
        attr_accessor :included_permissions
      
        # The name of the role. When Role is used in CreateRole, the role name must not
        # be set. When Role is used in output and other input such as UpdateRole, the
        # role name is the complete path, e.g., roles/logging.viewer for predefined
        # roles and organizations/`ORGANIZATION_ID`/roles/logging.viewer for custom
        # roles.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current launch stage of the role. If the `ALPHA` launch stage has been
        # selected for a role, the `stage` field will not be included in the returned
        # definition for the role.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # Optional. A human-readable title for the role. Typically this is limited to
        # 100 UTF-8 bytes.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @included_permissions = args[:included_permissions] if args.key?(:included_permissions)
          @name = args[:name] if args.key?(:name)
          @stage = args[:stage] if args.key?(:stage)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # An IAM service account. A service account is an account for an application or
      # a virtual machine (VM) instance, not a person. You can use a service account
      # to call Google APIs. To learn more, read the [overview of service accounts](
      # https://cloud.google.com/iam/help/service-accounts/overview). When you create
      # a service account, you specify the project ID that owns the service account,
      # as well as a name that must be unique within the project. IAM uses these
      # values to create an email address that identifies the service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Optional. A user-specified, human-readable description of the service account.
        # The maximum length is 256 UTF-8 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Whether the service account is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. A user-specified, human-readable name for the service account. The
        # maximum length is 100 UTF-8 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Deprecated. Do not use.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # The resource name of the service account. Use one of the following formats: * `
        # projects/`PROJECT_ID`/serviceAccounts/`EMAIL_ADDRESS`` * `projects/`PROJECT_ID`
        # /serviceAccounts/`UNIQUE_ID`` As an alternative, you can use the `-` wildcard
        # character instead of the project ID: * `projects/-/serviceAccounts/`
        # EMAIL_ADDRESS`` * `projects/-/serviceAccounts/`UNIQUE_ID`` When possible,
        # avoid using the `-` wildcard character, because it can cause response messages
        # to contain misleading error codes. For example, if you try to get the service
        # account `projects/-/serviceAccounts/fake@example.com`, which does not exist,
        # the response contains an HTTP `403 Forbidden` error instead of a `404 Not
        # Found` error.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The OAuth 2.0 client ID for the service account.
        # Corresponds to the JSON property `oauth2ClientId`
        # @return [String]
        attr_accessor :oauth2_client_id
      
        # Output only. The ID of the project that owns the service account.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Output only. The unique, stable numeric ID for the service account. Each
        # service account retains its unique ID even if you delete the service account.
        # For example, if you delete a service account, then create a new service
        # account with the same name, the new service account has a different unique ID
        # than the deleted service account.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @oauth2_client_id = args[:oauth2_client_id] if args.key?(:oauth2_client_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
      
      # Represents a service account key. A service account has two sets of key-pairs:
      # user-managed, and system-managed. User-managed key-pairs can be created and
      # deleted by users. Users are responsible for rotating these keys periodically
      # to ensure security of their service accounts. Users retain the private key of
      # these key-pairs, and Google retains ONLY the public key. System-managed keys
      # are automatically rotated by Google, and are used for signing for a maximum of
      # two weeks. The rotation process is probabilistic, and usage of the new key
      # will gradually ramp up and down over the key's lifetime. If you cache the
      # public key set for a service account, we recommend that you update the cache
      # every 15 minutes. User-managed keys can be added and removed at any time, so
      # it is important to update the cache frequently. For Google-managed keys,
      # Google will publish a key at least 6 hours before it is first used for signing
      # and will keep publishing it for at least 6 hours after it was last used for
      # signing. Public keys for all service accounts are also published at the OAuth2
      # Service Account API.
      class ServiceAccountKey
        include Google::Apis::Core::Hashable
      
        # Specifies the algorithm (and possibly key size) for the key.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # The key origin.
        # Corresponds to the JSON property `keyOrigin`
        # @return [String]
        attr_accessor :key_origin
      
        # The key type.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # The resource name of the service account key in the following format `projects/
        # `PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The private key data. Only provided in `CreateServiceAccountKey` responses.
        # Make sure to keep the private key data secure because it allows for the
        # assertion of the service account identity. When base64 decoded, the private
        # key data can be used to authenticate with Google API client libraries and with
        # gcloud auth activate-service-account.
        # Corresponds to the JSON property `privateKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :private_key_data
      
        # The output format for the private key. Only provided in `
        # CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `
        # ListServiceAccountKey` responses. Google never exposes system-managed private
        # keys, and never retains user-managed private keys.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        # The public key data. Only provided in `GetServiceAccountKey` responses.
        # Corresponds to the JSON property `publicKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :public_key_data
      
        # The key can be used after this timestamp.
        # Corresponds to the JSON property `validAfterTime`
        # @return [String]
        attr_accessor :valid_after_time
      
        # The key can be used before this timestamp. For system-managed key pairs, this
        # timestamp is the end time for the private key signing operation. The public
        # key could still be used for verification for a few hours after this time.
        # Corresponds to the JSON property `validBeforeTime`
        # @return [String]
        attr_accessor :valid_before_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @key_origin = args[:key_origin] if args.key?(:key_origin)
          @key_type = args[:key_type] if args.key?(:key_type)
          @name = args[:name] if args.key?(:name)
          @private_key_data = args[:private_key_data] if args.key?(:private_key_data)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
          @public_key_data = args[:public_key_data] if args.key?(:public_key_data)
          @valid_after_time = args[:valid_after_time] if args.key?(:valid_after_time)
          @valid_before_time = args[:valid_before_time] if args.key?(:valid_before_time)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
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
        # @return [Google::Apis::IamV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign blob request.
      class SignBlobRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. [Migrate to Service Account Credentials API](https://
        # cloud.google.com/iam/help/credentials/migrate-api). The bytes to sign.
        # Corresponds to the JSON property `bytesToSign`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_to_sign
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_to_sign = args[:bytes_to_sign] if args.key?(:bytes_to_sign)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign blob response.
      class SignBlobResponse
        include Google::Apis::Core::Hashable
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The id of the key used to sign the blob.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The signed blob.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign JWT request.
      class SignJwtRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. [Migrate to Service Account Credentials API](https://
        # cloud.google.com/iam/help/credentials/migrate-api). The JWT payload to sign.
        # Must be a serialized JSON object that contains a JWT Claims Set. For example: `
        # `"sub": "user@example.com", "iat": 313435`` If the JWT Claims Set contains an
        # expiration time (`exp`) claim, it must be an integer timestamp that is not in
        # the past and no more than 1 hour in the future. If the JWT Claims Set does not
        # contain an expiration time (`exp`) claim, this claim is added automatically,
        # with a timestamp that is 1 hour in the future.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign JWT response.
      class SignJwtResponse
        include Google::Apis::Core::Hashable
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The id of the key used to sign the JWT.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The signed JWT.
        # Corresponds to the JSON property `signedJwt`
        # @return [String]
        attr_accessor :signed_jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signed_jwt = args[:signed_jwt] if args.key?(:signed_jwt)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # The request to undelete an existing role.
      class UndeleteRoleRequest
        include Google::Apis::Core::Hashable
      
        # Used to perform a consistent read-modify-write.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # The service account undelete request.
      class UndeleteServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class UndeleteServiceAccountResponse
        include Google::Apis::Core::Hashable
      
        # An IAM service account. A service account is an account for an application or
        # a virtual machine (VM) instance, not a person. You can use a service account
        # to call Google APIs. To learn more, read the [overview of service accounts](
        # https://cloud.google.com/iam/help/service-accounts/overview). When you create
        # a service account, you specify the project ID that owns the service account,
        # as well as a name that must be unique within the project. IAM uses these
        # values to create an email address that identifies the service account.
        # Corresponds to the JSON property `restoredAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :restored_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @restored_account = args[:restored_account] if args.key?(:restored_account)
        end
      end
      
      # The service account key upload request.
      class UploadServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        # A field that allows clients to upload their own public key. If set, use this
        # public key data to create a service account key for given service account.
        # Please note, the expected format for this field is X509_PEM.
        # Corresponds to the JSON property `publicKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :public_key_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key_data = args[:public_key_data] if args.key?(:public_key_data)
        end
      end
    end
  end
end
