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
    module DriveV3
      
      class About
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class StorageQuota
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Change
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChangeList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Comment
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class QuotedFileContent
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommentList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class File
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Capabilities
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class ContentHints
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Thumbnail
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class ImageMediaMetadata
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Location
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class VideoMediaMetadata
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeneratedIds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PermissionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplyList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Revision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevisionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class About
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_installed, as: 'appInstalled'
          hash :export_formats, as: 'exportFormats', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :folder_color_palette, as: 'folderColorPalette'
          hash :import_formats, as: 'importFormats', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :kind, as: 'kind'
          hash :max_import_sizes, as: 'maxImportSizes'
          property :max_upload_size, as: 'maxUploadSize'
          property :storage_quota, as: 'storageQuota', class: Google::Apis::DriveV3::About::StorageQuota, decorator: Google::Apis::DriveV3::About::StorageQuota::Representation
      
          property :user, as: 'user', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
        end
        
        class StorageQuota
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :limit, as: 'limit'
            property :usage, as: 'usage'
            property :usage_in_drive, as: 'usageInDrive'
            property :usage_in_drive_trash, as: 'usageInDriveTrash'
          end
        end
      end
      
      class Change
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file', class: Google::Apis::DriveV3::File, decorator: Google::Apis::DriveV3::File::Representation
      
          property :file_id, as: 'fileId'
          property :kind, as: 'kind'
          property :removed, as: 'removed'
          property :time, as: 'time', type: DateTime
      
        end
      end
      
      class ChangeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :changes, as: 'changes', class: Google::Apis::DriveV3::Change, decorator: Google::Apis::DriveV3::Change::Representation
      
          property :kind, as: 'kind'
          property :new_start_page_token, as: 'newStartPageToken'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :expiration, as: 'expiration'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :params, as: 'params'
          property :payload, as: 'payload'
          property :resource_id, as: 'resourceId'
          property :resource_uri, as: 'resourceUri'
          property :token, as: 'token'
          property :type, as: 'type'
        end
      end
      
      class Comment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anchor, as: 'anchor'
          property :author, as: 'author', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
          property :content, as: 'content'
          property :created_time, as: 'createdTime', type: DateTime
      
          property :deleted, as: 'deleted'
          property :html_content, as: 'htmlContent'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :modified_time, as: 'modifiedTime', type: DateTime
      
          property :quoted_file_content, as: 'quotedFileContent', class: Google::Apis::DriveV3::Comment::QuotedFileContent, decorator: Google::Apis::DriveV3::Comment::QuotedFileContent::Representation
      
          collection :replies, as: 'replies', class: Google::Apis::DriveV3::Reply, decorator: Google::Apis::DriveV3::Reply::Representation
      
          property :resolved, as: 'resolved'
        end
        
        class QuotedFileContent
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :mime_type, as: 'mimeType'
            property :value, as: 'value'
          end
        end
      end
      
      class CommentList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :comments, as: 'comments', class: Google::Apis::DriveV3::Comment, decorator: Google::Apis::DriveV3::Comment::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :app_properties, as: 'appProperties'
          property :capabilities, as: 'capabilities', class: Google::Apis::DriveV3::File::Capabilities, decorator: Google::Apis::DriveV3::File::Capabilities::Representation
      
          property :content_hints, as: 'contentHints', class: Google::Apis::DriveV3::File::ContentHints, decorator: Google::Apis::DriveV3::File::ContentHints::Representation
      
          property :created_time, as: 'createdTime', type: DateTime
      
          property :description, as: 'description'
          property :explicitly_trashed, as: 'explicitlyTrashed'
          property :file_extension, as: 'fileExtension'
          property :folder_color_rgb, as: 'folderColorRgb'
          property :full_file_extension, as: 'fullFileExtension'
          property :head_revision_id, as: 'headRevisionId'
          property :icon_link, as: 'iconLink'
          property :id, as: 'id'
          property :image_media_metadata, as: 'imageMediaMetadata', class: Google::Apis::DriveV3::File::ImageMediaMetadata, decorator: Google::Apis::DriveV3::File::ImageMediaMetadata::Representation
      
          property :is_app_authorized, as: 'isAppAuthorized'
          property :kind, as: 'kind'
          property :last_modifying_user, as: 'lastModifyingUser', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
          property :md5_checksum, as: 'md5Checksum'
          property :mime_type, as: 'mimeType'
          property :modified_by_me, as: 'modifiedByMe'
          property :modified_by_me_time, as: 'modifiedByMeTime', type: DateTime
      
          property :modified_time, as: 'modifiedTime', type: DateTime
      
          property :name, as: 'name'
          property :original_filename, as: 'originalFilename'
          property :owned_by_me, as: 'ownedByMe'
          collection :owners, as: 'owners', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
          collection :parents, as: 'parents'
          collection :permissions, as: 'permissions', class: Google::Apis::DriveV3::Permission, decorator: Google::Apis::DriveV3::Permission::Representation
      
          hash :properties, as: 'properties'
          property :quota_bytes_used, as: 'quotaBytesUsed'
          property :shared, as: 'shared'
          property :shared_with_me_time, as: 'sharedWithMeTime', type: DateTime
      
          property :sharing_user, as: 'sharingUser', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
          property :size, as: 'size'
          collection :spaces, as: 'spaces'
          property :starred, as: 'starred'
          property :thumbnail_link, as: 'thumbnailLink'
          property :trashed, as: 'trashed'
          property :version, as: 'version'
          property :video_media_metadata, as: 'videoMediaMetadata', class: Google::Apis::DriveV3::File::VideoMediaMetadata, decorator: Google::Apis::DriveV3::File::VideoMediaMetadata::Representation
      
          property :viewed_by_me, as: 'viewedByMe'
          property :viewed_by_me_time, as: 'viewedByMeTime', type: DateTime
      
          property :viewers_can_copy_content, as: 'viewersCanCopyContent'
          property :web_content_link, as: 'webContentLink'
          property :web_view_link, as: 'webViewLink'
          property :writers_can_share, as: 'writersCanShare'
        end
        
        class Capabilities
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :can_comment, as: 'canComment'
            property :can_copy, as: 'canCopy'
            property :can_edit, as: 'canEdit'
            property :can_read_revisions, as: 'canReadRevisions'
            property :can_share, as: 'canShare'
          end
        end
        
        class ContentHints
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :indexable_text, as: 'indexableText'
            property :thumbnail, as: 'thumbnail', class: Google::Apis::DriveV3::File::ContentHints::Thumbnail, decorator: Google::Apis::DriveV3::File::ContentHints::Thumbnail::Representation
        
          end
          
          class Thumbnail
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :image, :base64 => true, as: 'image'
              property :mime_type, as: 'mimeType'
            end
          end
        end
        
        class ImageMediaMetadata
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :aperture, as: 'aperture'
            property :camera_make, as: 'cameraMake'
            property :camera_model, as: 'cameraModel'
            property :color_space, as: 'colorSpace'
            property :exposure_bias, as: 'exposureBias'
            property :exposure_mode, as: 'exposureMode'
            property :exposure_time, as: 'exposureTime'
            property :flash_used, as: 'flashUsed'
            property :focal_length, as: 'focalLength'
            property :height, as: 'height'
            property :iso_speed, as: 'isoSpeed'
            property :lens, as: 'lens'
            property :location, as: 'location', class: Google::Apis::DriveV3::File::ImageMediaMetadata::Location, decorator: Google::Apis::DriveV3::File::ImageMediaMetadata::Location::Representation
        
            property :max_aperture_value, as: 'maxApertureValue'
            property :metering_mode, as: 'meteringMode'
            property :rotation, as: 'rotation'
            property :sensor, as: 'sensor'
            property :subject_distance, as: 'subjectDistance'
            property :time, as: 'time'
            property :white_balance, as: 'whiteBalance'
            property :width, as: 'width'
          end
          
          class Location
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :altitude, as: 'altitude'
              property :latitude, as: 'latitude'
              property :longitude, as: 'longitude'
            end
          end
        end
        
        class VideoMediaMetadata
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :duration_millis, as: 'durationMillis'
            property :height, as: 'height'
            property :width, as: 'width'
          end
        end
      end
      
      class FileList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :files, as: 'files', class: Google::Apis::DriveV3::File, decorator: Google::Apis::DriveV3::File::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GeneratedIds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
          property :kind, as: 'kind'
          property :space, as: 'space'
        end
      end
      
      class Permission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_file_discovery, as: 'allowFileDiscovery'
          property :display_name, as: 'displayName'
          property :domain, as: 'domain'
          property :email_address, as: 'emailAddress'
          property :expiration_time, as: 'expirationTime', type: DateTime
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :photo_link, as: 'photoLink'
          property :role, as: 'role'
          property :type, as: 'type'
        end
      end
      
      class PermissionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :permissions, as: 'permissions', class: Google::Apis::DriveV3::Permission, decorator: Google::Apis::DriveV3::Permission::Representation
      
        end
      end
      
      class Reply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :author, as: 'author', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
          property :content, as: 'content'
          property :created_time, as: 'createdTime', type: DateTime
      
          property :deleted, as: 'deleted'
          property :html_content, as: 'htmlContent'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :modified_time, as: 'modifiedTime', type: DateTime
      
        end
      end
      
      class ReplyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :replies, as: 'replies', class: Google::Apis::DriveV3::Reply, decorator: Google::Apis::DriveV3::Reply::Representation
      
        end
      end
      
      class Revision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :keep_forever, as: 'keepForever'
          property :kind, as: 'kind'
          property :last_modifying_user, as: 'lastModifyingUser', class: Google::Apis::DriveV3::User, decorator: Google::Apis::DriveV3::User::Representation
      
          property :md5_checksum, as: 'md5Checksum'
          property :mime_type, as: 'mimeType'
          property :modified_time, as: 'modifiedTime', type: DateTime
      
          property :original_filename, as: 'originalFilename'
          property :publish_auto, as: 'publishAuto'
          property :published, as: 'published'
          property :published_outside_domain, as: 'publishedOutsideDomain'
          property :size, as: 'size'
        end
      end
      
      class RevisionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :revisions, as: 'revisions', class: Google::Apis::DriveV3::Revision, decorator: Google::Apis::DriveV3::Revision::Representation
      
        end
      end
      
      class StartPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :start_page_token, as: 'startPageToken'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email_address, as: 'emailAddress'
          property :kind, as: 'kind'
          property :me, as: 'me'
          property :permission_id, as: 'permissionId'
          property :photo_link, as: 'photoLink'
        end
      end
    end
  end
end
