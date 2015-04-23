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
    module DriveV2
      
      class AboutRepresentation < Google::Apis::Core::JsonRepresentation
        
        class AdditionalRoleInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
          class RoleSetRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class ExportFormatRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class FeatureRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ImportFormatRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class MaxUploadSizeRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class QuotaBytesByServiceRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class AppRepresentation < Google::Apis::Core::JsonRepresentation
        
        class IconRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class AppListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChangeListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChildListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChildReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ContextRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class CommentListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentReplyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentReplyListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FileRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ImageMediaMetadataRepresentation < Google::Apis::Core::JsonRepresentation
          
          class LocationRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class IndexableTextRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class LabelsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class VideoMediaMetadataRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class FileListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParentListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParentReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PropertyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PropertyListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RevisionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RevisionListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        
        class PictureRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end

      # @private
      class AboutRepresentation < Google::Apis::Core::JsonRepresentation
        class AdditionalRoleInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ExportFormatRepresentation < Google::Apis::Core::JsonRepresentation; end
        class FeatureRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ImportFormatRepresentation < Google::Apis::Core::JsonRepresentation; end
        class MaxUploadSizeRepresentation < Google::Apis::Core::JsonRepresentation; end
        class QuotaBytesByServiceRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        collection :additional_role_info, as: 'additionalRoleInfo', class: Google::Apis::DriveV2::About::AdditionalRoleInfo, decorator: Google::Apis::DriveV2::AboutRepresentation::AdditionalRoleInfoRepresentation
        
        
        property :domain_sharing_policy, as: 'domainSharingPolicy'
        property :etag, as: 'etag'
        collection :export_formats, as: 'exportFormats', class: Google::Apis::DriveV2::About::ExportFormat, decorator: Google::Apis::DriveV2::AboutRepresentation::ExportFormatRepresentation
        
        
        collection :features, as: 'features', class: Google::Apis::DriveV2::About::Feature, decorator: Google::Apis::DriveV2::AboutRepresentation::FeatureRepresentation
        
        
        collection :folder_color_palette, as: 'folderColorPalette'
        
        collection :import_formats, as: 'importFormats', class: Google::Apis::DriveV2::About::ImportFormat, decorator: Google::Apis::DriveV2::AboutRepresentation::ImportFormatRepresentation
        
        
        property :is_current_app_installed, as: 'isCurrentAppInstalled'
        property :kind, as: 'kind'
        property :language_code, as: 'languageCode'
        property :largest_change_id, as: 'largestChangeId'
        collection :max_upload_sizes, as: 'maxUploadSizes', class: Google::Apis::DriveV2::About::MaxUploadSize, decorator: Google::Apis::DriveV2::AboutRepresentation::MaxUploadSizeRepresentation
        
        
        property :name, as: 'name'
        property :permission_id, as: 'permissionId'
        collection :quota_bytes_by_service, as: 'quotaBytesByService', class: Google::Apis::DriveV2::About::QuotaBytesByService, decorator: Google::Apis::DriveV2::AboutRepresentation::QuotaBytesByServiceRepresentation
        
        
        property :quota_bytes_total, as: 'quotaBytesTotal'
        property :quota_bytes_used, as: 'quotaBytesUsed'
        property :quota_bytes_used_aggregate, as: 'quotaBytesUsedAggregate'
        property :quota_bytes_used_in_trash, as: 'quotaBytesUsedInTrash'
        property :quota_type, as: 'quotaType'
        property :remaining_change_ids, as: 'remainingChangeIds'
        property :root_folder_id, as: 'rootFolderId'
        property :self_link, as: 'selfLink'
        property :user, as: 'user', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        
        
        # @private
        class AdditionalRoleInfoRepresentation < Google::Apis::Core::JsonRepresentation
          class RoleSetRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          collection :role_sets, as: 'roleSets', class: Google::Apis::DriveV2::About::AdditionalRoleInfo::RoleSet, decorator: Google::Apis::DriveV2::AboutRepresentation::AdditionalRoleInfoRepresentation::RoleSetRepresentation
          
          
          property :type, as: 'type'
          
          
          # @private
          class RoleSetRepresentation < Google::Apis::Core::JsonRepresentation
            
            collection :additional_roles, as: 'additionalRoles'
            
            property :primary_role, as: 'primaryRole'
          end
        end
        
        # @private
        class ExportFormatRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :source, as: 'source'
          collection :targets, as: 'targets'
        end
        
        # @private
        class FeatureRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :feature_name, as: 'featureName'
          property :feature_rate, as: 'featureRate'
        end
        
        # @private
        class ImportFormatRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :source, as: 'source'
          collection :targets, as: 'targets'
        end
        
        # @private
        class MaxUploadSizeRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :size, as: 'size'
          property :type, as: 'type'
        end
        
        # @private
        class QuotaBytesByServiceRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :bytes_used, as: 'bytesUsed'
          property :service_name, as: 'serviceName'
        end
      end

      # @private
      class AppRepresentation < Google::Apis::Core::JsonRepresentation
        class IconRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :authorized, as: 'authorized'
        property :create_in_folder_template, as: 'createInFolderTemplate'
        property :create_url, as: 'createUrl'
        property :has_drive_wide_scope, as: 'hasDriveWideScope'
        collection :icons, as: 'icons', class: Google::Apis::DriveV2::App::Icon, decorator: Google::Apis::DriveV2::AppRepresentation::IconRepresentation
        
        
        property :id, as: 'id'
        property :installed, as: 'installed'
        property :kind, as: 'kind'
        property :long_description, as: 'longDescription'
        property :name, as: 'name'
        property :object_type, as: 'objectType'
        property :open_url_template, as: 'openUrlTemplate'
        collection :primary_file_extensions, as: 'primaryFileExtensions'
        
        collection :primary_mime_types, as: 'primaryMimeTypes'
        
        property :product_id, as: 'productId'
        property :product_url, as: 'productUrl'
        collection :secondary_file_extensions, as: 'secondaryFileExtensions'
        
        collection :secondary_mime_types, as: 'secondaryMimeTypes'
        
        property :short_description, as: 'shortDescription'
        property :supports_create, as: 'supportsCreate'
        property :supports_import, as: 'supportsImport'
        property :supports_multi_open, as: 'supportsMultiOpen'
        property :supports_offline_create, as: 'supportsOfflineCreate'
        property :use_by_default, as: 'useByDefault'
        
        
        # @private
        class IconRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :category, as: 'category'
          property :icon_url, as: 'iconUrl'
          property :size, as: 'size'
        end
      end

      # @private
      class AppListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :default_app_ids, as: 'defaultAppIds'
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::App, decorator: Google::Apis::DriveV2::AppRepresentation
        
        
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ChangeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :deleted, as: 'deleted'
        property :file, as: 'file', class: Google::Apis::DriveV2::File, decorator: Google::Apis::DriveV2::FileRepresentation
        
        property :file_id, as: 'fileId'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :modification_date, as: 'modificationDate', type: DateTime
        property :self_link, as: 'selfLink'
      end

      # @private
      class ChangeListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::Change, decorator: Google::Apis::DriveV2::ChangeRepresentation
        
        
        property :kind, as: 'kind'
        property :largest_change_id, as: 'largestChangeId'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
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

      # @private
      class ChildListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::ChildReference, decorator: Google::Apis::DriveV2::ChildReferenceRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ChildReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :child_link, as: 'childLink'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        class ContextRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :anchor, as: 'anchor'
        property :author, as: 'author', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        property :comment_id, as: 'commentId'
        property :content, as: 'content'
        property :context, as: 'context', class: Google::Apis::DriveV2::Comment::Context, decorator: Google::Apis::DriveV2::CommentRepresentation::ContextRepresentation
        
        property :created_date, as: 'createdDate', type: DateTime
        property :deleted, as: 'deleted'
        property :file_id, as: 'fileId'
        property :file_title, as: 'fileTitle'
        property :html_content, as: 'htmlContent'
        property :kind, as: 'kind'
        property :modified_date, as: 'modifiedDate', type: DateTime
        collection :replies, as: 'replies', class: Google::Apis::DriveV2::CommentReply, decorator: Google::Apis::DriveV2::CommentReplyRepresentation
        
        
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        
        
        # @private
        class ContextRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end

      # @private
      class CommentListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::DriveV2::Comment, decorator: Google::Apis::DriveV2::CommentRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class CommentReplyRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :author, as: 'author', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        property :content, as: 'content'
        property :created_date, as: 'createdDate', type: DateTime
        property :deleted, as: 'deleted'
        property :html_content, as: 'htmlContent'
        property :kind, as: 'kind'
        property :modified_date, as: 'modifiedDate', type: DateTime
        property :reply_id, as: 'replyId'
        property :verb, as: 'verb'
      end

      # @private
      class CommentReplyListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::DriveV2::CommentReply, decorator: Google::Apis::DriveV2::CommentReplyRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class FileRepresentation < Google::Apis::Core::JsonRepresentation
        class ImageMediaMetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
        class IndexableTextRepresentation < Google::Apis::Core::JsonRepresentation; end
        class LabelsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation; end
        class VideoMediaMetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :alternate_link, as: 'alternateLink'
        property :app_data_contents, as: 'appDataContents'
        property :copyable, as: 'copyable'
        property :created_date, as: 'createdDate', type: DateTime
        property :default_open_with_link, as: 'defaultOpenWithLink'
        property :description, as: 'description'
        property :download_url, as: 'downloadUrl'
        property :editable, as: 'editable'
        property :embed_link, as: 'embedLink'
        property :etag, as: 'etag'
        property :explicitly_trashed, as: 'explicitlyTrashed'
        hash :export_links, as: 'exportLinks'
        
        property :file_extension, as: 'fileExtension'
        property :file_size, as: 'fileSize'
        property :folder_color_rgb, as: 'folderColorRgb'
        property :head_revision_id, as: 'headRevisionId'
        property :icon_link, as: 'iconLink'
        property :id, as: 'id'
        property :image_media_metadata, as: 'imageMediaMetadata', class: Google::Apis::DriveV2::File::ImageMediaMetadata, decorator: Google::Apis::DriveV2::FileRepresentation::ImageMediaMetadataRepresentation
        
        property :indexable_text, as: 'indexableText', class: Google::Apis::DriveV2::File::IndexableText, decorator: Google::Apis::DriveV2::FileRepresentation::IndexableTextRepresentation
        
        property :kind, as: 'kind'
        property :labels, as: 'labels', class: Google::Apis::DriveV2::File::Labels, decorator: Google::Apis::DriveV2::FileRepresentation::LabelsRepresentation
        
        property :last_modifying_user, as: 'lastModifyingUser', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        property :last_modifying_user_name, as: 'lastModifyingUserName'
        property :last_viewed_by_me_date, as: 'lastViewedByMeDate', type: DateTime
        property :marked_viewed_by_me_date, as: 'markedViewedByMeDate', type: DateTime
        property :md5_checksum, as: 'md5Checksum'
        property :mime_type, as: 'mimeType'
        property :modified_by_me_date, as: 'modifiedByMeDate', type: DateTime
        property :modified_date, as: 'modifiedDate', type: DateTime
        hash :open_with_links, as: 'openWithLinks'
        
        property :original_filename, as: 'originalFilename'
        collection :owner_names, as: 'ownerNames'
        
        collection :owners, as: 'owners', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        
        collection :parents, as: 'parents', class: Google::Apis::DriveV2::ParentReference, decorator: Google::Apis::DriveV2::ParentReferenceRepresentation
        
        
        collection :permissions, as: 'permissions', class: Google::Apis::DriveV2::Permission, decorator: Google::Apis::DriveV2::PermissionRepresentation
        
        
        collection :properties, as: 'properties', class: Google::Apis::DriveV2::Property, decorator: Google::Apis::DriveV2::PropertyRepresentation
        
        
        property :quota_bytes_used, as: 'quotaBytesUsed'
        property :self_link, as: 'selfLink'
        property :shared, as: 'shared'
        property :shared_with_me_date, as: 'sharedWithMeDate', type: DateTime
        property :sharing_user, as: 'sharingUser', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        property :thumbnail, as: 'thumbnail', class: Google::Apis::DriveV2::File::Thumbnail, decorator: Google::Apis::DriveV2::FileRepresentation::ThumbnailRepresentation
        
        property :thumbnail_link, as: 'thumbnailLink'
        property :title, as: 'title'
        property :user_permission, as: 'userPermission', class: Google::Apis::DriveV2::Permission, decorator: Google::Apis::DriveV2::PermissionRepresentation
        
        property :version, as: 'version'
        property :video_media_metadata, as: 'videoMediaMetadata', class: Google::Apis::DriveV2::File::VideoMediaMetadata, decorator: Google::Apis::DriveV2::FileRepresentation::VideoMediaMetadataRepresentation
        
        property :web_content_link, as: 'webContentLink'
        property :web_view_link, as: 'webViewLink'
        property :writers_can_share, as: 'writersCanShare'
        
        
        # @private
        class ImageMediaMetadataRepresentation < Google::Apis::Core::JsonRepresentation
          class LocationRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :aperture, as: 'aperture'
          property :camera_make, as: 'cameraMake'
          property :camera_model, as: 'cameraModel'
          property :color_space, as: 'colorSpace'
          property :date, as: 'date'
          property :exposure_bias, as: 'exposureBias'
          property :exposure_mode, as: 'exposureMode'
          property :exposure_time, as: 'exposureTime'
          property :flash_used, as: 'flashUsed'
          property :focal_length, as: 'focalLength'
          property :height, as: 'height'
          property :iso_speed, as: 'isoSpeed'
          property :lens, as: 'lens'
          property :location, as: 'location', class: Google::Apis::DriveV2::File::ImageMediaMetadata::Location, decorator: Google::Apis::DriveV2::FileRepresentation::ImageMediaMetadataRepresentation::LocationRepresentation
          
          property :max_aperture_value, as: 'maxApertureValue'
          property :metering_mode, as: 'meteringMode'
          property :rotation, as: 'rotation'
          property :sensor, as: 'sensor'
          property :subject_distance, as: 'subjectDistance'
          property :white_balance, as: 'whiteBalance'
          property :width, as: 'width'
          
          
          # @private
          class LocationRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :altitude, as: 'altitude'
            property :latitude, as: 'latitude'
            property :longitude, as: 'longitude'
          end
        end
        
        # @private
        class IndexableTextRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :text, as: 'text'
        end
        
        # @private
        class LabelsRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :hidden, as: 'hidden'
          property :restricted, as: 'restricted'
          property :starred, as: 'starred'
          property :trashed, as: 'trashed'
          property :viewed, as: 'viewed'
        end
        
        # @private
        class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :image, as: 'image'
          property :mime_type, as: 'mimeType'
        end
        
        # @private
        class VideoMediaMetadataRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :duration_millis, as: 'durationMillis'
          property :height, as: 'height'
          property :width, as: 'width'
        end
      end

      # @private
      class FileListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::File, decorator: Google::Apis::DriveV2::FileRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ParentListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::ParentReference, decorator: Google::Apis::DriveV2::ParentReferenceRepresentation
        
        
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ParentReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :is_root, as: 'isRoot'
        property :kind, as: 'kind'
        property :parent_link, as: 'parentLink'
        property :self_link, as: 'selfLink'
      end

      # @private
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :additional_roles, as: 'additionalRoles'
        
        property :auth_key, as: 'authKey'
        property :domain, as: 'domain'
        property :email_address, as: 'emailAddress'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :photo_link, as: 'photoLink'
        property :role, as: 'role'
        property :self_link, as: 'selfLink'
        property :type, as: 'type'
        property :value, as: 'value'
        property :with_link, as: 'withLink'
      end

      # @private
      class PermissionIdRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
      end

      # @private
      class PermissionListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::Permission, decorator: Google::Apis::DriveV2::PermissionRepresentation
        
        
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class PropertyRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        property :key, as: 'key'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
        property :value, as: 'value'
        property :visibility, as: 'visibility'
      end

      # @private
      class PropertyListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::Property, decorator: Google::Apis::DriveV2::PropertyRepresentation
        
        
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class RevisionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :download_url, as: 'downloadUrl'
        property :etag, as: 'etag'
        hash :export_links, as: 'exportLinks'
        
        property :file_size, as: 'fileSize'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_modifying_user, as: 'lastModifyingUser', class: Google::Apis::DriveV2::User, decorator: Google::Apis::DriveV2::UserRepresentation
        
        property :last_modifying_user_name, as: 'lastModifyingUserName'
        property :md5_checksum, as: 'md5Checksum'
        property :mime_type, as: 'mimeType'
        property :modified_date, as: 'modifiedDate', type: DateTime
        property :original_filename, as: 'originalFilename'
        property :pinned, as: 'pinned'
        property :publish_auto, as: 'publishAuto'
        property :published, as: 'published'
        property :published_link, as: 'publishedLink'
        property :published_outside_domain, as: 'publishedOutsideDomain'
        property :self_link, as: 'selfLink'
      end

      # @private
      class RevisionListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DriveV2::Revision, decorator: Google::Apis::DriveV2::RevisionRepresentation
        
        
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
      end

      # @private
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        class PictureRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :display_name, as: 'displayName'
        property :email_address, as: 'emailAddress'
        property :is_authenticated_user, as: 'isAuthenticatedUser'
        property :kind, as: 'kind'
        property :permission_id, as: 'permissionId'
        property :picture, as: 'picture', class: Google::Apis::DriveV2::User::Picture, decorator: Google::Apis::DriveV2::UserRepresentation::PictureRepresentation
        
        
        
        # @private
        class PictureRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :url, as: 'url'
        end
      end
    end
  end
end
