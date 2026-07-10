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
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreatePullRequestCommentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Branch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BranchRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Check
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseIssueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClosePullRequestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Code
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Comment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreatePullRequestCommentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchBlobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchTreeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileDiff
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitialConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueComment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBranchRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHooksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListIssueCommentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPullRequestCommentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPullRequestFileDiffsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPullRequestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MergePullRequestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenIssueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenPullRequestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullRequestComment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResolvePullRequestCommentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TreeEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrIs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnresolvePullRequestCommentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforceIdentityFederationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::SecuresourcemanagerV1::AuditLogConfig, decorator: Google::Apis::SecuresourcemanagerV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class BatchCreatePullRequestCommentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::SecuresourcemanagerV1::CreatePullRequestCommentRequest, decorator: Google::Apis::SecuresourcemanagerV1::CreatePullRequestCommentRequest::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::SecuresourcemanagerV1::Expr, decorator: Google::Apis::SecuresourcemanagerV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Branch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ref, as: 'ref'
          property :sha, as: 'sha'
        end
      end
      
      class BranchRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_stale_reviews, as: 'allowStaleReviews'
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :disabled, as: 'disabled'
          property :etag, as: 'etag'
          property :include_pattern, as: 'includePattern'
          property :minimum_approvals_count, as: 'minimumApprovalsCount'
          property :minimum_reviews_count, as: 'minimumReviewsCount'
          property :name, as: 'name'
          property :require_comments_resolved, as: 'requireCommentsResolved'
          property :require_linear_history, as: 'requireLinearHistory'
          property :require_pull_request, as: 'requirePullRequest'
          collection :required_status_checks, as: 'requiredStatusChecks', class: Google::Apis::SecuresourcemanagerV1::Check, decorator: Google::Apis::SecuresourcemanagerV1::Check::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Check
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
        end
      end
      
      class CloseIssueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
        end
      end
      
      class ClosePullRequestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Code
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :effective_commit_sha, as: 'effectiveCommitSha'
          property :effective_root_comment, as: 'effectiveRootComment'
          property :position, as: 'position', class: Google::Apis::SecuresourcemanagerV1::Position, decorator: Google::Apis::SecuresourcemanagerV1::Position::Representation
      
          property :reply, as: 'reply'
          property :resolved, as: 'resolved'
        end
      end
      
      class Comment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
        end
      end
      
      class CreatePullRequestCommentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :pull_request_comment, as: 'pullRequestComment', class: Google::Apis::SecuresourcemanagerV1::PullRequestComment, decorator: Google::Apis::SecuresourcemanagerV1::PullRequestComment::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class FetchBlobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :sha, as: 'sha'
        end
      end
      
      class FetchTreeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tree_entries, as: 'treeEntries', class: Google::Apis::SecuresourcemanagerV1::TreeEntry, decorator: Google::Apis::SecuresourcemanagerV1::TreeEntry::Representation
      
        end
      end
      
      class FileDiff
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :name, as: 'name'
          property :patch, as: 'patch'
          property :sha, as: 'sha'
        end
      end
      
      class Hook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :disabled, as: 'disabled'
          collection :events, as: 'events'
          property :name, as: 'name'
          property :push_option, as: 'pushOption', class: Google::Apis::SecuresourcemanagerV1::PushOption, decorator: Google::Apis::SecuresourcemanagerV1::PushOption::Representation
      
          property :sensitive_query_string, as: 'sensitiveQueryString'
          property :target_uri, as: 'targetUri'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class HostConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api, as: 'api'
          property :git_http, as: 'gitHttp'
          property :git_ssh, as: 'gitSsh'
          property :html, as: 'html'
        end
      end
      
      class InitialConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_branch, as: 'defaultBranch'
          collection :gitignores, as: 'gitignores'
          property :license, as: 'license'
          property :readme, as: 'readme'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :host_config, as: 'hostConfig', class: Google::Apis::SecuresourcemanagerV1::HostConfig, decorator: Google::Apis::SecuresourcemanagerV1::HostConfig::Representation
      
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :private_config, as: 'privateConfig', class: Google::Apis::SecuresourcemanagerV1::PrivateConfig, decorator: Google::Apis::SecuresourcemanagerV1::PrivateConfig::Representation
      
          property :state, as: 'state'
          property :state_note, as: 'stateNote'
          property :update_time, as: 'updateTime'
          property :workforce_identity_federation_config, as: 'workforceIdentityFederationConfig', class: Google::Apis::SecuresourcemanagerV1::WorkforceIdentityFederationConfig, decorator: Google::Apis::SecuresourcemanagerV1::WorkforceIdentityFederationConfig::Representation
      
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :close_time, as: 'closeTime'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :state, as: 'state'
          property :title, as: 'title'
          property :update_time, as: 'updateTime'
        end
      end
      
      class IssueComment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListBranchRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :branch_rules, as: 'branchRules', class: Google::Apis::SecuresourcemanagerV1::BranchRule, decorator: Google::Apis::SecuresourcemanagerV1::BranchRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListHooksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hooks, as: 'hooks', class: Google::Apis::SecuresourcemanagerV1::Hook, decorator: Google::Apis::SecuresourcemanagerV1::Hook::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::SecuresourcemanagerV1::Instance, decorator: Google::Apis::SecuresourcemanagerV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListIssueCommentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issue_comments, as: 'issueComments', class: Google::Apis::SecuresourcemanagerV1::IssueComment, decorator: Google::Apis::SecuresourcemanagerV1::IssueComment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::SecuresourcemanagerV1::Issue, decorator: Google::Apis::SecuresourcemanagerV1::Issue::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::SecuresourcemanagerV1::Location, decorator: Google::Apis::SecuresourcemanagerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SecuresourcemanagerV1::Operation, decorator: Google::Apis::SecuresourcemanagerV1::Operation::Representation
      
        end
      end
      
      class ListPullRequestCommentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pull_request_comments, as: 'pullRequestComments', class: Google::Apis::SecuresourcemanagerV1::PullRequestComment, decorator: Google::Apis::SecuresourcemanagerV1::PullRequestComment::Representation
      
        end
      end
      
      class ListPullRequestFileDiffsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_diffs, as: 'fileDiffs', class: Google::Apis::SecuresourcemanagerV1::FileDiff, decorator: Google::Apis::SecuresourcemanagerV1::FileDiff::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPullRequestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pull_requests, as: 'pullRequests', class: Google::Apis::SecuresourcemanagerV1::PullRequest, decorator: Google::Apis::SecuresourcemanagerV1::PullRequest::Representation
      
        end
      end
      
      class ListRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::SecuresourcemanagerV1::Repository, decorator: Google::Apis::SecuresourcemanagerV1::Repository::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class MergePullRequestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OpenIssueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
        end
      end
      
      class OpenPullRequestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::SecuresourcemanagerV1::Status, decorator: Google::Apis::SecuresourcemanagerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::SecuresourcemanagerV1::AuditConfig, decorator: Google::Apis::SecuresourcemanagerV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::SecuresourcemanagerV1::Binding, decorator: Google::Apis::SecuresourcemanagerV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line, :numeric_string => true, as: 'line'
          property :path, as: 'path'
        end
      end
      
      class PrivateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_pool, as: 'caPool'
          property :http_service_attachment, as: 'httpServiceAttachment'
          property :is_private, as: 'isPrivate'
          collection :psc_allowed_projects, as: 'pscAllowedProjects'
          property :ssh_service_attachment, as: 'sshServiceAttachment'
        end
      end
      
      class PullRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base, as: 'base', class: Google::Apis::SecuresourcemanagerV1::Branch, decorator: Google::Apis::SecuresourcemanagerV1::Branch::Representation
      
          property :body, as: 'body'
          property :close_time, as: 'closeTime'
          property :create_time, as: 'createTime'
          property :head, as: 'head', class: Google::Apis::SecuresourcemanagerV1::Branch, decorator: Google::Apis::SecuresourcemanagerV1::Branch::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :title, as: 'title'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PullRequestComment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code', class: Google::Apis::SecuresourcemanagerV1::Code, decorator: Google::Apis::SecuresourcemanagerV1::Code::Representation
      
          property :comment, as: 'comment', class: Google::Apis::SecuresourcemanagerV1::Comment, decorator: Google::Apis::SecuresourcemanagerV1::Comment::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :review, as: 'review', class: Google::Apis::SecuresourcemanagerV1::Review, decorator: Google::Apis::SecuresourcemanagerV1::Review::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class PushOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_filter, as: 'branchFilter'
        end
      end
      
      class Repository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :initial_config, as: 'initialConfig', class: Google::Apis::SecuresourcemanagerV1::InitialConfig, decorator: Google::Apis::SecuresourcemanagerV1::InitialConfig::Representation
      
          property :instance, as: 'instance'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :uris, as: 'uris', class: Google::Apis::SecuresourcemanagerV1::UrIs, decorator: Google::Apis::SecuresourcemanagerV1::UrIs::Representation
      
        end
      end
      
      class ResolvePullRequestCommentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_fill, as: 'autoFill'
          collection :names, as: 'names'
        end
      end
      
      class Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_type, as: 'actionType'
          property :body, as: 'body'
          property :effective_commit_sha, as: 'effectiveCommitSha'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::SecuresourcemanagerV1::Policy, decorator: Google::Apis::SecuresourcemanagerV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TreeEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :path, as: 'path'
          property :sha, as: 'sha'
          property :size, :numeric_string => true, as: 'size'
          property :type, as: 'type'
        end
      end
      
      class UrIs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api, as: 'api'
          property :git_https, as: 'gitHttps'
          property :html, as: 'html'
        end
      end
      
      class UnresolvePullRequestCommentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_fill, as: 'autoFill'
          collection :names, as: 'names'
        end
      end
      
      class WorkforceIdentityFederationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
    end
  end
end
