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
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOperationMetadata
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
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
      
      class Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelBuildRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class BuildOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_source, as: 'storageSource', class: Google::Apis::CloudbuildV1::StorageSource, decorator: Google::Apis::CloudbuildV1::StorageSource::Representation
      
          property :repo_source, as: 'repoSource', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
        end
      end
      
      class SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::CloudbuildV1::StorageSource, decorator: Google::Apis::CloudbuildV1::StorageSource::Representation
      
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::CloudbuildV1::FileHashes, decorator: Google::Apis::CloudbuildV1::FileHashes::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::CloudbuildV1::Status, decorator: Google::Apis::CloudbuildV1::Status::Representation
      
          property :done, as: 'done'
          hash :metadata, as: 'metadata'
          hash :response, as: 'response'
          property :name, as: 'name'
        end
      end
      
      class BuildTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :description, as: 'description'
          property :trigger_template, as: 'triggerTemplate', class: Google::Apis::CloudbuildV1::RepoSource, decorator: Google::Apis::CloudbuildV1::RepoSource::Representation
      
          property :disabled, as: 'disabled'
          property :create_time, as: 'createTime'
          property :filename, as: 'filename'
          property :build, as: 'build', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
        end
      end
      
      class BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :name, as: 'name'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :base64 => true, as: 'value'
          property :type, as: 'type'
        end
      end
      
      class StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, as: 'generation'
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
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::CloudbuildV1::SourceProvenance, decorator: Google::Apis::CloudbuildV1::SourceProvenance::Representation
      
          property :results, as: 'results', class: Google::Apis::CloudbuildV1::Results, decorator: Google::Apis::CloudbuildV1::Results::Representation
      
          property :status, as: 'status'
          property :options, as: 'options', class: Google::Apis::CloudbuildV1::BuildOptions, decorator: Google::Apis::CloudbuildV1::BuildOptions::Representation
      
          property :finish_time, as: 'finishTime'
          property :timeout, as: 'timeout'
          collection :steps, as: 'steps', class: Google::Apis::CloudbuildV1::BuildStep, decorator: Google::Apis::CloudbuildV1::BuildStep::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudbuildV1::Source, decorator: Google::Apis::CloudbuildV1::Source::Representation
      
          property :create_time, as: 'createTime'
          property :log_url, as: 'logUrl'
          property :status_detail, as: 'statusDetail'
          collection :images, as: 'images'
          property :start_time, as: 'startTime'
          property :build_trigger_id, as: 'buildTriggerId'
          property :logs_bucket, as: 'logsBucket'
          property :project_id, as: 'projectId'
        end
      end
      
      class ListBuildTriggersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :triggers, as: 'triggers', class: Google::Apis::CloudbuildV1::BuildTrigger, decorator: Google::Apis::CloudbuildV1::BuildTrigger::Representation
      
        end
      end
      
      class CancelBuildRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::CloudbuildV1::HashProp, decorator: Google::Apis::CloudbuildV1::HashProp::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudbuildV1::Operation, decorator: Google::Apis::CloudbuildV1::Operation::Representation
      
        end
      end
      
      class RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repo_name, as: 'repoName'
          property :tag_name, as: 'tagName'
          property :project_id, as: 'projectId'
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
        end
      end
      
      class BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :env, as: 'env'
          collection :wait_for, as: 'waitFor'
          collection :args, as: 'args'
          property :name, as: 'name'
          property :dir, as: 'dir'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :requested_verify_option, as: 'requestedVerifyOption'
        end
      end
      
      class ListBuildsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :builds, as: 'builds', class: Google::Apis::CloudbuildV1::Build, decorator: Google::Apis::CloudbuildV1::Build::Representation
      
        end
      end
    end
  end
end
