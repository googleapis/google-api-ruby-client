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
      
      # Information to read/write to blobstore2.
      class Blobstore2Info
        include Google::Apis::Core::Hashable
      
        # The blob generation id.
        # Corresponds to the JSON property `blobGeneration`
        # @return [Fixnum]
        attr_accessor :blob_generation
      
        # The blob id, e.g., /blobstore/prod/playground/scotty
        # Corresponds to the JSON property `blobId`
        # @return [String]
        attr_accessor :blob_id
      
        # Read handle passed from Bigstore -> Scotty for a GCS download. This is a
        # signed, serialized blobstore2.ReadHandle proto which must never be set outside
        # of Bigstore, and is not applicable to non-GCS media downloads.
        # Corresponds to the JSON property `downloadReadHandle`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :download_read_handle
      
        # The blob read token. Needed to read blobs that have not been replicated. Might
        # not be available until the final call.
        # Corresponds to the JSON property `readToken`
        # @return [String]
        attr_accessor :read_token
      
        # Metadata passed from Blobstore -> Scotty for a new GCS upload. This is a
        # signed, serialized blobstore2.BlobMetadataContainer proto which must never be
        # consumed outside of Bigstore, and is not applicable to non-GCS media uploads.
        # Corresponds to the JSON property `uploadMetadataContainer`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :upload_metadata_container
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_generation = args[:blob_generation] if args.key?(:blob_generation)
          @blob_id = args[:blob_id] if args.key?(:blob_id)
          @download_read_handle = args[:download_read_handle] if args.key?(:download_read_handle)
          @read_token = args[:read_token] if args.key?(:read_token)
          @upload_metadata_container = args[:upload_metadata_container] if args.key?(:upload_metadata_container)
        end
      end
      
      # Request message for CancelSubmission.
      class CancelSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `CancelSubmission`.
      class CancelSubmissionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A sequence of media data references representing composite data. Introduced to
      # support Bigstore composite objects. For details, visit http://go/bigstore-
      # composites.
      class CompositeMedia
        include Google::Apis::Core::Hashable
      
        # Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be
        # the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating
        # v1, use blobstore2_info instead. For now, any v2 blob will also be represented
        # in this field as v1 BlobRef.
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # Information to read/write to blobstore2.
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::ChromewebstoreV2::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # A binary data reference for a media download. Serves as a technology-agnostic
        # binary reference in some Google infrastructure. This value is a serialized
        # storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get
        # around the fact that the cosmo proto (as well as others it includes) doesn't
        # support JavaScript. This prevents us from including the actual type of this
        # field.
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # crc32.c hash for the payload.
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # Media data, set if reference_type is INLINE
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # Size of the data, in bytes
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # MD5 hash for the payload.
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # This is a copy of the tech.blob.ObjectId proto, which could not be used
        # directly here due to transitive closure issues with JavaScript support; see
        # http://b/8801763.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::ChromewebstoreV2::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Path to the data, set if reference_type is PATH
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Describes what the field reference contains.
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # SHA-1 hash for the payload.
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @inline = args[:inline] if args.key?(:inline)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
        end
      end
      
      # Detailed Content-Type information from Scotty. The Content-Type of the media
      # will typically be filled in by the header or Scotty's best_guess, but this
      # extended information provides the backend with more information so that it can
      # make a better decision if needed. This is only used on media upload requests
      # from Scotty.
      class ContentTypeInfo
        include Google::Apis::Core::Hashable
      
        # Scotty's best guess of what the content type of the file is.
        # Corresponds to the JSON property `bestGuess`
        # @return [String]
        attr_accessor :best_guess
      
        # The content type of the file derived by looking at specific bytes (i.e. "magic
        # bytes") of the actual file.
        # Corresponds to the JSON property `fromBytes`
        # @return [String]
        attr_accessor :from_bytes
      
        # The content type of the file derived from the file extension of the original
        # file name used by the client.
        # Corresponds to the JSON property `fromFileName`
        # @return [String]
        attr_accessor :from_file_name
      
        # The content type of the file as specified in the request headers, multipart
        # headers, or RUPIO start request.
        # Corresponds to the JSON property `fromHeader`
        # @return [String]
        attr_accessor :from_header
      
        # The content type of the file derived from the file extension of the URL path.
        # The URL path is assumed to represent a file name (which is typically only true
        # for agents that are providing a REST API).
        # Corresponds to the JSON property `fromUrlPath`
        # @return [String]
        attr_accessor :from_url_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_guess = args[:best_guess] if args.key?(:best_guess)
          @from_bytes = args[:from_bytes] if args.key?(:from_bytes)
          @from_file_name = args[:from_file_name] if args.key?(:from_file_name)
          @from_header = args[:from_header] if args.key?(:from_header)
          @from_url_path = args[:from_url_path] if args.key?(:from_url_path)
        end
      end
      
      # Deployment information for a specific release channel. Used in requests to
      # update deployment parameters.
      class DeployInfo
        include Google::Apis::Core::Hashable
      
        # Required. The current deploy percentage for the release channel (nonnegative
        # number between 0 and 100).
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
        end
      end
      
      # Backend response for a Diff get checksums response. For details on the Scotty
      # Diff protocol, visit http://go/scotty-diff-protocol.
      class DiffChecksumsResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `checksumsLocation`
        # @return [Google::Apis::ChromewebstoreV2::CompositeMedia]
        attr_accessor :checksums_location
      
        # The chunk size of checksums. Must be a multiple of 256KB.
        # Corresponds to the JSON property `chunkSizeBytes`
        # @return [Fixnum]
        attr_accessor :chunk_size_bytes
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::ChromewebstoreV2::CompositeMedia]
        attr_accessor :object_location
      
        # The total size of the server object.
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # The object version of the object the checksums are being returned for.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_location = args[:checksums_location] if args.key?(:checksums_location)
          @chunk_size_bytes = args[:chunk_size_bytes] if args.key?(:chunk_size_bytes)
          @object_location = args[:object_location] if args.key?(:object_location)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Backend response for a Diff download response. For details on the Scotty Diff
      # protocol, visit http://go/scotty-diff-protocol.
      class DiffDownloadResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::ChromewebstoreV2::CompositeMedia]
        attr_accessor :object_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_location = args[:object_location] if args.key?(:object_location)
        end
      end
      
      # A Diff upload request. For details on the Scotty Diff protocol, visit http://
      # go/scotty-diff-protocol.
      class DiffUploadRequest
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `checksumsInfo`
        # @return [Google::Apis::ChromewebstoreV2::CompositeMedia]
        attr_accessor :checksums_info
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectInfo`
        # @return [Google::Apis::ChromewebstoreV2::CompositeMedia]
        attr_accessor :object_info
      
        # The object version of the object that is the base version the incoming diff
        # script will be applied to. This field will always be filled in.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_info = args[:checksums_info] if args.key?(:checksums_info)
          @object_info = args[:object_info] if args.key?(:object_info)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Backend response for a Diff upload request. For details on the Scotty Diff
      # protocol, visit http://go/scotty-diff-protocol.
      class DiffUploadResponse
        include Google::Apis::Core::Hashable
      
        # The object version of the object at the server. Must be included in the end
        # notification response. The version in the end notification response must
        # correspond to the new version of the object that is now stored at the server,
        # after the upload.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `originalObject`
        # @return [Google::Apis::ChromewebstoreV2::CompositeMedia]
        attr_accessor :original_object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_version = args[:object_version] if args.key?(:object_version)
          @original_object = args[:original_object] if args.key?(:original_object)
        end
      end
      
      # Backend response for a Diff get version response. For details on the Scotty
      # Diff protocol, visit http://go/scotty-diff-protocol.
      class DiffVersionResponse
        include Google::Apis::Core::Hashable
      
        # The total size of the server object.
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # The version of the object stored at the server.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Deployment information for a specific release channel
      class DistributionChannel
        include Google::Apis::Core::Hashable
      
        # The extension version provided in the manifest of the uploaded package.
        # Corresponds to the JSON property `crxVersion`
        # @return [String]
        attr_accessor :crx_version
      
        # The current deploy percentage for the release channel (nonnegative number
        # between 0 and 100).
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crx_version = args[:crx_version] if args.key?(:crx_version)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
        end
      end
      
      # Parameters specific to media downloads.
      class DownloadParameters
        include Google::Apis::Core::Hashable
      
        # A boolean to be returned in the response to Scotty. Allows/disallows gzip
        # encoding of the payload content when the server thinks it's advantageous (
        # hence, does not guarantee compression) which allows Scotty to GZip the
        # response to the client.
        # Corresponds to the JSON property `allowGzipCompression`
        # @return [Boolean]
        attr_accessor :allow_gzip_compression
        alias_method :allow_gzip_compression?, :allow_gzip_compression
      
        # Determining whether or not Apiary should skip the inclusion of any Content-
        # Range header on its response to Scotty.
        # Corresponds to the JSON property `ignoreRange`
        # @return [Boolean]
        attr_accessor :ignore_range
        alias_method :ignore_range?, :ignore_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_gzip_compression = args[:allow_gzip_compression] if args.key?(:allow_gzip_compression)
          @ignore_range = args[:ignore_range] if args.key?(:ignore_range)
        end
      end
      
      # Response message for `FetchItemStatus`.
      class FetchItemStatusResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Output only. The state of the last async upload for an item. Only set when
        # there has been an async upload for the item in the past 24 hours.
        # Corresponds to the JSON property `lastAsyncUploadState`
        # @return [String]
        attr_accessor :last_async_upload_state
      
        # The name of the requested item.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The public key of the item, which may be generated by the store.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # Details on the status of an item revision.
        # Corresponds to the JSON property `publishedItemRevisionStatus`
        # @return [Google::Apis::ChromewebstoreV2::ItemRevisionStatus]
        attr_accessor :published_item_revision_status
      
        # Details on the status of an item revision.
        # Corresponds to the JSON property `submittedItemRevisionStatus`
        # @return [Google::Apis::ChromewebstoreV2::ItemRevisionStatus]
        attr_accessor :submitted_item_revision_status
      
        # If true, the item has been taken down for a policy violation. Check the
        # developer dashboard for details.
        # Corresponds to the JSON property `takenDown`
        # @return [Boolean]
        attr_accessor :taken_down
        alias_method :taken_down?, :taken_down
      
        # If true, the item has been warned for a policy violation and will be taken
        # down if not resolved. Check the developer dashboard for details.
        # Corresponds to the JSON property `warned`
        # @return [Boolean]
        attr_accessor :warned
        alias_method :warned?, :warned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @last_async_upload_state = args[:last_async_upload_state] if args.key?(:last_async_upload_state)
          @name = args[:name] if args.key?(:name)
          @public_key = args[:public_key] if args.key?(:public_key)
          @published_item_revision_status = args[:published_item_revision_status] if args.key?(:published_item_revision_status)
          @submitted_item_revision_status = args[:submitted_item_revision_status] if args.key?(:submitted_item_revision_status)
          @taken_down = args[:taken_down] if args.key?(:taken_down)
          @warned = args[:warned] if args.key?(:warned)
        end
      end
      
      # Details on the status of an item revision.
      class ItemRevisionStatus
        include Google::Apis::Core::Hashable
      
        # Details on the package of the item
        # Corresponds to the JSON property `distributionChannels`
        # @return [Array<Google::Apis::ChromewebstoreV2::DistributionChannel>]
        attr_accessor :distribution_channels
      
        # Output only. Current state of the item
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution_channels = args[:distribution_channels] if args.key?(:distribution_channels)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A reference to data stored on the filesystem, on GFS or in blobstore.
      class Media
        include Google::Apis::Core::Hashable
      
        # Deprecated, use one of explicit hash type fields instead. Algorithm used for
        # calculating the hash. As of 2011/01/21, "MD5" is the only possible value for
        # this field. New values may be added at any time.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Use object_id instead.
        # Corresponds to the JSON property `bigstoreObjectRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bigstore_object_ref
      
        # Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be
        # the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating
        # v1, use blobstore2_info instead. For now, any v2 blob will also be represented
        # in this field as v1 BlobRef.
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # Information to read/write to blobstore2.
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::ChromewebstoreV2::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # A composite media composed of one or more media objects, set if reference_type
        # is COMPOSITE_MEDIA. The media length field must be set to the sum of the
        # lengths of all composite media objects. Note: All composite media must have
        # length specified.
        # Corresponds to the JSON property `compositeMedia`
        # @return [Array<Google::Apis::ChromewebstoreV2::CompositeMedia>]
        attr_accessor :composite_media
      
        # MIME type of the data
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Detailed Content-Type information from Scotty. The Content-Type of the media
        # will typically be filled in by the header or Scotty's best_guess, but this
        # extended information provides the backend with more information so that it can
        # make a better decision if needed. This is only used on media upload requests
        # from Scotty.
        # Corresponds to the JSON property `contentTypeInfo`
        # @return [Google::Apis::ChromewebstoreV2::ContentTypeInfo]
        attr_accessor :content_type_info
      
        # A binary data reference for a media download. Serves as a technology-agnostic
        # binary reference in some Google infrastructure. This value is a serialized
        # storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get
        # around the fact that the cosmo proto (as well as others it includes) doesn't
        # support JavaScript. This prevents us from including the actual type of this
        # field.
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # For Scotty Uploads: Scotty-provided hashes for uploads For Scotty Downloads: (
        # WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.) A Hash provided
        # by the agent to be used to verify the data being downloaded. Currently only
        # supported for inline payloads. Further, only crc32c_hash is currently
        # supported.
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # Backend response for a Diff get checksums response. For details on the Scotty
        # Diff protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffChecksumsResponse`
        # @return [Google::Apis::ChromewebstoreV2::DiffChecksumsResponse]
        attr_accessor :diff_checksums_response
      
        # Backend response for a Diff download response. For details on the Scotty Diff
        # protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffDownloadResponse`
        # @return [Google::Apis::ChromewebstoreV2::DiffDownloadResponse]
        attr_accessor :diff_download_response
      
        # A Diff upload request. For details on the Scotty Diff protocol, visit http://
        # go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffUploadRequest`
        # @return [Google::Apis::ChromewebstoreV2::DiffUploadRequest]
        attr_accessor :diff_upload_request
      
        # Backend response for a Diff upload request. For details on the Scotty Diff
        # protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffUploadResponse`
        # @return [Google::Apis::ChromewebstoreV2::DiffUploadResponse]
        attr_accessor :diff_upload_response
      
        # Backend response for a Diff get version response. For details on the Scotty
        # Diff protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffVersionResponse`
        # @return [Google::Apis::ChromewebstoreV2::DiffVersionResponse]
        attr_accessor :diff_version_response
      
        # Parameters specific to media downloads.
        # Corresponds to the JSON property `downloadParameters`
        # @return [Google::Apis::ChromewebstoreV2::DownloadParameters]
        attr_accessor :download_parameters
      
        # Original file name
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Deprecated, use one of explicit hash type fields instead. These two hash
        # related fields will only be populated on Scotty based media uploads and will
        # contain the content of the hash group in the NotificationRequest: http://cs/#
        # google3/blobstore2/api/scotty/service/proto/upload_listener.proto&q=class:Hash
        # Hex encoded hash value of the uploaded media.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # For Scotty uploads only. If a user sends a hash code and the backend has
        # requested that Scotty verify the upload against the client hash, Scotty will
        # perform the check on behalf of the backend and will reject it if the hashes
        # don't match. This is set to true if Scotty performed this verification.
        # Corresponds to the JSON property `hashVerified`
        # @return [Boolean]
        attr_accessor :hash_verified
        alias_method :hash_verified?, :hash_verified
      
        # Media data, set if reference_type is INLINE
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # |is_potential_retry| is set false only when Scotty is certain that it has not
        # sent the request before. When a client resumes an upload, this field must be
        # set true in agent calls, because Scotty cannot be certain that it has never
        # sent the request before due to potential failure in the session state
        # persistence.
        # Corresponds to the JSON property `isPotentialRetry`
        # @return [Boolean]
        attr_accessor :is_potential_retry
        alias_method :is_potential_retry?, :is_potential_retry
      
        # Size of the data, in bytes
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Scotty-provided MD5 hash for an upload.
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # Media id to forward to the operation GetMedia. Can be set if reference_type is
        # GET_MEDIA.
        # Corresponds to the JSON property `mediaId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :media_id
      
        # This is a copy of the tech.blob.ObjectId proto, which could not be used
        # directly here due to transitive closure issues with JavaScript support; see
        # http://b/8801763.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::ChromewebstoreV2::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Path to the data, set if reference_type is PATH
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Describes what the field reference contains.
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # Scotty-provided SHA1 hash for an upload.
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        # Scotty-provided SHA256 hash for an upload.
        # Corresponds to the JSON property `sha256Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256_hash
      
        # Time at which the media data was last updated, in milliseconds since UNIX
        # epoch
        # Corresponds to the JSON property `timestamp`
        # @return [Fixnum]
        attr_accessor :timestamp
      
        # A unique fingerprint/version id for the media data
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @bigstore_object_ref = args[:bigstore_object_ref] if args.key?(:bigstore_object_ref)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @composite_media = args[:composite_media] if args.key?(:composite_media)
          @content_type = args[:content_type] if args.key?(:content_type)
          @content_type_info = args[:content_type_info] if args.key?(:content_type_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @diff_checksums_response = args[:diff_checksums_response] if args.key?(:diff_checksums_response)
          @diff_download_response = args[:diff_download_response] if args.key?(:diff_download_response)
          @diff_upload_request = args[:diff_upload_request] if args.key?(:diff_upload_request)
          @diff_upload_response = args[:diff_upload_response] if args.key?(:diff_upload_response)
          @diff_version_response = args[:diff_version_response] if args.key?(:diff_version_response)
          @download_parameters = args[:download_parameters] if args.key?(:download_parameters)
          @filename = args[:filename] if args.key?(:filename)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @hash_verified = args[:hash_verified] if args.key?(:hash_verified)
          @inline = args[:inline] if args.key?(:inline)
          @is_potential_retry = args[:is_potential_retry] if args.key?(:is_potential_retry)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @media_id = args[:media_id] if args.key?(:media_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Extra information added to operations that support Scotty media requests.
      class MediaRequestInfo
        include Google::Apis::Core::Hashable
      
        # The number of current bytes uploaded or downloaded.
        # Corresponds to the JSON property `currentBytes`
        # @return [Fixnum]
        attr_accessor :current_bytes
      
        # Data to be copied to backend requests. Custom data is returned to Scotty in
        # the agent_state field, which Scotty will then provide in subsequent upload
        # notifications.
        # Corresponds to the JSON property `customData`
        # @return [String]
        attr_accessor :custom_data
      
        # Set if the http request info is diff encoded. The value of this field is the
        # version number of the base revision. This is corresponding to Apiary's
        # mediaDiffObjectVersion (//depot/google3/java/com/google/api/server/media/
        # variable/DiffObjectVersionVariable.java). See go/esf-scotty-diff-upload for
        # more information.
        # Corresponds to the JSON property `diffObjectVersion`
        # @return [String]
        attr_accessor :diff_object_version
      
        # The existence of the final_status field indicates that this is the last call
        # to the agent for this request_id. http://google3/uploader/agent/scotty_agent.
        # proto?l=737&rcl=347601929
        # Corresponds to the JSON property `finalStatus`
        # @return [Fixnum]
        attr_accessor :final_status
      
        # The type of notification received from Scotty.
        # Corresponds to the JSON property `notificationType`
        # @return [String]
        attr_accessor :notification_type
      
        # The physical headers provided by RequestReceivedParameters in Scotty request.
        # type is uploader_service.KeyValuePairs.
        # Corresponds to the JSON property `physicalHeaders`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :physical_headers
      
        # The Scotty request ID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The partition of the Scotty server handling this request. type is
        # uploader_service.RequestReceivedParamsServingInfo LINT.IfChange(
        # request_received_params_serving_info_annotations) LINT.ThenChange()
        # Corresponds to the JSON property `requestReceivedParamsServingInfo`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :request_received_params_serving_info
      
        # The total size of the file.
        # Corresponds to the JSON property `totalBytes`
        # @return [Fixnum]
        attr_accessor :total_bytes
      
        # Whether the total bytes field contains an estimated data.
        # Corresponds to the JSON property `totalBytesIsEstimated`
        # @return [Boolean]
        attr_accessor :total_bytes_is_estimated
        alias_method :total_bytes_is_estimated?, :total_bytes_is_estimated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_bytes = args[:current_bytes] if args.key?(:current_bytes)
          @custom_data = args[:custom_data] if args.key?(:custom_data)
          @diff_object_version = args[:diff_object_version] if args.key?(:diff_object_version)
          @final_status = args[:final_status] if args.key?(:final_status)
          @notification_type = args[:notification_type] if args.key?(:notification_type)
          @physical_headers = args[:physical_headers] if args.key?(:physical_headers)
          @request_id = args[:request_id] if args.key?(:request_id)
          @request_received_params_serving_info = args[:request_received_params_serving_info] if args.key?(:request_received_params_serving_info)
          @total_bytes = args[:total_bytes] if args.key?(:total_bytes)
          @total_bytes_is_estimated = args[:total_bytes_is_estimated] if args.key?(:total_bytes_is_estimated)
        end
      end
      
      # This is a copy of the tech.blob.ObjectId proto, which could not be used
      # directly here due to transitive closure issues with JavaScript support; see
      # http://b/8801763.
      class ObjectIdProp
        include Google::Apis::Core::Hashable
      
        # The name of the bucket to which this object belongs.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Generation of the object. Generations are monotonically increasing across
        # writes, allowing them to be be compared to determine which generation is newer.
        # If this is omitted in a request, then you are requesting the live object. See
        # http://go/bigstore-versions
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # The name of the object.
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @generation = args[:generation] if args.key?(:generation)
          @object_name = args[:object_name] if args.key?(:object_name)
        end
      end
      
      # Request message for PublishItem.
      class PublishItemRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Additional deploy information including the desired initial
        # percentage rollout. Defaults to the current value saved in the developer
        # dashboard if unset.
        # Corresponds to the JSON property `deployInfos`
        # @return [Array<Google::Apis::ChromewebstoreV2::DeployInfo>]
        attr_accessor :deploy_infos
      
        # Optional. Use this to control if the item is published immediately on approval
        # or staged for publishing in the future. Defaults to `DEFAULT_PUBLISH` if unset.
        # Corresponds to the JSON property `publishType`
        # @return [String]
        attr_accessor :publish_type
      
        # Optional. Whether to attempt to skip item review. The API will validate if the
        # item qualifies and return a validation error if the item requires review.
        # Defaults to `false` if unset.
        # Corresponds to the JSON property `skipReview`
        # @return [Boolean]
        attr_accessor :skip_review
        alias_method :skip_review?, :skip_review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_infos = args[:deploy_infos] if args.key?(:deploy_infos)
          @publish_type = args[:publish_type] if args.key?(:publish_type)
          @skip_review = args[:skip_review] if args.key?(:skip_review)
        end
      end
      
      # Response message for `PublishItem`.
      class PublishItemResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The name of the item that was submitted
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the submission.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request message for SetPublishedDeployPercentage.
      class SetPublishedDeployPercentageRequest
        include Google::Apis::Core::Hashable
      
        # Required. Unscaled percentage value for the publised revision (nonnegative
        # number between 0 and 100). It must be larger than the existing target
        # percentage.
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
        end
      end
      
      # Response message for `SetPublishedDeployPercentage`.
      class SetPublishedDeployPercentageResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UploadItemPackage.
      class UploadItemPackageRequest
        include Google::Apis::Core::Hashable
      
        # A reference to data stored on the filesystem, on GFS or in blobstore.
        # Corresponds to the JSON property `blob`
        # @return [Google::Apis::ChromewebstoreV2::Media]
        attr_accessor :blob
      
        # Extra information added to operations that support Scotty media requests.
        # Corresponds to the JSON property `mediaRequestInfo`
        # @return [Google::Apis::ChromewebstoreV2::MediaRequestInfo]
        attr_accessor :media_request_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob = args[:blob] if args.key?(:blob)
          @media_request_info = args[:media_request_info] if args.key?(:media_request_info)
        end
      end
      
      # Response message for `UploadItemPackage`.
      class UploadItemPackageResponse
        include Google::Apis::Core::Hashable
      
        # The extension version provided in the manifest of the uploaded package. This
        # will not be set if the upload is still in progress (`upload_state` is `
        # UPLOAD_IN_PROGRESS`).
        # Corresponds to the JSON property `crxVersion`
        # @return [String]
        attr_accessor :crx_version
      
        # Output only. The ID of the item the package was uploaded to.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The name of the item the package was uploaded to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the upload. If `upload_state` is `UPLOAD_IN_PROGRESS`
        # , you can poll for updates using the fetchStatus method.
        # Corresponds to the JSON property `uploadState`
        # @return [String]
        attr_accessor :upload_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crx_version = args[:crx_version] if args.key?(:crx_version)
          @item_id = args[:item_id] if args.key?(:item_id)
          @name = args[:name] if args.key?(:name)
          @upload_state = args[:upload_state] if args.key?(:upload_state)
        end
      end
    end
  end
end
