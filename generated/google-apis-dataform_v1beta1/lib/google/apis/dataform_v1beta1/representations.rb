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
    module DataformV1beta1
      
      class Assertion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelWorkflowInvocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CodeCompilationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitAuthor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitRepositoryChangesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitWorkspaceChangesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompilationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompilationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompilationResultAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Declaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DirectoryEntry
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
      
      class FetchFileDiffResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchFileGitStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitAheadBehindResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchRemoteBranchesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchRepositoryHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitRemoteSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncrementalTableConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallNpmPackagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallNpmPackagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InvocationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCompilationResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReleaseConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkflowConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkflowInvocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkspacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MakeDirectoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MakeDirectoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveDirectoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveDirectoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullGitCommitsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushGitCommitsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryCompilationResultActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryDirectoryContentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRepositoryDirectoryContentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryWorkflowInvocationActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadRepositoryFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Relation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDirectoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetWorkspaceChangesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledExecutionRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledReleaseRecord
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
      
      class Target
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
      
      class UncommittedFileChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowInvocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowInvocationAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Workspace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkspaceCompilationOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Assertion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          property :parent_action, as: 'parentAction', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
          property :select_query, as: 'selectQuery'
          collection :tags, as: 'tags'
        end
      end
      
      class BigQueryAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_script, as: 'sqlScript'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DataformV1beta1::Expr, decorator: Google::Apis::DataformV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelWorkflowInvocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CodeCompilationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion_schema, as: 'assertionSchema'
          property :database_suffix, as: 'databaseSuffix'
          property :default_database, as: 'defaultDatabase'
          property :default_location, as: 'defaultLocation'
          property :default_schema, as: 'defaultSchema'
          property :schema_suffix, as: 'schemaSuffix'
          property :table_prefix, as: 'tablePrefix'
          hash :vars, as: 'vars'
        end
      end
      
      class ColumnDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_policy_tags, as: 'bigqueryPolicyTags'
          property :description, as: 'description'
          collection :path, as: 'path'
        end
      end
      
      class CommitAuthor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
        end
      end
      
      class CommitLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :commit_message, as: 'commitMessage'
          property :commit_sha, as: 'commitSha'
          property :commit_time, as: 'commitTime'
        end
      end
      
      class CommitMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :commit_message, as: 'commitMessage'
        end
      end
      
      class CommitRepositoryChangesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_metadata, as: 'commitMetadata', class: Google::Apis::DataformV1beta1::CommitMetadata, decorator: Google::Apis::DataformV1beta1::CommitMetadata::Representation
      
          hash :file_operations, as: 'fileOperations', class: Google::Apis::DataformV1beta1::FileOperation, decorator: Google::Apis::DataformV1beta1::FileOperation::Representation
      
        end
      end
      
      class CommitWorkspaceChangesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :commit_message, as: 'commitMessage'
          collection :paths, as: 'paths'
        end
      end
      
      class CompilationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_target, as: 'actionTarget', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :message, as: 'message'
          property :path, as: 'path'
          property :stack, as: 'stack'
        end
      end
      
      class CompilationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_compilation_config, as: 'codeCompilationConfig', class: Google::Apis::DataformV1beta1::CodeCompilationConfig, decorator: Google::Apis::DataformV1beta1::CodeCompilationConfig::Representation
      
          collection :compilation_errors, as: 'compilationErrors', class: Google::Apis::DataformV1beta1::CompilationError, decorator: Google::Apis::DataformV1beta1::CompilationError::Representation
      
          property :dataform_core_version, as: 'dataformCoreVersion'
          property :git_commitish, as: 'gitCommitish'
          property :name, as: 'name'
          property :release_config, as: 'releaseConfig'
          property :resolved_git_commit_sha, as: 'resolvedGitCommitSha'
          property :workspace, as: 'workspace'
        end
      end
      
      class CompilationResultAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion, as: 'assertion', class: Google::Apis::DataformV1beta1::Assertion, decorator: Google::Apis::DataformV1beta1::Assertion::Representation
      
          property :canonical_target, as: 'canonicalTarget', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :declaration, as: 'declaration', class: Google::Apis::DataformV1beta1::Declaration, decorator: Google::Apis::DataformV1beta1::Declaration::Representation
      
          property :file_path, as: 'filePath'
          property :operations, as: 'operations', class: Google::Apis::DataformV1beta1::Operations, decorator: Google::Apis::DataformV1beta1::Operations::Representation
      
          property :relation, as: 'relation', class: Google::Apis::DataformV1beta1::Relation, decorator: Google::Apis::DataformV1beta1::Relation::Representation
      
          property :target, as: 'target', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
        end
      end
      
      class Declaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
        end
      end
      
      class DeleteFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DirectoryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory, as: 'directory'
          property :file, as: 'file'
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
      
      class FetchFileDiffResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_diff, as: 'formattedDiff'
        end
      end
      
      class FetchFileGitStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uncommitted_file_changes, as: 'uncommittedFileChanges', class: Google::Apis::DataformV1beta1::UncommittedFileChange, decorator: Google::Apis::DataformV1beta1::UncommittedFileChange::Representation
      
        end
      end
      
      class FetchGitAheadBehindResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commits_ahead, as: 'commitsAhead'
          property :commits_behind, as: 'commitsBehind'
        end
      end
      
      class FetchRemoteBranchesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :branches, as: 'branches'
        end
      end
      
      class FetchRepositoryHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commits, as: 'commits', class: Google::Apis::DataformV1beta1::CommitLogEntry, decorator: Google::Apis::DataformV1beta1::CommitLogEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FileOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_file, as: 'deleteFile', class: Google::Apis::DataformV1beta1::DeleteFile, decorator: Google::Apis::DataformV1beta1::DeleteFile::Representation
      
          property :write_file, as: 'writeFile', class: Google::Apis::DataformV1beta1::WriteFile, decorator: Google::Apis::DataformV1beta1::WriteFile::Representation
      
        end
      end
      
      class GitRemoteSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_token_secret_version, as: 'authenticationTokenSecretVersion'
          property :default_branch, as: 'defaultBranch'
          property :token_status, as: 'tokenStatus'
          property :url, as: 'url'
        end
      end
      
      class IncrementalTableConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :incremental_post_operations, as: 'incrementalPostOperations'
          collection :incremental_pre_operations, as: 'incrementalPreOperations'
          property :incremental_select_query, as: 'incrementalSelectQuery'
          property :refresh_disabled, as: 'refreshDisabled'
          collection :unique_key_parts, as: 'uniqueKeyParts'
          property :update_partition_filter, as: 'updatePartitionFilter'
        end
      end
      
      class InstallNpmPackagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InstallNpmPackagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class InvocationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_refresh_incremental_tables_enabled, as: 'fullyRefreshIncrementalTablesEnabled'
          collection :included_tags, as: 'includedTags'
          collection :included_targets, as: 'includedTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :transitive_dependencies_included, as: 'transitiveDependenciesIncluded'
          property :transitive_dependents_included, as: 'transitiveDependentsIncluded'
        end
      end
      
      class ListCompilationResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compilation_results, as: 'compilationResults', class: Google::Apis::DataformV1beta1::CompilationResult, decorator: Google::Apis::DataformV1beta1::CompilationResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DataformV1beta1::Location, decorator: Google::Apis::DataformV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReleaseConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :release_configs, as: 'releaseConfigs', class: Google::Apis::DataformV1beta1::ReleaseConfig, decorator: Google::Apis::DataformV1beta1::ReleaseConfig::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::DataformV1beta1::Repository, decorator: Google::Apis::DataformV1beta1::Repository::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListWorkflowConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workflow_configs, as: 'workflowConfigs', class: Google::Apis::DataformV1beta1::WorkflowConfig, decorator: Google::Apis::DataformV1beta1::WorkflowConfig::Representation
      
        end
      end
      
      class ListWorkflowInvocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workflow_invocations, as: 'workflowInvocations', class: Google::Apis::DataformV1beta1::WorkflowInvocation, decorator: Google::Apis::DataformV1beta1::WorkflowInvocation::Representation
      
        end
      end
      
      class ListWorkspacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workspaces, as: 'workspaces', class: Google::Apis::DataformV1beta1::Workspace, decorator: Google::Apis::DataformV1beta1::Workspace::Representation
      
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
      
      class MakeDirectoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class MakeDirectoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MoveDirectoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_path, as: 'newPath'
          property :path, as: 'path'
        end
      end
      
      class MoveDirectoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MoveFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_path, as: 'newPath'
          property :path, as: 'path'
        end
      end
      
      class MoveFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Operations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          property :has_output, as: 'hasOutput'
          collection :queries, as: 'queries'
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
          collection :tags, as: 'tags'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DataformV1beta1::Binding, decorator: Google::Apis::DataformV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PullGitCommitsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::DataformV1beta1::CommitAuthor, decorator: Google::Apis::DataformV1beta1::CommitAuthor::Representation
      
          property :remote_branch, as: 'remoteBranch'
        end
      end
      
      class PushGitCommitsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :remote_branch, as: 'remoteBranch'
        end
      end
      
      class QueryCompilationResultActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compilation_result_actions, as: 'compilationResultActions', class: Google::Apis::DataformV1beta1::CompilationResultAction, decorator: Google::Apis::DataformV1beta1::CompilationResultAction::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryDirectoryContentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :directory_entries, as: 'directoryEntries', class: Google::Apis::DataformV1beta1::DirectoryEntry, decorator: Google::Apis::DataformV1beta1::DirectoryEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryRepositoryDirectoryContentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :directory_entries, as: 'directoryEntries', class: Google::Apis::DataformV1beta1::DirectoryEntry, decorator: Google::Apis::DataformV1beta1::DirectoryEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryWorkflowInvocationActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workflow_invocation_actions, as: 'workflowInvocationActions', class: Google::Apis::DataformV1beta1::WorkflowInvocationAction, decorator: Google::Apis::DataformV1beta1::WorkflowInvocationAction::Representation
      
        end
      end
      
      class ReadFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_contents, :base64 => true, as: 'fileContents'
        end
      end
      
      class ReadRepositoryFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
        end
      end
      
      class Relation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_options, as: 'additionalOptions'
          collection :cluster_expressions, as: 'clusterExpressions'
          collection :dependency_targets, as: 'dependencyTargets', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :disabled, as: 'disabled'
          property :incremental_table_config, as: 'incrementalTableConfig', class: Google::Apis::DataformV1beta1::IncrementalTableConfig, decorator: Google::Apis::DataformV1beta1::IncrementalTableConfig::Representation
      
          property :partition_expiration_days, as: 'partitionExpirationDays'
          property :partition_expression, as: 'partitionExpression'
          collection :post_operations, as: 'postOperations'
          collection :pre_operations, as: 'preOperations'
          property :relation_descriptor, as: 'relationDescriptor', class: Google::Apis::DataformV1beta1::RelationDescriptor, decorator: Google::Apis::DataformV1beta1::RelationDescriptor::Representation
      
          property :relation_type, as: 'relationType'
          property :require_partition_filter, as: 'requirePartitionFilter'
          property :select_query, as: 'selectQuery'
          collection :tags, as: 'tags'
        end
      end
      
      class RelationDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :bigquery_labels, as: 'bigqueryLabels'
          collection :columns, as: 'columns', class: Google::Apis::DataformV1beta1::ColumnDescriptor, decorator: Google::Apis::DataformV1beta1::ColumnDescriptor::Representation
      
          property :description, as: 'description'
        end
      end
      
      class ReleaseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_compilation_config, as: 'codeCompilationConfig', class: Google::Apis::DataformV1beta1::CodeCompilationConfig, decorator: Google::Apis::DataformV1beta1::CodeCompilationConfig::Representation
      
          property :cron_schedule, as: 'cronSchedule'
          property :git_commitish, as: 'gitCommitish'
          property :name, as: 'name'
          collection :recent_scheduled_release_records, as: 'recentScheduledReleaseRecords', class: Google::Apis::DataformV1beta1::ScheduledReleaseRecord, decorator: Google::Apis::DataformV1beta1::ScheduledReleaseRecord::Representation
      
          property :release_compilation_result, as: 'releaseCompilationResult'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class RemoveDirectoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class RemoveFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class Repository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :git_remote_settings, as: 'gitRemoteSettings', class: Google::Apis::DataformV1beta1::GitRemoteSettings, decorator: Google::Apis::DataformV1beta1::GitRemoteSettings::Representation
      
          hash :initial_commit_file_contents, as: 'initialCommitFileContents'
          property :initial_commit_metadata, as: 'initialCommitMetadata', class: Google::Apis::DataformV1beta1::CommitMetadata, decorator: Google::Apis::DataformV1beta1::CommitMetadata::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :npmrc_environment_variables_secret_version, as: 'npmrcEnvironmentVariablesSecretVersion'
          property :workspace_compilation_overrides, as: 'workspaceCompilationOverrides', class: Google::Apis::DataformV1beta1::WorkspaceCompilationOverrides, decorator: Google::Apis::DataformV1beta1::WorkspaceCompilationOverrides::Representation
      
        end
      end
      
      class ResetWorkspaceChangesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clean, as: 'clean'
          collection :paths, as: 'paths'
        end
      end
      
      class ScheduledExecutionRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_status, as: 'errorStatus', class: Google::Apis::DataformV1beta1::Status, decorator: Google::Apis::DataformV1beta1::Status::Representation
      
          property :execution_time, as: 'executionTime'
          property :workflow_invocation, as: 'workflowInvocation'
        end
      end
      
      class ScheduledReleaseRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compilation_result, as: 'compilationResult'
          property :error_status, as: 'errorStatus', class: Google::Apis::DataformV1beta1::Status, decorator: Google::Apis::DataformV1beta1::Status::Representation
      
          property :release_time, as: 'releaseTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DataformV1beta1::Policy, decorator: Google::Apis::DataformV1beta1::Policy::Representation
      
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
      
      class Target
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :name, as: 'name'
          property :schema, as: 'schema'
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
      
      class UncommittedFileChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :state, as: 'state'
        end
      end
      
      class WorkflowConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cron_schedule, as: 'cronSchedule'
          property :invocation_config, as: 'invocationConfig', class: Google::Apis::DataformV1beta1::InvocationConfig, decorator: Google::Apis::DataformV1beta1::InvocationConfig::Representation
      
          property :name, as: 'name'
          collection :recent_scheduled_execution_records, as: 'recentScheduledExecutionRecords', class: Google::Apis::DataformV1beta1::ScheduledExecutionRecord, decorator: Google::Apis::DataformV1beta1::ScheduledExecutionRecord::Representation
      
          property :release_config, as: 'releaseConfig'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class WorkflowInvocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compilation_result, as: 'compilationResult'
          property :invocation_config, as: 'invocationConfig', class: Google::Apis::DataformV1beta1::InvocationConfig, decorator: Google::Apis::DataformV1beta1::InvocationConfig::Representation
      
          property :invocation_timing, as: 'invocationTiming', class: Google::Apis::DataformV1beta1::Interval, decorator: Google::Apis::DataformV1beta1::Interval::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :workflow_config, as: 'workflowConfig'
        end
      end
      
      class WorkflowInvocationAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_action, as: 'bigqueryAction', class: Google::Apis::DataformV1beta1::BigQueryAction, decorator: Google::Apis::DataformV1beta1::BigQueryAction::Representation
      
          property :canonical_target, as: 'canonicalTarget', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
          property :failure_reason, as: 'failureReason'
          property :invocation_timing, as: 'invocationTiming', class: Google::Apis::DataformV1beta1::Interval, decorator: Google::Apis::DataformV1beta1::Interval::Representation
      
          property :state, as: 'state'
          property :target, as: 'target', class: Google::Apis::DataformV1beta1::Target, decorator: Google::Apis::DataformV1beta1::Target::Representation
      
        end
      end
      
      class Workspace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class WorkspaceCompilationOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_database, as: 'defaultDatabase'
          property :schema_suffix, as: 'schemaSuffix'
          property :table_prefix, as: 'tablePrefix'
        end
      end
      
      class WriteFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
        end
      end
      
      class WriteFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
          property :path, as: 'path'
        end
      end
      
      class WriteFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
