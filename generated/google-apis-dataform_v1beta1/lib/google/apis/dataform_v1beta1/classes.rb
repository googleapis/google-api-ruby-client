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
      
      # Represents an assertion upon a SQL query which is required return zero rows.
      class Assertion
        include Google::Apis::Core::Hashable
      
        # A list of actions that this action depends on.
        # Corresponds to the JSON property `dependencyTargets`
        # @return [Array<Google::Apis::DataformV1beta1::Target>]
        attr_accessor :dependency_targets
      
        # Whether this action is disabled (i.e. should not be run).
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Represents an action identifier. If the action writes output, the output will
        # be written to the referenced database object.
        # Corresponds to the JSON property `parentAction`
        # @return [Google::Apis::DataformV1beta1::Target]
        attr_accessor :parent_action
      
        # Describes a relation and its columns.
        # Corresponds to the JSON property `relationDescriptor`
        # @return [Google::Apis::DataformV1beta1::RelationDescriptor]
        attr_accessor :relation_descriptor
      
        # The SELECT query which must return zero rows in order for this assertion to
        # succeed.
        # Corresponds to the JSON property `selectQuery`
        # @return [String]
        attr_accessor :select_query
      
        # Arbitrary, user-defined tags on this action.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_targets = args[:dependency_targets] if args.key?(:dependency_targets)
          @disabled = args[:disabled] if args.key?(:disabled)
          @parent_action = args[:parent_action] if args.key?(:parent_action)
          @relation_descriptor = args[:relation_descriptor] if args.key?(:relation_descriptor)
          @select_query = args[:select_query] if args.key?(:select_query)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Represents a workflow action that will run against BigQuery.
      class BigQueryAction
        include Google::Apis::Core::Hashable
      
        # Output only. The generated BigQuery SQL script that will be executed.
        # Corresponds to the JSON property `sqlScript`
        # @return [String]
        attr_accessor :sql_script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_script = args[:sql_script] if args.key?(:sql_script)
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
        # @return [Google::Apis::DataformV1beta1::Expr]
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
      
      # `CancelWorkflowInvocation` request message.
      class CancelWorkflowInvocationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configures various aspects of Dataform code compilation.
      class CodeCompilationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The default schema (BigQuery dataset ID) for assertions.
        # Corresponds to the JSON property `assertionSchema`
        # @return [String]
        attr_accessor :assertion_schema
      
        # Optional. The suffix that should be appended to all database (Google Cloud
        # project ID) names.
        # Corresponds to the JSON property `databaseSuffix`
        # @return [String]
        attr_accessor :database_suffix
      
        # Optional. The default database (Google Cloud project ID).
        # Corresponds to the JSON property `defaultDatabase`
        # @return [String]
        attr_accessor :default_database
      
        # Optional. The default BigQuery location to use. Defaults to "US". See the
        # BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/
        # docs/locations.
        # Corresponds to the JSON property `defaultLocation`
        # @return [String]
        attr_accessor :default_location
      
        # Optional. The default schema (BigQuery dataset ID).
        # Corresponds to the JSON property `defaultSchema`
        # @return [String]
        attr_accessor :default_schema
      
        # Optional. The suffix that should be appended to all schema (BigQuery dataset
        # ID) names.
        # Corresponds to the JSON property `schemaSuffix`
        # @return [String]
        attr_accessor :schema_suffix
      
        # Optional. The prefix that should be prepended to all table names.
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        # Optional. User-defined variables that are made available to project code
        # during compilation.
        # Corresponds to the JSON property `vars`
        # @return [Hash<String,String>]
        attr_accessor :vars
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_schema = args[:assertion_schema] if args.key?(:assertion_schema)
          @database_suffix = args[:database_suffix] if args.key?(:database_suffix)
          @default_database = args[:default_database] if args.key?(:default_database)
          @default_location = args[:default_location] if args.key?(:default_location)
          @default_schema = args[:default_schema] if args.key?(:default_schema)
          @schema_suffix = args[:schema_suffix] if args.key?(:schema_suffix)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
          @vars = args[:vars] if args.key?(:vars)
        end
      end
      
      # Describes a column.
      class ColumnDescriptor
        include Google::Apis::Core::Hashable
      
        # A list of BigQuery policy tags that will be applied to the column.
        # Corresponds to the JSON property `bigqueryPolicyTags`
        # @return [Array<String>]
        attr_accessor :bigquery_policy_tags
      
        # A textual description of the column.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The identifier for the column. Each entry in `path` represents one level of
        # nesting.
        # Corresponds to the JSON property `path`
        # @return [Array<String>]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_policy_tags = args[:bigquery_policy_tags] if args.key?(:bigquery_policy_tags)
          @description = args[:description] if args.key?(:description)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Represents the author of a Git commit.
      class CommitAuthor
        include Google::Apis::Core::Hashable
      
        # Required. The commit author's email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Required. The commit author's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a single commit log.
      class CommitLogEntry
        include Google::Apis::Core::Hashable
      
        # Represents the author of a Git commit.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DataformV1beta1::CommitAuthor]
        attr_accessor :author
      
        # The commit message for this commit log entry.
        # Corresponds to the JSON property `commitMessage`
        # @return [String]
        attr_accessor :commit_message
      
        # The commit SHA for this commit log entry.
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        # Commit timestamp.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @commit_message = args[:commit_message] if args.key?(:commit_message)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
        end
      end
      
      # Represents a Dataform Git commit.
      class CommitMetadata
        include Google::Apis::Core::Hashable
      
        # Represents the author of a Git commit.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DataformV1beta1::CommitAuthor]
        attr_accessor :author
      
        # Optional. The commit's message.
        # Corresponds to the JSON property `commitMessage`
        # @return [String]
        attr_accessor :commit_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @commit_message = args[:commit_message] if args.key?(:commit_message)
        end
      end
      
      # `CommitRepositoryChanges` request message.
      class CommitRepositoryChangesRequest
        include Google::Apis::Core::Hashable
      
        # Represents a Dataform Git commit.
        # Corresponds to the JSON property `commitMetadata`
        # @return [Google::Apis::DataformV1beta1::CommitMetadata]
        attr_accessor :commit_metadata
      
        # A map to the path of the file to the operation. The path is the ull file path
        # including filename, from repository root.
        # Corresponds to the JSON property `fileOperations`
        # @return [Hash<String,Google::Apis::DataformV1beta1::FileOperation>]
        attr_accessor :file_operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_metadata = args[:commit_metadata] if args.key?(:commit_metadata)
          @file_operations = args[:file_operations] if args.key?(:file_operations)
        end
      end
      
      # `CommitWorkspaceChanges` request message.
      class CommitWorkspaceChangesRequest
        include Google::Apis::Core::Hashable
      
        # Represents the author of a Git commit.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DataformV1beta1::CommitAuthor]
        attr_accessor :author
      
        # Optional. The commit's message.
        # Corresponds to the JSON property `commitMessage`
        # @return [String]
        attr_accessor :commit_message
      
        # Optional. Full file paths to commit including filename, rooted at workspace
        # root. If left empty, all files will be committed.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @commit_message = args[:commit_message] if args.key?(:commit_message)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # An error encountered when attempting to compile a Dataform project.
      class CompilationError
        include Google::Apis::Core::Hashable
      
        # Represents an action identifier. If the action writes output, the output will
        # be written to the referenced database object.
        # Corresponds to the JSON property `actionTarget`
        # @return [Google::Apis::DataformV1beta1::Target]
        attr_accessor :action_target
      
        # Output only. The error's top level message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. The path of the file where this error occurred, if available,
        # relative to the project root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Output only. The error's full stack trace.
        # Corresponds to the JSON property `stack`
        # @return [String]
        attr_accessor :stack
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_target = args[:action_target] if args.key?(:action_target)
          @message = args[:message] if args.key?(:message)
          @path = args[:path] if args.key?(:path)
          @stack = args[:stack] if args.key?(:stack)
        end
      end
      
      # Represents the result of compiling a Dataform project.
      class CompilationResult
        include Google::Apis::Core::Hashable
      
        # Configures various aspects of Dataform code compilation.
        # Corresponds to the JSON property `codeCompilationConfig`
        # @return [Google::Apis::DataformV1beta1::CodeCompilationConfig]
        attr_accessor :code_compilation_config
      
        # Output only. Errors encountered during project compilation.
        # Corresponds to the JSON property `compilationErrors`
        # @return [Array<Google::Apis::DataformV1beta1::CompilationError>]
        attr_accessor :compilation_errors
      
        # Output only. The version of `@dataform/core` that was used for compilation.
        # Corresponds to the JSON property `dataformCoreVersion`
        # @return [String]
        attr_accessor :dataform_core_version
      
        # Immutable. Git commit/tag/branch name at which the repository should be
        # compiled. Must exist in the remote repository. Examples: - a commit SHA: `
        # 12ade345` - a tag: `tag1` - a branch name: `branch1`
        # Corresponds to the JSON property `gitCommitish`
        # @return [String]
        attr_accessor :git_commitish
      
        # Output only. The compilation result's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The name of the release config to compile. The release config's '
        # current_compilation_result' field will be updated to this compilation result.
        # Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
        # Corresponds to the JSON property `releaseConfig`
        # @return [String]
        attr_accessor :release_config
      
        # Output only. The fully resolved Git commit SHA of the code that was compiled.
        # Not set for compilation results whose source is a workspace.
        # Corresponds to the JSON property `resolvedGitCommitSha`
        # @return [String]
        attr_accessor :resolved_git_commit_sha
      
        # Immutable. The name of the workspace to compile. Must be in the format `
        # projects/*/locations/*/repositories/*/workspaces/*`.
        # Corresponds to the JSON property `workspace`
        # @return [String]
        attr_accessor :workspace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_compilation_config = args[:code_compilation_config] if args.key?(:code_compilation_config)
          @compilation_errors = args[:compilation_errors] if args.key?(:compilation_errors)
          @dataform_core_version = args[:dataform_core_version] if args.key?(:dataform_core_version)
          @git_commitish = args[:git_commitish] if args.key?(:git_commitish)
          @name = args[:name] if args.key?(:name)
          @release_config = args[:release_config] if args.key?(:release_config)
          @resolved_git_commit_sha = args[:resolved_git_commit_sha] if args.key?(:resolved_git_commit_sha)
          @workspace = args[:workspace] if args.key?(:workspace)
        end
      end
      
      # Represents a single Dataform action in a compilation result.
      class CompilationResultAction
        include Google::Apis::Core::Hashable
      
        # Represents an assertion upon a SQL query which is required return zero rows.
        # Corresponds to the JSON property `assertion`
        # @return [Google::Apis::DataformV1beta1::Assertion]
        attr_accessor :assertion
      
        # Represents an action identifier. If the action writes output, the output will
        # be written to the referenced database object.
        # Corresponds to the JSON property `canonicalTarget`
        # @return [Google::Apis::DataformV1beta1::Target]
        attr_accessor :canonical_target
      
        # Represents a relation which is not managed by Dataform but which may be
        # referenced by Dataform actions.
        # Corresponds to the JSON property `declaration`
        # @return [Google::Apis::DataformV1beta1::Declaration]
        attr_accessor :declaration
      
        # The full path including filename in which this action is located, relative to
        # the workspace root.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Represents a list of arbitrary database operations.
        # Corresponds to the JSON property `operations`
        # @return [Google::Apis::DataformV1beta1::Operations]
        attr_accessor :operations
      
        # Represents a database relation.
        # Corresponds to the JSON property `relation`
        # @return [Google::Apis::DataformV1beta1::Relation]
        attr_accessor :relation
      
        # Represents an action identifier. If the action writes output, the output will
        # be written to the referenced database object.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DataformV1beta1::Target]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion = args[:assertion] if args.key?(:assertion)
          @canonical_target = args[:canonical_target] if args.key?(:canonical_target)
          @declaration = args[:declaration] if args.key?(:declaration)
          @file_path = args[:file_path] if args.key?(:file_path)
          @operations = args[:operations] if args.key?(:operations)
          @relation = args[:relation] if args.key?(:relation)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Represents a relation which is not managed by Dataform but which may be
      # referenced by Dataform actions.
      class Declaration
        include Google::Apis::Core::Hashable
      
        # Describes a relation and its columns.
        # Corresponds to the JSON property `relationDescriptor`
        # @return [Google::Apis::DataformV1beta1::RelationDescriptor]
        attr_accessor :relation_descriptor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relation_descriptor = args[:relation_descriptor] if args.key?(:relation_descriptor)
        end
      end
      
      # Represents the delete file operation.
      class DeleteFile
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a single entry in a directory.
      class DirectoryEntry
        include Google::Apis::Core::Hashable
      
        # A child directory in the directory.
        # Corresponds to the JSON property `directory`
        # @return [String]
        attr_accessor :directory
      
        # A file in the directory.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory = args[:directory] if args.key?(:directory)
          @file = args[:file] if args.key?(:file)
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
      
      # `FetchFileDiff` response message.
      class FetchFileDiffResponse
        include Google::Apis::Core::Hashable
      
        # The raw formatted Git diff for the file.
        # Corresponds to the JSON property `formattedDiff`
        # @return [String]
        attr_accessor :formatted_diff
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_diff = args[:formatted_diff] if args.key?(:formatted_diff)
        end
      end
      
      # `FetchFileGitStatuses` response message.
      class FetchFileGitStatusesResponse
        include Google::Apis::Core::Hashable
      
        # A list of all files which have uncommitted Git changes. There will only be a
        # single entry for any given file.
        # Corresponds to the JSON property `uncommittedFileChanges`
        # @return [Array<Google::Apis::DataformV1beta1::UncommittedFileChange>]
        attr_accessor :uncommitted_file_changes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uncommitted_file_changes = args[:uncommitted_file_changes] if args.key?(:uncommitted_file_changes)
        end
      end
      
      # `FetchGitAheadBehind` response message.
      class FetchGitAheadBehindResponse
        include Google::Apis::Core::Hashable
      
        # The number of commits in the remote branch that are not in the workspace.
        # Corresponds to the JSON property `commitsAhead`
        # @return [Fixnum]
        attr_accessor :commits_ahead
      
        # The number of commits in the workspace that are not in the remote branch.
        # Corresponds to the JSON property `commitsBehind`
        # @return [Fixnum]
        attr_accessor :commits_behind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commits_ahead = args[:commits_ahead] if args.key?(:commits_ahead)
          @commits_behind = args[:commits_behind] if args.key?(:commits_behind)
        end
      end
      
      # `FetchRemoteBranches` response message.
      class FetchRemoteBranchesResponse
        include Google::Apis::Core::Hashable
      
        # The remote repository's branch names.
        # Corresponds to the JSON property `branches`
        # @return [Array<String>]
        attr_accessor :branches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branches = args[:branches] if args.key?(:branches)
        end
      end
      
      # `FetchRepositoryHistory` response message.
      class FetchRepositoryHistoryResponse
        include Google::Apis::Core::Hashable
      
        # A list of commit logs, ordered by 'git log' default order.
        # Corresponds to the JSON property `commits`
        # @return [Array<Google::Apis::DataformV1beta1::CommitLogEntry>]
        attr_accessor :commits
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commits = args[:commits] if args.key?(:commits)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Represents a single file operation to the repository.
      class FileOperation
        include Google::Apis::Core::Hashable
      
        # Represents the delete file operation.
        # Corresponds to the JSON property `deleteFile`
        # @return [Google::Apis::DataformV1beta1::DeleteFile]
        attr_accessor :delete_file
      
        # Represents the write file operation (for files added or modified).
        # Corresponds to the JSON property `writeFile`
        # @return [Google::Apis::DataformV1beta1::WriteFile]
        attr_accessor :write_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_file = args[:delete_file] if args.key?(:delete_file)
          @write_file = args[:write_file] if args.key?(:write_file)
        end
      end
      
      # Controls Git remote configuration for a repository.
      class GitRemoteSettings
        include Google::Apis::Core::Hashable
      
        # Required. The name of the Secret Manager secret version to use as an
        # authentication token for Git operations. Must be in the format `projects/*/
        # secrets/*/versions/*`.
        # Corresponds to the JSON property `authenticationTokenSecretVersion`
        # @return [String]
        attr_accessor :authentication_token_secret_version
      
        # Required. The Git remote's default branch name.
        # Corresponds to the JSON property `defaultBranch`
        # @return [String]
        attr_accessor :default_branch
      
        # Output only. Indicates the status of the Git access token.
        # Corresponds to the JSON property `tokenStatus`
        # @return [String]
        attr_accessor :token_status
      
        # Required. The Git remote's URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_token_secret_version = args[:authentication_token_secret_version] if args.key?(:authentication_token_secret_version)
          @default_branch = args[:default_branch] if args.key?(:default_branch)
          @token_status = args[:token_status] if args.key?(:token_status)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Contains settings for relations of type `INCREMENTAL_TABLE`.
      class IncrementalTableConfig
        include Google::Apis::Core::Hashable
      
        # SQL statements to be executed after inserting new rows into the relation.
        # Corresponds to the JSON property `incrementalPostOperations`
        # @return [Array<String>]
        attr_accessor :incremental_post_operations
      
        # SQL statements to be executed before inserting new rows into the relation.
        # Corresponds to the JSON property `incrementalPreOperations`
        # @return [Array<String>]
        attr_accessor :incremental_pre_operations
      
        # The SELECT query which returns rows which should be inserted into the relation
        # if it already exists and is not being refreshed.
        # Corresponds to the JSON property `incrementalSelectQuery`
        # @return [String]
        attr_accessor :incremental_select_query
      
        # Whether this table should be protected from being refreshed.
        # Corresponds to the JSON property `refreshDisabled`
        # @return [Boolean]
        attr_accessor :refresh_disabled
        alias_method :refresh_disabled?, :refresh_disabled
      
        # A set of columns or SQL expressions used to define row uniqueness. If any
        # duplicates are discovered (as defined by `unique_key_parts`), only the newly
        # selected rows (as defined by `incremental_select_query`) will be included in
        # the relation.
        # Corresponds to the JSON property `uniqueKeyParts`
        # @return [Array<String>]
        attr_accessor :unique_key_parts
      
        # A SQL expression conditional used to limit the set of existing rows considered
        # for a merge operation (see `unique_key_parts` for more information).
        # Corresponds to the JSON property `updatePartitionFilter`
        # @return [String]
        attr_accessor :update_partition_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @incremental_post_operations = args[:incremental_post_operations] if args.key?(:incremental_post_operations)
          @incremental_pre_operations = args[:incremental_pre_operations] if args.key?(:incremental_pre_operations)
          @incremental_select_query = args[:incremental_select_query] if args.key?(:incremental_select_query)
          @refresh_disabled = args[:refresh_disabled] if args.key?(:refresh_disabled)
          @unique_key_parts = args[:unique_key_parts] if args.key?(:unique_key_parts)
          @update_partition_filter = args[:update_partition_filter] if args.key?(:update_partition_filter)
        end
      end
      
      # `InstallNpmPackages` request message.
      class InstallNpmPackagesRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # `InstallNpmPackages` response message.
      class InstallNpmPackagesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Includes various configuration options for a workflow invocation. If both `
      # included_targets` and `included_tags` are unset, all actions will be included.
      class InvocationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. When set to true, any incremental tables will be fully refreshed.
        # Corresponds to the JSON property `fullyRefreshIncrementalTablesEnabled`
        # @return [Boolean]
        attr_accessor :fully_refresh_incremental_tables_enabled
        alias_method :fully_refresh_incremental_tables_enabled?, :fully_refresh_incremental_tables_enabled
      
        # Optional. The set of tags to include.
        # Corresponds to the JSON property `includedTags`
        # @return [Array<String>]
        attr_accessor :included_tags
      
        # Optional. The set of action identifiers to include.
        # Corresponds to the JSON property `includedTargets`
        # @return [Array<Google::Apis::DataformV1beta1::Target>]
        attr_accessor :included_targets
      
        # Optional. When set to true, transitive dependencies of included actions will
        # be executed.
        # Corresponds to the JSON property `transitiveDependenciesIncluded`
        # @return [Boolean]
        attr_accessor :transitive_dependencies_included
        alias_method :transitive_dependencies_included?, :transitive_dependencies_included
      
        # Optional. When set to true, transitive dependents of included actions will be
        # executed.
        # Corresponds to the JSON property `transitiveDependentsIncluded`
        # @return [Boolean]
        attr_accessor :transitive_dependents_included
        alias_method :transitive_dependents_included?, :transitive_dependents_included
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fully_refresh_incremental_tables_enabled = args[:fully_refresh_incremental_tables_enabled] if args.key?(:fully_refresh_incremental_tables_enabled)
          @included_tags = args[:included_tags] if args.key?(:included_tags)
          @included_targets = args[:included_targets] if args.key?(:included_targets)
          @transitive_dependencies_included = args[:transitive_dependencies_included] if args.key?(:transitive_dependencies_included)
          @transitive_dependents_included = args[:transitive_dependents_included] if args.key?(:transitive_dependents_included)
        end
      end
      
      # `ListCompilationResults` response message.
      class ListCompilationResultsResponse
        include Google::Apis::Core::Hashable
      
        # List of compilation results.
        # Corresponds to the JSON property `compilationResults`
        # @return [Array<Google::Apis::DataformV1beta1::CompilationResult>]
        attr_accessor :compilation_results
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations which could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compilation_results = args[:compilation_results] if args.key?(:compilation_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DataformV1beta1::Location>]
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
      
      # `ListReleaseConfigs` response message.
      class ListReleaseConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of release configs.
        # Corresponds to the JSON property `releaseConfigs`
        # @return [Array<Google::Apis::DataformV1beta1::ReleaseConfig>]
        attr_accessor :release_configs
      
        # Locations which could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @release_configs = args[:release_configs] if args.key?(:release_configs)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # `ListRepositories` response message.
      class ListRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # A token which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of repositories.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::DataformV1beta1::Repository>]
        attr_accessor :repositories
      
        # Locations which could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @repositories = args[:repositories] if args.key?(:repositories)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # `ListWorkflowConfigs` response message.
      class ListWorkflowConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations which could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of workflow configs.
        # Corresponds to the JSON property `workflowConfigs`
        # @return [Array<Google::Apis::DataformV1beta1::WorkflowConfig>]
        attr_accessor :workflow_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workflow_configs = args[:workflow_configs] if args.key?(:workflow_configs)
        end
      end
      
      # `ListWorkflowInvocations` response message.
      class ListWorkflowInvocationsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations which could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of workflow invocations.
        # Corresponds to the JSON property `workflowInvocations`
        # @return [Array<Google::Apis::DataformV1beta1::WorkflowInvocation>]
        attr_accessor :workflow_invocations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workflow_invocations = args[:workflow_invocations] if args.key?(:workflow_invocations)
        end
      end
      
      # `ListWorkspaces` response message.
      class ListWorkspacesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations which could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of workspaces.
        # Corresponds to the JSON property `workspaces`
        # @return [Array<Google::Apis::DataformV1beta1::Workspace>]
        attr_accessor :workspaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workspaces = args[:workspaces] if args.key?(:workspaces)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
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
      
      # `MakeDirectory` request message.
      class MakeDirectoryRequest
        include Google::Apis::Core::Hashable
      
        # Required. The directory's full path including directory name, relative to the
        # workspace root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # `MakeDirectory` response message.
      class MakeDirectoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # `MoveDirectory` request message.
      class MoveDirectoryRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new path for the directory including directory name, rooted at
        # workspace root.
        # Corresponds to the JSON property `newPath`
        # @return [String]
        attr_accessor :new_path
      
        # Required. The directory's full path including directory name, relative to the
        # workspace root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_path = args[:new_path] if args.key?(:new_path)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # `MoveDirectory` response message.
      class MoveDirectoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # `MoveFile` request message.
      class MoveFileRequest
        include Google::Apis::Core::Hashable
      
        # Required. The file's new path including filename, relative to the workspace
        # root.
        # Corresponds to the JSON property `newPath`
        # @return [String]
        attr_accessor :new_path
      
        # Required. The file's full path including filename, relative to the workspace
        # root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_path = args[:new_path] if args.key?(:new_path)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # `MoveFile` response message.
      class MoveFileResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents a list of arbitrary database operations.
      class Operations
        include Google::Apis::Core::Hashable
      
        # A list of actions that this action depends on.
        # Corresponds to the JSON property `dependencyTargets`
        # @return [Array<Google::Apis::DataformV1beta1::Target>]
        attr_accessor :dependency_targets
      
        # Whether this action is disabled (i.e. should not be run).
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Whether these operations produce an output relation.
        # Corresponds to the JSON property `hasOutput`
        # @return [Boolean]
        attr_accessor :has_output
        alias_method :has_output?, :has_output
      
        # A list of arbitrary SQL statements that will be executed without alteration.
        # Corresponds to the JSON property `queries`
        # @return [Array<String>]
        attr_accessor :queries
      
        # Describes a relation and its columns.
        # Corresponds to the JSON property `relationDescriptor`
        # @return [Google::Apis::DataformV1beta1::RelationDescriptor]
        attr_accessor :relation_descriptor
      
        # Arbitrary, user-defined tags on this action.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_targets = args[:dependency_targets] if args.key?(:dependency_targets)
          @disabled = args[:disabled] if args.key?(:disabled)
          @has_output = args[:has_output] if args.key?(:has_output)
          @queries = args[:queries] if args.key?(:queries)
          @relation_descriptor = args[:relation_descriptor] if args.key?(:relation_descriptor)
          @tags = args[:tags] if args.key?(:tags)
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
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DataformV1beta1::Binding>]
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
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # `PullGitCommits` request message.
      class PullGitCommitsRequest
        include Google::Apis::Core::Hashable
      
        # Represents the author of a Git commit.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DataformV1beta1::CommitAuthor]
        attr_accessor :author
      
        # Optional. The name of the branch in the Git remote from which to pull commits.
        # If left unset, the repository's default branch name will be used.
        # Corresponds to the JSON property `remoteBranch`
        # @return [String]
        attr_accessor :remote_branch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @remote_branch = args[:remote_branch] if args.key?(:remote_branch)
        end
      end
      
      # `PushGitCommits` request message.
      class PushGitCommitsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the branch in the Git remote to which commits should be
        # pushed. If left unset, the repository's default branch name will be used.
        # Corresponds to the JSON property `remoteBranch`
        # @return [String]
        attr_accessor :remote_branch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @remote_branch = args[:remote_branch] if args.key?(:remote_branch)
        end
      end
      
      # `QueryCompilationResultActions` response message.
      class QueryCompilationResultActionsResponse
        include Google::Apis::Core::Hashable
      
        # List of compilation result actions.
        # Corresponds to the JSON property `compilationResultActions`
        # @return [Array<Google::Apis::DataformV1beta1::CompilationResultAction>]
        attr_accessor :compilation_result_actions
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compilation_result_actions = args[:compilation_result_actions] if args.key?(:compilation_result_actions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # `QueryDirectoryContents` response message.
      class QueryDirectoryContentsResponse
        include Google::Apis::Core::Hashable
      
        # List of entries in the directory.
        # Corresponds to the JSON property `directoryEntries`
        # @return [Array<Google::Apis::DataformV1beta1::DirectoryEntry>]
        attr_accessor :directory_entries
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_entries = args[:directory_entries] if args.key?(:directory_entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # `QueryRepositoryDirectoryContents` response message.
      class QueryRepositoryDirectoryContentsResponse
        include Google::Apis::Core::Hashable
      
        # List of entries in the directory.
        # Corresponds to the JSON property `directoryEntries`
        # @return [Array<Google::Apis::DataformV1beta1::DirectoryEntry>]
        attr_accessor :directory_entries
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_entries = args[:directory_entries] if args.key?(:directory_entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # `QueryWorkflowInvocationActions` response message.
      class QueryWorkflowInvocationActionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of workflow invocation actions.
        # Corresponds to the JSON property `workflowInvocationActions`
        # @return [Array<Google::Apis::DataformV1beta1::WorkflowInvocationAction>]
        attr_accessor :workflow_invocation_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workflow_invocation_actions = args[:workflow_invocation_actions] if args.key?(:workflow_invocation_actions)
        end
      end
      
      # `ReadFile` response message.
      class ReadFileResponse
        include Google::Apis::Core::Hashable
      
        # The file's contents.
        # Corresponds to the JSON property `fileContents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :file_contents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_contents = args[:file_contents] if args.key?(:file_contents)
        end
      end
      
      # `ReadRepositoryFile` response message.
      class ReadRepositoryFileResponse
        include Google::Apis::Core::Hashable
      
        # The file's contents.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
        end
      end
      
      # Represents a database relation.
      class Relation
        include Google::Apis::Core::Hashable
      
        # Additional options that will be provided as key/value pairs into the options
        # clause of a create table/view statement. See https://cloud.google.com/bigquery/
        # docs/reference/standard-sql/data-definition-language for more information on
        # which options are supported.
        # Corresponds to the JSON property `additionalOptions`
        # @return [Hash<String,String>]
        attr_accessor :additional_options
      
        # A list of columns or SQL expressions used to cluster the table.
        # Corresponds to the JSON property `clusterExpressions`
        # @return [Array<String>]
        attr_accessor :cluster_expressions
      
        # A list of actions that this action depends on.
        # Corresponds to the JSON property `dependencyTargets`
        # @return [Array<Google::Apis::DataformV1beta1::Target>]
        attr_accessor :dependency_targets
      
        # Whether this action is disabled (i.e. should not be run).
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Contains settings for relations of type `INCREMENTAL_TABLE`.
        # Corresponds to the JSON property `incrementalTableConfig`
        # @return [Google::Apis::DataformV1beta1::IncrementalTableConfig]
        attr_accessor :incremental_table_config
      
        # Sets the partition expiration in days.
        # Corresponds to the JSON property `partitionExpirationDays`
        # @return [Fixnum]
        attr_accessor :partition_expiration_days
      
        # The SQL expression used to partition the relation.
        # Corresponds to the JSON property `partitionExpression`
        # @return [String]
        attr_accessor :partition_expression
      
        # SQL statements to be executed after creating the relation.
        # Corresponds to the JSON property `postOperations`
        # @return [Array<String>]
        attr_accessor :post_operations
      
        # SQL statements to be executed before creating the relation.
        # Corresponds to the JSON property `preOperations`
        # @return [Array<String>]
        attr_accessor :pre_operations
      
        # Describes a relation and its columns.
        # Corresponds to the JSON property `relationDescriptor`
        # @return [Google::Apis::DataformV1beta1::RelationDescriptor]
        attr_accessor :relation_descriptor
      
        # The type of this relation.
        # Corresponds to the JSON property `relationType`
        # @return [String]
        attr_accessor :relation_type
      
        # Specifies whether queries on this table must include a predicate filter that
        # filters on the partitioning column.
        # Corresponds to the JSON property `requirePartitionFilter`
        # @return [Boolean]
        attr_accessor :require_partition_filter
        alias_method :require_partition_filter?, :require_partition_filter
      
        # The SELECT query which returns rows which this relation should contain.
        # Corresponds to the JSON property `selectQuery`
        # @return [String]
        attr_accessor :select_query
      
        # Arbitrary, user-defined tags on this action.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_options = args[:additional_options] if args.key?(:additional_options)
          @cluster_expressions = args[:cluster_expressions] if args.key?(:cluster_expressions)
          @dependency_targets = args[:dependency_targets] if args.key?(:dependency_targets)
          @disabled = args[:disabled] if args.key?(:disabled)
          @incremental_table_config = args[:incremental_table_config] if args.key?(:incremental_table_config)
          @partition_expiration_days = args[:partition_expiration_days] if args.key?(:partition_expiration_days)
          @partition_expression = args[:partition_expression] if args.key?(:partition_expression)
          @post_operations = args[:post_operations] if args.key?(:post_operations)
          @pre_operations = args[:pre_operations] if args.key?(:pre_operations)
          @relation_descriptor = args[:relation_descriptor] if args.key?(:relation_descriptor)
          @relation_type = args[:relation_type] if args.key?(:relation_type)
          @require_partition_filter = args[:require_partition_filter] if args.key?(:require_partition_filter)
          @select_query = args[:select_query] if args.key?(:select_query)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Describes a relation and its columns.
      class RelationDescriptor
        include Google::Apis::Core::Hashable
      
        # A set of BigQuery labels that should be applied to the relation.
        # Corresponds to the JSON property `bigqueryLabels`
        # @return [Hash<String,String>]
        attr_accessor :bigquery_labels
      
        # A list of descriptions of columns within the relation.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DataformV1beta1::ColumnDescriptor>]
        attr_accessor :columns
      
        # A text description of the relation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_labels = args[:bigquery_labels] if args.key?(:bigquery_labels)
          @columns = args[:columns] if args.key?(:columns)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Represents a Dataform release configuration.
      class ReleaseConfig
        include Google::Apis::Core::Hashable
      
        # Configures various aspects of Dataform code compilation.
        # Corresponds to the JSON property `codeCompilationConfig`
        # @return [Google::Apis::DataformV1beta1::CodeCompilationConfig]
        attr_accessor :code_compilation_config
      
        # Optional. Optional schedule (in cron format) for automatic creation of
        # compilation results.
        # Corresponds to the JSON property `cronSchedule`
        # @return [String]
        attr_accessor :cron_schedule
      
        # Required. Git commit/tag/branch name at which the repository should be
        # compiled. Must exist in the remote repository. Examples: - a commit SHA: `
        # 12ade345` - a tag: `tag1` - a branch name: `branch1`
        # Corresponds to the JSON property `gitCommitish`
        # @return [String]
        attr_accessor :git_commitish
      
        # Output only. The release config's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Records of the 10 most recent scheduled release attempts. Updated
        # whenever automatic creation of a compilation result is triggered by
        # cron_schedule.
        # Corresponds to the JSON property `recentScheduledReleaseRecords`
        # @return [Array<Google::Apis::DataformV1beta1::ScheduledReleaseRecord>]
        attr_accessor :recent_scheduled_release_records
      
        # Optional. The name of the currently released compilation result for this
        # release config. This value is updated when a compilation result is created
        # from this release config, or when this resource is updated by API call (
        # perhaps to roll back to an earlier release). The compilation result must have
        # been created using this release config. Must be in the format `projects/*/
        # locations/*/repositories/*/compilationResults/*`.
        # Corresponds to the JSON property `releaseCompilationResult`
        # @return [String]
        attr_accessor :release_compilation_result
      
        # Optional. Specifies the time zone to be used when interpreting cron_schedule.
        # Must be a time zone name from the time zone database (https://en.wikipedia.org/
        # wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_compilation_config = args[:code_compilation_config] if args.key?(:code_compilation_config)
          @cron_schedule = args[:cron_schedule] if args.key?(:cron_schedule)
          @git_commitish = args[:git_commitish] if args.key?(:git_commitish)
          @name = args[:name] if args.key?(:name)
          @recent_scheduled_release_records = args[:recent_scheduled_release_records] if args.key?(:recent_scheduled_release_records)
          @release_compilation_result = args[:release_compilation_result] if args.key?(:release_compilation_result)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # `RemoveDirectory` request message.
      class RemoveDirectoryRequest
        include Google::Apis::Core::Hashable
      
        # Required. The directory's full path including directory name, relative to the
        # workspace root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # `RemoveFile` request message.
      class RemoveFileRequest
        include Google::Apis::Core::Hashable
      
        # Required. The file's full path including filename, relative to the workspace
        # root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Represents a Dataform Git repository.
      class Repository
        include Google::Apis::Core::Hashable
      
        # Controls Git remote configuration for a repository.
        # Corresponds to the JSON property `gitRemoteSettings`
        # @return [Google::Apis::DataformV1beta1::GitRemoteSettings]
        attr_accessor :git_remote_settings
      
        # Optional. Input only. The initial commit file contents. Represented as map
        # from file path to contents. The path is the full file path to commit including
        # filename, from repository root.
        # Corresponds to the JSON property `initialCommitFileContents`
        # @return [Hash<String,String>]
        attr_accessor :initial_commit_file_contents
      
        # Represents a Dataform Git commit.
        # Corresponds to the JSON property `initialCommitMetadata`
        # @return [Google::Apis::DataformV1beta1::CommitMetadata]
        attr_accessor :initial_commit_metadata
      
        # Optional. Repository user labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The repository's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The name of the Secret Manager secret version to be used to
        # interpolate variables into the .npmrc file for package installation operations.
        # Must be in the format `projects/*/secrets/*/versions/*`. The file itself must
        # be in a JSON format.
        # Corresponds to the JSON property `npmrcEnvironmentVariablesSecretVersion`
        # @return [String]
        attr_accessor :npmrc_environment_variables_secret_version
      
        # Configures workspace compilation overrides for a repository. Primarily used by
        # the UI (`console.cloud.google.com`). `schema_suffix` and `table_prefix` can
        # have a special expression - `$`workspaceName``, which refers to the workspace
        # name from which the compilation results will be created. API callers are
        # expected to resolve the expression in these overrides and provide them
        # explicitly in `code_compilation_config` (https://cloud.google.com/dataform/
        # reference/rest/v1beta1/projects.locations.repositories.compilationResults#
        # codecompilationconfig) when creating workspace-scoped compilation results.
        # Corresponds to the JSON property `workspaceCompilationOverrides`
        # @return [Google::Apis::DataformV1beta1::WorkspaceCompilationOverrides]
        attr_accessor :workspace_compilation_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @git_remote_settings = args[:git_remote_settings] if args.key?(:git_remote_settings)
          @initial_commit_file_contents = args[:initial_commit_file_contents] if args.key?(:initial_commit_file_contents)
          @initial_commit_metadata = args[:initial_commit_metadata] if args.key?(:initial_commit_metadata)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @npmrc_environment_variables_secret_version = args[:npmrc_environment_variables_secret_version] if args.key?(:npmrc_environment_variables_secret_version)
          @workspace_compilation_overrides = args[:workspace_compilation_overrides] if args.key?(:workspace_compilation_overrides)
        end
      end
      
      # `ResetWorkspaceChanges` request message.
      class ResetWorkspaceChangesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, untracked files will be deleted.
        # Corresponds to the JSON property `clean`
        # @return [Boolean]
        attr_accessor :clean
        alias_method :clean?, :clean
      
        # Optional. Full file paths to reset back to their committed state including
        # filename, rooted at workspace root. If left empty, all files will be reset.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clean = args[:clean] if args.key?(:clean)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # A record of an attempt to create a workflow invocation for this workflow
      # config.
      class ScheduledExecutionRecord
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DataformV1beta1::Status]
        attr_accessor :error_status
      
        # The timestamp of this execution attempt.
        # Corresponds to the JSON property `executionTime`
        # @return [String]
        attr_accessor :execution_time
      
        # The name of the created workflow invocation, if one was successfully created.
        # Must be in the format `projects/*/locations/*/repositories/*/
        # workflowInvocations/*`.
        # Corresponds to the JSON property `workflowInvocation`
        # @return [String]
        attr_accessor :workflow_invocation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_status = args[:error_status] if args.key?(:error_status)
          @execution_time = args[:execution_time] if args.key?(:execution_time)
          @workflow_invocation = args[:workflow_invocation] if args.key?(:workflow_invocation)
        end
      end
      
      # A record of an attempt to create a compilation result for this release config.
      class ScheduledReleaseRecord
        include Google::Apis::Core::Hashable
      
        # The name of the created compilation result, if one was successfully created.
        # Must be in the format `projects/*/locations/*/repositories/*/
        # compilationResults/*`.
        # Corresponds to the JSON property `compilationResult`
        # @return [String]
        attr_accessor :compilation_result
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DataformV1beta1::Status]
        attr_accessor :error_status
      
        # The timestamp of this release attempt.
        # Corresponds to the JSON property `releaseTime`
        # @return [String]
        attr_accessor :release_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compilation_result = args[:compilation_result] if args.key?(:compilation_result)
          @error_status = args[:error_status] if args.key?(:error_status)
          @release_time = args[:release_time] if args.key?(:release_time)
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
        # @return [Google::Apis::DataformV1beta1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
      
      # Represents an action identifier. If the action writes output, the output will
      # be written to the referenced database object.
      class Target
        include Google::Apis::Core::Hashable
      
        # The action's database (Google Cloud project ID) .
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The action's name, within `database` and `schema`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The action's schema (BigQuery dataset ID), within `database`.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
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
      
      # Represents the Git state of a file with uncommitted changes.
      class UncommittedFileChange
        include Google::Apis::Core::Hashable
      
        # The file's full path including filename, relative to the workspace root.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Indicates the status of the file.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a Dataform workflow configuration.
      class WorkflowConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Optional schedule (in cron format) for automatic execution of this
        # workflow config.
        # Corresponds to the JSON property `cronSchedule`
        # @return [String]
        attr_accessor :cron_schedule
      
        # Includes various configuration options for a workflow invocation. If both `
        # included_targets` and `included_tags` are unset, all actions will be included.
        # Corresponds to the JSON property `invocationConfig`
        # @return [Google::Apis::DataformV1beta1::InvocationConfig]
        attr_accessor :invocation_config
      
        # Output only. The workflow config's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Records of the 10 most recent scheduled execution attempts.
        # Updated whenever automatic creation of a compilation result is triggered by
        # cron_schedule.
        # Corresponds to the JSON property `recentScheduledExecutionRecords`
        # @return [Array<Google::Apis::DataformV1beta1::ScheduledExecutionRecord>]
        attr_accessor :recent_scheduled_execution_records
      
        # Required. The name of the release config whose release_compilation_result
        # should be executed. Must be in the format `projects/*/locations/*/repositories/
        # */releaseConfigs/*`.
        # Corresponds to the JSON property `releaseConfig`
        # @return [String]
        attr_accessor :release_config
      
        # Optional. Specifies the time zone to be used when interpreting cron_schedule.
        # Must be a time zone name from the time zone database (https://en.wikipedia.org/
        # wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron_schedule = args[:cron_schedule] if args.key?(:cron_schedule)
          @invocation_config = args[:invocation_config] if args.key?(:invocation_config)
          @name = args[:name] if args.key?(:name)
          @recent_scheduled_execution_records = args[:recent_scheduled_execution_records] if args.key?(:recent_scheduled_execution_records)
          @release_config = args[:release_config] if args.key?(:release_config)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Represents a single invocation of a compilation result.
      class WorkflowInvocation
        include Google::Apis::Core::Hashable
      
        # Immutable. The name of the compilation result to compile. Must be in the
        # format `projects/*/locations/*/repositories/*/compilationResults/*`.
        # Corresponds to the JSON property `compilationResult`
        # @return [String]
        attr_accessor :compilation_result
      
        # Includes various configuration options for a workflow invocation. If both `
        # included_targets` and `included_tags` are unset, all actions will be included.
        # Corresponds to the JSON property `invocationConfig`
        # @return [Google::Apis::DataformV1beta1::InvocationConfig]
        attr_accessor :invocation_config
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `invocationTiming`
        # @return [Google::Apis::DataformV1beta1::Interval]
        attr_accessor :invocation_timing
      
        # Output only. The workflow invocation's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. This workflow invocation's current state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Immutable. The name of the workflow config to invoke. Must be in the format `
        # projects/*/locations/*/repositories/*/workflowConfigs/*`.
        # Corresponds to the JSON property `workflowConfig`
        # @return [String]
        attr_accessor :workflow_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compilation_result = args[:compilation_result] if args.key?(:compilation_result)
          @invocation_config = args[:invocation_config] if args.key?(:invocation_config)
          @invocation_timing = args[:invocation_timing] if args.key?(:invocation_timing)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @workflow_config = args[:workflow_config] if args.key?(:workflow_config)
        end
      end
      
      # Represents a single action in a workflow invocation.
      class WorkflowInvocationAction
        include Google::Apis::Core::Hashable
      
        # Represents a workflow action that will run against BigQuery.
        # Corresponds to the JSON property `bigqueryAction`
        # @return [Google::Apis::DataformV1beta1::BigQueryAction]
        attr_accessor :bigquery_action
      
        # Represents an action identifier. If the action writes output, the output will
        # be written to the referenced database object.
        # Corresponds to the JSON property `canonicalTarget`
        # @return [Google::Apis::DataformV1beta1::Target]
        attr_accessor :canonical_target
      
        # Output only. If and only if action's state is FAILED a failure reason is set.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `invocationTiming`
        # @return [Google::Apis::DataformV1beta1::Interval]
        attr_accessor :invocation_timing
      
        # Output only. This action's current state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Represents an action identifier. If the action writes output, the output will
        # be written to the referenced database object.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DataformV1beta1::Target]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_action = args[:bigquery_action] if args.key?(:bigquery_action)
          @canonical_target = args[:canonical_target] if args.key?(:canonical_target)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @invocation_timing = args[:invocation_timing] if args.key?(:invocation_timing)
          @state = args[:state] if args.key?(:state)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Represents a Dataform Git workspace.
      class Workspace
        include Google::Apis::Core::Hashable
      
        # Output only. The workspace's name.
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
      
      # Configures workspace compilation overrides for a repository. Primarily used by
      # the UI (`console.cloud.google.com`). `schema_suffix` and `table_prefix` can
      # have a special expression - `$`workspaceName``, which refers to the workspace
      # name from which the compilation results will be created. API callers are
      # expected to resolve the expression in these overrides and provide them
      # explicitly in `code_compilation_config` (https://cloud.google.com/dataform/
      # reference/rest/v1beta1/projects.locations.repositories.compilationResults#
      # codecompilationconfig) when creating workspace-scoped compilation results.
      class WorkspaceCompilationOverrides
        include Google::Apis::Core::Hashable
      
        # Optional. The default database (Google Cloud project ID).
        # Corresponds to the JSON property `defaultDatabase`
        # @return [String]
        attr_accessor :default_database
      
        # Optional. The suffix that should be appended to all schema (BigQuery dataset
        # ID) names.
        # Corresponds to the JSON property `schemaSuffix`
        # @return [String]
        attr_accessor :schema_suffix
      
        # Optional. The prefix that should be prepended to all table names.
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_database = args[:default_database] if args.key?(:default_database)
          @schema_suffix = args[:schema_suffix] if args.key?(:schema_suffix)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
        end
      end
      
      # Represents the write file operation (for files added or modified).
      class WriteFile
        include Google::Apis::Core::Hashable
      
        # The file's contents.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
        end
      end
      
      # `WriteFile` request message.
      class WriteFileRequest
        include Google::Apis::Core::Hashable
      
        # Required. The file's contents.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # Required. The file.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # `WriteFile` response message.
      class WriteFileResponse
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
