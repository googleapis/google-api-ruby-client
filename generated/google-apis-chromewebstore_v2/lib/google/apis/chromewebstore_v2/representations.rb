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
    module ChromewebstoreV2
      
      class Blobstore2Info
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSubmissionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentTypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffChecksumsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffDownloadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffUploadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffUploadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistributionChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchItemStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemRevisionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectIdProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPublishedDeployPercentageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPublishedDeployPercentageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadItemPackageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadItemPackageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blobstore2Info
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_generation, :numeric_string => true, as: 'blobGeneration'
          property :blob_id, as: 'blobId'
          property :download_read_handle, :base64 => true, as: 'downloadReadHandle'
          property :read_token, as: 'readToken'
          property :upload_metadata_container, :base64 => true, as: 'uploadMetadataContainer'
        end
      end
      
      class CancelSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelSubmissionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CompositeMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::ChromewebstoreV2::Blobstore2Info, decorator: Google::Apis::ChromewebstoreV2::Blobstore2Info::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :inline, :base64 => true, as: 'inline'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :object_id_prop, as: 'objectId', class: Google::Apis::ChromewebstoreV2::ObjectIdProp, decorator: Google::Apis::ChromewebstoreV2::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
        end
      end
      
      class ContentTypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_guess, as: 'bestGuess'
          property :from_bytes, as: 'fromBytes'
          property :from_file_name, as: 'fromFileName'
          property :from_header, as: 'fromHeader'
          property :from_url_path, as: 'fromUrlPath'
        end
      end
      
      class DeployInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_percentage, as: 'deployPercentage'
        end
      end
      
      class DiffChecksumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_location, as: 'checksumsLocation', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
          property :chunk_size_bytes, :numeric_string => true, as: 'chunkSizeBytes'
          property :object_location, as: 'objectLocation', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffDownloadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_location, as: 'objectLocation', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
        end
      end
      
      class DiffUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_info, as: 'checksumsInfo', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
          property :object_info, as: 'objectInfo', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffUploadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_version, as: 'objectVersion'
          property :original_object, as: 'originalObject', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
        end
      end
      
      class DiffVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DistributionChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crx_version, as: 'crxVersion'
          property :deploy_percentage, as: 'deployPercentage'
        end
      end
      
      class DownloadParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_gzip_compression, as: 'allowGzipCompression'
          property :ignore_range, as: 'ignoreRange'
        end
      end
      
      class FetchItemStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :last_async_upload_state, as: 'lastAsyncUploadState'
          property :name, as: 'name'
          property :public_key, as: 'publicKey'
          property :published_item_revision_status, as: 'publishedItemRevisionStatus', class: Google::Apis::ChromewebstoreV2::ItemRevisionStatus, decorator: Google::Apis::ChromewebstoreV2::ItemRevisionStatus::Representation
      
          property :submitted_item_revision_status, as: 'submittedItemRevisionStatus', class: Google::Apis::ChromewebstoreV2::ItemRevisionStatus, decorator: Google::Apis::ChromewebstoreV2::ItemRevisionStatus::Representation
      
          property :taken_down, as: 'takenDown'
          property :warned, as: 'warned'
        end
      end
      
      class ItemRevisionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :distribution_channels, as: 'distributionChannels', class: Google::Apis::ChromewebstoreV2::DistributionChannel, decorator: Google::Apis::ChromewebstoreV2::DistributionChannel::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :bigstore_object_ref, :base64 => true, as: 'bigstoreObjectRef'
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::ChromewebstoreV2::Blobstore2Info, decorator: Google::Apis::ChromewebstoreV2::Blobstore2Info::Representation
      
          collection :composite_media, as: 'compositeMedia', class: Google::Apis::ChromewebstoreV2::CompositeMedia, decorator: Google::Apis::ChromewebstoreV2::CompositeMedia::Representation
      
          property :content_type, as: 'contentType'
          property :content_type_info, as: 'contentTypeInfo', class: Google::Apis::ChromewebstoreV2::ContentTypeInfo, decorator: Google::Apis::ChromewebstoreV2::ContentTypeInfo::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :diff_checksums_response, as: 'diffChecksumsResponse', class: Google::Apis::ChromewebstoreV2::DiffChecksumsResponse, decorator: Google::Apis::ChromewebstoreV2::DiffChecksumsResponse::Representation
      
          property :diff_download_response, as: 'diffDownloadResponse', class: Google::Apis::ChromewebstoreV2::DiffDownloadResponse, decorator: Google::Apis::ChromewebstoreV2::DiffDownloadResponse::Representation
      
          property :diff_upload_request, as: 'diffUploadRequest', class: Google::Apis::ChromewebstoreV2::DiffUploadRequest, decorator: Google::Apis::ChromewebstoreV2::DiffUploadRequest::Representation
      
          property :diff_upload_response, as: 'diffUploadResponse', class: Google::Apis::ChromewebstoreV2::DiffUploadResponse, decorator: Google::Apis::ChromewebstoreV2::DiffUploadResponse::Representation
      
          property :diff_version_response, as: 'diffVersionResponse', class: Google::Apis::ChromewebstoreV2::DiffVersionResponse, decorator: Google::Apis::ChromewebstoreV2::DiffVersionResponse::Representation
      
          property :download_parameters, as: 'downloadParameters', class: Google::Apis::ChromewebstoreV2::DownloadParameters, decorator: Google::Apis::ChromewebstoreV2::DownloadParameters::Representation
      
          property :filename, as: 'filename'
          property :hash_prop, as: 'hash'
          property :hash_verified, as: 'hashVerified'
          property :inline, :base64 => true, as: 'inline'
          property :is_potential_retry, as: 'isPotentialRetry'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :media_id, :base64 => true, as: 'mediaId'
          property :object_id_prop, as: 'objectId', class: Google::Apis::ChromewebstoreV2::ObjectIdProp, decorator: Google::Apis::ChromewebstoreV2::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
          property :sha256_hash, :base64 => true, as: 'sha256Hash'
          property :timestamp, :numeric_string => true, as: 'timestamp'
          property :token, as: 'token'
        end
      end
      
      class MediaRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_bytes, :numeric_string => true, as: 'currentBytes'
          property :custom_data, as: 'customData'
          property :diff_object_version, as: 'diffObjectVersion'
          property :final_status, as: 'finalStatus'
          property :notification_type, as: 'notificationType'
          property :physical_headers, :base64 => true, as: 'physicalHeaders'
          property :request_id, as: 'requestId'
          property :request_received_params_serving_info, :base64 => true, as: 'requestReceivedParamsServingInfo'
          property :total_bytes, :numeric_string => true, as: 'totalBytes'
          property :total_bytes_is_estimated, as: 'totalBytesIsEstimated'
        end
      end
      
      class ObjectIdProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :generation, :numeric_string => true, as: 'generation'
          property :object_name, as: 'objectName'
        end
      end
      
      class PublishItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deploy_infos, as: 'deployInfos', class: Google::Apis::ChromewebstoreV2::DeployInfo, decorator: Google::Apis::ChromewebstoreV2::DeployInfo::Representation
      
          property :publish_type, as: 'publishType'
          property :skip_review, as: 'skipReview'
        end
      end
      
      class PublishItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class SetPublishedDeployPercentageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_percentage, as: 'deployPercentage'
        end
      end
      
      class SetPublishedDeployPercentageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadItemPackageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob, as: 'blob', class: Google::Apis::ChromewebstoreV2::Media, decorator: Google::Apis::ChromewebstoreV2::Media::Representation
      
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::ChromewebstoreV2::MediaRequestInfo, decorator: Google::Apis::ChromewebstoreV2::MediaRequestInfo::Representation
      
        end
      end
      
      class UploadItemPackageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crx_version, as: 'crxVersion'
          property :item_id, as: 'itemId'
          property :name, as: 'name'
          property :upload_state, as: 'uploadState'
        end
      end
    end
  end
end
