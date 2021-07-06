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
    module ArtifactregistryV1
      
      class AptArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DockerImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAptArtifactsErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAptArtifactsGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAptArtifactsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportYumArtifactsErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportYumArtifactsGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportYumArtifactsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDockerImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadAptArtifactMediaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadAptArtifactResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadYumArtifactMediaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadYumArtifactResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YumArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AptArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :component, as: 'component'
          property :control_file, :base64 => true, as: 'controlFile'
          property :name, as: 'name'
          property :package_name, as: 'packageName'
          property :package_type, as: 'packageType'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DockerImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_time, as: 'buildTime'
          property :image_size_bytes, :numeric_string => true, as: 'imageSizeBytes'
          property :media_type, as: 'mediaType'
          property :name, as: 'name'
          collection :tags, as: 'tags'
          property :upload_time, as: 'uploadTime'
          property :uri, as: 'uri'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportAptArtifactsErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ArtifactregistryV1::Status, decorator: Google::Apis::ArtifactregistryV1::Status::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ArtifactregistryV1::ImportAptArtifactsGcsSource, decorator: Google::Apis::ArtifactregistryV1::ImportAptArtifactsGcsSource::Representation
      
        end
      end
      
      class ImportAptArtifactsGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
          property :use_wildcards, as: 'useWildcards'
        end
      end
      
      class ImportAptArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apt_artifacts, as: 'aptArtifacts', class: Google::Apis::ArtifactregistryV1::AptArtifact, decorator: Google::Apis::ArtifactregistryV1::AptArtifact::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::ArtifactregistryV1::ImportAptArtifactsErrorInfo, decorator: Google::Apis::ArtifactregistryV1::ImportAptArtifactsErrorInfo::Representation
      
        end
      end
      
      class ImportYumArtifactsErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ArtifactregistryV1::Status, decorator: Google::Apis::ArtifactregistryV1::Status::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ArtifactregistryV1::ImportYumArtifactsGcsSource, decorator: Google::Apis::ArtifactregistryV1::ImportYumArtifactsGcsSource::Representation
      
        end
      end
      
      class ImportYumArtifactsGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
          property :use_wildcards, as: 'useWildcards'
        end
      end
      
      class ImportYumArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::ArtifactregistryV1::ImportYumArtifactsErrorInfo, decorator: Google::Apis::ArtifactregistryV1::ImportYumArtifactsErrorInfo::Representation
      
          collection :yum_artifacts, as: 'yumArtifacts', class: Google::Apis::ArtifactregistryV1::YumArtifact, decorator: Google::Apis::ArtifactregistryV1::YumArtifact::Representation
      
        end
      end
      
      class ListDockerImagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :docker_images, as: 'dockerImages', class: Google::Apis::ArtifactregistryV1::DockerImage, decorator: Google::Apis::ArtifactregistryV1::DockerImage::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ArtifactregistryV1::Operation, decorator: Google::Apis::ArtifactregistryV1::Operation::Representation
      
        end
      end
      
      class ListRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::ArtifactregistryV1::Repository, decorator: Google::Apis::ArtifactregistryV1::Repository::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ArtifactregistryV1::Status, decorator: Google::Apis::ArtifactregistryV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Repository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :format, as: 'format'
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
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
      
      class UploadAptArtifactMediaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation', class: Google::Apis::ArtifactregistryV1::Operation, decorator: Google::Apis::ArtifactregistryV1::Operation::Representation
      
        end
      end
      
      class UploadAptArtifactResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apt_artifacts, as: 'aptArtifacts', class: Google::Apis::ArtifactregistryV1::AptArtifact, decorator: Google::Apis::ArtifactregistryV1::AptArtifact::Representation
      
        end
      end
      
      class UploadYumArtifactMediaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation', class: Google::Apis::ArtifactregistryV1::Operation, decorator: Google::Apis::ArtifactregistryV1::Operation::Representation
      
        end
      end
      
      class UploadYumArtifactResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :yum_artifacts, as: 'yumArtifacts', class: Google::Apis::ArtifactregistryV1::YumArtifact, decorator: Google::Apis::ArtifactregistryV1::YumArtifact::Representation
      
        end
      end
      
      class YumArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :name, as: 'name'
          property :package_name, as: 'packageName'
          property :package_type, as: 'packageType'
        end
      end
    end
  end
end
