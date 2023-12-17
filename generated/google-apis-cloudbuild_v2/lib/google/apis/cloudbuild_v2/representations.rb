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
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateRepositoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Capabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChildStatusReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateRepositoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmbeddedTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmptyDirVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitRefsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchLinkableRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadWriteTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadWriteTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV2Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV2GitLabConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
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
      
      class OAuthCredential
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
      
      class Param
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParamSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParamValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineWorkspaceDeclaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Probe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunWorkflowCustomOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sidecar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkippedTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Step
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StepTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskSpec
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
      
      class TimeoutFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeClaim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeMount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WhenExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkspaceBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkspaceDeclaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkspacePipelineTaskBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudbuildV2::AuditLogConfig, decorator: Google::Apis::CloudbuildV2::AuditLogConfig::Representation
      
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
      
      class BatchCreateRepositoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::CloudbuildV2::CreateRepositoryRequest, decorator: Google::Apis::CloudbuildV2::CreateRepositoryRequest::Representation
      
        end
      end
      
      class BatchCreateRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :repositories, as: 'repositories', class: Google::Apis::CloudbuildV2::Repository, decorator: Google::Apis::CloudbuildV2::Repository::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudbuildV2::Expr, decorator: Google::Apis::CloudbuildV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Capabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add, as: 'add'
          collection :drop, as: 'drop'
        end
      end
      
      class ChildStatusReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :pipeline_task_name, as: 'pipelineTaskName'
          property :type, as: 'type'
          collection :when_expressions, as: 'whenExpressions', class: Google::Apis::CloudbuildV2::WhenExpression, decorator: Google::Apis::CloudbuildV2::WhenExpression::Representation
      
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :disabled, as: 'disabled'
          property :etag, as: 'etag'
          property :github_config, as: 'githubConfig', class: Google::Apis::CloudbuildV2::GitHubConfig, decorator: Google::Apis::CloudbuildV2::GitHubConfig::Representation
      
          property :github_enterprise_config, as: 'githubEnterpriseConfig', class: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig, decorator: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig::Representation
      
          property :gitlab_config, as: 'gitlabConfig', class: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2GitLabConfig, decorator: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2GitLabConfig::Representation
      
          property :installation_state, as: 'installationState', class: Google::Apis::CloudbuildV2::InstallationState, decorator: Google::Apis::CloudbuildV2::InstallationState::Representation
      
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CreateRepositoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :repository, as: 'repository', class: Google::Apis::CloudbuildV2::Repository, decorator: Google::Apis::CloudbuildV2::Repository::Representation
      
          property :repository_id, as: 'repositoryId'
        end
      end
      
      class EmbeddedTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :task_spec, as: 'taskSpec', class: Google::Apis::CloudbuildV2::TaskSpec, decorator: Google::Apis::CloudbuildV2::TaskSpec::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EmptyDirVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class ExecAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :command, as: 'command'
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
      
      class FetchGitRefsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :ref_names, as: 'refNames'
        end
      end
      
      class FetchLinkableRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::CloudbuildV2::Repository, decorator: Google::Apis::CloudbuildV2::Repository::Representation
      
        end
      end
      
      class FetchReadTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReadTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :token, as: 'token'
        end
      end
      
      class FetchReadWriteTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReadWriteTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :token, as: 'token'
        end
      end
      
      class GitHubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_installation_id, :numeric_string => true, as: 'appInstallationId'
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::CloudbuildV2::OAuthCredential, decorator: Google::Apis::CloudbuildV2::OAuthCredential::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV2Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :severity, as: 'severity'
          property :status, as: 'status'
          property :type, as: 'type'
        end
      end
      
      class GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey'
          property :app_id, :numeric_string => true, as: 'appId'
          property :app_installation_id, :numeric_string => true, as: 'appInstallationId'
          property :app_slug, as: 'appSlug'
          property :host_uri, as: 'hostUri'
          property :private_key_secret_version, as: 'privateKeySecretVersion'
          property :server_version, as: 'serverVersion'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig, decorator: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig::Representation
      
          property :ssl_ca, as: 'sslCa'
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
        end
      end
      
      class GoogleDevtoolsCloudbuildV2GitLabConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::CloudbuildV2::UserCredential, decorator: Google::Apis::CloudbuildV2::UserCredential::Representation
      
          property :host_uri, as: 'hostUri'
          property :read_authorizer_credential, as: 'readAuthorizerCredential', class: Google::Apis::CloudbuildV2::UserCredential, decorator: Google::Apis::CloudbuildV2::UserCredential::Representation
      
          property :server_version, as: 'serverVersion'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig, decorator: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig::Representation
      
          property :ssl_ca, as: 'sslCa'
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
        end
      end
      
      class GoogleDevtoolsCloudbuildV2OperationMetadata
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
      
      class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class InstallationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_uri, as: 'actionUri'
          property :message, as: 'message'
          property :stage, as: 'stage'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::CloudbuildV2::Connection, decorator: Google::Apis::CloudbuildV2::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudbuildV2::Location, decorator: Google::Apis::CloudbuildV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::CloudbuildV2::Repository, decorator: Google::Apis::CloudbuildV2::Repository::Representation
      
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
      
      class OAuthCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth_token_secret_version, as: 'oauthTokenSecretVersion'
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudbuildV2::Status, decorator: Google::Apis::CloudbuildV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class Param
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::CloudbuildV2::ParamValue, decorator: Google::Apis::CloudbuildV2::ParamValue::Representation
      
        end
      end
      
      class ParamSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default', class: Google::Apis::CloudbuildV2::ParamValue, decorator: Google::Apis::CloudbuildV2::ParamValue::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class ParamValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :array_val, as: 'arrayVal'
          property :string_val, as: 'stringVal'
          property :type, as: 'type'
        end
      end
      
      class PipelineRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :params, as: 'params', class: Google::Apis::CloudbuildV2::Param, decorator: Google::Apis::CloudbuildV2::Param::Representation
      
          property :resolver, as: 'resolver'
        end
      end
      
      class PipelineRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :child_references, as: 'childReferences', class: Google::Apis::CloudbuildV2::ChildStatusReference, decorator: Google::Apis::CloudbuildV2::ChildStatusReference::Representation
      
          property :completion_time, as: 'completionTime'
          collection :conditions, as: 'conditions', class: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2Condition, decorator: Google::Apis::CloudbuildV2::GoogleDevtoolsCloudbuildV2Condition::Representation
      
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :finally_start_time, as: 'finallyStartTime'
          property :name, as: 'name'
          collection :params, as: 'params', class: Google::Apis::CloudbuildV2::Param, decorator: Google::Apis::CloudbuildV2::Param::Representation
      
          property :pipeline_ref, as: 'pipelineRef', class: Google::Apis::CloudbuildV2::PipelineRef, decorator: Google::Apis::CloudbuildV2::PipelineRef::Representation
      
          property :pipeline_run_status, as: 'pipelineRunStatus'
          property :pipeline_spec, as: 'pipelineSpec', class: Google::Apis::CloudbuildV2::PipelineSpec, decorator: Google::Apis::CloudbuildV2::PipelineSpec::Representation
      
          property :resolved_pipeline_spec, as: 'resolvedPipelineSpec', class: Google::Apis::CloudbuildV2::PipelineSpec, decorator: Google::Apis::CloudbuildV2::PipelineSpec::Representation
      
          property :service_account, as: 'serviceAccount'
          collection :skipped_tasks, as: 'skippedTasks', class: Google::Apis::CloudbuildV2::SkippedTask, decorator: Google::Apis::CloudbuildV2::SkippedTask::Representation
      
          property :start_time, as: 'startTime'
          property :timeouts, as: 'timeouts', class: Google::Apis::CloudbuildV2::TimeoutFields, decorator: Google::Apis::CloudbuildV2::TimeoutFields::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :worker_pool, as: 'workerPool'
          property :workflow, as: 'workflow'
          collection :workspaces, as: 'workspaces', class: Google::Apis::CloudbuildV2::WorkspaceBinding, decorator: Google::Apis::CloudbuildV2::WorkspaceBinding::Representation
      
        end
      end
      
      class PipelineSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :finally_tasks, as: 'finallyTasks', class: Google::Apis::CloudbuildV2::PipelineTask, decorator: Google::Apis::CloudbuildV2::PipelineTask::Representation
      
          property :generated_yaml, as: 'generatedYaml'
          collection :params, as: 'params', class: Google::Apis::CloudbuildV2::ParamSpec, decorator: Google::Apis::CloudbuildV2::ParamSpec::Representation
      
          collection :tasks, as: 'tasks', class: Google::Apis::CloudbuildV2::PipelineTask, decorator: Google::Apis::CloudbuildV2::PipelineTask::Representation
      
          collection :workspaces, as: 'workspaces', class: Google::Apis::CloudbuildV2::PipelineWorkspaceDeclaration, decorator: Google::Apis::CloudbuildV2::PipelineWorkspaceDeclaration::Representation
      
        end
      end
      
      class PipelineTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :params, as: 'params', class: Google::Apis::CloudbuildV2::Param, decorator: Google::Apis::CloudbuildV2::Param::Representation
      
          property :retries, as: 'retries'
          collection :run_after, as: 'runAfter'
          property :task_ref, as: 'taskRef', class: Google::Apis::CloudbuildV2::TaskRef, decorator: Google::Apis::CloudbuildV2::TaskRef::Representation
      
          property :task_spec, as: 'taskSpec', class: Google::Apis::CloudbuildV2::EmbeddedTask, decorator: Google::Apis::CloudbuildV2::EmbeddedTask::Representation
      
          property :timeout, as: 'timeout'
          collection :when_expressions, as: 'whenExpressions', class: Google::Apis::CloudbuildV2::WhenExpression, decorator: Google::Apis::CloudbuildV2::WhenExpression::Representation
      
          collection :workspaces, as: 'workspaces', class: Google::Apis::CloudbuildV2::WorkspacePipelineTaskBinding, decorator: Google::Apis::CloudbuildV2::WorkspacePipelineTaskBinding::Representation
      
        end
      end
      
      class PipelineWorkspaceDeclaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudbuildV2::AuditConfig, decorator: Google::Apis::CloudbuildV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudbuildV2::Binding, decorator: Google::Apis::CloudbuildV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Probe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::CloudbuildV2::ExecAction, decorator: Google::Apis::CloudbuildV2::ExecAction::Representation
      
          property :period_seconds, as: 'periodSeconds'
        end
      end
      
      class PropertySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Repository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :remote_uri, as: 'remoteUri'
          property :update_time, as: 'updateTime'
          property :webhook_id, as: 'webhookId'
        end
      end
      
      class RunWorkflowCustomOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :pipeline_run_id, as: 'pipelineRunId'
          property :requested_cancellation, as: 'requestedCancellation'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class SecretVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_name, as: 'secretName'
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class SecurityContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_privilege_escalation, as: 'allowPrivilegeEscalation'
          property :capabilities, as: 'capabilities', class: Google::Apis::CloudbuildV2::Capabilities, decorator: Google::Apis::CloudbuildV2::Capabilities::Representation
      
          property :privileged, as: 'privileged'
          property :run_as_group, :numeric_string => true, as: 'runAsGroup'
          property :run_as_non_root, as: 'runAsNonRoot'
          property :run_as_user, :numeric_string => true, as: 'runAsUser'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudbuildV2::Policy, decorator: Google::Apis::CloudbuildV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Sidecar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::CloudbuildV2::EnvVar, decorator: Google::Apis::CloudbuildV2::EnvVar::Representation
      
          property :image, as: 'image'
          property :name, as: 'name'
          property :readiness_probe, as: 'readinessProbe', class: Google::Apis::CloudbuildV2::Probe, decorator: Google::Apis::CloudbuildV2::Probe::Representation
      
          property :script, as: 'script'
          property :security_context, as: 'securityContext', class: Google::Apis::CloudbuildV2::SecurityContext, decorator: Google::Apis::CloudbuildV2::SecurityContext::Representation
      
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::CloudbuildV2::VolumeMount, decorator: Google::Apis::CloudbuildV2::VolumeMount::Representation
      
          property :working_dir, as: 'workingDir'
        end
      end
      
      class SkippedTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reason, as: 'reason'
          collection :when_expressions, as: 'whenExpressions', class: Google::Apis::CloudbuildV2::WhenExpression, decorator: Google::Apis::CloudbuildV2::WhenExpression::Representation
      
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
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::CloudbuildV2::EnvVar, decorator: Google::Apis::CloudbuildV2::EnvVar::Representation
      
          property :image, as: 'image'
          property :name, as: 'name'
          property :script, as: 'script'
          property :security_context, as: 'securityContext', class: Google::Apis::CloudbuildV2::SecurityContext, decorator: Google::Apis::CloudbuildV2::SecurityContext::Representation
      
          property :timeout, as: 'timeout'
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::CloudbuildV2::VolumeMount, decorator: Google::Apis::CloudbuildV2::VolumeMount::Representation
      
          property :working_dir, as: 'workingDir'
        end
      end
      
      class StepTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :env, as: 'env', class: Google::Apis::CloudbuildV2::EnvVar, decorator: Google::Apis::CloudbuildV2::EnvVar::Representation
      
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::CloudbuildV2::VolumeMount, decorator: Google::Apis::CloudbuildV2::VolumeMount::Representation
      
        end
      end
      
      class TaskRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :params, as: 'params', class: Google::Apis::CloudbuildV2::Param, decorator: Google::Apis::CloudbuildV2::Param::Representation
      
          property :resolver, as: 'resolver'
        end
      end
      
      class TaskResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          hash :properties, as: 'properties', class: Google::Apis::CloudbuildV2::PropertySpec, decorator: Google::Apis::CloudbuildV2::PropertySpec::Representation
      
          property :type, as: 'type'
        end
      end
      
      class TaskSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :managed_sidecars, as: 'managedSidecars'
          collection :params, as: 'params', class: Google::Apis::CloudbuildV2::ParamSpec, decorator: Google::Apis::CloudbuildV2::ParamSpec::Representation
      
          collection :results, as: 'results', class: Google::Apis::CloudbuildV2::TaskResult, decorator: Google::Apis::CloudbuildV2::TaskResult::Representation
      
          collection :sidecars, as: 'sidecars', class: Google::Apis::CloudbuildV2::Sidecar, decorator: Google::Apis::CloudbuildV2::Sidecar::Representation
      
          property :step_template, as: 'stepTemplate', class: Google::Apis::CloudbuildV2::StepTemplate, decorator: Google::Apis::CloudbuildV2::StepTemplate::Representation
      
          collection :steps, as: 'steps', class: Google::Apis::CloudbuildV2::Step, decorator: Google::Apis::CloudbuildV2::Step::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::CloudbuildV2::VolumeSource, decorator: Google::Apis::CloudbuildV2::VolumeSource::Representation
      
          collection :workspaces, as: 'workspaces', class: Google::Apis::CloudbuildV2::WorkspaceDeclaration, decorator: Google::Apis::CloudbuildV2::WorkspaceDeclaration::Representation
      
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
      
      class TimeoutFields
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finally, as: 'finally'
          property :pipeline, as: 'pipeline'
          property :tasks, as: 'tasks'
        end
      end
      
      class UserCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_token_secret_version, as: 'userTokenSecretVersion'
          property :username, as: 'username'
        end
      end
      
      class VolumeClaim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage, as: 'storage'
        end
      end
      
      class VolumeMount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_path, as: 'mountPath'
          property :name, as: 'name'
          property :read_only, as: 'readOnly'
          property :sub_path, as: 'subPath'
          property :sub_path_expr, as: 'subPathExpr'
        end
      end
      
      class VolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :empty_dir, as: 'emptyDir', class: Google::Apis::CloudbuildV2::EmptyDirVolumeSource, decorator: Google::Apis::CloudbuildV2::EmptyDirVolumeSource::Representation
      
          property :name, as: 'name'
        end
      end
      
      class WhenExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression_operator, as: 'expressionOperator'
          property :input, as: 'input'
          collection :values, as: 'values'
        end
      end
      
      class WorkspaceBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :secret, as: 'secret', class: Google::Apis::CloudbuildV2::SecretVolumeSource, decorator: Google::Apis::CloudbuildV2::SecretVolumeSource::Representation
      
          property :sub_path, as: 'subPath'
          property :volume_claim, as: 'volumeClaim', class: Google::Apis::CloudbuildV2::VolumeClaim, decorator: Google::Apis::CloudbuildV2::VolumeClaim::Representation
      
        end
      end
      
      class WorkspaceDeclaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :mount_path, as: 'mountPath'
          property :name, as: 'name'
          property :optional, as: 'optional'
          property :read_only, as: 'readOnly'
        end
      end
      
      class WorkspacePipelineTaskBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sub_path, as: 'subPath'
          property :workspace, as: 'workspace'
        end
      end
    end
  end
end
