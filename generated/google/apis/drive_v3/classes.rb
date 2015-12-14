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
      
      # Information about the user, the user's Drive, and system capabilities.
      class About
        include Google::Apis::Core::Hashable
      
        # Whether the user has installed the requesting app.
        # Corresponds to the JSON property `appInstalled`
        # @return [Boolean]
        attr_accessor :app_installed
        alias_method :app_installed?, :app_installed
      
        # A map of source MIME type to possible targets for all supported exports.
        # Corresponds to the JSON property `exportFormats`
        # @return [Hash<String,Array<String>>]
        attr_accessor :export_formats
      
        # The currently supported folder colors as RGB hex strings.
        # Corresponds to the JSON property `folderColorPalette`
        # @return [Array<String>]
        attr_accessor :folder_color_palette
      
        # A map of source MIME type to possible targets for all supported imports.
        # Corresponds to the JSON property `importFormats`
        # @return [Hash<String,Array<String>>]
        attr_accessor :import_formats
      
        # This is always drive#about.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A map of maximum import sizes by MIME type, in bytes.
        # Corresponds to the JSON property `maxImportSizes`
        # @return [Hash<String,String>]
        attr_accessor :max_import_sizes
      
        # The maximum upload size in bytes.
        # Corresponds to the JSON property `maxUploadSize`
        # @return [String]
        attr_accessor :max_upload_size
      
        # The user's storage quota limits and usage. All fields are measured in bytes.
        # Corresponds to the JSON property `storageQuota`
        # @return [Google::Apis::DriveV3::About::StorageQuota]
        attr_accessor :storage_quota
      
        # Information about a Drive user.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::DriveV3::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_installed = args[:app_installed] unless args[:app_installed].nil?
          @export_formats = args[:export_formats] unless args[:export_formats].nil?
          @folder_color_palette = args[:folder_color_palette] unless args[:folder_color_palette].nil?
          @import_formats = args[:import_formats] unless args[:import_formats].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_import_sizes = args[:max_import_sizes] unless args[:max_import_sizes].nil?
          @max_upload_size = args[:max_upload_size] unless args[:max_upload_size].nil?
          @storage_quota = args[:storage_quota] unless args[:storage_quota].nil?
          @user = args[:user] unless args[:user].nil?
        end
        
        # The user's storage quota limits and usage. All fields are measured in bytes.
        class StorageQuota
          include Google::Apis::Core::Hashable
        
          # The usage limit, if applicable. This will not be present if the user has
          # unlimited storage.
          # Corresponds to the JSON property `limit`
          # @return [String]
          attr_accessor :limit
        
          # The total usage across all services.
          # Corresponds to the JSON property `usage`
          # @return [String]
          attr_accessor :usage
        
          # The usage by all files in Google Drive.
          # Corresponds to the JSON property `usageInDrive`
          # @return [String]
          attr_accessor :usage_in_drive
        
          # The usage by trashed files in Google Drive.
          # Corresponds to the JSON property `usageInDriveTrash`
          # @return [String]
          attr_accessor :usage_in_drive_trash
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @limit = args[:limit] unless args[:limit].nil?
            @usage = args[:usage] unless args[:usage].nil?
            @usage_in_drive = args[:usage_in_drive] unless args[:usage_in_drive].nil?
            @usage_in_drive_trash = args[:usage_in_drive_trash] unless args[:usage_in_drive_trash].nil?
          end
        end
      end
      
      # A change to a file.
      class Change
        include Google::Apis::Core::Hashable
      
        # The metadata for a file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::DriveV3::File]
        attr_accessor :file
      
        # The ID of the file which has changed.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # This is always drive#change.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the file has been removed from the view of the changes list, for
        # example by deletion or lost access.
        # Corresponds to the JSON property `removed`
        # @return [Boolean]
        attr_accessor :removed
        alias_method :removed?, :removed
      
        # The time of this change (RFC 3339 date-time).
        # Corresponds to the JSON property `time`
        # @return [DateTime]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] unless args[:file].nil?
          @file_id = args[:file_id] unless args[:file_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @removed = args[:removed] unless args[:removed].nil?
          @time = args[:time] unless args[:time].nil?
        end
      end
      
      # A list of changes for a user.
      class ChangeList
        include Google::Apis::Core::Hashable
      
        # The page of changes.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::DriveV3::Change>]
        attr_accessor :changes
      
        # This is always drive#changeList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The starting page token for future changes. This will be present only if the
        # end of the current changes list has been reached.
        # Corresponds to the JSON property `newStartPageToken`
        # @return [String]
        attr_accessor :new_start_page_token
      
        # The page token for the next page of changes. This will be absent if the end of
        # the current changes list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changes = args[:changes] unless args[:changes].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @new_start_page_token = args[:new_start_page_token] unless args[:new_start_page_token].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # An notification channel used to watch for resource changes.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The address where notifications are delivered for this channel.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Date and time of notification channel expiration, expressed as a Unix
        # timestamp, in milliseconds. Optional.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource. Value: the fixed string "api#channel".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # A Boolean value to indicate whether payload is wanted. Optional.
        # Corresponds to the JSON property `payload`
        # @return [Boolean]
        attr_accessor :payload
        alias_method :payload?, :payload
      
        # An opaque ID that identifies the resource being watched on this channel.
        # Stable across different API versions.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # A version-specific identifier for the watched resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # An arbitrary string delivered to the target address with each notification
        # delivered over this channel. Optional.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of delivery mechanism used for this channel.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @expiration = args[:expiration] unless args[:expiration].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @params = args[:params] unless args[:params].nil?
          @payload = args[:payload] unless args[:payload].nil?
          @resource_id = args[:resource_id] unless args[:resource_id].nil?
          @resource_uri = args[:resource_uri] unless args[:resource_uri].nil?
          @token = args[:token] unless args[:token].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A comment on a file.
      class Comment
        include Google::Apis::Core::Hashable
      
        # A region of the document represented as a JSON string. See anchor
        # documentation for details on how to define and interpret anchor properties.
        # Corresponds to the JSON property `anchor`
        # @return [String]
        attr_accessor :anchor
      
        # Information about a Drive user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DriveV3::User]
        attr_accessor :author
      
        # The plain text content of the comment. This field is used for setting the
        # content, while htmlContent should be displayed.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The time at which the comment was created (RFC 3339 date-time).
        # Corresponds to the JSON property `createdTime`
        # @return [DateTime]
        attr_accessor :created_time
      
        # Whether the comment has been deleted. A deleted comment has no content.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The content of the comment with HTML formatting.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # The ID of the comment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#comment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The last time the comment or any of its replies was modified (RFC 3339 date-
        # time).
        # Corresponds to the JSON property `modifiedTime`
        # @return [DateTime]
        attr_accessor :modified_time
      
        # The file content to which the comment refers, typically within the anchor
        # region. For a text file, for example, this would be the text at the location
        # of the comment.
        # Corresponds to the JSON property `quotedFileContent`
        # @return [Google::Apis::DriveV3::Comment::QuotedFileContent]
        attr_accessor :quoted_file_content
      
        # The full list of replies to the comment in chronological order.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::DriveV3::Reply>]
        attr_accessor :replies
      
        # Whether the comment has been resolved by one of its replies.
        # Corresponds to the JSON property `resolved`
        # @return [Boolean]
        attr_accessor :resolved
        alias_method :resolved?, :resolved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anchor = args[:anchor] unless args[:anchor].nil?
          @author = args[:author] unless args[:author].nil?
          @content = args[:content] unless args[:content].nil?
          @created_time = args[:created_time] unless args[:created_time].nil?
          @deleted = args[:deleted] unless args[:deleted].nil?
          @html_content = args[:html_content] unless args[:html_content].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @modified_time = args[:modified_time] unless args[:modified_time].nil?
          @quoted_file_content = args[:quoted_file_content] unless args[:quoted_file_content].nil?
          @replies = args[:replies] unless args[:replies].nil?
          @resolved = args[:resolved] unless args[:resolved].nil?
        end
        
        # The file content to which the comment refers, typically within the anchor
        # region. For a text file, for example, this would be the text at the location
        # of the comment.
        class QuotedFileContent
          include Google::Apis::Core::Hashable
        
          # The MIME type of the quoted content.
          # Corresponds to the JSON property `mimeType`
          # @return [String]
          attr_accessor :mime_type
        
          # The quoted content itself. This is interpreted as plain text if set through
          # the API.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @mime_type = args[:mime_type] unless args[:mime_type].nil?
            @value = args[:value] unless args[:value].nil?
          end
        end
      end
      
      # A list of comments on a file.
      class CommentList
        include Google::Apis::Core::Hashable
      
        # The page of comments.
        # Corresponds to the JSON property `comments`
        # @return [Array<Google::Apis::DriveV3::Comment>]
        attr_accessor :comments
      
        # This is always drive#commentList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of comments. This will be absent if the end
        # of the comments list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comments = args[:comments] unless args[:comments].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The metadata for a file.
      class File
        include Google::Apis::Core::Hashable
      
        # A collection of arbitrary key-value pairs which are private to the requesting
        # app.
        # Entries with null values are cleared in update and copy requests.
        # Corresponds to the JSON property `appProperties`
        # @return [Hash<String,String>]
        attr_accessor :app_properties
      
        # Capabilities the current user has on the file.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::DriveV3::File::Capabilities]
        attr_accessor :capabilities
      
        # Additional information about the content of the file. These fields are never
        # populated in responses.
        # Corresponds to the JSON property `contentHints`
        # @return [Google::Apis::DriveV3::File::ContentHints]
        attr_accessor :content_hints
      
        # The time at which the file was created (RFC 3339 date-time).
        # Corresponds to the JSON property `createdTime`
        # @return [DateTime]
        attr_accessor :created_time
      
        # A short description of the file.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Whether the file has been explicitly trashed, as opposed to recursively
        # trashed from a parent folder.
        # Corresponds to the JSON property `explicitlyTrashed`
        # @return [Boolean]
        attr_accessor :explicitly_trashed
        alias_method :explicitly_trashed?, :explicitly_trashed
      
        # The final component of fullFileExtension. This is only available for files
        # with binary content in Drive.
        # Corresponds to the JSON property `fileExtension`
        # @return [String]
        attr_accessor :file_extension
      
        # The color for a folder as an RGB hex string. The supported colors are
        # published in the folderColorPalette field of the About resource.
        # If an unsupported color is specified, the closest color in the palette will be
        # used instead.
        # Corresponds to the JSON property `folderColorRgb`
        # @return [String]
        attr_accessor :folder_color_rgb
      
        # The full file extension extracted from the name field. May contain multiple
        # concatenated extensions, such as "tar.gz". This is only available for files
        # with binary content in Drive.
        # This is automatically updated when the name field changes, however it is not
        # cleared if the new name does not contain a valid extension.
        # Corresponds to the JSON property `fullFileExtension`
        # @return [String]
        attr_accessor :full_file_extension
      
        # The ID of the file's head revision. This is currently only available for files
        # with binary content in Drive.
        # Corresponds to the JSON property `headRevisionId`
        # @return [String]
        attr_accessor :head_revision_id
      
        # A static, unauthenticated link to the file's icon.
        # Corresponds to the JSON property `iconLink`
        # @return [String]
        attr_accessor :icon_link
      
        # The ID of the file.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional metadata about image media, if available.
        # Corresponds to the JSON property `imageMediaMetadata`
        # @return [Google::Apis::DriveV3::File::ImageMediaMetadata]
        attr_accessor :image_media_metadata
      
        # This is always drive#file.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information about a Drive user.
        # Corresponds to the JSON property `lastModifyingUser`
        # @return [Google::Apis::DriveV3::User]
        attr_accessor :last_modifying_user
      
        # The MD5 checksum for the content of the file. This is only applicable to files
        # with binary content in Drive.
        # Corresponds to the JSON property `md5Checksum`
        # @return [String]
        attr_accessor :md5_checksum
      
        # The MIME type of the file.
        # Drive will attempt to automatically detect an appropriate value from uploaded
        # content if no value is provided. The value cannot be changed unless a new
        # revision is uploaded.
        # If a file is created with a Google Doc MIME type, the uploaded content will be
        # imported if possible. The supported import formats are published in the About
        # resource.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The last time the file was modified by the user (RFC 3339 date-time).
        # Corresponds to the JSON property `modifiedByMeTime`
        # @return [DateTime]
        attr_accessor :modified_by_me_time
      
        # The last time the file was modified by anyone (RFC 3339 date-time).
        # Note that setting modifiedTime will also update modifiedByMeTime for the user.
        # Corresponds to the JSON property `modifiedTime`
        # @return [DateTime]
        attr_accessor :modified_time
      
        # The name of the file. This is not necessarily unique within a folder.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The original filename of the uploaded content if available, or else the
        # original value of the name field. This is only available for files with binary
        # content in Drive.
        # Corresponds to the JSON property `originalFilename`
        # @return [String]
        attr_accessor :original_filename
      
        # Whether the user owns the file.
        # Corresponds to the JSON property `ownedByMe`
        # @return [Boolean]
        attr_accessor :owned_by_me
        alias_method :owned_by_me?, :owned_by_me
      
        # The owners of the file. Currently, only certain legacy files may have more
        # than one owner.
        # Corresponds to the JSON property `owners`
        # @return [Array<Google::Apis::DriveV3::User>]
        attr_accessor :owners
      
        # The IDs of the parent folders which contain the file.
        # If not specified as part of a create request, the file will be placed directly
        # in the My Drive folder. Update requests must use the addParents and
        # removeParents parameters to modify the values.
        # Corresponds to the JSON property `parents`
        # @return [Array<String>]
        attr_accessor :parents
      
        # The full list of permissions for the file. This is only available if the
        # requesting user can share the file.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::DriveV3::Permission>]
        attr_accessor :permissions
      
        # A collection of arbitrary key-value pairs which are visible to all apps.
        # Entries with null values are cleared in update and copy requests.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # The number of storage quota bytes used by the file. This includes the head
        # revision as well as previous revisions with keepForever enabled.
        # Corresponds to the JSON property `quotaBytesUsed`
        # @return [String]
        attr_accessor :quota_bytes_used
      
        # Whether the file has been shared.
        # Corresponds to the JSON property `shared`
        # @return [Boolean]
        attr_accessor :shared
        alias_method :shared?, :shared
      
        # The time at which the file was shared with the user, if applicable (RFC 3339
        # date-time).
        # Corresponds to the JSON property `sharedWithMeTime`
        # @return [DateTime]
        attr_accessor :shared_with_me_time
      
        # Information about a Drive user.
        # Corresponds to the JSON property `sharingUser`
        # @return [Google::Apis::DriveV3::User]
        attr_accessor :sharing_user
      
        # The size of the file's content in bytes. This is only applicable to files with
        # binary content in Drive.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # The list of spaces which contain the file. The currently supported values are '
        # drive', 'appDataFolder' and 'photos'.
        # Corresponds to the JSON property `spaces`
        # @return [Array<String>]
        attr_accessor :spaces
      
        # Whether the user has starred the file.
        # Corresponds to the JSON property `starred`
        # @return [Boolean]
        attr_accessor :starred
        alias_method :starred?, :starred
      
        # A short-lived link to the file's thumbnail, if available. Typically lasts on
        # the order of hours.
        # Corresponds to the JSON property `thumbnailLink`
        # @return [String]
        attr_accessor :thumbnail_link
      
        # Whether the file has been trashed, either explicitly or from a trashed parent
        # folder. Only the owner may trash a file, and other users cannot see files in
        # the owner's trash.
        # Corresponds to the JSON property `trashed`
        # @return [Boolean]
        attr_accessor :trashed
        alias_method :trashed?, :trashed
      
        # A monotonically increasing version number for the file. This reflects every
        # change made to the file on the server, even those not visible to the user.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Additional metadata about video media. This may not be available immediately
        # upon upload.
        # Corresponds to the JSON property `videoMediaMetadata`
        # @return [Google::Apis::DriveV3::File::VideoMediaMetadata]
        attr_accessor :video_media_metadata
      
        # Whether the file has been viewed by this user.
        # Corresponds to the JSON property `viewedByMe`
        # @return [Boolean]
        attr_accessor :viewed_by_me
        alias_method :viewed_by_me?, :viewed_by_me
      
        # The last time the file was viewed by the user (RFC 3339 date-time).
        # Corresponds to the JSON property `viewedByMeTime`
        # @return [DateTime]
        attr_accessor :viewed_by_me_time
      
        # Whether users with only reader or commenter permission can copy the file's
        # content. This affects copy, download, and print operations.
        # Corresponds to the JSON property `viewersCanCopyContent`
        # @return [Boolean]
        attr_accessor :viewers_can_copy_content
        alias_method :viewers_can_copy_content?, :viewers_can_copy_content
      
        # A link for downloading the content of the file in a browser. This is only
        # available for files with binary content in Drive.
        # Corresponds to the JSON property `webContentLink`
        # @return [String]
        attr_accessor :web_content_link
      
        # A link for opening the file in a relevant Google editor or viewer in a browser.
        # Corresponds to the JSON property `webViewLink`
        # @return [String]
        attr_accessor :web_view_link
      
        # Whether users with only writer permission can modify the file's permissions.
        # Corresponds to the JSON property `writersCanShare`
        # @return [Boolean]
        attr_accessor :writers_can_share
        alias_method :writers_can_share?, :writers_can_share
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_properties = args[:app_properties] unless args[:app_properties].nil?
          @capabilities = args[:capabilities] unless args[:capabilities].nil?
          @content_hints = args[:content_hints] unless args[:content_hints].nil?
          @created_time = args[:created_time] unless args[:created_time].nil?
          @description = args[:description] unless args[:description].nil?
          @explicitly_trashed = args[:explicitly_trashed] unless args[:explicitly_trashed].nil?
          @file_extension = args[:file_extension] unless args[:file_extension].nil?
          @folder_color_rgb = args[:folder_color_rgb] unless args[:folder_color_rgb].nil?
          @full_file_extension = args[:full_file_extension] unless args[:full_file_extension].nil?
          @head_revision_id = args[:head_revision_id] unless args[:head_revision_id].nil?
          @icon_link = args[:icon_link] unless args[:icon_link].nil?
          @id = args[:id] unless args[:id].nil?
          @image_media_metadata = args[:image_media_metadata] unless args[:image_media_metadata].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modifying_user = args[:last_modifying_user] unless args[:last_modifying_user].nil?
          @md5_checksum = args[:md5_checksum] unless args[:md5_checksum].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @modified_by_me_time = args[:modified_by_me_time] unless args[:modified_by_me_time].nil?
          @modified_time = args[:modified_time] unless args[:modified_time].nil?
          @name = args[:name] unless args[:name].nil?
          @original_filename = args[:original_filename] unless args[:original_filename].nil?
          @owned_by_me = args[:owned_by_me] unless args[:owned_by_me].nil?
          @owners = args[:owners] unless args[:owners].nil?
          @parents = args[:parents] unless args[:parents].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @properties = args[:properties] unless args[:properties].nil?
          @quota_bytes_used = args[:quota_bytes_used] unless args[:quota_bytes_used].nil?
          @shared = args[:shared] unless args[:shared].nil?
          @shared_with_me_time = args[:shared_with_me_time] unless args[:shared_with_me_time].nil?
          @sharing_user = args[:sharing_user] unless args[:sharing_user].nil?
          @size = args[:size] unless args[:size].nil?
          @spaces = args[:spaces] unless args[:spaces].nil?
          @starred = args[:starred] unless args[:starred].nil?
          @thumbnail_link = args[:thumbnail_link] unless args[:thumbnail_link].nil?
          @trashed = args[:trashed] unless args[:trashed].nil?
          @version = args[:version] unless args[:version].nil?
          @video_media_metadata = args[:video_media_metadata] unless args[:video_media_metadata].nil?
          @viewed_by_me = args[:viewed_by_me] unless args[:viewed_by_me].nil?
          @viewed_by_me_time = args[:viewed_by_me_time] unless args[:viewed_by_me_time].nil?
          @viewers_can_copy_content = args[:viewers_can_copy_content] unless args[:viewers_can_copy_content].nil?
          @web_content_link = args[:web_content_link] unless args[:web_content_link].nil?
          @web_view_link = args[:web_view_link] unless args[:web_view_link].nil?
          @writers_can_share = args[:writers_can_share] unless args[:writers_can_share].nil?
        end
        
        # Capabilities the current user has on the file.
        class Capabilities
          include Google::Apis::Core::Hashable
        
          # Whether the user can comment on the file.
          # Corresponds to the JSON property `canComment`
          # @return [Boolean]
          attr_accessor :can_comment
          alias_method :can_comment?, :can_comment
        
          # Whether the user can copy the file.
          # Corresponds to the JSON property `canCopy`
          # @return [Boolean]
          attr_accessor :can_copy
          alias_method :can_copy?, :can_copy
        
          # Whether the user can edit the file's content.
          # Corresponds to the JSON property `canEdit`
          # @return [Boolean]
          attr_accessor :can_edit
          alias_method :can_edit?, :can_edit
        
          # Whether the user can modify the file's permissions and sharing settings.
          # Corresponds to the JSON property `canShare`
          # @return [Boolean]
          attr_accessor :can_share
          alias_method :can_share?, :can_share
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @can_comment = args[:can_comment] unless args[:can_comment].nil?
            @can_copy = args[:can_copy] unless args[:can_copy].nil?
            @can_edit = args[:can_edit] unless args[:can_edit].nil?
            @can_share = args[:can_share] unless args[:can_share].nil?
          end
        end
        
        # Additional information about the content of the file. These fields are never
        # populated in responses.
        class ContentHints
          include Google::Apis::Core::Hashable
        
          # Text to be indexed for the file to improve fullText queries. This is limited
          # to 128KB in length and may contain HTML elements.
          # Corresponds to the JSON property `indexableText`
          # @return [String]
          attr_accessor :indexable_text
        
          # A thumbnail for the file. This will only be used if Drive cannot generate a
          # standard thumbnail.
          # Corresponds to the JSON property `thumbnail`
          # @return [Google::Apis::DriveV3::File::ContentHints::Thumbnail]
          attr_accessor :thumbnail
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @indexable_text = args[:indexable_text] unless args[:indexable_text].nil?
            @thumbnail = args[:thumbnail] unless args[:thumbnail].nil?
          end
          
          # A thumbnail for the file. This will only be used if Drive cannot generate a
          # standard thumbnail.
          class Thumbnail
            include Google::Apis::Core::Hashable
          
            # The thumbnail data encoded with URL-safe Base64 (RFC 4648 section 5).
            # Corresponds to the JSON property `image`
            # @return [String]
            attr_accessor :image
          
            # The MIME type of the thumbnail.
            # Corresponds to the JSON property `mimeType`
            # @return [String]
            attr_accessor :mime_type
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @image = args[:image] unless args[:image].nil?
              @mime_type = args[:mime_type] unless args[:mime_type].nil?
            end
          end
        end
        
        # Additional metadata about image media, if available.
        class ImageMediaMetadata
          include Google::Apis::Core::Hashable
        
          # The aperture used to create the photo (f-number).
          # Corresponds to the JSON property `aperture`
          # @return [Float]
          attr_accessor :aperture
        
          # The make of the camera used to create the photo.
          # Corresponds to the JSON property `cameraMake`
          # @return [String]
          attr_accessor :camera_make
        
          # The model of the camera used to create the photo.
          # Corresponds to the JSON property `cameraModel`
          # @return [String]
          attr_accessor :camera_model
        
          # The color space of the photo.
          # Corresponds to the JSON property `colorSpace`
          # @return [String]
          attr_accessor :color_space
        
          # The exposure bias of the photo (APEX value).
          # Corresponds to the JSON property `exposureBias`
          # @return [Float]
          attr_accessor :exposure_bias
        
          # The exposure mode used to create the photo.
          # Corresponds to the JSON property `exposureMode`
          # @return [String]
          attr_accessor :exposure_mode
        
          # The length of the exposure, in seconds.
          # Corresponds to the JSON property `exposureTime`
          # @return [Float]
          attr_accessor :exposure_time
        
          # Whether a flash was used to create the photo.
          # Corresponds to the JSON property `flashUsed`
          # @return [Boolean]
          attr_accessor :flash_used
          alias_method :flash_used?, :flash_used
        
          # The focal length used to create the photo, in millimeters.
          # Corresponds to the JSON property `focalLength`
          # @return [Float]
          attr_accessor :focal_length
        
          # The height of the image in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # The ISO speed used to create the photo.
          # Corresponds to the JSON property `isoSpeed`
          # @return [Fixnum]
          attr_accessor :iso_speed
        
          # The lens used to create the photo.
          # Corresponds to the JSON property `lens`
          # @return [String]
          attr_accessor :lens
        
          # Geographic location information stored in the image.
          # Corresponds to the JSON property `location`
          # @return [Google::Apis::DriveV3::File::ImageMediaMetadata::Location]
          attr_accessor :location
        
          # The smallest f-number of the lens at the focal length used to create the photo
          # (APEX value).
          # Corresponds to the JSON property `maxApertureValue`
          # @return [Float]
          attr_accessor :max_aperture_value
        
          # The metering mode used to create the photo.
          # Corresponds to the JSON property `meteringMode`
          # @return [String]
          attr_accessor :metering_mode
        
          # The rotation in clockwise degrees from the image's original orientation.
          # Corresponds to the JSON property `rotation`
          # @return [Fixnum]
          attr_accessor :rotation
        
          # The type of sensor used to create the photo.
          # Corresponds to the JSON property `sensor`
          # @return [String]
          attr_accessor :sensor
        
          # The distance to the subject of the photo, in meters.
          # Corresponds to the JSON property `subjectDistance`
          # @return [Fixnum]
          attr_accessor :subject_distance
        
          # The date and time the photo was taken (EXIF DateTime).
          # Corresponds to the JSON property `time`
          # @return [String]
          attr_accessor :time
        
          # The white balance mode used to create the photo.
          # Corresponds to the JSON property `whiteBalance`
          # @return [String]
          attr_accessor :white_balance
        
          # The width of the image in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @aperture = args[:aperture] unless args[:aperture].nil?
            @camera_make = args[:camera_make] unless args[:camera_make].nil?
            @camera_model = args[:camera_model] unless args[:camera_model].nil?
            @color_space = args[:color_space] unless args[:color_space].nil?
            @exposure_bias = args[:exposure_bias] unless args[:exposure_bias].nil?
            @exposure_mode = args[:exposure_mode] unless args[:exposure_mode].nil?
            @exposure_time = args[:exposure_time] unless args[:exposure_time].nil?
            @flash_used = args[:flash_used] unless args[:flash_used].nil?
            @focal_length = args[:focal_length] unless args[:focal_length].nil?
            @height = args[:height] unless args[:height].nil?
            @iso_speed = args[:iso_speed] unless args[:iso_speed].nil?
            @lens = args[:lens] unless args[:lens].nil?
            @location = args[:location] unless args[:location].nil?
            @max_aperture_value = args[:max_aperture_value] unless args[:max_aperture_value].nil?
            @metering_mode = args[:metering_mode] unless args[:metering_mode].nil?
            @rotation = args[:rotation] unless args[:rotation].nil?
            @sensor = args[:sensor] unless args[:sensor].nil?
            @subject_distance = args[:subject_distance] unless args[:subject_distance].nil?
            @time = args[:time] unless args[:time].nil?
            @white_balance = args[:white_balance] unless args[:white_balance].nil?
            @width = args[:width] unless args[:width].nil?
          end
          
          # Geographic location information stored in the image.
          class Location
            include Google::Apis::Core::Hashable
          
            # The altitude stored in the image.
            # Corresponds to the JSON property `altitude`
            # @return [Float]
            attr_accessor :altitude
          
            # The latitude stored in the image.
            # Corresponds to the JSON property `latitude`
            # @return [Float]
            attr_accessor :latitude
          
            # The longitude stored in the image.
            # Corresponds to the JSON property `longitude`
            # @return [Float]
            attr_accessor :longitude
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @altitude = args[:altitude] unless args[:altitude].nil?
              @latitude = args[:latitude] unless args[:latitude].nil?
              @longitude = args[:longitude] unless args[:longitude].nil?
            end
          end
        end
        
        # Additional metadata about video media. This may not be available immediately
        # upon upload.
        class VideoMediaMetadata
          include Google::Apis::Core::Hashable
        
          # The duration of the video in milliseconds.
          # Corresponds to the JSON property `durationMillis`
          # @return [String]
          attr_accessor :duration_millis
        
          # The height of the video in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # The width of the video in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @duration_millis = args[:duration_millis] unless args[:duration_millis].nil?
            @height = args[:height] unless args[:height].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
      end
      
      # A list of files.
      class FileList
        include Google::Apis::Core::Hashable
      
        # The page of files.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::DriveV3::File>]
        attr_accessor :files
      
        # This is always drive#fileList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of files. This will be absent if the end of
        # the files list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] unless args[:files].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A list of generated file IDs which can be provided in create requests.
      class GeneratedIds
        include Google::Apis::Core::Hashable
      
        # The IDs generated for the requesting user in the specified space.
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # This is always drive#generatedIds
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The type of file that can be created with these IDs.
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] unless args[:ids].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @space = args[:space] unless args[:space].nil?
        end
      end
      
      # A permission for a file. A permission grants a user, group, domain or the
      # world access to a file or a folder hierarchy.
      class Permission
        include Google::Apis::Core::Hashable
      
        # Whether the permission allows the file to be discovered through search. This
        # is only applicable for permissions of type domain or anyone.
        # Corresponds to the JSON property `allowFileDiscovery`
        # @return [Boolean]
        attr_accessor :allow_file_discovery
        alias_method :allow_file_discovery?, :allow_file_discovery
      
        # A displayable name for users, groups or domains.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The domain to which this permission refers.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The email address of the user or group to which this permission refers.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The ID of this permission. This is a unique identifier for the grantee, and is
        # published in User resources as permissionId.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#permission.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the user's profile photo, if available.
        # Corresponds to the JSON property `photoLink`
        # @return [String]
        attr_accessor :photo_link
      
        # The role granted by this permission. Valid values are:
        # - owner
        # - writer
        # - commenter
        # - reader
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The type of the grantee. Valid values are:
        # - user
        # - group
        # - domain
        # - anyone
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_file_discovery = args[:allow_file_discovery] unless args[:allow_file_discovery].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @domain = args[:domain] unless args[:domain].nil?
          @email_address = args[:email_address] unless args[:email_address].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @photo_link = args[:photo_link] unless args[:photo_link].nil?
          @role = args[:role] unless args[:role].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A list of permissions for a file.
      class PermissionList
        include Google::Apis::Core::Hashable
      
        # This is always drive#permissionList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The full list of permissions.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::DriveV3::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
      
      # A reply to a comment on a file.
      class Reply
        include Google::Apis::Core::Hashable
      
        # The action the reply performed to the parent comment. Valid values are:
        # - resolve
        # - reopen
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Information about a Drive user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DriveV3::User]
        attr_accessor :author
      
        # The plain text content of the reply. This field is used for setting the
        # content, while htmlContent should be displayed. This is required on creates if
        # no action is specified.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The time at which the reply was created (RFC 3339 date-time).
        # Corresponds to the JSON property `createdTime`
        # @return [DateTime]
        attr_accessor :created_time
      
        # Whether the reply has been deleted. A deleted reply has no content.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The content of the reply with HTML formatting.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # The ID of the reply.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#reply.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The last time the reply was modified (RFC 3339 date-time).
        # Corresponds to the JSON property `modifiedTime`
        # @return [DateTime]
        attr_accessor :modified_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] unless args[:action].nil?
          @author = args[:author] unless args[:author].nil?
          @content = args[:content] unless args[:content].nil?
          @created_time = args[:created_time] unless args[:created_time].nil?
          @deleted = args[:deleted] unless args[:deleted].nil?
          @html_content = args[:html_content] unless args[:html_content].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @modified_time = args[:modified_time] unless args[:modified_time].nil?
        end
      end
      
      # A list of replies to a comment on a file.
      class ReplyList
        include Google::Apis::Core::Hashable
      
        # This is always drive#replyList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of replies. This will be absent if the end of
        # the replies list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The page of replies.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::DriveV3::Reply>]
        attr_accessor :replies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @replies = args[:replies] unless args[:replies].nil?
        end
      end
      
      # The metadata for a revision to a file.
      class Revision
        include Google::Apis::Core::Hashable
      
        # The ID of the revision.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether to keep this revision forever, even if it is no longer the head
        # revision. If not set, the revision will be automatically purged 30 days after
        # newer content is uploaded. This can be set on a maximum of 200 revisions for a
        # file.
        # This field is only applicable to files with binary content in Drive.
        # Corresponds to the JSON property `keepForever`
        # @return [Boolean]
        attr_accessor :keep_forever
        alias_method :keep_forever?, :keep_forever
      
        # This is always drive#revision.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information about a Drive user.
        # Corresponds to the JSON property `lastModifyingUser`
        # @return [Google::Apis::DriveV3::User]
        attr_accessor :last_modifying_user
      
        # The MD5 checksum of the revision's content. This is only applicable to files
        # with binary content in Drive.
        # Corresponds to the JSON property `md5Checksum`
        # @return [String]
        attr_accessor :md5_checksum
      
        # The MIME type of the revision.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The last time the revision was modified (RFC 3339 date-time).
        # Corresponds to the JSON property `modifiedTime`
        # @return [DateTime]
        attr_accessor :modified_time
      
        # The original filename used to create this revision. This is only applicable to
        # files with binary content in Drive.
        # Corresponds to the JSON property `originalFilename`
        # @return [String]
        attr_accessor :original_filename
      
        # Whether subsequent revisions will be automatically republished. This is only
        # applicable to Google Docs.
        # Corresponds to the JSON property `publishAuto`
        # @return [Boolean]
        attr_accessor :publish_auto
        alias_method :publish_auto?, :publish_auto
      
        # Whether this revision is published. This is only applicable to Google Docs.
        # Corresponds to the JSON property `published`
        # @return [Boolean]
        attr_accessor :published
        alias_method :published?, :published
      
        # Whether this revision is published outside the domain. This is only applicable
        # to Google Docs.
        # Corresponds to the JSON property `publishedOutsideDomain`
        # @return [Boolean]
        attr_accessor :published_outside_domain
        alias_method :published_outside_domain?, :published_outside_domain
      
        # The size of the revision's content in bytes. This is only applicable to files
        # with binary content in Drive.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @keep_forever = args[:keep_forever] unless args[:keep_forever].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modifying_user = args[:last_modifying_user] unless args[:last_modifying_user].nil?
          @md5_checksum = args[:md5_checksum] unless args[:md5_checksum].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @modified_time = args[:modified_time] unless args[:modified_time].nil?
          @original_filename = args[:original_filename] unless args[:original_filename].nil?
          @publish_auto = args[:publish_auto] unless args[:publish_auto].nil?
          @published = args[:published] unless args[:published].nil?
          @published_outside_domain = args[:published_outside_domain] unless args[:published_outside_domain].nil?
          @size = args[:size] unless args[:size].nil?
        end
      end
      
      # A list of revisions of a file.
      class RevisionList
        include Google::Apis::Core::Hashable
      
        # This is always drive#revisionList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The full list of revisions.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DriveV3::Revision>]
        attr_accessor :revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @revisions = args[:revisions] unless args[:revisions].nil?
        end
      end
      
      # 
      class StartPageToken
        include Google::Apis::Core::Hashable
      
        # This is always drive#startPageToken.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The starting page token for listing changes.
        # Corresponds to the JSON property `startPageToken`
        # @return [String]
        attr_accessor :start_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @start_page_token = args[:start_page_token] unless args[:start_page_token].nil?
        end
      end
      
      # Information about a Drive user.
      class User
        include Google::Apis::Core::Hashable
      
        # A plain text displayable name for this user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email address of the user. This may not be present in certain contexts if
        # the user has not made their email address visible to the requester.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # This is always drive#user.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether this user is the requesting user.
        # Corresponds to the JSON property `me`
        # @return [Boolean]
        attr_accessor :me
        alias_method :me?, :me
      
        # The user's ID as visible in Permission resources.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # A link to the user's profile photo, if available.
        # Corresponds to the JSON property `photoLink`
        # @return [String]
        attr_accessor :photo_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email_address = args[:email_address] unless args[:email_address].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @me = args[:me] unless args[:me].nil?
          @permission_id = args[:permission_id] unless args[:permission_id].nil?
          @photo_link = args[:photo_link] unless args[:photo_link].nil?
        end
      end
    end
  end
end
