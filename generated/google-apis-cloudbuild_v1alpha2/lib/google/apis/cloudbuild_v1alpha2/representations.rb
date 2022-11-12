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
    module CloudbuildV1alpha2
      
      class ApprovalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApprovalResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketServerRepositoryId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildApproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBitbucketServerConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateGitHubEnterpriseConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateGitLabConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateWorkerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteBitbucketServerConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteGitHubEnterpriseConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteGitLabConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteWorkerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabRepositoryId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpDelivery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InlineSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkerPoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotifierConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotifierMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotifierSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotifierSecretRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotifierSpec
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
      
      class PoolOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessAppManifestCallbackOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Results
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunWorkflowCustomOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SmtpDelivery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretManagerSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlackDelivery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateBitbucketServerConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateGitHubEnterpriseConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateGitLabConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateWorkerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadedMavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadedPythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Warning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApprovalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_required, as: 'approvalRequired'
        end
      end
      
      class ApprovalResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_time, as: 'approvalTime'
          property :approver_account, as: 'approverAccount'
          property :comment, as: 'comment'
          property :decision, as: 'decision'
          property :url, as: 'url'
        end
      end
      
      class ArtifactObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          collection :paths, as: 'paths'
          property :timing, as: 'timing', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
        end
      end
      
      class ArtifactResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1alpha2::FileHashes, decorator: Google::Apis::CloudbuildV1alpha2::FileHashes::Representation
      
          property :location, as: 'location'
        end
      end
      
      class Artifacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images'
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::CloudbuildV1alpha2::MavenArtifact, decorator: Google::Apis::CloudbuildV1alpha2::MavenArtifact::Representation
      
          property :objects, as: 'objects', class: Google::Apis::CloudbuildV1alpha2::ArtifactObjects, decorator: Google::Apis::CloudbuildV1alpha2::ArtifactObjects::Representation
      
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::CloudbuildV1alpha2::PythonPackage, decorator: Google::Apis::CloudbuildV1alpha2::PythonPackage::Representation
      
        end
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bitbucket_server_connected_repositories, as: 'bitbucketServerConnectedRepositories', class: Google::Apis::CloudbuildV1alpha2::BitbucketServerConnectedRepository, decorator: Google::Apis::CloudbuildV1alpha2::BitbucketServerConnectedRepository::Representation
      
        end
      end
      
      class BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :config, as: 'config'
          property :create_time, as: 'createTime'
        end
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gitlab_connected_repositories, as: 'gitlabConnectedRepositories', class: Google::Apis::CloudbuildV1alpha2::GitLabConnectedRepository, decorator: Google::Apis::CloudbuildV1alpha2::GitLabConnectedRepository::Representation
      
        end
      end
      
      class BatchCreateGitLabConnectedRepositoriesResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :config, as: 'config'
          property :create_time, as: 'createTime'
        end
      end
      
      class BatchCreateRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :repositories, as: 'repositories', class: Google::Apis::CloudbuildV1alpha2::Repository, decorator: Google::Apis::CloudbuildV1alpha2::Repository::Representation
      
        end
      end
      
      class BitbucketServerConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :repo, as: 'repo', class: Google::Apis::CloudbuildV1alpha2::BitbucketServerRepositoryId, decorator: Google::Apis::CloudbuildV1alpha2::BitbucketServerRepositoryId::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudbuildV1alpha2::Status, decorator: Google::Apis::CloudbuildV1alpha2::Status::Representation
      
        end
      end
      
      class BitbucketServerRepositoryId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_key, as: 'projectKey'
          property :repo_slug, as: 'repoSlug'
          property :webhook_id, as: 'webhookId'
        end
      end
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval, as: 'approval', class: Google::Apis::CloudbuildV1alpha2::BuildApproval, decorator: Google::Apis::CloudbuildV1alpha2::BuildApproval::Representation
      
          property :artifacts, as: 'artifacts', class: Google::Apis::CloudbuildV1alpha2::Artifacts, decorator: Google::Apis::CloudbuildV1alpha2::Artifacts::Representation
      
          property :available_secrets, as: 'availableSecrets', class: Google::Apis::CloudbuildV1alpha2::Secrets, decorator: Google::Apis::CloudbuildV1alpha2::Secrets::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
          property :failure_info, as: 'failureInfo', class: Google::Apis::CloudbuildV1alpha2::FailureInfo, decorator: Google::Apis::CloudbuildV1alpha2::FailureInfo::Representation
      
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          collection :images, as: 'images'
          property :log_url, as: 'logUrl'
          property :logs_bucket, as: 'logsBucket'
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::CloudbuildV1alpha2::BuildOptions, decorator: Google::Apis::CloudbuildV1alpha2::BuildOptions::Representation
      
          property :project_id, as: 'projectId'
          property :queue_ttl, as: 'queueTtl'
          property :results, as: 'results', class: Google::Apis::CloudbuildV1alpha2::Results, decorator: Google::Apis::CloudbuildV1alpha2::Results::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::CloudbuildV1alpha2::Secret, decorator: Google::Apis::CloudbuildV1alpha2::Secret::Representation
      
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::CloudbuildV1alpha2::Source, decorator: Google::Apis::CloudbuildV1alpha2::Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::CloudbuildV1alpha2::SourceProvenance, decorator: Google::Apis::CloudbuildV1alpha2::SourceProvenance::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          collection :steps, as: 'steps', class: Google::Apis::CloudbuildV1alpha2::BuildStep, decorator: Google::Apis::CloudbuildV1alpha2::BuildStep::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :timeout, as: 'timeout'
          hash :timing, as: 'timing', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::CloudbuildV1alpha2::Warning, decorator: Google::Apis::CloudbuildV1alpha2::Warning::Representation
      
        end
      end
      
      class BuildApproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::CloudbuildV1alpha2::ApprovalConfig, decorator: Google::Apis::CloudbuildV1alpha2::ApprovalConfig::Representation
      
          property :result, as: 'result', class: Google::Apis::CloudbuildV1alpha2::ApprovalResult, decorator: Google::Apis::CloudbuildV1alpha2::ApprovalResult::Representation
      
          property :state, as: 'state'
        end
      end
      
      class BuildOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build', class: Google::Apis::CloudbuildV1alpha2::Build, decorator: Google::Apis::CloudbuildV1alpha2::Build::Representation
      
        end
      end
      
      class BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :dynamic_substitutions, as: 'dynamicSubstitutions'
          collection :env, as: 'env'
          property :log_streaming_option, as: 'logStreamingOption'
          property :logging, as: 'logging'
          property :machine_type, as: 'machineType'
          property :pool, as: 'pool', class: Google::Apis::CloudbuildV1alpha2::PoolOption, decorator: Google::Apis::CloudbuildV1alpha2::PoolOption::Representation
      
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :secret_env, as: 'secretEnv'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :substitution_option, as: 'substitutionOption'
          collection :volumes, as: 'volumes', class: Google::Apis::CloudbuildV1alpha2::Volume, decorator: Google::Apis::CloudbuildV1alpha2::Volume::Representation
      
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_exit_codes, as: 'allowExitCodes'
          property :allow_failure, as: 'allowFailure'
          collection :args, as: 'args'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :exit_code, as: 'exitCode'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::CloudbuildV1alpha2::Volume, decorator: Google::Apis::CloudbuildV1alpha2::Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :name, as: 'name'
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateBitbucketServerConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
        end
      end
      
      class CreateGitHubEnterpriseConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class CreateGitLabConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :gitlab_config, as: 'gitlabConfig'
        end
      end
      
      class CreateWorkerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class DeleteBitbucketServerConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
        end
      end
      
      class DeleteGitHubEnterpriseConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class DeleteGitLabConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :gitlab_config, as: 'gitlabConfig'
        end
      end
      
      class DeleteWorkerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :type, as: 'type'
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1alpha2::HashProp, decorator: Google::Apis::CloudbuildV1alpha2::HashProp::Representation
      
        end
      end
      
      class GitLabConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :repo, as: 'repo', class: Google::Apis::CloudbuildV1alpha2::GitLabRepositoryId, decorator: Google::Apis::CloudbuildV1alpha2::GitLabRepositoryId::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudbuildV1alpha2::Status, decorator: Google::Apis::CloudbuildV1alpha2::Status::Representation
      
        end
      end
      
      class GitLabRepositoryId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :webhook_id, as: 'webhookId'
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
      
      class HttpDelivery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class InlineSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :env_map, as: 'envMap'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class ListWorkerPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :worker_pools, as: 'workerPools', class: Google::Apis::CloudbuildV1alpha2::WorkerPool, decorator: Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
      
        end
      end
      
      class MavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :group_id, as: 'groupId'
          property :path, as: 'path'
          property :repository, as: 'repository'
          property :version, as: 'version'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :peered_network, as: 'peeredNetwork'
        end
      end
      
      class Notification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :http_delivery, as: 'httpDelivery', class: Google::Apis::CloudbuildV1alpha2::HttpDelivery, decorator: Google::Apis::CloudbuildV1alpha2::HttpDelivery::Representation
      
          property :slack_delivery, as: 'slackDelivery', class: Google::Apis::CloudbuildV1alpha2::SlackDelivery, decorator: Google::Apis::CloudbuildV1alpha2::SlackDelivery::Representation
      
          property :smtp_delivery, as: 'smtpDelivery', class: Google::Apis::CloudbuildV1alpha2::SmtpDelivery, decorator: Google::Apis::CloudbuildV1alpha2::SmtpDelivery::Representation
      
          hash :struct_delivery, as: 'structDelivery'
        end
      end
      
      class NotifierConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::CloudbuildV1alpha2::NotifierMetadata, decorator: Google::Apis::CloudbuildV1alpha2::NotifierMetadata::Representation
      
          property :spec, as: 'spec', class: Google::Apis::CloudbuildV1alpha2::NotifierSpec, decorator: Google::Apis::CloudbuildV1alpha2::NotifierSpec::Representation
      
        end
      end
      
      class NotifierMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :notifier, as: 'notifier'
        end
      end
      
      class NotifierSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class NotifierSecretRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_ref, as: 'secretRef'
        end
      end
      
      class NotifierSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notification, as: 'notification', class: Google::Apis::CloudbuildV1alpha2::Notification, decorator: Google::Apis::CloudbuildV1alpha2::Notification::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::CloudbuildV1alpha2::NotifierSecret, decorator: Google::Apis::CloudbuildV1alpha2::NotifierSecret::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudbuildV1alpha2::Status, decorator: Google::Apis::CloudbuildV1alpha2::Status::Representation
      
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
      
      class PoolOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class ProcessAppManifestCallbackOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class PythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
          property :repository, as: 'repository'
        end
      end
      
      class RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :dir, as: 'dir'
          property :invert_regex, as: 'invertRegex'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          hash :substitutions, as: 'substitutions'
          property :tag_name, as: 'tagName'
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
        end
      end
      
      class Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_manifest, as: 'artifactManifest'
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :images, as: 'images', class: Google::Apis::CloudbuildV1alpha2::BuiltImage, decorator: Google::Apis::CloudbuildV1alpha2::BuiltImage::Representation
      
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::CloudbuildV1alpha2::UploadedMavenArtifact, decorator: Google::Apis::CloudbuildV1alpha2::UploadedMavenArtifact::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::CloudbuildV1alpha2::UploadedPythonPackage, decorator: Google::Apis::CloudbuildV1alpha2::UploadedPythonPackage::Representation
      
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
      
      class SmtpDelivery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_address, as: 'fromAddress'
          property :password, as: 'password', class: Google::Apis::CloudbuildV1alpha2::NotifierSecretRef, decorator: Google::Apis::CloudbuildV1alpha2::NotifierSecretRef::Representation
      
          property :port, as: 'port'
          collection :recipient_addresses, as: 'recipientAddresses'
          property :sender_address, as: 'senderAddress'
          property :server, as: 'server'
        end
      end
      
      class Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          hash :secret_env, as: 'secretEnv'
        end
      end
      
      class SecretManagerSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :env, as: 'env'
          property :version_name, as: 'versionName'
        end
      end
      
      class Secrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inline, as: 'inline', class: Google::Apis::CloudbuildV1alpha2::InlineSecret, decorator: Google::Apis::CloudbuildV1alpha2::InlineSecret::Representation
      
          collection :secret_manager, as: 'secretManager', class: Google::Apis::CloudbuildV1alpha2::SecretManagerSecret, decorator: Google::Apis::CloudbuildV1alpha2::SecretManagerSecret::Representation
      
        end
      end
      
      class SlackDelivery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :webhook_uri, as: 'webhookUri', class: Google::Apis::CloudbuildV1alpha2::NotifierSecretRef, decorator: Google::Apis::CloudbuildV1alpha2::NotifierSecretRef::Representation
      
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repo_source, as: 'repoSource', class: Google::Apis::CloudbuildV1alpha2::RepoSource, decorator: Google::Apis::CloudbuildV1alpha2::RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::CloudbuildV1alpha2::StorageSource, decorator: Google::Apis::CloudbuildV1alpha2::StorageSource::Representation
      
          property :storage_source_manifest, as: 'storageSourceManifest', class: Google::Apis::CloudbuildV1alpha2::StorageSourceManifest, decorator: Google::Apis::CloudbuildV1alpha2::StorageSourceManifest::Representation
      
        end
      end
      
      class SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1alpha2::FileHashes, decorator: Google::Apis::CloudbuildV1alpha2::FileHashes::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::CloudbuildV1alpha2::RepoSource, decorator: Google::Apis::CloudbuildV1alpha2::RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::CloudbuildV1alpha2::StorageSource, decorator: Google::Apis::CloudbuildV1alpha2::StorageSource::Representation
      
          property :resolved_storage_source_manifest, as: 'resolvedStorageSourceManifest', class: Google::Apis::CloudbuildV1alpha2::StorageSourceManifest, decorator: Google::Apis::CloudbuildV1alpha2::StorageSourceManifest::Representation
      
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
      
      class StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class StorageSourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateBitbucketServerConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitbucket_server_config, as: 'bitbucketServerConfig'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
        end
      end
      
      class UpdateGitHubEnterpriseConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :github_enterprise_config, as: 'githubEnterpriseConfig'
        end
      end
      
      class UpdateGitLabConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :gitlab_config, as: 'gitlabConfig'
        end
      end
      
      class UpdateWorkerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class UploadedMavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1alpha2::FileHashes, decorator: Google::Apis::CloudbuildV1alpha2::FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class UploadedPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1alpha2::FileHashes, decorator: Google::Apis::CloudbuildV1alpha2::FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class Warning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
          property :text, as: 'text'
        end
      end
      
      class WorkerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :machine_type, as: 'machineType'
        end
      end
      
      class WorkerPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::CloudbuildV1alpha2::NetworkConfig, decorator: Google::Apis::CloudbuildV1alpha2::NetworkConfig::Representation
      
          property :region, as: 'region'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :worker_config, as: 'workerConfig', class: Google::Apis::CloudbuildV1alpha2::WorkerConfig, decorator: Google::Apis::CloudbuildV1alpha2::WorkerConfig::Representation
      
        end
      end
    end
  end
end
