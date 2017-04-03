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
    module CloudbuildV1
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Results
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelBuildRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_source, as: 'storageSource', class: Google::Apis::CloudbuildV1::StorageSource, decorator: Google::Apis::CloudbuildV1::StorageSource::Representation
      
          property :repo_source, as: 'repoSource', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
        end
      end
      
      class BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
        end
      end
      
      class StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generation, :numeric_string => true, as: 'generation'
          property :bucket, as: 'bucket'
          property :object, as: 'object'
        end
      end
      
      class Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images', class: Google::Apis::CloudbuildV1::BuiltImage, decorator: Google::Apis::CloudbuildV1::BuiltImage::Representation
      
          collection :build_step_images, as: 'buildStepImages'
        end
      end
      
      class BuildOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
        end
      end
      
      class SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::CloudbuildV1::StorageSource, decorator: Google::Apis::CloudbuildV1::StorageSource::Representation
      
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListBuildTriggersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :triggers, as: 'triggers', class: Google::Apis::CloudbuildV1::BuildTrigger, decorator: Google::Apis::CloudbuildV1::BuildTrigger::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::CloudbuildV1::Status, decorator: Google::Apis::CloudbuildV1::Status::Representation
      
          hash :metadata, as: 'metadata'
        end
      end
      
      class BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :digest, as: 'digest'
        end
      end
      
      class BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entrypoint, as: 'entrypoint'
          property :id, as: 'id'
          property :dir, as: 'dir'
          collection :env, as: 'env'
          collection :wait_for, as: 'waitFor'
          collection :args, as: 'args'
          property :name, as: 'name'
        end
      end
      
      class RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag_name, as: 'tagName'
          property :commit_sha, as: 'commitSha'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          property :branch_name, as: 'branchName'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1::HashProp, decorator: Google::Apis::CloudbuildV1::HashProp::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          collection :details, as: 'details'
          property :code, as: 'code'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BuildTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :build, as: 'build', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
          hash :substitutions, as: 'substitutions'
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :create_time, as: 'createTime'
          property :trigger_template, as: 'triggerTemplate', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :filename, as: 'filename'
        end
      end
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logs_bucket, as: 'logsBucket'
          property :results, as: 'results', class: Google::Apis::CloudbuildV1::Results, decorator: Google::Apis::CloudbuildV1::Results::Representation
      
          collection :steps, as: 'steps', class: Google::Apis::CloudbuildV1::BuildStep, decorator: Google::Apis::CloudbuildV1::BuildStep::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :id, as: 'id'
          property :start_time, as: 'startTime'
          hash :substitutions, as: 'substitutions'
          property :create_time, as: 'createTime'
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::CloudbuildV1::SourceProvenance, decorator: Google::Apis::CloudbuildV1::SourceProvenance::Representation
      
          collection :images, as: 'images'
          property :project_id, as: 'projectId'
          property :finish_time, as: 'finishTime'
          property :log_url, as: 'logUrl'
          property :options, as: 'options', class: Google::Apis::CloudbuildV1::BuildOptions, decorator: Google::Apis::CloudbuildV1::BuildOptions::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudbuildV1::Source, decorator: Google::Apis::CloudbuildV1::Source::Representation
      
          property :status_detail, as: 'statusDetail'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
        end
      end
      
      class CancelBuildRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListBuildsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :builds, as: 'builds', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudbuildV1::Operation, decorator: Google::Apis::CloudbuildV1::Operation::Representation
      
        end
      end
    end
  end
end
