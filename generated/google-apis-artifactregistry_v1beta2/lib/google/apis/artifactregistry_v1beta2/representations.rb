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
    module ArtifactregistryV1beta2
      
      class AptArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
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
      
      class GoogleDevtoolsArtifactregistryV1beta2File
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
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
      
      class ImportAptArtifactsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAptArtifactsRequest
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
      
      class ImportYumArtifactsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportYumArtifactsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportYumArtifactsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPackagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MavenRepositoryConfig
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
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Repository
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
      
      class Tag
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
      
      class UploadAptArtifactMediaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadAptArtifactMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadAptArtifactRequest
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
      
      class UploadYumArtifactMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadYumArtifactRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadYumArtifactResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ArtifactregistryV1beta2::Expr, decorator: Google::Apis::ArtifactregistryV1beta2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
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
      
      class GoogleDevtoolsArtifactregistryV1beta2File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :hashes, as: 'hashes', class: Google::Apis::ArtifactregistryV1beta2::HashProp, decorator: Google::Apis::ArtifactregistryV1beta2::HashProp::Representation
      
          property :name, as: 'name'
          property :owner, as: 'owner'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :update_time, as: 'updateTime'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class ImportAptArtifactsErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ArtifactregistryV1beta2::Status, decorator: Google::Apis::ArtifactregistryV1beta2::Status::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsGcsSource, decorator: Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsGcsSource::Representation
      
        end
      end
      
      class ImportAptArtifactsGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
          property :use_wildcards, as: 'useWildcards'
        end
      end
      
      class ImportAptArtifactsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportAptArtifactsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsGcsSource, decorator: Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsGcsSource::Representation
      
        end
      end
      
      class ImportAptArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apt_artifacts, as: 'aptArtifacts', class: Google::Apis::ArtifactregistryV1beta2::AptArtifact, decorator: Google::Apis::ArtifactregistryV1beta2::AptArtifact::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsErrorInfo, decorator: Google::Apis::ArtifactregistryV1beta2::ImportAptArtifactsErrorInfo::Representation
      
        end
      end
      
      class ImportYumArtifactsErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ArtifactregistryV1beta2::Status, decorator: Google::Apis::ArtifactregistryV1beta2::Status::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsGcsSource, decorator: Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsGcsSource::Representation
      
        end
      end
      
      class ImportYumArtifactsGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
          property :use_wildcards, as: 'useWildcards'
        end
      end
      
      class ImportYumArtifactsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportYumArtifactsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsGcsSource, decorator: Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsGcsSource::Representation
      
        end
      end
      
      class ImportYumArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsErrorInfo, decorator: Google::Apis::ArtifactregistryV1beta2::ImportYumArtifactsErrorInfo::Representation
      
          collection :yum_artifacts, as: 'yumArtifacts', class: Google::Apis::ArtifactregistryV1beta2::YumArtifact, decorator: Google::Apis::ArtifactregistryV1beta2::YumArtifact::Representation
      
        end
      end
      
      class ListFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :files, as: 'files', class: Google::Apis::ArtifactregistryV1beta2::GoogleDevtoolsArtifactregistryV1beta2File, decorator: Google::Apis::ArtifactregistryV1beta2::GoogleDevtoolsArtifactregistryV1beta2File::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ArtifactregistryV1beta2::Location, decorator: Google::Apis::ArtifactregistryV1beta2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPackagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :packages, as: 'packages', class: Google::Apis::ArtifactregistryV1beta2::Package, decorator: Google::Apis::ArtifactregistryV1beta2::Package::Representation
      
        end
      end
      
      class ListRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repositories, as: 'repositories', class: Google::Apis::ArtifactregistryV1beta2::Repository, decorator: Google::Apis::ArtifactregistryV1beta2::Repository::Representation
      
        end
      end
      
      class ListTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tags, as: 'tags', class: Google::Apis::ArtifactregistryV1beta2::Tag, decorator: Google::Apis::ArtifactregistryV1beta2::Tag::Representation
      
        end
      end
      
      class ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::ArtifactregistryV1beta2::Version, decorator: Google::Apis::ArtifactregistryV1beta2::Version::Representation
      
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
      
      class MavenRepositoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_snapshot_overwrites, as: 'allowSnapshotOverwrites'
          property :version_policy, as: 'versionPolicy'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ArtifactregistryV1beta2::Status, decorator: Google::Apis::ArtifactregistryV1beta2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ArtifactregistryV1beta2::Binding, decorator: Google::Apis::ArtifactregistryV1beta2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ProjectSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legacy_redirection_state, as: 'legacyRedirectionState'
          property :name, as: 'name'
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
          property :maven_config, as: 'mavenConfig', class: Google::Apis::ArtifactregistryV1beta2::MavenRepositoryConfig, decorator: Google::Apis::ArtifactregistryV1beta2::MavenRepositoryConfig::Representation
      
          property :name, as: 'name'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ArtifactregistryV1beta2::Policy, decorator: Google::Apis::ArtifactregistryV1beta2::Policy::Representation
      
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
      
      class Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
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
      
      class UploadAptArtifactMediaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation', class: Google::Apis::ArtifactregistryV1beta2::Operation, decorator: Google::Apis::ArtifactregistryV1beta2::Operation::Representation
      
        end
      end
      
      class UploadAptArtifactMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadAptArtifactRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadAptArtifactResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apt_artifacts, as: 'aptArtifacts', class: Google::Apis::ArtifactregistryV1beta2::AptArtifact, decorator: Google::Apis::ArtifactregistryV1beta2::AptArtifact::Representation
      
        end
      end
      
      class UploadYumArtifactMediaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation', class: Google::Apis::ArtifactregistryV1beta2::Operation, decorator: Google::Apis::ArtifactregistryV1beta2::Operation::Representation
      
        end
      end
      
      class UploadYumArtifactMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadYumArtifactRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadYumArtifactResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :yum_artifacts, as: 'yumArtifacts', class: Google::Apis::ArtifactregistryV1beta2::YumArtifact, decorator: Google::Apis::ArtifactregistryV1beta2::YumArtifact::Representation
      
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          collection :related_tags, as: 'relatedTags', class: Google::Apis::ArtifactregistryV1beta2::Tag, decorator: Google::Apis::ArtifactregistryV1beta2::Tag::Representation
      
          property :update_time, as: 'updateTime'
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
