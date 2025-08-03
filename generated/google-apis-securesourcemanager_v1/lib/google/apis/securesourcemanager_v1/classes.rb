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
    module SecuresourcemanagerV1
      
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
        # @return [Array<Google::Apis::SecuresourcemanagerV1::AuditLogConfig>]
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
      
      # The request to batch create pull request comments.
      class BatchCreatePullRequestCommentsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the resources to create. There should
        # be exactly one CreatePullRequestCommentRequest with CommentDetail being REVIEW
        # in the list, and no more than 100 CreatePullRequestCommentRequests with
        # CommentDetail being CODE in the list
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::CreatePullRequestCommentRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
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
        # @return [Google::Apis::SecuresourcemanagerV1::Expr]
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
      
      # Branch represents a branch involved in a pull request.
      class Branch
        include Google::Apis::Core::Hashable
      
        # Required. Name of the branch.
        # Corresponds to the JSON property `ref`
        # @return [String]
        attr_accessor :ref
      
        # Output only. The commit at the tip of the branch.
        # Corresponds to the JSON property `sha`
        # @return [String]
        attr_accessor :sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ref = args[:ref] if args.key?(:ref)
          @sha = args[:sha] if args.key?(:sha)
        end
      end
      
      # Metadata of a BranchRule. BranchRule is the protection rule to enforce pre-
      # defined rules on designated branches within a repository.
      class BranchRule
        include Google::Apis::Core::Hashable
      
        # Optional. Determines if allow stale reviews or approvals before merging to the
        # branch.
        # Corresponds to the JSON property `allowStaleReviews`
        # @return [Boolean]
        attr_accessor :allow_stale_reviews
        alias_method :allow_stale_reviews?, :allow_stale_reviews
      
        # Optional. User annotations. These attributes can only be set and used by the
        # user. See https://google.aip.dev/128#annotations for more details such as
        # format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Determines if the branch rule is disabled or not.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The pattern of the branch that can match to this BranchRule.
        # Specified as regex. .* for all branches. Examples: main, (main|release.*).
        # Current MVP phase only support `.*` for wildcard.
        # Corresponds to the JSON property `includePattern`
        # @return [String]
        attr_accessor :include_pattern
      
        # Optional. The minimum number of approvals required for the branch rule to be
        # matched.
        # Corresponds to the JSON property `minimumApprovalsCount`
        # @return [Fixnum]
        attr_accessor :minimum_approvals_count
      
        # Optional. The minimum number of reviews required for the branch rule to be
        # matched.
        # Corresponds to the JSON property `minimumReviewsCount`
        # @return [Fixnum]
        attr_accessor :minimum_reviews_count
      
        # Optional. A unique identifier for a BranchRule. The name should be of the
        # format: `projects/`project`/locations/`location`/repositories/`repository`/
        # branchRules/`branch_rule``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Determines if require comments resolved before merging to the branch.
        # Corresponds to the JSON property `requireCommentsResolved`
        # @return [Boolean]
        attr_accessor :require_comments_resolved
        alias_method :require_comments_resolved?, :require_comments_resolved
      
        # Optional. Determines if require linear history before merging to the branch.
        # Corresponds to the JSON property `requireLinearHistory`
        # @return [Boolean]
        attr_accessor :require_linear_history
        alias_method :require_linear_history?, :require_linear_history
      
        # Optional. Determines if the branch rule requires a pull request or not.
        # Corresponds to the JSON property `requirePullRequest`
        # @return [Boolean]
        attr_accessor :require_pull_request
        alias_method :require_pull_request?, :require_pull_request
      
        # Optional. List of required status checks before merging to the branch.
        # Corresponds to the JSON property `requiredStatusChecks`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Check>]
        attr_accessor :required_status_checks
      
        # Output only. Unique identifier of the repository.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_stale_reviews = args[:allow_stale_reviews] if args.key?(:allow_stale_reviews)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @etag = args[:etag] if args.key?(:etag)
          @include_pattern = args[:include_pattern] if args.key?(:include_pattern)
          @minimum_approvals_count = args[:minimum_approvals_count] if args.key?(:minimum_approvals_count)
          @minimum_reviews_count = args[:minimum_reviews_count] if args.key?(:minimum_reviews_count)
          @name = args[:name] if args.key?(:name)
          @require_comments_resolved = args[:require_comments_resolved] if args.key?(:require_comments_resolved)
          @require_linear_history = args[:require_linear_history] if args.key?(:require_linear_history)
          @require_pull_request = args[:require_pull_request] if args.key?(:require_pull_request)
          @required_status_checks = args[:required_status_checks] if args.key?(:required_status_checks)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Check is a type for status check.
      class Check
        include Google::Apis::Core::Hashable
      
        # Required. The context of the check.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
        end
      end
      
      # The request to close an issue.
      class CloseIssueRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The current etag of the issue. If the etag is provided and does not
        # match the current etag of the issue, closing will be blocked and an ABORTED
        # error will be returned.
        # Corresponds to the JSON property `etag`
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
      
      # ClosePullRequestRequest is the request to close a pull request.
      class ClosePullRequestRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The comment on a code line.
      class Code
        include Google::Apis::Core::Hashable
      
        # Required. The comment body.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. The effective commit sha this code comment is pointing to.
        # Corresponds to the JSON property `effectiveCommitSha`
        # @return [String]
        attr_accessor :effective_commit_sha
      
        # Output only. The root comment of the conversation, derived from the reply
        # field.
        # Corresponds to the JSON property `effectiveRootComment`
        # @return [String]
        attr_accessor :effective_root_comment
      
        # The position of the code comment.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::SecuresourcemanagerV1::Position]
        attr_accessor :position
      
        # Optional. Input only. The PullRequestComment resource name that this comment
        # is replying to.
        # Corresponds to the JSON property `reply`
        # @return [String]
        attr_accessor :reply
      
        # Output only. Boolean indicator if the comment is resolved.
        # Corresponds to the JSON property `resolved`
        # @return [Boolean]
        attr_accessor :resolved
        alias_method :resolved?, :resolved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @effective_commit_sha = args[:effective_commit_sha] if args.key?(:effective_commit_sha)
          @effective_root_comment = args[:effective_root_comment] if args.key?(:effective_root_comment)
          @position = args[:position] if args.key?(:position)
          @reply = args[:reply] if args.key?(:reply)
          @resolved = args[:resolved] if args.key?(:resolved)
        end
      end
      
      # The general pull request comment.
      class Comment
        include Google::Apis::Core::Hashable
      
        # Required. The comment body.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # The request to create a pull request comment.
      class CreatePullRequestCommentRequest
        include Google::Apis::Core::Hashable
      
        # Required. The pull request in which to create the pull request comment. Format:
        # `projects/`project_number`/locations/`location_id`/repositories/`
        # repository_id`/pullRequests/`pull_request_id``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # PullRequestComment represents a comment on a pull request.
        # Corresponds to the JSON property `pullRequestComment`
        # @return [Google::Apis::SecuresourcemanagerV1::PullRequestComment]
        attr_accessor :pull_request_comment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @pull_request_comment = args[:pull_request_comment] if args.key?(:pull_request_comment)
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
      
      # Response message containing the content of a blob.
      class FetchBlobResponse
        include Google::Apis::Core::Hashable
      
        # The content of the blob, encoded as base64.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The SHA-1 hash of the blob.
        # Corresponds to the JSON property `sha`
        # @return [String]
        attr_accessor :sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @sha = args[:sha] if args.key?(:sha)
        end
      end
      
      # Response message containing a list of TreeEntry objects.
      class FetchTreeResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of TreeEntry objects.
        # Corresponds to the JSON property `treeEntries`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::TreeEntry>]
        attr_accessor :tree_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tree_entries = args[:tree_entries] if args.key?(:tree_entries)
        end
      end
      
      # Metadata of a FileDiff. FileDiff represents a single file diff in a pull
      # request.
      class FileDiff
        include Google::Apis::Core::Hashable
      
        # Output only. The action taken on the file (eg. added, modified, deleted).
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. The name of the file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The git patch containing the file changes.
        # Corresponds to the JSON property `patch`
        # @return [String]
        attr_accessor :patch
      
        # Output only. The commit pointing to the file changes.
        # Corresponds to the JSON property `sha`
        # @return [String]
        attr_accessor :sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @name = args[:name] if args.key?(:name)
          @patch = args[:patch] if args.key?(:patch)
          @sha = args[:sha] if args.key?(:sha)
        end
      end
      
      # Metadata of a Secure Source Manager Hook.
      class Hook
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Determines if the hook disabled or not. Set to true to stop sending
        # traffic.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. The events that trigger hook on.
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # Identifier. A unique identifier for a Hook. The name should be of the format: `
        # projects/`project`/locations/`location_id`/repositories/`repository_id`/hooks/`
        # hook_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The trigger option for push events.
        # Corresponds to the JSON property `pushOption`
        # @return [Google::Apis::SecuresourcemanagerV1::PushOption]
        attr_accessor :push_option
      
        # Optional. The sensitive query string to be appended to the target URI.
        # Corresponds to the JSON property `sensitiveQueryString`
        # @return [String]
        attr_accessor :sensitive_query_string
      
        # Required. The target URI to which the payloads will be delivered.
        # Corresponds to the JSON property `targetUri`
        # @return [String]
        attr_accessor :target_uri
      
        # Output only. Unique identifier of the hook.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @events = args[:events] if args.key?(:events)
          @name = args[:name] if args.key?(:name)
          @push_option = args[:push_option] if args.key?(:push_option)
          @sensitive_query_string = args[:sensitive_query_string] if args.key?(:sensitive_query_string)
          @target_uri = args[:target_uri] if args.key?(:target_uri)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # HostConfig has different instance endpoints.
      class HostConfig
        include Google::Apis::Core::Hashable
      
        # Output only. API hostname.
        # Corresponds to the JSON property `api`
        # @return [String]
        attr_accessor :api
      
        # Output only. Git HTTP hostname.
        # Corresponds to the JSON property `gitHttp`
        # @return [String]
        attr_accessor :git_http
      
        # Output only. Git SSH hostname.
        # Corresponds to the JSON property `gitSsh`
        # @return [String]
        attr_accessor :git_ssh
      
        # Output only. HTML hostname.
        # Corresponds to the JSON property `html`
        # @return [String]
        attr_accessor :html
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @git_http = args[:git_http] if args.key?(:git_http)
          @git_ssh = args[:git_ssh] if args.key?(:git_ssh)
          @html = args[:html] if args.key?(:html)
        end
      end
      
      # Repository initialization configuration.
      class InitialConfig
        include Google::Apis::Core::Hashable
      
        # Default branch name of the repository.
        # Corresponds to the JSON property `defaultBranch`
        # @return [String]
        attr_accessor :default_branch
      
        # List of gitignore template names user can choose from. Valid values:
        # actionscript, ada, agda, android, anjuta, ansible, appcelerator-titanium, app-
        # engine, archives, arch-linux-packages, atmel-studio, autotools, backup, bazaar,
        # bazel, bitrix, bricx-cc, c, cake-php, calabash, cf-wheels, chef-cookbook,
        # clojure, cloud9, c-make, code-igniter, code-kit, code-sniffer, common-lisp,
        # composer, concrete5, coq, cordova, cpp, craft-cms, cuda, cvs, d, dart, dart-
        # editor, delphi, diff, dm, dreamweaver, dropbox, drupal, drupal-7, eagle,
        # eclipse, eiffel-studio, elisp, elixir, elm, emacs, ensime, epi-server, erlang,
        # esp-idf, espresso, exercism, expression-engine, ext-js, fancy, finale, flex-
        # builder, force-dot-com, fortran, fuel-php, gcov, git-book, gnome-shell-
        # extension, go, godot, gpg, gradle, grails, gwt, haskell, hugo, iar-ewarm,
        # idris, igor-pro, images, infor-cms, java, jboss, jboss-4, jboss-6, jdeveloper,
        # jekyll, jenkins-home, jenv, jet-brains, jigsaw, joomla, julia, jupyter-
        # notebooks, kate, kdevelop4, kentico, ki-cad, kohana, kotlin, lab-view, laravel,
        # lazarus, leiningen, lemon-stand, libre-office, lilypond, linux, lithium,
        # logtalk, lua, lyx, mac-os, magento, magento-1, magento-2, matlab, maven,
        # mercurial, mercury, metals, meta-programming-system, meteor, microsoft-office,
        # model-sim, momentics, mono-develop, nanoc, net-beans, nikola, nim, ninja, node,
        # notepad-pp, nwjs, objective--c, ocaml, octave, opa, open-cart, openssl,
        # oracle-forms, otto, packer, patch, perl, perl6, phalcon, phoenix, pimcore,
        # play-framework, plone, prestashop, processing, psoc-creator, puppet, pure-
        # script, putty, python, qooxdoo, qt, r, racket, rails, raku, red, redcar, redis,
        # rhodes-rhomobile, ros, ruby, rust, sam, sass, sbt, scala, scheme, scons,
        # scrivener, sdcc, seam-gen, sketch-up, slick-edit, smalltalk, snap, splunk,
        # stata, stella, sublime-text, sugar-crm, svn, swift, symfony, symphony-cms,
        # synopsys-vcs, tags, terraform, tex, text-mate, textpattern, think-php,
        # tortoise-git, turbo-gears-2, typo3, umbraco, unity, unreal-engine, vagrant,
        # vim, virtual-env, virtuoso, visual-studio, visual-studio-code, vue, vvvv, waf,
        # web-methods, windows, word-press, xcode, xilinx, xilinx-ise, xojo, yeoman, yii,
        # zend-framework, zephir.
        # Corresponds to the JSON property `gitignores`
        # @return [Array<String>]
        attr_accessor :gitignores
      
        # License template name user can choose from. Valid values: license-0bsd,
        # license-389-exception, aal, abstyles, adobe-2006, adobe-glyph, adsl, afl-1-1,
        # afl-1-2, afl-2-0, afl-2-1, afl-3-0, afmparse, agpl-1-0, agpl-1-0-only, agpl-1-
        # 0-or-later, agpl-3-0-only, agpl-3-0-or-later, aladdin, amdplpa, aml, ampas,
        # antlr-pd, antlr-pd-fallback, apache-1-0, apache-1-1, apache-2-0, apafml, apl-1-
        # 0, apsl-1-0, apsl-1-1, apsl-1-2, apsl-2-0, artistic-1-0, artistic-1-0-cl8,
        # artistic-1-0-perl, artistic-2-0, autoconf-exception-2-0, autoconf-exception-3-
        # 0, bahyph, barr, beerware, bison-exception-2-2, bittorrent-1-0, bittorrent-1-1,
        # blessing, blueoak-1-0-0, bootloader-exception, borceux, bsd-1-clause, bsd-2-
        # clause, bsd-2-clause-freebsd, bsd-2-clause-netbsd, bsd-2-clause-patent, bsd-2-
        # clause-views, bsd-3-clause, bsd-3-clause-attribution, bsd-3-clause-clear, bsd-
        # 3-clause-lbnl, bsd-3-clause-modification, bsd-3-clause-no-nuclear-license, bsd-
        # 3-clause-no-nuclear-license-2014, bsd-3-clause-no-nuclear-warranty, bsd-3-
        # clause-open-mpi, bsd-4-clause, bsd-4-clause-shortened, bsd-4-clause-uc, bsd-
        # protection, bsd-source-code, bsl-1-0, busl-1-1, cal-1-0, cal-1-0-combined-work-
        # exception, caldera, catosl-1-1, cc0-1-0, cc-by-1-0, cc-by-2-0, cc-by-3-0, cc-
        # by-3-0-at, cc-by-3-0-us, cc-by-4-0, cc-by-nc-1-0, cc-by-nc-2-0, cc-by-nc-3-0,
        # cc-by-nc-4-0, cc-by-nc-nd-1-0, cc-by-nc-nd-2-0, cc-by-nc-nd-3-0, cc-by-nc-nd-3-
        # 0-igo, cc-by-nc-nd-4-0, cc-by-nc-sa-1-0, cc-by-nc-sa-2-0, cc-by-nc-sa-3-0, cc-
        # by-nc-sa-4-0, cc-by-nd-1-0, cc-by-nd-2-0, cc-by-nd-3-0, cc-by-nd-4-0, cc-by-sa-
        # 1-0, cc-by-sa-2-0, cc-by-sa-2-0-uk, cc-by-sa-2-1-jp, cc-by-sa-3-0, cc-by-sa-3-
        # 0-at, cc-by-sa-4-0, cc-pddc, cddl-1-0, cddl-1-1, cdla-permissive-1-0, cdla-
        # sharing-1-0, cecill-1-0, cecill-1-1, cecill-2-0, cecill-2-1, cecill-b, cecill-
        # c, cern-ohl-1-1, cern-ohl-1-2, cern-ohl-p-2-0, cern-ohl-s-2-0, cern-ohl-w-2-0,
        # clartistic, classpath-exception-2-0, clisp-exception-2-0, cnri-jython, cnri-
        # python, cnri-python-gpl-compatible, condor-1-1, copyleft-next-0-3-0, copyleft-
        # next-0-3-1, cpal-1-0, cpl-1-0, cpol-1-02, crossword, crystal-stacker, cua-opl-
        # 1-0, cube, c-uda-1-0, curl, d-fsl-1-0, diffmark, digirule-foss-exception, doc,
        # dotseqn, drl-1-0, dsdp, dvipdfm, ecl-1-0, ecl-2-0, ecos-exception-2-0, efl-1-0,
        # efl-2-0, egenix, entessa, epics, epl-1-0, epl-2-0, erlpl-1-1, etalab-2-0, eu-
        # datagrid, eupl-1-0, eupl-1-1, eupl-1-2, eurosym, fair, fawkes-runtime-
        # exception, fltk-exception, font-exception-2-0, frameworx-1-0, freebsd-doc,
        # freeimage, freertos-exception-2-0, fsfap, fsful, fsfullr, ftl, gcc-exception-2-
        # 0, gcc-exception-3-1, gd, gfdl-1-1-invariants-only, gfdl-1-1-invariants-or-
        # later, gfdl-1-1-no-invariants-only, gfdl-1-1-no-invariants-or-later, gfdl-1-1-
        # only, gfdl-1-1-or-later, gfdl-1-2-invariants-only, gfdl-1-2-invariants-or-
        # later, gfdl-1-2-no-invariants-only, gfdl-1-2-no-invariants-or-later, gfdl-1-2-
        # only, gfdl-1-2-or-later, gfdl-1-3-invariants-only, gfdl-1-3-invariants-or-
        # later, gfdl-1-3-no-invariants-only, gfdl-1-3-no-invariants-or-later, gfdl-1-3-
        # only, gfdl-1-3-or-later, giftware, gl2ps, glide, glulxe, glwtpl, gnu-javamail-
        # exception, gnuplot, gpl-1-0-only, gpl-1-0-or-later, gpl-2-0-only, gpl-2-0-or-
        # later, gpl-3-0-linking-exception, gpl-3-0-linking-source-exception, gpl-3-0-
        # only, gpl-3-0-or-later, gpl-cc-1-0, gsoap-1-3b, haskell-report, hippocratic-2-
        # 1, hpnd, hpnd-sell-variant, htmltidy, i2p-gpl-java-exception, ibm-pibs, icu,
        # ijg, image-magick, imatix, imlib2, info-zip, intel, intel-acpi, interbase-1-0,
        # ipa, ipl-1-0, isc, jasper-2-0, jpnic, json, lal-1-2, lal-1-3, latex2e,
        # leptonica, lgpl-2-0-only, lgpl-2-0-or-later, lgpl-2-1-only, lgpl-2-1-or-later,
        # lgpl-3-0-linking-exception, lgpl-3-0-only, lgpl-3-0-or-later, lgpllr, libpng,
        # libpng-2-0, libselinux-1-0, libtiff, libtool-exception, liliq-p-1-1, liliq-r-1-
        # 1, liliq-rplus-1-1, linux-openib, linux-syscall-note, llvm-exception, lpl-1-0,
        # lpl-1-02, lppl-1-0, lppl-1-1, lppl-1-2, lppl-1-3a, lppl-1-3c, lzma-exception,
        # make-index, mif-exception, miros, mit, mit-0, mit-advertising, mit-cmu, mit-
        # enna, mit-feh, mit-modern-variant, mitnfa, mit-open-group, motosoto, mpich2,
        # mpl-1-0, mpl-1-1, mpl-2-0, mpl-2-0-no-copyleft-exception, ms-pl, ms-rl, mtll,
        # mulanpsl-1-0, mulanpsl-2-0, multics, mup, naist-2003, nasa-1-3, naumen, nbpl-1-
        # 0, ncgl-uk-2-0, ncsa, netcdf, net-snmp, newsletr, ngpl, nist-pd, nist-pd-
        # fallback, nlod-1-0, nlpl, nokia, nokia-qt-exception-1-1, nosl, noweb, npl-1-0,
        # npl-1-1, nposl-3-0, nrl, ntp, ntp-0, ocaml-lgpl-linking-exception, occt-
        # exception-1-0, occt-pl, oclc-2-0, odbl-1-0, odc-by-1-0, ofl-1-0, ofl-1-0-no-
        # rfn, ofl-1-0-rfn, ofl-1-1, ofl-1-1-no-rfn, ofl-1-1-rfn, ogc-1-0, ogdl-taiwan-1-
        # 0, ogl-canada-2-0, ogl-uk-1-0, ogl-uk-2-0, ogl-uk-3-0, ogtsl, oldap-1-1, oldap-
        # 1-2, oldap-1-3, oldap-1-4, oldap-2-0, oldap-2-0-1, oldap-2-1, oldap-2-2, oldap-
        # 2-2-1, oldap-2-2-2, oldap-2-3, oldap-2-4, oldap-2-7, oml, openjdk-assembly-
        # exception-1-0, openssl, openvpn-openssl-exception, opl-1-0, oset-pl-2-1, osl-1-
        # 0, osl-1-1, osl-2-0, osl-2-1, osl-3-0, o-uda-1-0, parity-6-0-0, parity-7-0-0,
        # pddl-1-0, php-3-0, php-3-01, plexus, polyform-noncommercial-1-0-0, polyform-
        # small-business-1-0-0, postgresql, psf-2-0, psfrag, ps-or-pdf-font-exception-
        # 20170817, psutils, python-2-0, qhull, qpl-1-0, qt-gpl-exception-1-0, qt-lgpl-
        # exception-1-1, qwt-exception-1-0, rdisc, rhecos-1-1, rpl-1-1, rpsl-1-0, rsa-md,
        # rscpl, ruby, saxpath, sax-pd, scea, sendmail, sendmail-8-23, sgi-b-1-0, sgi-b-
        # 1-1, sgi-b-2-0, shl-0-51, shl-2-0, shl-2-1, simpl-2-0, sissl, sissl-1-2,
        # sleepycat, smlnj, smppl, snia, spencer-86, spencer-94, spencer-99, spl-1-0,
        # ssh-openssh, ssh-short, sspl-1-0, sugarcrm-1-1-3, swift-exception, swl, tapr-
        # ohl-1-0, tcl, tcp-wrappers, tmate, torque-1-1, tosl, tu-berlin-1-0, tu-berlin-
        # 2-0, u-boot-exception-2-0, ucl-1-0, unicode-dfs-2015, unicode-dfs-2016,
        # unicode-tou, universal-foss-exception-1-0, unlicense, upl-1-0, vim, vostrom,
        # vsl-1-0, w3c, w3c-19980720, w3c-20150513, watcom-1-0, wsuipa, wtfpl, wxwindows-
        # exception-3-1, x11, xerox, xfree86-1-1, xinetd, xnet, xpp, xskat, ypl-1-0, ypl-
        # 1-1, zed, zend-2-0, zimbra-1-3, zimbra-1-4, zlib, zlib-acknowledgement, zpl-1-
        # 1, zpl-2-0, zpl-2-1.
        # Corresponds to the JSON property `license`
        # @return [String]
        attr_accessor :license
      
        # README template name. Valid template name(s) are: default.
        # Corresponds to the JSON property `readme`
        # @return [String]
        attr_accessor :readme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_branch = args[:default_branch] if args.key?(:default_branch)
          @gitignores = args[:gitignores] if args.key?(:gitignores)
          @license = args[:license] if args.key?(:license)
          @readme = args[:readme] if args.key?(:readme)
        end
      end
      
      # A resource that represents a Secure Source Manager instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # HostConfig has different instance endpoints.
        # Corresponds to the JSON property `hostConfig`
        # @return [Google::Apis::SecuresourcemanagerV1::HostConfig]
        attr_accessor :host_config
      
        # Optional. Immutable. Customer-managed encryption key name, in the format
        # projects/*/locations/*/keyRings/*/cryptoKeys/*.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. A unique identifier for an instance. The name should be of the
        # format: `projects/`project_number`/locations/`location_id`/instances/`
        # instance_id`` `project_number`: Maps to a unique int64 id assigned to each
        # project. `location_id`: Refers to the region where the instance will be
        # deployed. Since Secure Source Manager is a regional service, it must be one of
        # the valid GCP regions. `instance_id`: User provided name for the instance,
        # must be unique for a project_number and location_id combination.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # PrivateConfig includes settings for private instance.
        # Corresponds to the JSON property `privateConfig`
        # @return [Google::Apis::SecuresourcemanagerV1::PrivateConfig]
        attr_accessor :private_config
      
        # Output only. Current state of the instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. An optional field providing information about the current
        # instance state.
        # Corresponds to the JSON property `stateNote`
        # @return [String]
        attr_accessor :state_note
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # WorkforceIdentityFederationConfig allows this instance to support users from
        # external identity providers.
        # Corresponds to the JSON property `workforceIdentityFederationConfig`
        # @return [Google::Apis::SecuresourcemanagerV1::WorkforceIdentityFederationConfig]
        attr_accessor :workforce_identity_federation_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @host_config = args[:host_config] if args.key?(:host_config)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @private_config = args[:private_config] if args.key?(:private_config)
          @state = args[:state] if args.key?(:state)
          @state_note = args[:state_note] if args.key?(:state_note)
          @update_time = args[:update_time] if args.key?(:update_time)
          @workforce_identity_federation_config = args[:workforce_identity_federation_config] if args.key?(:workforce_identity_federation_config)
        end
      end
      
      # Metadata of an Issue.
      class Issue
        include Google::Apis::Core::Hashable
      
        # Optional. Issue body. Provides a detailed description of the issue.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. Close timestamp (if closed). Cleared when is re-opened.
        # Corresponds to the JSON property `closeTime`
        # @return [String]
        attr_accessor :close_time
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. Unique identifier for an issue. The issue id is generated by the
        # server. Format: `projects/`project`/locations/`location`/repositories/`
        # repository`/issues/`issue_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the issue.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Issue title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Last updated timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @close_time = args[:close_time] if args.key?(:close_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # IssueComment represents a comment on an issue.
      class IssueComment
        include Google::Apis::Core::Hashable
      
        # Required. The comment body.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. Unique identifier for an issue comment. The comment id is
        # generated by the server. Format: `projects/`project`/locations/`location`/
        # repositories/`repository`/issues/`issue`/issueComments/`comment_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Last updated timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ListBranchRulesResponse is the response to listing branchRules.
      class ListBranchRulesResponse
        include Google::Apis::Core::Hashable
      
        # The list of branch rules.
        # Corresponds to the JSON property `branchRules`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::BranchRule>]
        attr_accessor :branch_rules
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_rules = args[:branch_rules] if args.key?(:branch_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # ListHooksResponse is response to list hooks.
      class ListHooksResponse
        include Google::Apis::Core::Hashable
      
        # The list of hooks.
        # Corresponds to the JSON property `hooks`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Hook>]
        attr_accessor :hooks
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hooks = args[:hooks] if args.key?(:hooks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Instance>]
        attr_accessor :instances
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response to list issue comments.
      class ListIssueCommentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of issue comments.
        # Corresponds to the JSON property `issueComments`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::IssueComment>]
        attr_accessor :issue_comments
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_comments = args[:issue_comments] if args.key?(:issue_comments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response to list issues.
      class ListIssuesResponse
        include Google::Apis::Core::Hashable
      
        # The list of issues.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Issue>]
        attr_accessor :issues
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Operation>]
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
      
      # The response to list pull request comments.
      class ListPullRequestCommentsResponse
        include Google::Apis::Core::Hashable
      
        # A token to set as page_token to retrieve the next page. If this field is
        # omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of pull request comments.
        # Corresponds to the JSON property `pullRequestComments`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::PullRequestComment>]
        attr_accessor :pull_request_comments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @pull_request_comments = args[:pull_request_comments] if args.key?(:pull_request_comments)
        end
      end
      
      # ListPullRequestFileDiffsResponse is the response containing file diffs
      # returned from ListPullRequestFileDiffs.
      class ListPullRequestFileDiffsResponse
        include Google::Apis::Core::Hashable
      
        # The list of pull request file diffs.
        # Corresponds to the JSON property `fileDiffs`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::FileDiff>]
        attr_accessor :file_diffs
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_diffs = args[:file_diffs] if args.key?(:file_diffs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # ListPullRequestsResponse is the response to list pull requests.
      class ListPullRequestsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of pull requests.
        # Corresponds to the JSON property `pullRequests`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::PullRequest>]
        attr_accessor :pull_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @pull_requests = args[:pull_requests] if args.key?(:pull_requests)
        end
      end
      
      # 
      class ListRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of repositories.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Repository>]
        attr_accessor :repositories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @repositories = args[:repositories] if args.key?(:repositories)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # MergePullRequestRequest is the request to merge a pull request.
      class MergePullRequestRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request to open an issue.
      class OpenIssueRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The current etag of the issue. If the etag is provided and does not
        # match the current etag of the issue, opening will be blocked and an ABORTED
        # error will be returned.
        # Corresponds to the JSON property `etag`
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
      
      # OpenPullRequestRequest is the request to open a pull request.
      class OpenPullRequestRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Google::Apis::SecuresourcemanagerV1::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
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
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::SecuresourcemanagerV1::AuditConfig>]
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
        # @return [Array<Google::Apis::SecuresourcemanagerV1::Binding>]
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
      
      # The position of the code comment.
      class Position
        include Google::Apis::Core::Hashable
      
        # Required. The line number of the comment. Positive value means it's on the new
        # side of the diff, negative value means it's on the old side.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        # Required. The path of the file.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line = args[:line] if args.key?(:line)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # PrivateConfig includes settings for private instance.
      class PrivateConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. CA pool resource, resource must in the format of `
        # projects/`project`/locations/`location`/caPools/`ca_pool``.
        # Corresponds to the JSON property `caPool`
        # @return [String]
        attr_accessor :ca_pool
      
        # Output only. Service Attachment for HTTP, resource is in the format of `
        # projects/`project`/regions/`region`/serviceAttachments/`service_attachment``.
        # Corresponds to the JSON property `httpServiceAttachment`
        # @return [String]
        attr_accessor :http_service_attachment
      
        # Required. Immutable. Indicate if it's private instance.
        # Corresponds to the JSON property `isPrivate`
        # @return [Boolean]
        attr_accessor :is_private
        alias_method :is_private?, :is_private
      
        # Optional. Additional allowed projects for setting up PSC connections. Instance
        # host project is automatically allowed and does not need to be included in this
        # list.
        # Corresponds to the JSON property `pscAllowedProjects`
        # @return [Array<String>]
        attr_accessor :psc_allowed_projects
      
        # Output only. Service Attachment for SSH, resource is in the format of `
        # projects/`project`/regions/`region`/serviceAttachments/`service_attachment``.
        # Corresponds to the JSON property `sshServiceAttachment`
        # @return [String]
        attr_accessor :ssh_service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_pool = args[:ca_pool] if args.key?(:ca_pool)
          @http_service_attachment = args[:http_service_attachment] if args.key?(:http_service_attachment)
          @is_private = args[:is_private] if args.key?(:is_private)
          @psc_allowed_projects = args[:psc_allowed_projects] if args.key?(:psc_allowed_projects)
          @ssh_service_attachment = args[:ssh_service_attachment] if args.key?(:ssh_service_attachment)
        end
      end
      
      # Metadata of a PullRequest. PullRequest is the request from a user to merge a
      # branch (head) into another branch (base).
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # Branch represents a branch involved in a pull request.
        # Corresponds to the JSON property `base`
        # @return [Google::Apis::SecuresourcemanagerV1::Branch]
        attr_accessor :base
      
        # Optional. The pull request body. Provides a detailed description of the
        # changes.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. Close timestamp (if closed or merged). Cleared when pull request
        # is re-opened.
        # Corresponds to the JSON property `closeTime`
        # @return [String]
        attr_accessor :close_time
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Branch represents a branch involved in a pull request.
        # Corresponds to the JSON property `head`
        # @return [Google::Apis::SecuresourcemanagerV1::Branch]
        attr_accessor :head
      
        # Output only. A unique identifier for a PullRequest. The number appended at the
        # end is generated by the server. Format: `projects/`project`/locations/`
        # location`/repositories/`repository`/pullRequests/`pull_request_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the pull request (open, closed or merged).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The pull request title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Last updated timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base = args[:base] if args.key?(:base)
          @body = args[:body] if args.key?(:body)
          @close_time = args[:close_time] if args.key?(:close_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @head = args[:head] if args.key?(:head)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # PullRequestComment represents a comment on a pull request.
      class PullRequestComment
        include Google::Apis::Core::Hashable
      
        # The comment on a code line.
        # Corresponds to the JSON property `code`
        # @return [Google::Apis::SecuresourcemanagerV1::Code]
        attr_accessor :code
      
        # The general pull request comment.
        # Corresponds to the JSON property `comment`
        # @return [Google::Apis::SecuresourcemanagerV1::Comment]
        attr_accessor :comment
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. Unique identifier for the pull request comment. The comment id is
        # generated by the server. Format: `projects/`project`/locations/`location`/
        # repositories/`repository`/pullRequests/`pull_request`/pullRequestComments/`
        # comment_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The review summary comment.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::SecuresourcemanagerV1::Review]
        attr_accessor :review
      
        # Output only. Last updated timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @comment = args[:comment] if args.key?(:comment)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @review = args[:review] if args.key?(:review)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class PushOption
        include Google::Apis::Core::Hashable
      
        # Optional. Trigger hook for matching branches only. Specified as glob pattern.
        # If empty or *, events for all branches are reported. Examples: main, `main,
        # release*`. See https://pkg.go.dev/github.com/gobwas/glob documentation.
        # Corresponds to the JSON property `branchFilter`
        # @return [String]
        attr_accessor :branch_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_filter = args[:branch_filter] if args.key?(:branch_filter)
        end
      end
      
      # Metadata of a Secure Source Manager repository.
      class Repository
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the repository, which cannot exceed 500 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Repository initialization configuration.
        # Corresponds to the JSON property `initialConfig`
        # @return [Google::Apis::SecuresourcemanagerV1::InitialConfig]
        attr_accessor :initial_config
      
        # Optional. The name of the instance in which the repository is hosted,
        # formatted as `projects/`project_number`/locations/`location_id`/instances/`
        # instance_id`` When creating repository via securesourcemanager.googleapis.com,
        # this field is used as input. When creating repository via *.sourcemanager.dev,
        # this field is output only.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Optional. A unique identifier for a repository. The name should be of the
        # format: `projects/`project`/locations/`location_id`/repositories/`
        # repository_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Unique identifier of the repository.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # URIs for the repository.
        # Corresponds to the JSON property `uris`
        # @return [Google::Apis::SecuresourcemanagerV1::UrIs]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @initial_config = args[:initial_config] if args.key?(:initial_config)
          @instance = args[:instance] if args.key?(:instance)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # The request to resolve multiple pull request comments.
      class ResolvePullRequestCommentsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, at least one comment in a thread is required, rest of the
        # comments in the same thread will be automatically updated to resolved. If
        # unset, all comments in the same thread need be present.
        # Corresponds to the JSON property `autoFill`
        # @return [Boolean]
        attr_accessor :auto_fill
        alias_method :auto_fill?, :auto_fill
      
        # Required. The names of the pull request comments to resolve. Format: `projects/
        # `project_number`/locations/`location_id`/repositories/`repository_id`/
        # pullRequests/`pull_request_id`/pullRequestComments/`comment_id`` Only comments
        # from the same threads are allowed in the same request.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_fill = args[:auto_fill] if args.key?(:auto_fill)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # The review summary comment.
      class Review
        include Google::Apis::Core::Hashable
      
        # Required. The review action type.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # Optional. The comment body.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. The effective commit sha this review is pointing to.
        # Corresponds to the JSON property `effectiveCommitSha`
        # @return [String]
        attr_accessor :effective_commit_sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @body = args[:body] if args.key?(:body)
          @effective_commit_sha = args[:effective_commit_sha] if args.key?(:effective_commit_sha)
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
        # @return [Google::Apis::SecuresourcemanagerV1::Policy]
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
      
      # Represents an entry within a tree structure (like a Git tree).
      class TreeEntry
        include Google::Apis::Core::Hashable
      
        # Output only. The file mode as a string (e.g., "100644"). Indicates file type.
        # Output-only.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Output only. The path of the file or directory within the tree (e.g., "src/
        # main/java/MyClass.java"). Output-only.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Output only. The SHA-1 hash of the object (unique identifier). Output-only.
        # Corresponds to the JSON property `sha`
        # @return [String]
        attr_accessor :sha
      
        # Output only. The size of the object in bytes (only for blobs). Output-only.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        # Output only. The type of the object (TREE, BLOB, COMMIT). Output-only.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @path = args[:path] if args.key?(:path)
          @sha = args[:sha] if args.key?(:sha)
          @size = args[:size] if args.key?(:size)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # URIs for the repository.
      class UrIs
        include Google::Apis::Core::Hashable
      
        # Output only. API is the URI for API access.
        # Corresponds to the JSON property `api`
        # @return [String]
        attr_accessor :api
      
        # Output only. git_https is the git HTTPS URI for git operations.
        # Corresponds to the JSON property `gitHttps`
        # @return [String]
        attr_accessor :git_https
      
        # Output only. HTML is the URI for user to view the repository in a browser.
        # Corresponds to the JSON property `html`
        # @return [String]
        attr_accessor :html
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @git_https = args[:git_https] if args.key?(:git_https)
          @html = args[:html] if args.key?(:html)
        end
      end
      
      # The request to unresolve multiple pull request comments.
      class UnresolvePullRequestCommentsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, at least one comment in a thread is required, rest of the
        # comments in the same thread will be automatically updated to unresolved. If
        # unset, all comments in the same thread need be present.
        # Corresponds to the JSON property `autoFill`
        # @return [Boolean]
        attr_accessor :auto_fill
        alias_method :auto_fill?, :auto_fill
      
        # Required. The names of the pull request comments to unresolve. Format: `
        # projects/`project_number`/locations/`location_id`/repositories/`repository_id`/
        # pullRequests/`pull_request_id`/pullRequestComments/`comment_id`` Only comments
        # from the same threads are allowed in the same request.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_fill = args[:auto_fill] if args.key?(:auto_fill)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # WorkforceIdentityFederationConfig allows this instance to support users from
      # external identity providers.
      class WorkforceIdentityFederationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Whether Workforce Identity Federation is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
    end
  end
end
