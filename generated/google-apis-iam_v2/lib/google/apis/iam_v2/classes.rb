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
    module IamV2
      
      # Audit log information specific to Cloud IAM admin APIs. This message is
      # serialized as an `Any` type in the `ServiceData` message of an `AuditLog`
      # message.
      class GoogleIamAdminV1AuditData
        include Google::Apis::Core::Hashable
      
        # A PermissionDelta message to record the added_permissions and
        # removed_permissions inside a role.
        # Corresponds to the JSON property `permissionDelta`
        # @return [Google::Apis::IamV2::GoogleIamAdminV1AuditDataPermissionDelta]
        attr_accessor :permission_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_delta = args[:permission_delta] if args.key?(:permission_delta)
        end
      end
      
      # A PermissionDelta message to record the added_permissions and
      # removed_permissions inside a role.
      class GoogleIamAdminV1AuditDataPermissionDelta
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
      
      # One delta entry for Binding. Each individual change (only one member in each
      # entry) to a binding will be a separate entry.
      class GoogleIamV1BindingDelta
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
        # @return [Google::Apis::IamV2::GoogleTypeExpr]
        attr_accessor :condition
      
        # A single identity requesting access for a Google Cloud resource. Follows the
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
      
      # Audit log information specific to Cloud IAM. This message is serialized as an `
      # Any` type in the `ServiceData` message of an `AuditLog` message.
      class GoogleIamV1LoggingAuditData
        include Google::Apis::Core::Hashable
      
        # The difference delta between two policies.
        # Corresponds to the JSON property `policyDelta`
        # @return [Google::Apis::IamV2::GoogleIamV1PolicyDelta]
        attr_accessor :policy_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_delta = args[:policy_delta] if args.key?(:policy_delta)
        end
      end
      
      # The difference delta between two policies.
      class GoogleIamV1PolicyDelta
        include Google::Apis::Core::Hashable
      
        # The delta for Bindings between two policies.
        # Corresponds to the JSON property `bindingDeltas`
        # @return [Array<Google::Apis::IamV2::GoogleIamV1BindingDelta>]
        attr_accessor :binding_deltas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_deltas = args[:binding_deltas] if args.key?(:binding_deltas)
        end
      end
      
      # Metadata for long-running WorkloadIdentityPool operations.
      class GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Google::Apis::IamV2::GoogleTypeExpr]
        attr_accessor :denial_condition
      
        # The permissions that are explicitly denied by this rule. Each permission uses
        # the format ``service_fqdn`/`resource`.`verb``, where ``service_fqdn`` is the
        # fully qualified domain name for the service. For example, `iam.googleapis.com/
        # roles.list`.
        # Corresponds to the JSON property `deniedPermissions`
        # @return [Array<String>]
        attr_accessor :denied_permissions
      
        # The identities that are prevented from using one or more permissions on Google
        # Cloud resources. This field can contain the following values: * `principalSet:/
        # /goog/public:all`: A special identifier that represents any principal that is
        # on the internet, even if they do not have a Google Account or are not logged
        # in. * `principal://goog/subject/`email_id``: A specific Google Account.
        # Includes Gmail, Cloud Identity, and Google Workspace user accounts. For
        # example, `principal://goog/subject/alice@example.com`. * `deleted:principal://
        # goog/subject/`email_id`?uid=`uid``: A specific Google Account that was deleted
        # recently. For example, `deleted:principal://goog/subject/alice@example.com?uid=
        # 1234567890`. If the Google Account is recovered, this identifier reverts to
        # the standard identifier for a Google Account. * `principalSet://goog/group/`
        # group_id``: A Google group. For example, `principalSet://goog/group/admins@
        # example.com`. * `deleted:principalSet://goog/group/`group_id`?uid=`uid``: A
        # Google group that was deleted recently. For example, `deleted:principalSet://
        # goog/group/admins@example.com?uid=1234567890`. If the Google group is restored,
        # this identifier reverts to the standard identifier for a Google group. * `
        # principal://iam.googleapis.com/projects/-/serviceAccounts/`service_account_id``
        # : A Google Cloud service account. For example, `principal://iam.googleapis.com/
        # projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com`. * `
        # deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/`
        # service_account_id`?uid=`uid``: A Google Cloud service account that was
        # deleted recently. For example, `deleted:principal://iam.googleapis.com/
        # projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com?uid=
        # 1234567890`. If the service account is undeleted, this identifier reverts to
        # the standard identifier for a service account. * `principalSet://goog/
        # cloudIdentityCustomerId/`customer_id``: All of the principals associated with
        # the specified Google Workspace or Cloud Identity customer ID. For example, `
        # principalSet://goog/cloudIdentityCustomerId/C01Abc35`.
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
      
      # Response message for `ListPolicies`.
      class GoogleIamV2ListPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # A page token that you can use in a ListPoliciesRequest to retrieve the next
        # page. If this field is omitted, there are no additional pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Metadata for the policies that are attached to the resource.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::IamV2::GoogleIamV2Policy>]
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
        # to be overwritten by another. If this field is present in a CreatePolicy
        # request, the value is ignored.
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
        # @return [Array<Google::Apis::IamV2::GoogleIamV2PolicyRule>]
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
      
      # Metadata for long-running `Policy` operations.
      class GoogleIamV2PolicyOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Timestamp when the `google.longrunning.Operation` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # A single rule in a `Policy`.
      class GoogleIamV2PolicyRule
        include Google::Apis::Core::Hashable
      
        # A deny rule in an IAM deny policy.
        # Corresponds to the JSON property `denyRule`
        # @return [Google::Apis::IamV2::GoogleIamV2DenyRule]
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
        # @return [Google::Apis::IamV2::GoogleRpcStatus]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
