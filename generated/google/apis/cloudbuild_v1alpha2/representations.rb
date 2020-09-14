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
    module CloudbuildV1alpha2
      
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
      
      class Build
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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
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
      
      class ListWorkerPoolsResponse
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
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Results
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
      
      class TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
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
          property :objects, as: 'objects', class: Google::Apis::CloudbuildV1alpha2::ArtifactObjects, decorator: Google::Apis::CloudbuildV1alpha2::ArtifactObjects::Representation
      
        end
      end
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifacts, as: 'artifacts', class: Google::Apis::CloudbuildV1alpha2::Artifacts, decorator: Google::Apis::CloudbuildV1alpha2::Artifacts::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
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
          collection :args, as: 'args'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1alpha2::HashProp, decorator: Google::Apis::CloudbuildV1alpha2::HashProp::Representation
      
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
      
      class ListWorkerPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :worker_pools, as: 'workerPools', class: Google::Apis::CloudbuildV1alpha2::WorkerPool, decorator: Google::Apis::CloudbuildV1alpha2::WorkerPool::Representation
      
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
      
      class Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_manifest, as: 'artifactManifest'
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::CloudbuildV1alpha2::TimeSpan, decorator: Google::Apis::CloudbuildV1alpha2::TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :images, as: 'images', class: Google::Apis::CloudbuildV1alpha2::BuiltImage, decorator: Google::Apis::CloudbuildV1alpha2::BuiltImage::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
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
      
        end
      end
      
      class SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1alpha2::FileHashes, decorator: Google::Apis::CloudbuildV1alpha2::FileHashes::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::CloudbuildV1alpha2::RepoSource, decorator: Google::Apis::CloudbuildV1alpha2::RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::CloudbuildV1alpha2::StorageSource, decorator: Google::Apis::CloudbuildV1alpha2::StorageSource::Representation
      
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
      
      class TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
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
