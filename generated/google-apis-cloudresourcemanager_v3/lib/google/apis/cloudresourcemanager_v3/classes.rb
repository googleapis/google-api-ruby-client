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
    module CloudresourcemanagerV3
      
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
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::AuditLogConfig>]
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
      
      # Associates `members`, or principals, with a `role`.
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
        # @return [Google::Apis::CloudresourcemanagerV3::Expr]
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
      
      # Metadata describing a long running folder operation
      class CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
        include Google::Apis::Core::Hashable
      
        # The resource name of the folder or organization we are either creating the
        # folder under or moving the folder to.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        # The display name of the folder.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The type of this operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The resource name of the folder's parent. Only applicable when the
        # operation_type is MOVE.
        # Corresponds to the JSON property `sourceParent`
        # @return [String]
        attr_accessor :source_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
          @display_name = args[:display_name] if args.key?(:display_name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @source_parent = args[:source_parent] if args.key?(:source_parent)
        end
      end
      
      # Metadata describing a long running folder operation
      class CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
        include Google::Apis::Core::Hashable
      
        # The resource name of the folder or organization we are either creating the
        # folder under or moving the folder to.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        # The display name of the folder.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The type of this operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The resource name of the folder's parent. Only applicable when the
        # operation_type is MOVE.
        # Corresponds to the JSON property `sourceParent`
        # @return [String]
        attr_accessor :source_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
          @display_name = args[:display_name] if args.key?(:display_name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @source_parent = args[:source_parent] if args.key?(:source_parent)
        end
      end
      
      # Metadata pertaining to the Folder creation process.
      class CreateFolderMetadata
        include Google::Apis::Core::Hashable
      
        # The display name of the folder.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the folder or organization we are creating the folder
        # under.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by CreateProject. It provides insight for when significant phases of
      # Project creation have completed.
      class CreateProjectMetadata
        include Google::Apis::Core::Hashable
      
        # Creation time of the project creation workflow.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # True if the project can be retrieved using `GetProject`. No other operations
        # on the project are guaranteed to work until the project creation is complete.
        # Corresponds to the JSON property `gettable`
        # @return [Boolean]
        attr_accessor :gettable
        alias_method :gettable?, :gettable
      
        # True if the project creation process is complete.
        # Corresponds to the JSON property `ready`
        # @return [Boolean]
        attr_accessor :ready
        alias_method :ready?, :ready
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gettable = args[:gettable] if args.key?(:gettable)
          @ready = args[:ready] if args.key?(:ready)
        end
      end
      
      # Runtime operation information for creating a TagValue.
      class CreateTagBindingMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for creating a TagKey.
      class CreateTagKeyMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for creating a TagValue.
      class CreateTagValueMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the `Operation`
      # returned by `DeleteFolder`.
      class DeleteFolderMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the operation
      # returned by DeleteOrganization.
      class DeleteOrganizationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by `DeleteProject`.
      class DeleteProjectMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for deleting a TagBinding.
      class DeleteTagBindingMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for deleting a TagKey.
      class DeleteTagKeyMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for deleting a TagValue.
      class DeleteTagValueMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An EffectiveTag represents a tag that applies to a resource during policy
      # evaluation. Tags can be either directly bound to a resource or inherited from
      # its ancestor. EffectiveTag contains the name and namespaced_name of the tag
      # value and tag key, with additional fields of `inherited` to indicate the
      # inheritance status of the effective tag.
      class EffectiveTag
        include Google::Apis::Core::Hashable
      
        # Indicates the inheritance status of a tag value attached to the given resource.
        # If the tag value is inherited from one of the resource's ancestors, inherited
        # will be true. If false, then the tag value is directly attached to the
        # resource, inherited will be false.
        # Corresponds to the JSON property `inherited`
        # @return [Boolean]
        attr_accessor :inherited
        alias_method :inherited?, :inherited
      
        # The namespaced name of the TagKey. Can be in the form ``organization_id`/`
        # tag_key_short_name`` or ``project_id`/`tag_key_short_name`` or ``
        # project_number`/`tag_key_short_name``.
        # Corresponds to the JSON property `namespacedTagKey`
        # @return [String]
        attr_accessor :namespaced_tag_key
      
        # The namespaced name of the TagValue. Can be in the form ``organization_id`/`
        # tag_key_short_name`/`tag_value_short_name`` or ``project_id`/`
        # tag_key_short_name`/`tag_value_short_name`` or ``project_number`/`
        # tag_key_short_name`/`tag_value_short_name``.
        # Corresponds to the JSON property `namespacedTagValue`
        # @return [String]
        attr_accessor :namespaced_tag_value
      
        # The name of the TagKey, in the format `tagKeys/`id``, such as `tagKeys/123`.
        # Corresponds to the JSON property `tagKey`
        # @return [String]
        attr_accessor :tag_key
      
        # The parent name of the tag key. Must be in the format `organizations/`
        # organization_id`` or `projects/`project_number``
        # Corresponds to the JSON property `tagKeyParentName`
        # @return [String]
        attr_accessor :tag_key_parent_name
      
        # Resource name for TagValue in the format `tagValues/456`.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
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
      
      # A folder in an organization's resource hierarchy, used to organize that
      # organization's resources.
      class Folder
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the folder was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Timestamp when the folder was requested to be deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # The folder's display name. A folder's display name must be unique amongst its
        # siblings. For example, no two folders with the same parent can share the same
        # display name. The display name must start and end with a letter or digit, may
        # contain letters, digits, spaces, hyphens and underscores and can be no longer
        # than 30 characters. This is captured by the regular expression: `[\p`L`\p`N`]([
        # \p`L`\p`N`_- ]`0,28`[\p`L`\p`N`])?`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A checksum computed by the server based on the current value of
        # the folder resource. This may be sent on update and delete requests to ensure
        # the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The resource name of the folder. Its format is `folders/`
        # folder_id``, for example: "folders/1234".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The folder's parent's resource name. Updates to the folder's parent
        # must be performed using MoveFolder.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. The lifecycle state of the folder. Updates to the state must be
        # performed using DeleteFolder and UndeleteFolder.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Timestamp when the folder was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata describing a long running folder operation
      class FolderOperation
        include Google::Apis::Core::Hashable
      
        # The resource name of the folder or organization we are either creating the
        # folder under or moving the folder to.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        # The display name of the folder.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The type of this operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The resource name of the folder's parent. Only applicable when the
        # operation_type is MOVE.
        # Corresponds to the JSON property `sourceParent`
        # @return [String]
        attr_accessor :source_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
          @display_name = args[:display_name] if args.key?(:display_name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @source_parent = args[:source_parent] if args.key?(:source_parent)
        end
      end
      
      # A classification of the Folder Operation error.
      class FolderOperationError
        include Google::Apis::Core::Hashable
      
        # The type of operation error experienced.
        # Corresponds to the JSON property `errorMessageId`
        # @return [String]
        attr_accessor :error_message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message_id = args[:error_message_id] if args.key?(:error_message_id)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudresourcemanagerV3::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # A Lien represents an encumbrance on the actions that can be performed on a
      # resource.
      class Lien
        include Google::Apis::Core::Hashable
      
        # The creation time of this Lien.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A stable, user-visible/meaningful string identifying the origin of the Lien,
        # intended to be inspected programmatically. Maximum length of 200 characters.
        # Example: 'compute.googleapis.com'
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # A reference to the resource this Lien is attached to. The server will validate
        # the parent against those for which Liens are supported. Example: `projects/
        # 1234`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Concise user-visible strings indicating why an action cannot be performed on a
        # resource. Maximum length of 200 characters. Example: 'Holds production API key'
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The types of operations which should be blocked as a result of this Lien. Each
        # value should correspond to an IAM permission. The server will validate the
        # permissions against those for which Liens are supported. An empty list is
        # meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
        # Corresponds to the JSON property `restrictions`
        # @return [Array<String>]
        attr_accessor :restrictions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @origin = args[:origin] if args.key?(:origin)
          @parent = args[:parent] if args.key?(:parent)
          @reason = args[:reason] if args.key?(:reason)
          @restrictions = args[:restrictions] if args.key?(:restrictions)
        end
      end
      
      # The response of ListEffectiveTags.
      class ListEffectiveTagsResponse
        include Google::Apis::Core::Hashable
      
        # A possibly paginated list of effective tags for the specified resource.
        # Corresponds to the JSON property `effectiveTags`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::EffectiveTag>]
        attr_accessor :effective_tags
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_tags = args[:effective_tags] if args.key?(:effective_tags)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListFolders response message.
      class ListFoldersResponse
        include Google::Apis::Core::Hashable
      
        # A possibly paginated list of folders that are direct descendants of the
        # specified parent resource.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Folder>]
        attr_accessor :folders
      
        # A pagination token returned from a previous call to `ListFolders` that
        # indicates from where listing should continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Liens.ListLiens.
      class ListLiensResponse
        include Google::Apis::Core::Hashable
      
        # A list of Liens.
        # Corresponds to the JSON property `liens`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Lien>]
        attr_accessor :liens
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @liens = args[:liens] if args.key?(:liens)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A page of the response received from the ListProjects method. A paginated
      # response where more pages are available has `next_page_token` set. This token
      # can be used in a subsequent request to retrieve the next request page. NOTE: A
      # response may contain fewer elements than the request `page_size` and still
      # have a `next_page_token`.
      class ListProjectsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Projects under the parent. This list can be paginated.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Project>]
        attr_accessor :projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @projects = args[:projects] if args.key?(:projects)
        end
      end
      
      # The ListTagBindings response.
      class ListTagBindingsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A possibly paginated list of TagBindings for the specified resource.
        # Corresponds to the JSON property `tagBindings`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::TagBinding>]
        attr_accessor :tag_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tag_bindings = args[:tag_bindings] if args.key?(:tag_bindings)
        end
      end
      
      # The ListTagHolds response.
      class ListTagHoldsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A possibly paginated list of TagHolds.
        # Corresponds to the JSON property `tagHolds`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::TagHold>]
        attr_accessor :tag_holds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tag_holds = args[:tag_holds] if args.key?(:tag_holds)
        end
      end
      
      # The ListTagKeys response message.
      class ListTagKeysResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token returned from a previous call to `ListTagKeys` that
        # indicates from where listing should continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of TagKeys that live under the specified parent in the request.
        # Corresponds to the JSON property `tagKeys`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::TagKey>]
        attr_accessor :tag_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tag_keys = args[:tag_keys] if args.key?(:tag_keys)
        end
      end
      
      # The ListTagValues response.
      class ListTagValuesResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token returned from a previous call to `ListTagValues` that
        # indicates from where listing should continue. This is currently not used, but
        # the server may at any point start supplying a valid token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A possibly paginated list of TagValues that are direct descendants of the
        # specified parent TagKey.
        # Corresponds to the JSON property `tagValues`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::TagValue>]
        attr_accessor :tag_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
        end
      end
      
      # Metadata pertaining to the folder move process.
      class MoveFolderMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the folder or organization to move the folder to.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        # The display name of the folder.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the folder's parent.
        # Corresponds to the JSON property `sourceParent`
        # @return [String]
        attr_accessor :source_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
          @display_name = args[:display_name] if args.key?(:display_name)
          @source_parent = args[:source_parent] if args.key?(:source_parent)
        end
      end
      
      # The MoveFolder request message.
      class MoveFolderRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the folder or organization which should be the
        # folder's new parent. Must be of the form `folders/`folder_id`` or `
        # organizations/`org_id``.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by MoveProject.
      class MoveProjectMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request sent to MoveProject method.
      class MoveProjectRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new parent to move the Project under.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::CloudresourcemanagerV3::Status]
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
      
      # The root node in the resource hierarchy to which a particular entity's (a
      # company, for example) resources belong.
      class Organization
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the Organization was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Timestamp when the Organization was requested for deletion.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Immutable. The G Suite / Workspace customer id used in the Directory API.
        # Corresponds to the JSON property `directoryCustomerId`
        # @return [String]
        attr_accessor :directory_customer_id
      
        # Output only. A human-readable string that refers to the organization in the
        # Google Cloud Console. This string is set by the server and cannot be changed.
        # The string will be set to the primary domain (for example, "google.com") of
        # the Google Workspace customer that owns the organization.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A checksum computed by the server based on the current value of
        # the Organization resource. This may be sent on update and delete requests to
        # ensure the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The resource name of the organization. This is the organization's
        # relative path in the API. Its format is "organizations/[organization_id]". For
        # example, "organizations/1234".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The organization's current lifecycle state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Timestamp when the Organization was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @directory_customer_id = args[:directory_customer_id] if args.key?(:directory_customer_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Binding>]
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
      
      # A project is a high-level Google Cloud entity. It is a container for ACLs,
      # APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.
      class Project
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which this resource was requested for deletion.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. A user-assigned display name of the project. When present it must be
        # between 4 to 30 characters. Allowed characters are: lowercase and uppercase
        # letters, numbers, hyphen, single-quote, double-quote, space, and exclamation
        # point. Example: `My Project`
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A checksum computed by the server based on the current value of
        # the Project resource. This may be sent on update and delete requests to ensure
        # the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The labels associated with this project. Label keys must be between
        # 1 and 63 characters long and must conform to the following regular expression:
        # \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63
        # characters long and must conform to the regular expression (\[a-z\](\[-a-z0-9\]
        # *\[a-z0-9\])?)?. No more than 64 labels can be associated with a given
        # resource. Clients should store labels in a representation such as JSON that
        # does not depend on specific characters being disallowed. Example: `"
        # myBusinessDimension" : "businessValue"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The unique resource name of the project. It is an int64 generated
        # number prefixed by "projects/". Example: `projects/415104041262`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A reference to a parent Resource. eg., `organizations/123` or `
        # folders/876`.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Immutable. The unique, user-assigned id of the project. It must be 6 to 30
        # lowercase ASCII letters, digits, or hyphens. It must start with a letter.
        # Trailing hyphens are prohibited. Example: `tokyo-rain-123`
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Output only. The project lifecycle state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The most recent time this resource was modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @project_id = args[:project_id] if args.key?(:project_id)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by CreateProject. It provides insight for when significant phases of
      # Project creation have completed.
      class ProjectCreationStatus
        include Google::Apis::Core::Hashable
      
        # Creation time of the project creation workflow.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # True if the project can be retrieved using GetProject. No other operations on
        # the project are guaranteed to work until the project creation is complete.
        # Corresponds to the JSON property `gettable`
        # @return [Boolean]
        attr_accessor :gettable
        alias_method :gettable?, :gettable
      
        # True if the project creation process is complete.
        # Corresponds to the JSON property `ready`
        # @return [Boolean]
        attr_accessor :ready
        alias_method :ready?, :ready
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gettable = args[:gettable] if args.key?(:gettable)
          @ready = args[:ready] if args.key?(:ready)
        end
      end
      
      # The response message for searching folders.
      class SearchFoldersResponse
        include Google::Apis::Core::Hashable
      
        # A possibly paginated folder search results. the specified parent resource.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Folder>]
        attr_accessor :folders
      
        # A pagination token returned from a previous call to `SearchFolders` that
        # indicates from where searching should continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response returned from the `SearchOrganizations` method.
      class SearchOrganizationsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token to be used to retrieve the next page of results. If the
        # result is too large to fit within the page size specified in the request, this
        # field will be set with a token that can be used to fetch the next page of
        # results. If this field is empty, it indicates that this response contains the
        # last page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Organizations that matched the search query, possibly paginated.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Organization>]
        attr_accessor :organizations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @organizations = args[:organizations] if args.key?(:organizations)
        end
      end
      
      # A page of the response received from the SearchProjects method. A paginated
      # response where more pages are available has `next_page_token` set. This token
      # can be used in a subsequent request to retrieve the next request page.
      class SearchProjectsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Projects that matched the list filter query. This list can be
        # paginated.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::CloudresourcemanagerV3::Project>]
        attr_accessor :projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @projects = args[:projects] if args.key?(:projects)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudresourcemanagerV3::Policy]
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # A TagBinding represents a connection between a TagValue and a cloud resource
      # Once a TagBinding is created, the TagValue is applied to all the descendants
      # of the Google Cloud resource.
      class TagBinding
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the TagBinding. This is a String of the form: `
        # tagBindings/`full-resource-name`/`tag-value-name`` (e.g. `tagBindings/%2F%
        # 2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of the resource the TagValue is bound to. E.g. `//
        # cloudresourcemanager.googleapis.com/projects/123`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The TagValue of the TagBinding. Must be of the form `tagValues/456`.
        # Corresponds to the JSON property `tagValue`
        # @return [String]
        attr_accessor :tag_value
      
        # The namespaced name for the TagValue of the TagBinding. Must be in the format `
        # `parent_id`/`tag_key_short_name`/`short_name``. For methods that support
        # TagValue namespaced name, only one of tag_value_namespaced_name or tag_value
        # may be filled. Requests with both fields will be rejected.
        # Corresponds to the JSON property `tagValueNamespacedName`
        # @return [String]
        attr_accessor :tag_value_namespaced_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @tag_value = args[:tag_value] if args.key?(:tag_value)
          @tag_value_namespaced_name = args[:tag_value_namespaced_name] if args.key?(:tag_value_namespaced_name)
        end
      end
      
      # A TagHold represents the use of a TagValue that is not captured by TagBindings.
      # If a TagValue has any TagHolds, deletion will be blocked. This resource is
      # intended to be created in the same cloud location as the `holder`.
      class TagHold
        include Google::Apis::Core::Hashable
      
        # Output only. The time this TagHold was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A URL where an end user can learn more about removing this hold. E.g.
        # `https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-
        # managing`
        # Corresponds to the JSON property `helpLink`
        # @return [String]
        attr_accessor :help_link
      
        # Required. The name of the resource where the TagValue is being used. Must be
        # less than 200 characters. E.g. `//compute.googleapis.com/compute/projects/
        # myproject/regions/us-east-1/instanceGroupManagers/instance-group`
        # Corresponds to the JSON property `holder`
        # @return [String]
        attr_accessor :holder
      
        # Output only. The resource name of a TagHold. This is a String of the form: `
        # tagValues/`tag-value-id`/tagHolds/`tag-hold-id`` (e.g. `tagValues/123/tagHolds/
        # 456`). This resource name is generated by the server.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. An optional string representing the origin of this request. This
        # field should include human-understandable information to distinguish origins
        # from each other. Must be less than 200 characters. E.g. `migs-35678234`
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @help_link = args[:help_link] if args.key?(:help_link)
          @holder = args[:holder] if args.key?(:holder)
          @name = args[:name] if args.key?(:name)
          @origin = args[:origin] if args.key?(:origin)
        end
      end
      
      # A TagKey, used to group a set of TagValues.
      class TagKey
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-assigned description of the TagKey. Must not exceed 256
        # characters. Read-write.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Entity tag which users can pass to prevent race conditions. This
        # field is always set in server responses. See UpdateTagKeyRequest for details.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Immutable. The resource name for a TagKey. Must be in the format `tagKeys/`
        # tag_key_id``, where `tag_key_id` is the generated numeric id for the TagKey.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Immutable. Namespaced name of the TagKey.
        # Corresponds to the JSON property `namespacedName`
        # @return [String]
        attr_accessor :namespaced_name
      
        # Immutable. The resource name of the TagKey's parent. A TagKey can be parented
        # by an Organization or a Project. For a TagKey parented by an Organization, its
        # parent must be in the form `organizations/`org_id``. For a TagKey parented by
        # a Project, its parent can be in the form `projects/`project_id`` or `projects/`
        # project_number``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. A purpose denotes that this Tag is intended for use in policies of a
        # specific policy engine, and will involve that policy engine in management
        # operations involving this Tag. A purpose does not grant a policy engine
        # exclusive rights to the Tag, and it may be referenced by other policy engines.
        # A purpose cannot be changed once set.
        # Corresponds to the JSON property `purpose`
        # @return [String]
        attr_accessor :purpose
      
        # Optional. Purpose data corresponds to the policy system that the tag is
        # intended for. See documentation for `Purpose` for formatting of this field.
        # Purpose data cannot be changed once set.
        # Corresponds to the JSON property `purposeData`
        # @return [Hash<String,String>]
        attr_accessor :purpose_data
      
        # Required. Immutable. The user friendly name for a TagKey. The short name
        # should be unique for TagKeys within the same tag namespace. The short name
        # must be 1-63 characters, beginning and ending with an alphanumeric character ([
        # a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics
        # between.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @namespaced_name = args[:namespaced_name] if args.key?(:namespaced_name)
          @parent = args[:parent] if args.key?(:parent)
          @purpose = args[:purpose] if args.key?(:purpose)
          @purpose_data = args[:purpose_data] if args.key?(:purpose_data)
          @short_name = args[:short_name] if args.key?(:short_name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A TagValue is a child of a particular TagKey. This is used to group cloud
      # resources for the purpose of controlling them using policies.
      class TagValue
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-assigned description of the TagValue. Must not exceed 256
        # characters. Read-write.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Entity tag which users can pass to prevent race conditions. This
        # field is always set in server responses. See UpdateTagValueRequest for details.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Immutable. Resource name for TagValue in the format `tagValues/456`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The namespaced name of the TagValue. Can be in the form ``
        # organization_id`/`tag_key_short_name`/`tag_value_short_name`` or ``project_id`/
        # `tag_key_short_name`/`tag_value_short_name`` or ``project_number`/`
        # tag_key_short_name`/`tag_value_short_name``.
        # Corresponds to the JSON property `namespacedName`
        # @return [String]
        attr_accessor :namespaced_name
      
        # Immutable. The resource name of the new TagValue's parent TagKey. Must be of
        # the form `tagKeys/`tag_key_id``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Required. Immutable. User-assigned short name for TagValue. The short name
        # should be unique for TagValues within the same parent TagKey. The short name
        # must be 63 characters or less, beginning and ending with an alphanumeric
        # character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and
        # alphanumerics between.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # Output only. Update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @namespaced_name = args[:namespaced_name] if args.key?(:namespaced_name)
          @parent = args[:parent] if args.key?(:parent)
          @short_name = args[:short_name] if args.key?(:short_name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
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
      
      # A status object which is used as the `metadata` field for the `Operation`
      # returned by `UndeleteFolder`.
      class UndeleteFolderMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The UndeleteFolder request message.
      class UndeleteFolderRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by UndeleteOrganization.
      class UndeleteOrganizationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by `UndeleteProject`.
      class UndeleteProjectMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request sent to the UndeleteProject method.
      class UndeleteProjectRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by UpdateFolder.
      class UpdateFolderMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by UpdateProject.
      class UpdateProjectMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for updating a TagKey.
      class UpdateTagKeyMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Runtime operation information for updating a TagValue.
      class UpdateTagValueMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
