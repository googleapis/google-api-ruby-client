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
    module CloudbuildV2
      
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
        # @return [Array<Google::Apis::CloudbuildV2::AuditLogConfig>]
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
      
      # Message for creating repositoritories in batch.
      class BatchCreateRepositoriesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request messages specifying the repositories to create.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::CloudbuildV2::CreateRepositoryRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Message for response of creating repositories in batch.
      class BatchCreateRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # Repository resources created.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::CloudbuildV2::Repository>]
        attr_accessor :repositories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repositories = args[:repositories] if args.key?(:repositories)
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
        # @return [Google::Apis::CloudbuildV2::Expr]
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
      
      # Capabilities adds and removes POSIX capabilities from running containers.
      class Capabilities
        include Google::Apis::Core::Hashable
      
        # Optional. Added capabilities +optional
        # Corresponds to the JSON property `add`
        # @return [Array<String>]
        attr_accessor :add
      
        # Optional. Removed capabilities +optional
        # Corresponds to the JSON property `drop`
        # @return [Array<String>]
        attr_accessor :drop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add = args[:add] if args.key?(:add)
          @drop = args[:drop] if args.key?(:drop)
        end
      end
      
      # ChildStatusReference is used to point to the statuses of individual TaskRuns
      # and Runs within this PipelineRun.
      class ChildStatusReference
        include Google::Apis::Core::Hashable
      
        # Name is the name of the TaskRun or Run this is referencing.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # PipelineTaskName is the name of the PipelineTask this is referencing.
        # Corresponds to the JSON property `pipelineTaskName`
        # @return [String]
        attr_accessor :pipeline_task_name
      
        # Output only. Type of the child reference.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # WhenExpressions is the list of checks guarding the execution of the
        # PipelineTask
        # Corresponds to the JSON property `whenExpressions`
        # @return [Array<Google::Apis::CloudbuildV2::WhenExpression>]
        attr_accessor :when_expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @pipeline_task_name = args[:pipeline_task_name] if args.key?(:pipeline_task_name)
          @type = args[:type] if args.key?(:type)
          @when_expressions = args[:when_expressions] if args.key?(:when_expressions)
        end
      end
      
      # A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Data Center or
      # GitLab.
      class Connection
        include Google::Apis::Core::Hashable
      
        # Allows clients to store small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Server assigned timestamp for when the connection was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # If disabled is set to true, functionality is disabled for this connection.
        # Repository based API methods and webhooks processing for repositories in this
        # connection will be disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Configuration for connections to github.com.
        # Corresponds to the JSON property `githubConfig`
        # @return [Google::Apis::CloudbuildV2::GitHubConfig]
        attr_accessor :github_config
      
        # Configuration for connections to an instance of GitHub Enterprise.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig]
        attr_accessor :github_enterprise_config
      
        # Configuration for connections to gitlab.com or an instance of GitLab
        # Enterprise.
        # Corresponds to the JSON property `gitlabConfig`
        # @return [Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2GitLabConfig]
        attr_accessor :gitlab_config
      
        # Describes stage and necessary actions to be taken by the user to complete the
        # installation. Used for GitHub and GitHub Enterprise based connections.
        # Corresponds to the JSON property `installationState`
        # @return [Google::Apis::CloudbuildV2::InstallationState]
        attr_accessor :installation_state
      
        # Immutable. The resource name of the connection, in the format `projects/`
        # project`/locations/`location`/connections/`connection_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Set to true when the connection is being set up or updated in the
        # background.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Server assigned timestamp for when the connection was updated.
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
          @disabled = args[:disabled] if args.key?(:disabled)
          @etag = args[:etag] if args.key?(:etag)
          @github_config = args[:github_config] if args.key?(:github_config)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
          @gitlab_config = args[:gitlab_config] if args.key?(:gitlab_config)
          @installation_state = args[:installation_state] if args.key?(:installation_state)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message for creating a Repository.
      class CreateRepositoryRequest
        include Google::Apis::Core::Hashable
      
        # Required. The connection to contain the repository. If the request is part of
        # a BatchCreateRepositoriesRequest, this field should be empty or match the
        # parent specified there.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A repository associated to a parent connection.
        # Corresponds to the JSON property `repository`
        # @return [Google::Apis::CloudbuildV2::Repository]
        attr_accessor :repository
      
        # Required. The ID to use for the repository, which will become the final
        # component of the repository's resource name. This ID should be unique in the
        # connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
        # Corresponds to the JSON property `repositoryId`
        # @return [String]
        attr_accessor :repository_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @repository = args[:repository] if args.key?(:repository)
          @repository_id = args[:repository_id] if args.key?(:repository_id)
        end
      end
      
      # EmbeddedTask defines a Task that is embedded in a Pipeline.
      class EmbeddedTask
        include Google::Apis::Core::Hashable
      
        # User annotations. See https://google.aip.dev/128#annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # TaskSpec contains the Spec to instantiate a TaskRun.
        # Corresponds to the JSON property `taskSpec`
        # @return [Google::Apis::CloudbuildV2::TaskSpec]
        attr_accessor :task_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @task_spec = args[:task_spec] if args.key?(:task_spec)
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
      
      # Represents an empty Volume source.
      class EmptyDirVolumeSource
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Environment variable.
      class EnvVar
        include Google::Apis::Core::Hashable
      
        # Name of the environment variable.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value of the environment variable.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # ExecAction describes a "run in container" action.
      class ExecAction
        include Google::Apis::Core::Hashable
      
        # Optional. Command is the command line to execute inside the container, the
        # working directory for the command is root ('/') in the container's filesystem.
        # The command is simply exec'd, it is not run inside a shell, so traditional
        # shell instructions ('|', etc) won't work. To use a shell, you need to
        # explicitly call out to that shell. Exit status of 0 is treated as live/healthy
        # and non-zero is unhealthy. +optional
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
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
      
      # Response for fetching git refs
      class FetchGitRefsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Name of the refs fetched.
        # Corresponds to the JSON property `refNames`
        # @return [Array<String>]
        attr_accessor :ref_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @ref_names = args[:ref_names] if args.key?(:ref_names)
        end
      end
      
      # Response message for FetchLinkableRepositories.
      class FetchLinkableRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # repositories ready to be created.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::CloudbuildV2::Repository>]
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
      
      # Message for fetching SCM read token.
      class FetchReadTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for responding to get read token.
      class FetchReadTokenResponse
        include Google::Apis::Core::Hashable
      
        # Expiration timestamp. Can be empty if unknown or non-expiring.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The token content.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Message for fetching SCM read/write token.
      class FetchReadWriteTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for responding to get read/write token.
      class FetchReadWriteTokenResponse
        include Google::Apis::Core::Hashable
      
        # Expiration timestamp. Can be empty if unknown or non-expiring.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The token content.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Configuration for connections to github.com.
      class GitHubConfig
        include Google::Apis::Core::Hashable
      
        # GitHub App installation id.
        # Corresponds to the JSON property `appInstallationId`
        # @return [Fixnum]
        attr_accessor :app_installation_id
      
        # Represents an OAuth token of the account that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::CloudbuildV2::OAuthCredential]
        attr_accessor :authorizer_credential
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_installation_id = args[:app_installation_id] if args.key?(:app_installation_id)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
        end
      end
      
      # Conditions defines a readiness condition for a Knative resource.
      class GoogleDevtoolsCloudbuildV2Condition
        include Google::Apis::Core::Hashable
      
        # LastTransitionTime is the last time the condition transitioned from one status
        # to another.
        # Corresponds to the JSON property `lastTransitionTime`
        # @return [String]
        attr_accessor :last_transition_time
      
        # A human readable message indicating details about the transition.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The reason for the condition's last transition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Severity with which to treat failures of this type of condition.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Status of the condition.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of condition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @severity = args[:severity] if args.key?(:severity)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration for connections to an instance of GitHub Enterprise.
      class GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
        include Google::Apis::Core::Hashable
      
        # Required. API Key used for authentication of webhook events.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # Id of the GitHub App created from the manifest.
        # Corresponds to the JSON property `appId`
        # @return [Fixnum]
        attr_accessor :app_id
      
        # ID of the installation of the GitHub App.
        # Corresponds to the JSON property `appInstallationId`
        # @return [Fixnum]
        attr_accessor :app_installation_id
      
        # The URL-friendly name of the GitHub App.
        # Corresponds to the JSON property `appSlug`
        # @return [String]
        attr_accessor :app_slug
      
        # Required. The URI of the GitHub Enterprise host this connection is for.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # SecretManager resource containing the private key of the GitHub App, formatted
        # as `projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `privateKeySecretVersion`
        # @return [String]
        attr_accessor :private_key_secret_version
      
        # Output only. GitHub Enterprise version installed at the host_uri.
        # Corresponds to the JSON property `serverVersion`
        # @return [String]
        attr_accessor :server_version
      
        # ServiceDirectoryConfig represents Service Directory configuration for a
        # connection.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # SSL certificate to use for requests to GitHub Enterprise.
        # Corresponds to the JSON property `sslCa`
        # @return [String]
        attr_accessor :ssl_ca
      
        # SecretManager resource containing the webhook secret of the GitHub App,
        # formatted as `projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_installation_id = args[:app_installation_id] if args.key?(:app_installation_id)
          @app_slug = args[:app_slug] if args.key?(:app_slug)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @private_key_secret_version = args[:private_key_secret_version] if args.key?(:private_key_secret_version)
          @server_version = args[:server_version] if args.key?(:server_version)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @ssl_ca = args[:ssl_ca] if args.key?(:ssl_ca)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
        end
      end
      
      # Configuration for connections to gitlab.com or an instance of GitLab
      # Enterprise.
      class GoogleDevtoolsCloudbuildV2GitLabConfig
        include Google::Apis::Core::Hashable
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::CloudbuildV2::UserCredential]
        attr_accessor :authorizer_credential
      
        # The URI of the GitLab Enterprise host this connection is for. If not specified,
        # the default value is https://gitlab.com.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `readAuthorizerCredential`
        # @return [Google::Apis::CloudbuildV2::UserCredential]
        attr_accessor :read_authorizer_credential
      
        # Output only. Version of the GitLab Enterprise server running on the `host_uri`.
        # Corresponds to the JSON property `serverVersion`
        # @return [String]
        attr_accessor :server_version
      
        # ServiceDirectoryConfig represents Service Directory configuration for a
        # connection.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # SSL certificate to use for requests to GitLab Enterprise.
        # Corresponds to the JSON property `sslCa`
        # @return [String]
        attr_accessor :ssl_ca
      
        # Required. Immutable. SecretManager resource containing the webhook secret of a
        # GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @read_authorizer_credential = args[:read_authorizer_credential] if args.key?(:read_authorizer_credential)
          @server_version = args[:server_version] if args.key?(:server_version)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @ssl_ca = args[:ssl_ca] if args.key?(:ssl_ca)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleDevtoolsCloudbuildV2OperationMetadata
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
      
      # ServiceDirectoryConfig represents Service Directory configuration for a
      # connection.
      class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Required. The Service Directory service name. Format: projects/`project`/
        # locations/`location`/namespaces/`namespace`/services/`service`.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # Describes stage and necessary actions to be taken by the user to complete the
      # installation. Used for GitHub and GitHub Enterprise based connections.
      class InstallationState
        include Google::Apis::Core::Hashable
      
        # Output only. Link to follow for next action. Empty string if the installation
        # is already complete.
        # Corresponds to the JSON property `actionUri`
        # @return [String]
        attr_accessor :action_uri
      
        # Output only. Message of what the user should do next to continue the
        # installation. Empty string if the installation is already complete.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. Current step of the installation process.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_uri = args[:action_uri] if args.key?(:action_uri)
          @message = args[:message] if args.key?(:message)
          @stage = args[:stage] if args.key?(:stage)
        end
      end
      
      # Message for response to listing Connections.
      class ListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Connections.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::CloudbuildV2::Connection>]
        attr_accessor :connections
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudbuildV2::Location>]
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
      
      # Message for response to listing Repositories.
      class ListRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Repositories.
        # Corresponds to the JSON property `repositories`
        # @return [Array<Google::Apis::CloudbuildV2::Repository>]
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
      
      # Represents an OAuth token of the account that authorized the Connection, and
      # associated metadata.
      class OAuthCredential
        include Google::Apis::Core::Hashable
      
        # A SecretManager resource containing the OAuth token that authorizes the Cloud
        # Build connection. Format: `projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `oauthTokenSecretVersion`
        # @return [String]
        attr_accessor :oauth_token_secret_version
      
        # Output only. The username associated to this token.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oauth_token_secret_version = args[:oauth_token_secret_version] if args.key?(:oauth_token_secret_version)
          @username = args[:username] if args.key?(:username)
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
        # @return [Google::Apis::CloudbuildV2::Status]
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
      
      # Param defined with name and value. PipelineRef can be used to refer to a
      # specific instance of a Pipeline.
      class Param
        include Google::Apis::Core::Hashable
      
        # Name of the parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameter value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudbuildV2::ParamValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # ParamSpec defines parameters needed beyond typed inputs (such as resources).
      # Parameter values are provided by users as inputs on a TaskRun or PipelineRun.
      class ParamSpec
        include Google::Apis::Core::Hashable
      
        # Parameter value.
        # Corresponds to the JSON property `default`
        # @return [Google::Apis::CloudbuildV2::ParamValue]
        attr_accessor :default
      
        # Description of the ParamSpec
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the ParamSpec
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of ParamSpec
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default = args[:default] if args.key?(:default)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parameter value.
      class ParamValue
        include Google::Apis::Core::Hashable
      
        # Value of the parameter if type is array.
        # Corresponds to the JSON property `arrayVal`
        # @return [Array<String>]
        attr_accessor :array_val
      
        # Value of the parameter if type is string.
        # Corresponds to the JSON property `stringVal`
        # @return [String]
        attr_accessor :string_val
      
        # Type of parameter.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_val = args[:array_val] if args.key?(:array_val)
          @string_val = args[:string_val] if args.key?(:string_val)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # PipelineRef can be used to refer to a specific instance of a Pipeline.
      class PipelineRef
        include Google::Apis::Core::Hashable
      
        # Name of the Pipeline.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Params contains the parameters used to identify the referenced Tekton resource.
        # Example entries might include "repo" or "path" but the set of params
        # ultimately depends on the chosen resolver.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::CloudbuildV2::Param>]
        attr_accessor :params
      
        # Resolver is the name of the resolver that should perform resolution of the
        # referenced Tekton resource.
        # Corresponds to the JSON property `resolver`
        # @return [String]
        attr_accessor :resolver
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @params = args[:params] if args.key?(:params)
          @resolver = args[:resolver] if args.key?(:resolver)
        end
      end
      
      # Message describing PipelineRun object
      class PipelineRun
        include Google::Apis::Core::Hashable
      
        # User annotations. See https://google.aip.dev/128#annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. List of TaskRun and Run names and PipelineTask names for children
        # of this PipelineRun.
        # Corresponds to the JSON property `childReferences`
        # @return [Array<Google::Apis::CloudbuildV2::ChildStatusReference>]
        attr_accessor :child_references
      
        # Output only. Time the pipeline completed.
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # Output only. Kubernetes Conditions convention for PipelineRun status and error.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2Condition>]
        attr_accessor :conditions
      
        # Output only. Time at which the request to create the `PipelineRun` was
        # received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Needed for declarative-friendly resources.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The `PipelineRun` name with format `projects/`project`/locations/`
        # location`/pipelineRuns/`pipeline_run``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Params is a list of parameter names and values.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::CloudbuildV2::Param>]
        attr_accessor :params
      
        # PipelineRef can be used to refer to a specific instance of a Pipeline.
        # Corresponds to the JSON property `pipelineRef`
        # @return [Google::Apis::CloudbuildV2::PipelineRef]
        attr_accessor :pipeline_ref
      
        # Pipelinerun status the user can provide. Used for cancellation.
        # Corresponds to the JSON property `pipelineRunStatus`
        # @return [String]
        attr_accessor :pipeline_run_status
      
        # PipelineSpec defines the desired state of Pipeline.
        # Corresponds to the JSON property `pipelineSpec`
        # @return [Google::Apis::CloudbuildV2::PipelineSpec]
        attr_accessor :pipeline_spec
      
        # PipelineSpec defines the desired state of Pipeline.
        # Corresponds to the JSON property `resolvedPipelineSpec`
        # @return [Google::Apis::CloudbuildV2::PipelineSpec]
        attr_accessor :resolved_pipeline_spec
      
        # Service account used in the Pipeline.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. List of tasks that were skipped due to when expressions
        # evaluating to false.
        # Corresponds to the JSON property `skippedTasks`
        # @return [Array<Google::Apis::CloudbuildV2::SkippedTask>]
        attr_accessor :skipped_tasks
      
        # Output only. Time the pipeline is actually started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # TimeoutFields allows granular specification of pipeline, task, and finally
        # timeouts
        # Corresponds to the JSON property `timeouts`
        # @return [Google::Apis::CloudbuildV2::TimeoutFields]
        attr_accessor :timeouts
      
        # Output only. A unique identifier for the `PipelineRun`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the request to update the `PipelineRun` was
        # received.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The WorkerPool used to run this PipelineRun.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        # Output only. The Workflow used to create this PipelineRun.
        # Corresponds to the JSON property `workflow`
        # @return [String]
        attr_accessor :workflow
      
        # Workspaces is a list of WorkspaceBindings from volumes to workspaces.
        # Corresponds to the JSON property `workspaces`
        # @return [Array<Google::Apis::CloudbuildV2::WorkspaceBinding>]
        attr_accessor :workspaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @child_references = args[:child_references] if args.key?(:child_references)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @params = args[:params] if args.key?(:params)
          @pipeline_ref = args[:pipeline_ref] if args.key?(:pipeline_ref)
          @pipeline_run_status = args[:pipeline_run_status] if args.key?(:pipeline_run_status)
          @pipeline_spec = args[:pipeline_spec] if args.key?(:pipeline_spec)
          @resolved_pipeline_spec = args[:resolved_pipeline_spec] if args.key?(:resolved_pipeline_spec)
          @service_account = args[:service_account] if args.key?(:service_account)
          @skipped_tasks = args[:skipped_tasks] if args.key?(:skipped_tasks)
          @start_time = args[:start_time] if args.key?(:start_time)
          @timeouts = args[:timeouts] if args.key?(:timeouts)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
          @workflow = args[:workflow] if args.key?(:workflow)
          @workspaces = args[:workspaces] if args.key?(:workspaces)
        end
      end
      
      # PipelineSpec defines the desired state of Pipeline.
      class PipelineSpec
        include Google::Apis::Core::Hashable
      
        # List of Tasks that execute just before leaving the Pipeline i.e. either after
        # all Tasks are finished executing successfully or after a failure which would
        # result in ending the Pipeline.
        # Corresponds to the JSON property `finallyTasks`
        # @return [Array<Google::Apis::CloudbuildV2::PipelineTask>]
        attr_accessor :finally_tasks
      
        # Output only. auto-generated yaml that is output only for display purpose for
        # workflows using pipeline_spec, used by UI/gcloud cli for Workflows.
        # Corresponds to the JSON property `generatedYaml`
        # @return [String]
        attr_accessor :generated_yaml
      
        # List of parameters.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::CloudbuildV2::ParamSpec>]
        attr_accessor :params
      
        # List of Tasks that execute when this Pipeline is run.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::CloudbuildV2::PipelineTask>]
        attr_accessor :tasks
      
        # Workspaces declares a set of named workspaces that are expected to be provided
        # by a PipelineRun.
        # Corresponds to the JSON property `workspaces`
        # @return [Array<Google::Apis::CloudbuildV2::PipelineWorkspaceDeclaration>]
        attr_accessor :workspaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finally_tasks = args[:finally_tasks] if args.key?(:finally_tasks)
          @generated_yaml = args[:generated_yaml] if args.key?(:generated_yaml)
          @params = args[:params] if args.key?(:params)
          @tasks = args[:tasks] if args.key?(:tasks)
          @workspaces = args[:workspaces] if args.key?(:workspaces)
        end
      end
      
      # PipelineTask defines a task in a Pipeline.
      class PipelineTask
        include Google::Apis::Core::Hashable
      
        # Name of the task.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Params is a list of parameter names and values.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::CloudbuildV2::Param>]
        attr_accessor :params
      
        # Retries represents how many times this task should be retried in case of task
        # failure.
        # Corresponds to the JSON property `retries`
        # @return [Fixnum]
        attr_accessor :retries
      
        # RunAfter is the list of PipelineTask names that should be executed before this
        # Task executes. (Used to force a specific ordering in graph execution.)
        # Corresponds to the JSON property `runAfter`
        # @return [Array<String>]
        attr_accessor :run_after
      
        # TaskRef can be used to refer to a specific instance of a task. PipelineRef can
        # be used to refer to a specific instance of a Pipeline.
        # Corresponds to the JSON property `taskRef`
        # @return [Google::Apis::CloudbuildV2::TaskRef]
        attr_accessor :task_ref
      
        # EmbeddedTask defines a Task that is embedded in a Pipeline.
        # Corresponds to the JSON property `taskSpec`
        # @return [Google::Apis::CloudbuildV2::EmbeddedTask]
        attr_accessor :task_spec
      
        # Time after which the TaskRun times out. Defaults to 1 hour. Specified TaskRun
        # timeout should be less than 24h.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Conditions that need to be true for the task to run.
        # Corresponds to the JSON property `whenExpressions`
        # @return [Array<Google::Apis::CloudbuildV2::WhenExpression>]
        attr_accessor :when_expressions
      
        # Workspaces maps workspaces from the pipeline spec to the workspaces declared
        # in the Task.
        # Corresponds to the JSON property `workspaces`
        # @return [Array<Google::Apis::CloudbuildV2::WorkspacePipelineTaskBinding>]
        attr_accessor :workspaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @params = args[:params] if args.key?(:params)
          @retries = args[:retries] if args.key?(:retries)
          @run_after = args[:run_after] if args.key?(:run_after)
          @task_ref = args[:task_ref] if args.key?(:task_ref)
          @task_spec = args[:task_spec] if args.key?(:task_spec)
          @timeout = args[:timeout] if args.key?(:timeout)
          @when_expressions = args[:when_expressions] if args.key?(:when_expressions)
          @workspaces = args[:workspaces] if args.key?(:workspaces)
        end
      end
      
      # Workspaces declares a set of named workspaces that are expected to be provided
      # by a PipelineRun.
      class PipelineWorkspaceDeclaration
        include Google::Apis::Core::Hashable
      
        # Description is a human readable string describing how the workspace will be
        # used in the Pipeline.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name is the name of a workspace to be provided by a PipelineRun.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional marks a Workspace as not being required in PipelineRuns. By default
        # this field is false and so declared workspaces are required.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
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
        # @return [Array<Google::Apis::CloudbuildV2::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudbuildV2::Binding>]
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
      
      # Probe describes a health check to be performed against a container to
      # determine whether it is alive or ready to receive traffic.
      class Probe
        include Google::Apis::Core::Hashable
      
        # ExecAction describes a "run in container" action.
        # Corresponds to the JSON property `exec`
        # @return [Google::Apis::CloudbuildV2::ExecAction]
        attr_accessor :exec
      
        # Optional. How often (in seconds) to perform the probe. Default to 10 seconds.
        # Minimum value is 1. +optional
        # Corresponds to the JSON property `periodSeconds`
        # @return [Fixnum]
        attr_accessor :period_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exec = args[:exec] if args.key?(:exec)
          @period_seconds = args[:period_seconds] if args.key?(:period_seconds)
        end
      end
      
      # PropertySpec holds information about a property in an object.
      class PropertySpec
        include Google::Apis::Core::Hashable
      
        # A type for the object.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A repository associated to a parent connection.
      class Repository
        include Google::Apis::Core::Hashable
      
        # Allows clients to store small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Server assigned timestamp for when the connection was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Immutable. Resource name of the repository, in the format `projects/*/
        # locations/*/connections/*/repositories/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Git Clone HTTPS URI.
        # Corresponds to the JSON property `remoteUri`
        # @return [String]
        attr_accessor :remote_uri
      
        # Output only. Server assigned timestamp for when the connection was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. External ID of the webhook created for the repository.
        # Corresponds to the JSON property `webhookId`
        # @return [String]
        attr_accessor :webhook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @remote_uri = args[:remote_uri] if args.key?(:remote_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
          @webhook_id = args[:webhook_id] if args.key?(:webhook_id)
        end
      end
      
      # Represents the custom metadata of the RunWorkflow long-running operation.
      class RunWorkflowCustomOperationMetadata
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
      
        # Output only. ID of the pipeline run created by RunWorkflow.
        # Corresponds to the JSON property `pipelineRunId`
        # @return [String]
        attr_accessor :pipeline_run_id
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
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
          @pipeline_run_id = args[:pipeline_run_id] if args.key?(:pipeline_run_id)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Secret Volume Source.
      class SecretVolumeSource
        include Google::Apis::Core::Hashable
      
        # Name of the secret referenced by the WorkspaceBinding.
        # Corresponds to the JSON property `secretName`
        # @return [String]
        attr_accessor :secret_name
      
        # Output only. Resource name of the SecretVersion. In format: projects/*/secrets/
        # */versions/*
        # Corresponds to the JSON property `secretVersion`
        # @return [String]
        attr_accessor :secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_name = args[:secret_name] if args.key?(:secret_name)
          @secret_version = args[:secret_version] if args.key?(:secret_version)
        end
      end
      
      # Security options the container should be run with.
      class SecurityContext
        include Google::Apis::Core::Hashable
      
        # Optional. AllowPrivilegeEscalation controls whether a process can gain more
        # privileges than its parent process. This bool directly controls if the
        # no_new_privs flag will be set on the container process.
        # AllowPrivilegeEscalation is true always when the container is: 1) run as
        # Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.
        # os.name is windows. +optional
        # Corresponds to the JSON property `allowPrivilegeEscalation`
        # @return [Boolean]
        attr_accessor :allow_privilege_escalation
        alias_method :allow_privilege_escalation?, :allow_privilege_escalation
      
        # Capabilities adds and removes POSIX capabilities from running containers.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::CloudbuildV2::Capabilities]
        attr_accessor :capabilities
      
        # Run container in privileged mode.
        # Corresponds to the JSON property `privileged`
        # @return [Boolean]
        attr_accessor :privileged
        alias_method :privileged?, :privileged
      
        # Optional. The GID to run the entrypoint of the container process. Uses runtime
        # default if unset. May also be set in PodSecurityContext. If set in both
        # SecurityContext and PodSecurityContext, the value specified in SecurityContext
        # takes precedence. Note that this field cannot be set when spec.os.name is
        # windows. +optional
        # Corresponds to the JSON property `runAsGroup`
        # @return [Fixnum]
        attr_accessor :run_as_group
      
        # Optional. Indicates that the container must run as a non-root user. If true,
        # the Kubelet will validate the image at runtime to ensure that it does not run
        # as UID 0 (root) and fail to start the container if it does. If unset or false,
        # no such validation will be performed. May also be set in PodSecurityContext.
        # If set in both SecurityContext and PodSecurityContext, the value specified in
        # SecurityContext takes precedence. +optional
        # Corresponds to the JSON property `runAsNonRoot`
        # @return [Boolean]
        attr_accessor :run_as_non_root
        alias_method :run_as_non_root?, :run_as_non_root
      
        # Optional. The UID to run the entrypoint of the container process. Defaults to
        # user specified in image metadata if unspecified. May also be set in
        # PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the
        # value specified in SecurityContext takes precedence. Note that this field
        # cannot be set when spec.os.name is windows. +optional
        # Corresponds to the JSON property `runAsUser`
        # @return [Fixnum]
        attr_accessor :run_as_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_privilege_escalation = args[:allow_privilege_escalation] if args.key?(:allow_privilege_escalation)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @privileged = args[:privileged] if args.key?(:privileged)
          @run_as_group = args[:run_as_group] if args.key?(:run_as_group)
          @run_as_non_root = args[:run_as_non_root] if args.key?(:run_as_non_root)
          @run_as_user = args[:run_as_user] if args.key?(:run_as_user)
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
        # @return [Google::Apis::CloudbuildV2::Policy]
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
      
      # Sidecars run alongside the Task's step containers.
      class Sidecar
        include Google::Apis::Core::Hashable
      
        # Arguments to the entrypoint.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Entrypoint array.
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # List of environment variables to set in the container.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::CloudbuildV2::EnvVar>]
        attr_accessor :env
      
        # Docker image name.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Name of the Sidecar.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Probe describes a health check to be performed against a container to
        # determine whether it is alive or ready to receive traffic.
        # Corresponds to the JSON property `readinessProbe`
        # @return [Google::Apis::CloudbuildV2::Probe]
        attr_accessor :readiness_probe
      
        # The contents of an executable file to execute.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # Security options the container should be run with.
        # Corresponds to the JSON property `securityContext`
        # @return [Google::Apis::CloudbuildV2::SecurityContext]
        attr_accessor :security_context
      
        # Pod volumes to mount into the container's filesystem.
        # Corresponds to the JSON property `volumeMounts`
        # @return [Array<Google::Apis::CloudbuildV2::VolumeMount>]
        attr_accessor :volume_mounts
      
        # Container's working directory.
        # Corresponds to the JSON property `workingDir`
        # @return [String]
        attr_accessor :working_dir
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @command = args[:command] if args.key?(:command)
          @env = args[:env] if args.key?(:env)
          @image = args[:image] if args.key?(:image)
          @name = args[:name] if args.key?(:name)
          @readiness_probe = args[:readiness_probe] if args.key?(:readiness_probe)
          @script = args[:script] if args.key?(:script)
          @security_context = args[:security_context] if args.key?(:security_context)
          @volume_mounts = args[:volume_mounts] if args.key?(:volume_mounts)
          @working_dir = args[:working_dir] if args.key?(:working_dir)
        end
      end
      
      # SkippedTask is used to describe the Tasks that were skipped due to their When
      # Expressions evaluating to False.
      class SkippedTask
        include Google::Apis::Core::Hashable
      
        # Name is the Pipeline Task name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Reason is the cause of the PipelineTask being skipped.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # WhenExpressions is the list of checks guarding the execution of the
        # PipelineTask
        # Corresponds to the JSON property `whenExpressions`
        # @return [Array<Google::Apis::CloudbuildV2::WhenExpression>]
        attr_accessor :when_expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reason = args[:reason] if args.key?(:reason)
          @when_expressions = args[:when_expressions] if args.key?(:when_expressions)
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
      
      # Step embeds the Container type, which allows it to include fields not provided
      # by Container.
      class Step
        include Google::Apis::Core::Hashable
      
        # Arguments to the entrypoint.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Entrypoint array.
        # Corresponds to the JSON property `command`
        # @return [Array<String>]
        attr_accessor :command
      
        # List of environment variables to set in the container.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::CloudbuildV2::EnvVar>]
        attr_accessor :env
      
        # Docker image name.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Name of the container specified as a DNS_LABEL.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The contents of an executable file to execute.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # Security options the container should be run with.
        # Corresponds to the JSON property `securityContext`
        # @return [Google::Apis::CloudbuildV2::SecurityContext]
        attr_accessor :security_context
      
        # Time after which the Step times out. Defaults to never.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Pod volumes to mount into the container's filesystem.
        # Corresponds to the JSON property `volumeMounts`
        # @return [Array<Google::Apis::CloudbuildV2::VolumeMount>]
        attr_accessor :volume_mounts
      
        # Container's working directory.
        # Corresponds to the JSON property `workingDir`
        # @return [String]
        attr_accessor :working_dir
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @command = args[:command] if args.key?(:command)
          @env = args[:env] if args.key?(:env)
          @image = args[:image] if args.key?(:image)
          @name = args[:name] if args.key?(:name)
          @script = args[:script] if args.key?(:script)
          @security_context = args[:security_context] if args.key?(:security_context)
          @timeout = args[:timeout] if args.key?(:timeout)
          @volume_mounts = args[:volume_mounts] if args.key?(:volume_mounts)
          @working_dir = args[:working_dir] if args.key?(:working_dir)
        end
      end
      
      # StepTemplate can be used as the basis for all step containers within the Task,
      # so that the steps inherit settings on the base container.
      class StepTemplate
        include Google::Apis::Core::Hashable
      
        # Optional. List of environment variables to set in the Step. Cannot be updated.
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::CloudbuildV2::EnvVar>]
        attr_accessor :env
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env = args[:env] if args.key?(:env)
        end
      end
      
      # TaskRef can be used to refer to a specific instance of a task. PipelineRef can
      # be used to refer to a specific instance of a Pipeline.
      class TaskRef
        include Google::Apis::Core::Hashable
      
        # Name of the task.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Params contains the parameters used to identify the referenced Tekton resource.
        # Example entries might include "repo" or "path" but the set of params
        # ultimately depends on the chosen resolver.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::CloudbuildV2::Param>]
        attr_accessor :params
      
        # Resolver is the name of the resolver that should perform resolution of the
        # referenced Tekton resource.
        # Corresponds to the JSON property `resolver`
        # @return [String]
        attr_accessor :resolver
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @params = args[:params] if args.key?(:params)
          @resolver = args[:resolver] if args.key?(:resolver)
        end
      end
      
      # TaskResult is used to describe the results of a task.
      class TaskResult
        include Google::Apis::Core::Hashable
      
        # Description of the result.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the result.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # When type is OBJECT, this map holds the names of fields inside that object
        # along with the type of data each field holds.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::CloudbuildV2::PropertySpec>]
        attr_accessor :properties
      
        # The type of data that the result holds.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # TaskSpec contains the Spec to instantiate a TaskRun.
      class TaskSpec
        include Google::Apis::Core::Hashable
      
        # Description of the task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Sidecars that run alongside the Task’s step containers that should be added to
        # this Task.
        # Corresponds to the JSON property `managedSidecars`
        # @return [Array<String>]
        attr_accessor :managed_sidecars
      
        # List of parameters.
        # Corresponds to the JSON property `params`
        # @return [Array<Google::Apis::CloudbuildV2::ParamSpec>]
        attr_accessor :params
      
        # Values that this Task can output.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudbuildV2::TaskResult>]
        attr_accessor :results
      
        # Sidecars that run alongside the Task's step containers.
        # Corresponds to the JSON property `sidecars`
        # @return [Array<Google::Apis::CloudbuildV2::Sidecar>]
        attr_accessor :sidecars
      
        # Optional. StepTemplate can be used as the basis for all step containers within
        # the Task, so that the steps inherit settings on the base container.
        # Corresponds to the JSON property `stepTemplate`
        # @return [Array<Google::Apis::CloudbuildV2::StepTemplate>]
        attr_accessor :step_template
      
        # Steps of the task.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::CloudbuildV2::Step>]
        attr_accessor :steps
      
        # A collection of volumes that are available to mount into steps.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::CloudbuildV2::VolumeSource>]
        attr_accessor :volumes
      
        # The volumes that this Task requires.
        # Corresponds to the JSON property `workspaces`
        # @return [Array<Google::Apis::CloudbuildV2::WorkspaceDeclaration>]
        attr_accessor :workspaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @managed_sidecars = args[:managed_sidecars] if args.key?(:managed_sidecars)
          @params = args[:params] if args.key?(:params)
          @results = args[:results] if args.key?(:results)
          @sidecars = args[:sidecars] if args.key?(:sidecars)
          @step_template = args[:step_template] if args.key?(:step_template)
          @steps = args[:steps] if args.key?(:steps)
          @volumes = args[:volumes] if args.key?(:volumes)
          @workspaces = args[:workspaces] if args.key?(:workspaces)
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
      
      # TimeoutFields allows granular specification of pipeline, task, and finally
      # timeouts
      class TimeoutFields
        include Google::Apis::Core::Hashable
      
        # Finally sets the maximum allowed duration of this pipeline's finally
        # Corresponds to the JSON property `finally`
        # @return [String]
        attr_accessor :finally
      
        # Pipeline sets the maximum allowed duration for execution of the entire
        # pipeline. The sum of individual timeouts for tasks and finally must not exceed
        # this value.
        # Corresponds to the JSON property `pipeline`
        # @return [String]
        attr_accessor :pipeline
      
        # Tasks sets the maximum allowed duration of this pipeline's tasks
        # Corresponds to the JSON property `tasks`
        # @return [String]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finally = args[:finally] if args.key?(:finally)
          @pipeline = args[:pipeline] if args.key?(:pipeline)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # Represents a personal access token that authorized the Connection, and
      # associated metadata.
      class UserCredential
        include Google::Apis::Core::Hashable
      
        # Required. A SecretManager resource containing the user token that authorizes
        # the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `userTokenSecretVersion`
        # @return [String]
        attr_accessor :user_token_secret_version
      
        # Output only. The username associated to this token.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_token_secret_version = args[:user_token_secret_version] if args.key?(:user_token_secret_version)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # VolumeClaim is a user's request for a volume.
      class VolumeClaim
        include Google::Apis::Core::Hashable
      
        # Volume size, e.g. 1gb.
        # Corresponds to the JSON property `storage`
        # @return [String]
        attr_accessor :storage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage = args[:storage] if args.key?(:storage)
        end
      end
      
      # Pod volumes to mount into the container's filesystem.
      class VolumeMount
        include Google::Apis::Core::Hashable
      
        # Path within the container at which the volume should be mounted. Must not
        # contain ':'.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Name of the volume.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Mounted read-only if true, read-write otherwise (false or unspecified).
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Path within the volume from which the container's volume should be mounted.
        # Defaults to "" (volume's root).
        # Corresponds to the JSON property `subPath`
        # @return [String]
        attr_accessor :sub_path
      
        # Expanded path within the volume from which the container's volume should be
        # mounted. Behaves similarly to SubPath but environment variable references $(
        # VAR_NAME) are expanded using the container's environment. Defaults to "" (
        # volume's root).
        # Corresponds to the JSON property `subPathExpr`
        # @return [String]
        attr_accessor :sub_path_expr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
          @name = args[:name] if args.key?(:name)
          @read_only = args[:read_only] if args.key?(:read_only)
          @sub_path = args[:sub_path] if args.key?(:sub_path)
          @sub_path_expr = args[:sub_path_expr] if args.key?(:sub_path_expr)
        end
      end
      
      # Volumes available to mount.
      class VolumeSource
        include Google::Apis::Core::Hashable
      
        # Represents an empty Volume source.
        # Corresponds to the JSON property `emptyDir`
        # @return [Google::Apis::CloudbuildV2::EmptyDirVolumeSource]
        attr_accessor :empty_dir
      
        # Name of the Volume. Must be a DNS_LABEL and unique within the pod. More info:
        # https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @empty_dir = args[:empty_dir] if args.key?(:empty_dir)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Conditions that need to be true for the task to run.
      class WhenExpression
        include Google::Apis::Core::Hashable
      
        # Operator that represents an Input's relationship to the values
        # Corresponds to the JSON property `expressionOperator`
        # @return [String]
        attr_accessor :expression_operator
      
        # Input is the string for guard checking which can be a static input or an
        # output from a parent Task.
        # Corresponds to the JSON property `input`
        # @return [String]
        attr_accessor :input
      
        # Values is an array of strings, which is compared against the input, for guard
        # checking.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression_operator = args[:expression_operator] if args.key?(:expression_operator)
          @input = args[:input] if args.key?(:input)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # WorkspaceBinding maps a workspace to a Volume. PipelineRef can be used to
      # refer to a specific instance of a Pipeline.
      class WorkspaceBinding
        include Google::Apis::Core::Hashable
      
        # Name of the workspace.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Secret Volume Source.
        # Corresponds to the JSON property `secret`
        # @return [Google::Apis::CloudbuildV2::SecretVolumeSource]
        attr_accessor :secret
      
        # VolumeClaim is a user's request for a volume.
        # Corresponds to the JSON property `volumeClaim`
        # @return [Google::Apis::CloudbuildV2::VolumeClaim]
        attr_accessor :volume_claim
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @secret = args[:secret] if args.key?(:secret)
          @volume_claim = args[:volume_claim] if args.key?(:volume_claim)
        end
      end
      
      # WorkspaceDeclaration is a declaration of a volume that a Task requires.
      class WorkspaceDeclaration
        include Google::Apis::Core::Hashable
      
        # Description is a human readable description of this volume.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # MountPath overrides the directory that the volume will be made available at.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Name is the name by which you can bind the volume at runtime.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Optional marks a Workspace as not being required in TaskRuns. By
        # default this field is false and so declared workspaces are required.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        # ReadOnly dictates whether a mounted volume is writable.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
          @read_only = args[:read_only] if args.key?(:read_only)
        end
      end
      
      # WorkspacePipelineTaskBinding maps workspaces from the PipelineSpec to the
      # workspaces declared in the Task.
      class WorkspacePipelineTaskBinding
        include Google::Apis::Core::Hashable
      
        # Name of the workspace as declared by the task.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the workspace declared by the pipeline.
        # Corresponds to the JSON property `workspace`
        # @return [String]
        attr_accessor :workspace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @workspace = args[:workspace] if args.key?(:workspace)
        end
      end
    end
  end
end
