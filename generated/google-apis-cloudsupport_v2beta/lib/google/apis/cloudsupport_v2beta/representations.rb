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
    module CloudsupportV2beta
      
      class Actor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blobstore2Info
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Case
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CaseClassification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseCaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Comment
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
      
      class CreateAttachmentRequest
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
      
      class DownloadParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EscalateCaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Escalation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCommentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectIdProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCaseClassificationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkflowOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Actor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :google_support, as: 'googleSupport'
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::CloudsupportV2beta::Actor, decorator: Google::Apis::CloudsupportV2beta::Actor::Representation
      
          property :filename, as: 'filename'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
        end
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
      
      class Case
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification, as: 'classification', class: Google::Apis::CloudsupportV2beta::CaseClassification, decorator: Google::Apis::CloudsupportV2beta::CaseClassification::Representation
      
          property :contact_email, as: 'contactEmail'
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::CloudsupportV2beta::Actor, decorator: Google::Apis::CloudsupportV2beta::Actor::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :escalated, as: 'escalated'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :priority, as: 'priority'
          property :severity, as: 'severity'
          property :state, as: 'state'
          collection :subscriber_email_addresses, as: 'subscriberEmailAddresses'
          property :test_case, as: 'testCase'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CaseClassification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class CloseCaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Comment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::CloudsupportV2beta::Actor, decorator: Google::Apis::CloudsupportV2beta::Actor::Representation
      
          property :name, as: 'name'
          property :plain_text_body, as: 'plainTextBody'
        end
      end
      
      class CompositeMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::CloudsupportV2beta::Blobstore2Info, decorator: Google::Apis::CloudsupportV2beta::Blobstore2Info::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :inline, :base64 => true, as: 'inline'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :object_id_prop, as: 'objectId', class: Google::Apis::CloudsupportV2beta::ObjectIdProp, decorator: Google::Apis::CloudsupportV2beta::ObjectIdProp::Representation
      
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
      
      class CreateAttachmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment, as: 'attachment', class: Google::Apis::CloudsupportV2beta::Attachment, decorator: Google::Apis::CloudsupportV2beta::Attachment::Representation
      
        end
      end
      
      class DiffChecksumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_location, as: 'checksumsLocation', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
          property :chunk_size_bytes, :numeric_string => true, as: 'chunkSizeBytes'
          property :object_location, as: 'objectLocation', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffDownloadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_location, as: 'objectLocation', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
        end
      end
      
      class DiffUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_info, as: 'checksumsInfo', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
          property :object_info, as: 'objectInfo', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffUploadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_version, as: 'objectVersion'
          property :original_object, as: 'originalObject', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
        end
      end
      
      class DiffVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DownloadParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_gzip_compression, as: 'allowGzipCompression'
          property :ignore_range, as: 'ignoreRange'
        end
      end
      
      class EscalateCaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :escalation, as: 'escalation', class: Google::Apis::CloudsupportV2beta::Escalation, decorator: Google::Apis::CloudsupportV2beta::Escalation::Representation
      
        end
      end
      
      class Escalation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :justification, as: 'justification'
          property :reason, as: 'reason'
        end
      end
      
      class ListAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::CloudsupportV2beta::Attachment, decorator: Google::Apis::CloudsupportV2beta::Attachment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cases, as: 'cases', class: Google::Apis::CloudsupportV2beta::Case, decorator: Google::Apis::CloudsupportV2beta::Case::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCommentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :comments, as: 'comments', class: Google::Apis::CloudsupportV2beta::Comment, decorator: Google::Apis::CloudsupportV2beta::Comment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :bigstore_object_ref, :base64 => true, as: 'bigstoreObjectRef'
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::CloudsupportV2beta::Blobstore2Info, decorator: Google::Apis::CloudsupportV2beta::Blobstore2Info::Representation
      
          collection :composite_media, as: 'compositeMedia', class: Google::Apis::CloudsupportV2beta::CompositeMedia, decorator: Google::Apis::CloudsupportV2beta::CompositeMedia::Representation
      
          property :content_type, as: 'contentType'
          property :content_type_info, as: 'contentTypeInfo', class: Google::Apis::CloudsupportV2beta::ContentTypeInfo, decorator: Google::Apis::CloudsupportV2beta::ContentTypeInfo::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :diff_checksums_response, as: 'diffChecksumsResponse', class: Google::Apis::CloudsupportV2beta::DiffChecksumsResponse, decorator: Google::Apis::CloudsupportV2beta::DiffChecksumsResponse::Representation
      
          property :diff_download_response, as: 'diffDownloadResponse', class: Google::Apis::CloudsupportV2beta::DiffDownloadResponse, decorator: Google::Apis::CloudsupportV2beta::DiffDownloadResponse::Representation
      
          property :diff_upload_request, as: 'diffUploadRequest', class: Google::Apis::CloudsupportV2beta::DiffUploadRequest, decorator: Google::Apis::CloudsupportV2beta::DiffUploadRequest::Representation
      
          property :diff_upload_response, as: 'diffUploadResponse', class: Google::Apis::CloudsupportV2beta::DiffUploadResponse, decorator: Google::Apis::CloudsupportV2beta::DiffUploadResponse::Representation
      
          property :diff_version_response, as: 'diffVersionResponse', class: Google::Apis::CloudsupportV2beta::DiffVersionResponse, decorator: Google::Apis::CloudsupportV2beta::DiffVersionResponse::Representation
      
          property :download_parameters, as: 'downloadParameters', class: Google::Apis::CloudsupportV2beta::DownloadParameters, decorator: Google::Apis::CloudsupportV2beta::DownloadParameters::Representation
      
          property :filename, as: 'filename'
          property :hash_prop, as: 'hash'
          property :hash_verified, as: 'hashVerified'
          property :inline, :base64 => true, as: 'inline'
          property :is_potential_retry, as: 'isPotentialRetry'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :media_id, :base64 => true, as: 'mediaId'
          property :object_id_prop, as: 'objectId', class: Google::Apis::CloudsupportV2beta::ObjectIdProp, decorator: Google::Apis::CloudsupportV2beta::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
          property :sha256_hash, :base64 => true, as: 'sha256Hash'
          property :timestamp, :numeric_string => true, as: 'timestamp'
          property :token, as: 'token'
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
      
      class SearchCaseClassificationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :case_classifications, as: 'caseClassifications', class: Google::Apis::CloudsupportV2beta::CaseClassification, decorator: Google::Apis::CloudsupportV2beta::CaseClassification::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cases, as: 'cases', class: Google::Apis::CloudsupportV2beta::Case, decorator: Google::Apis::CloudsupportV2beta::Case::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class WorkflowOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace, as: 'namespace'
          property :operation_action, as: 'operationAction'
          property :workflow_operation_type, as: 'workflowOperationType'
        end
      end
    end
  end
end
