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
      
      # An item with user information and settings.
      class About
        include Google::Apis::Core::Hashable
      
        # Information about supported additional roles per file type. The most specific
        # type takes precedence.
        # Corresponds to the JSON property `additionalRoleInfo`
        # @return [Array<Google::Apis::DriveV2::About::AdditionalRoleInfo>]
        attr_accessor :additional_role_info
      
        # The domain sharing policy for the current user. Possible values are:
        # - allowed
        # - allowedWithWarning
        # - incomingOnly
        # - disallowed
        # Corresponds to the JSON property `domainSharingPolicy`
        # @return [String]
        attr_accessor :domain_sharing_policy
      
        # The ETag of the item.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The allowable export formats.
        # Corresponds to the JSON property `exportFormats`
        # @return [Array<Google::Apis::DriveV2::About::ExportFormat>]
        attr_accessor :export_formats
      
        # List of additional features enabled on this account.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::DriveV2::About::Feature>]
        attr_accessor :features
      
        # The palette of allowable folder colors as RGB hex strings.
        # Corresponds to the JSON property `folderColorPalette`
        # @return [Array<String>]
        attr_accessor :folder_color_palette
      
        # The allowable import formats.
        # Corresponds to the JSON property `importFormats`
        # @return [Array<Google::Apis::DriveV2::About::ImportFormat>]
        attr_accessor :import_formats
      
        # A boolean indicating whether the authenticated app is installed by the
        # authenticated user.
        # Corresponds to the JSON property `isCurrentAppInstalled`
        # @return [Boolean]
        attr_accessor :is_current_app_installed
        alias_method :is_current_app_installed?, :is_current_app_installed
      
        # This is always drive#about.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's language or locale code, as defined by BCP 47, with some extensions
        # from Unicode's LDML format (http://www.unicode.org/reports/tr35/).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The largest change id.
        # Corresponds to the JSON property `largestChangeId`
        # @return [String]
        attr_accessor :largest_change_id
      
        # List of max upload sizes for each file type. The most specific type takes
        # precedence.
        # Corresponds to the JSON property `maxUploadSizes`
        # @return [Array<Google::Apis::DriveV2::About::MaxUploadSize>]
        attr_accessor :max_upload_sizes
      
        # The name of the current user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current user's ID as visible in the permissions collection.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # The amount of storage quota used by different Google services.
        # Corresponds to the JSON property `quotaBytesByService`
        # @return [Array<Google::Apis::DriveV2::About::QuotaBytesByService>]
        attr_accessor :quota_bytes_by_service
      
        # The total number of quota bytes.
        # Corresponds to the JSON property `quotaBytesTotal`
        # @return [String]
        attr_accessor :quota_bytes_total
      
        # The number of quota bytes used by Google Drive.
        # Corresponds to the JSON property `quotaBytesUsed`
        # @return [String]
        attr_accessor :quota_bytes_used
      
        # The number of quota bytes used by all Google apps (Drive, Picasa, etc.).
        # Corresponds to the JSON property `quotaBytesUsedAggregate`
        # @return [String]
        attr_accessor :quota_bytes_used_aggregate
      
        # The number of quota bytes used by trashed items.
        # Corresponds to the JSON property `quotaBytesUsedInTrash`
        # @return [String]
        attr_accessor :quota_bytes_used_in_trash
      
        # The type of the user's storage quota. Possible values are:
        # - LIMITED
        # - UNLIMITED
        # Corresponds to the JSON property `quotaType`
        # @return [String]
        attr_accessor :quota_type
      
        # The number of remaining change ids, limited to no more than 2500.
        # Corresponds to the JSON property `remainingChangeIds`
        # @return [String]
        attr_accessor :remaining_change_ids
      
        # The id of the root folder.
        # Corresponds to the JSON property `rootFolderId`
        # @return [String]
        attr_accessor :root_folder_id
      
        # A link back to this item.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Information about a Drive user.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_role_info = args[:additional_role_info] if args.key?(:additional_role_info)
          @domain_sharing_policy = args[:domain_sharing_policy] if args.key?(:domain_sharing_policy)
          @etag = args[:etag] if args.key?(:etag)
          @export_formats = args[:export_formats] if args.key?(:export_formats)
          @features = args[:features] if args.key?(:features)
          @folder_color_palette = args[:folder_color_palette] if args.key?(:folder_color_palette)
          @import_formats = args[:import_formats] if args.key?(:import_formats)
          @is_current_app_installed = args[:is_current_app_installed] if args.key?(:is_current_app_installed)
          @kind = args[:kind] if args.key?(:kind)
          @language_code = args[:language_code] if args.key?(:language_code)
          @largest_change_id = args[:largest_change_id] if args.key?(:largest_change_id)
          @max_upload_sizes = args[:max_upload_sizes] if args.key?(:max_upload_sizes)
          @name = args[:name] if args.key?(:name)
          @permission_id = args[:permission_id] if args.key?(:permission_id)
          @quota_bytes_by_service = args[:quota_bytes_by_service] if args.key?(:quota_bytes_by_service)
          @quota_bytes_total = args[:quota_bytes_total] if args.key?(:quota_bytes_total)
          @quota_bytes_used = args[:quota_bytes_used] if args.key?(:quota_bytes_used)
          @quota_bytes_used_aggregate = args[:quota_bytes_used_aggregate] if args.key?(:quota_bytes_used_aggregate)
          @quota_bytes_used_in_trash = args[:quota_bytes_used_in_trash] if args.key?(:quota_bytes_used_in_trash)
          @quota_type = args[:quota_type] if args.key?(:quota_type)
          @remaining_change_ids = args[:remaining_change_ids] if args.key?(:remaining_change_ids)
          @root_folder_id = args[:root_folder_id] if args.key?(:root_folder_id)
          @self_link = args[:self_link] if args.key?(:self_link)
          @user = args[:user] if args.key?(:user)
        end
        
        # 
        class AdditionalRoleInfo
          include Google::Apis::Core::Hashable
        
          # The supported additional roles per primary role.
          # Corresponds to the JSON property `roleSets`
          # @return [Array<Google::Apis::DriveV2::About::AdditionalRoleInfo::RoleSet>]
          attr_accessor :role_sets
        
          # The content type that this additional role info applies to.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @role_sets = args[:role_sets] if args.key?(:role_sets)
            @type = args[:type] if args.key?(:type)
          end
          
          # 
          class RoleSet
            include Google::Apis::Core::Hashable
          
            # The supported additional roles with the primary role.
            # Corresponds to the JSON property `additionalRoles`
            # @return [Array<String>]
            attr_accessor :additional_roles
          
            # A primary permission role.
            # Corresponds to the JSON property `primaryRole`
            # @return [String]
            attr_accessor :primary_role
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @additional_roles = args[:additional_roles] if args.key?(:additional_roles)
              @primary_role = args[:primary_role] if args.key?(:primary_role)
            end
          end
        end
        
        # 
        class ExportFormat
          include Google::Apis::Core::Hashable
        
          # The content type to convert from.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          # The possible content types to convert to.
          # Corresponds to the JSON property `targets`
          # @return [Array<String>]
          attr_accessor :targets
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @source = args[:source] if args.key?(:source)
            @targets = args[:targets] if args.key?(:targets)
          end
        end
        
        # 
        class Feature
          include Google::Apis::Core::Hashable
        
          # The name of the feature.
          # Corresponds to the JSON property `featureName`
          # @return [String]
          attr_accessor :feature_name
        
          # The request limit rate for this feature, in queries per second.
          # Corresponds to the JSON property `featureRate`
          # @return [Float]
          attr_accessor :feature_rate
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @feature_name = args[:feature_name] if args.key?(:feature_name)
            @feature_rate = args[:feature_rate] if args.key?(:feature_rate)
          end
        end
        
        # 
        class ImportFormat
          include Google::Apis::Core::Hashable
        
          # The imported file's content type to convert from.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          # The possible content types to convert to.
          # Corresponds to the JSON property `targets`
          # @return [Array<String>]
          attr_accessor :targets
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @source = args[:source] if args.key?(:source)
            @targets = args[:targets] if args.key?(:targets)
          end
        end
        
        # 
        class MaxUploadSize
          include Google::Apis::Core::Hashable
        
          # The max upload size for this type.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          # The file type.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @size = args[:size] if args.key?(:size)
            @type = args[:type] if args.key?(:type)
          end
        end
        
        # 
        class QuotaBytesByService
          include Google::Apis::Core::Hashable
        
          # The storage quota bytes used by the service.
          # Corresponds to the JSON property `bytesUsed`
          # @return [String]
          attr_accessor :bytes_used
        
          # The service's name, e.g. DRIVE, GMAIL, or PHOTOS.
          # Corresponds to the JSON property `serviceName`
          # @return [String]
          attr_accessor :service_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bytes_used = args[:bytes_used] if args.key?(:bytes_used)
            @service_name = args[:service_name] if args.key?(:service_name)
          end
        end
      end
      
      # The apps resource provides a list of the apps that a user has installed, with
      # information about each app's supported MIME types, file extensions, and other
      # details.
      class App
        include Google::Apis::Core::Hashable
      
        # Whether the app is authorized to access data on the user's Drive.
        # Corresponds to the JSON property `authorized`
        # @return [Boolean]
        attr_accessor :authorized
        alias_method :authorized?, :authorized
      
        # The template url to create a new file with this app in a given folder. The
        # template will contain `folderId` to be replaced by the folder to create the
        # new file in.
        # Corresponds to the JSON property `createInFolderTemplate`
        # @return [String]
        attr_accessor :create_in_folder_template
      
        # The url to create a new file with this app.
        # Corresponds to the JSON property `createUrl`
        # @return [String]
        attr_accessor :create_url
      
        # Whether the app has drive-wide scope. An app with drive-wide scope can access
        # all files in the user's drive.
        # Corresponds to the JSON property `hasDriveWideScope`
        # @return [Boolean]
        attr_accessor :has_drive_wide_scope
        alias_method :has_drive_wide_scope?, :has_drive_wide_scope
      
        # The various icons for the app.
        # Corresponds to the JSON property `icons`
        # @return [Array<Google::Apis::DriveV2::App::Icon>]
        attr_accessor :icons
      
        # The ID of the app.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether the app is installed.
        # Corresponds to the JSON property `installed`
        # @return [Boolean]
        attr_accessor :installed
        alias_method :installed?, :installed
      
        # This is always drive#app.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A long description of the app.
        # Corresponds to the JSON property `longDescription`
        # @return [String]
        attr_accessor :long_description
      
        # The name of the app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of object this app creates (e.g. Chart). If empty, the app name
        # should be used instead.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The template url for opening files with this app. The template will contain `
        # ids` and/or `exportIds` to be replaced by the actual file ids. See  Open Files
        # for the full documentation.
        # Corresponds to the JSON property `openUrlTemplate`
        # @return [String]
        attr_accessor :open_url_template
      
        # The list of primary file extensions.
        # Corresponds to the JSON property `primaryFileExtensions`
        # @return [Array<String>]
        attr_accessor :primary_file_extensions
      
        # The list of primary mime types.
        # Corresponds to the JSON property `primaryMimeTypes`
        # @return [Array<String>]
        attr_accessor :primary_mime_types
      
        # The ID of the product listing for this app.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # A link to the product listing for this app.
        # Corresponds to the JSON property `productUrl`
        # @return [String]
        attr_accessor :product_url
      
        # The list of secondary file extensions.
        # Corresponds to the JSON property `secondaryFileExtensions`
        # @return [Array<String>]
        attr_accessor :secondary_file_extensions
      
        # The list of secondary mime types.
        # Corresponds to the JSON property `secondaryMimeTypes`
        # @return [Array<String>]
        attr_accessor :secondary_mime_types
      
        # A short description of the app.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # Whether this app supports creating new objects.
        # Corresponds to the JSON property `supportsCreate`
        # @return [Boolean]
        attr_accessor :supports_create
        alias_method :supports_create?, :supports_create
      
        # Whether this app supports importing Google Docs.
        # Corresponds to the JSON property `supportsImport`
        # @return [Boolean]
        attr_accessor :supports_import
        alias_method :supports_import?, :supports_import
      
        # Whether this app supports opening more than one file.
        # Corresponds to the JSON property `supportsMultiOpen`
        # @return [Boolean]
        attr_accessor :supports_multi_open
        alias_method :supports_multi_open?, :supports_multi_open
      
        # Whether this app supports creating new files when offline.
        # Corresponds to the JSON property `supportsOfflineCreate`
        # @return [Boolean]
        attr_accessor :supports_offline_create
        alias_method :supports_offline_create?, :supports_offline_create
      
        # Whether the app is selected as the default handler for the types it supports.
        # Corresponds to the JSON property `useByDefault`
        # @return [Boolean]
        attr_accessor :use_by_default
        alias_method :use_by_default?, :use_by_default
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized = args[:authorized] if args.key?(:authorized)
          @create_in_folder_template = args[:create_in_folder_template] if args.key?(:create_in_folder_template)
          @create_url = args[:create_url] if args.key?(:create_url)
          @has_drive_wide_scope = args[:has_drive_wide_scope] if args.key?(:has_drive_wide_scope)
          @icons = args[:icons] if args.key?(:icons)
          @id = args[:id] if args.key?(:id)
          @installed = args[:installed] if args.key?(:installed)
          @kind = args[:kind] if args.key?(:kind)
          @long_description = args[:long_description] if args.key?(:long_description)
          @name = args[:name] if args.key?(:name)
          @object_type = args[:object_type] if args.key?(:object_type)
          @open_url_template = args[:open_url_template] if args.key?(:open_url_template)
          @primary_file_extensions = args[:primary_file_extensions] if args.key?(:primary_file_extensions)
          @primary_mime_types = args[:primary_mime_types] if args.key?(:primary_mime_types)
          @product_id = args[:product_id] if args.key?(:product_id)
          @product_url = args[:product_url] if args.key?(:product_url)
          @secondary_file_extensions = args[:secondary_file_extensions] if args.key?(:secondary_file_extensions)
          @secondary_mime_types = args[:secondary_mime_types] if args.key?(:secondary_mime_types)
          @short_description = args[:short_description] if args.key?(:short_description)
          @supports_create = args[:supports_create] if args.key?(:supports_create)
          @supports_import = args[:supports_import] if args.key?(:supports_import)
          @supports_multi_open = args[:supports_multi_open] if args.key?(:supports_multi_open)
          @supports_offline_create = args[:supports_offline_create] if args.key?(:supports_offline_create)
          @use_by_default = args[:use_by_default] if args.key?(:use_by_default)
        end
        
        # 
        class Icon
          include Google::Apis::Core::Hashable
        
          # Category of the icon. Allowed values are:
          # - application - icon for the application
          # - document - icon for a file associated with the app
          # - documentShared - icon for a shared file associated with the app
          # Corresponds to the JSON property `category`
          # @return [String]
          attr_accessor :category
        
          # URL for the icon.
          # Corresponds to the JSON property `iconUrl`
          # @return [String]
          attr_accessor :icon_url
        
          # Size of the icon. Represented as the maximum of the width and height.
          # Corresponds to the JSON property `size`
          # @return [Fixnum]
          attr_accessor :size
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @category = args[:category] if args.key?(:category)
            @icon_url = args[:icon_url] if args.key?(:icon_url)
            @size = args[:size] if args.key?(:size)
          end
        end
      end
      
      # A list of third-party applications which the user has installed or given
      # access to Google Drive.
      class AppList
        include Google::Apis::Core::Hashable
      
        # List of app IDs that the user has specified to use by default. The list is in
        # reverse-priority order (lowest to highest).
        # Corresponds to the JSON property `defaultAppIds`
        # @return [Array<String>]
        attr_accessor :default_app_ids
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of apps.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::App>]
        attr_accessor :items
      
        # This is always drive#appList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_app_ids = args[:default_app_ids] if args.key?(:default_app_ids)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Representation of a change to a file.
      class Change
        include Google::Apis::Core::Hashable
      
        # Whether the file has been deleted.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The metadata for a file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::DriveV2::File]
        attr_accessor :file
      
        # The ID of the file associated with this change.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # The ID of the change.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#change.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time of this modification.
        # Corresponds to the JSON property `modificationDate`
        # @return [DateTime]
        attr_accessor :modification_date
      
        # A link back to this change.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @file = args[:file] if args.key?(:file)
          @file_id = args[:file_id] if args.key?(:file_id)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @modification_date = args[:modification_date] if args.key?(:modification_date)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of changes for a user.
      class ChangeList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of changes.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Change>]
        attr_accessor :items
      
        # This is always drive#changeList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current largest change ID.
        # Corresponds to the JSON property `largestChangeId`
        # @return [String]
        attr_accessor :largest_change_id
      
        # A link to the next page of changes.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of changes.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @largest_change_id = args[:largest_change_id] if args.key?(:largest_change_id)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
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
          @address = args[:address] if args.key?(:address)
          @expiration = args[:expiration] if args.key?(:expiration)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @params = args[:params] if args.key?(:params)
          @payload = args[:payload] if args.key?(:payload)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A list of children of a file.
      class ChildList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of children.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::ChildReference>]
        attr_accessor :items
      
        # This is always drive#childList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of children.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of children.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A reference to a folder's child.
      class ChildReference
        include Google::Apis::Core::Hashable
      
        # A link to the child.
        # Corresponds to the JSON property `childLink`
        # @return [String]
        attr_accessor :child_link
      
        # The ID of the child.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#childReference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link back to this reference.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_link = args[:child_link] if args.key?(:child_link)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A comment on a file in Google Drive.
      class Comment
        include Google::Apis::Core::Hashable
      
        # A region of the document represented as a JSON string. See anchor
        # documentation for details on how to define and interpret anchor properties.
        # Corresponds to the JSON property `anchor`
        # @return [String]
        attr_accessor :anchor
      
        # Information about a Drive user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :author
      
        # The ID of the comment.
        # Corresponds to the JSON property `commentId`
        # @return [String]
        attr_accessor :comment_id
      
        # The plain text content used to create this comment. This is not HTML safe and
        # should only be used as a starting point to make edits to a comment's content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The context of the file which is being commented on.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DriveV2::Comment::Context]
        attr_accessor :context
      
        # The date when this comment was first created.
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # Whether this comment has been deleted. If a comment has been deleted the
        # content will be cleared and this will only represent a comment that once
        # existed.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The file which this comment is addressing.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # The title of the file which this comment is addressing.
        # Corresponds to the JSON property `fileTitle`
        # @return [String]
        attr_accessor :file_title
      
        # HTML formatted content for this comment.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # This is always drive#comment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date when this comment or any of its replies were last modified.
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # Replies to this post.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::DriveV2::CommentReply>]
        attr_accessor :replies
      
        # A link back to this comment.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The status of this comment. Status can be changed by posting a reply to a
        # comment with the desired status.
        # - "open" - The comment is still open.
        # - "resolved" - The comment has been resolved by one of its replies.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anchor = args[:anchor] if args.key?(:anchor)
          @author = args[:author] if args.key?(:author)
          @comment_id = args[:comment_id] if args.key?(:comment_id)
          @content = args[:content] if args.key?(:content)
          @context = args[:context] if args.key?(:context)
          @created_date = args[:created_date] if args.key?(:created_date)
          @deleted = args[:deleted] if args.key?(:deleted)
          @file_id = args[:file_id] if args.key?(:file_id)
          @file_title = args[:file_title] if args.key?(:file_title)
          @html_content = args[:html_content] if args.key?(:html_content)
          @kind = args[:kind] if args.key?(:kind)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @replies = args[:replies] if args.key?(:replies)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
        end
        
        # The context of the file which is being commented on.
        class Context
          include Google::Apis::Core::Hashable
        
          # The MIME type of the context snippet.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # Data representation of the segment of the file being commented on. In the case
          # of a text file for example, this would be the actual text that the comment is
          # about.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @type = args[:type] if args.key?(:type)
            @value = args[:value] if args.key?(:value)
          end
        end
      end
      
      # A list of comments on a file in Google Drive.
      class CommentList
        include Google::Apis::Core::Hashable
      
        # List of comments.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Comment>]
        attr_accessor :items
      
        # This is always drive#commentList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of comments.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The token to use to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A comment on a file in Google Drive.
      class CommentReply
        include Google::Apis::Core::Hashable
      
        # Information about a Drive user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :author
      
        # The plain text content used to create this reply. This is not HTML safe and
        # should only be used as a starting point to make edits to a reply's content.
        # This field is required on inserts if no verb is specified (resolve/reopen).
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The date when this reply was first created.
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # Whether this reply has been deleted. If a reply has been deleted the content
        # will be cleared and this will only represent a reply that once existed.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # HTML formatted content for this reply.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # This is always drive#commentReply.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date when this reply was last modified.
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # The ID of the reply.
        # Corresponds to the JSON property `replyId`
        # @return [String]
        attr_accessor :reply_id
      
        # The action this reply performed to the parent comment. When creating a new
        # reply this is the action to be perform to the parent comment. Possible values
        # are:
        # - "resolve" - To resolve a comment.
        # - "reopen" - To reopen (un-resolve) a comment.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @content = args[:content] if args.key?(:content)
          @created_date = args[:created_date] if args.key?(:created_date)
          @deleted = args[:deleted] if args.key?(:deleted)
          @html_content = args[:html_content] if args.key?(:html_content)
          @kind = args[:kind] if args.key?(:kind)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @reply_id = args[:reply_id] if args.key?(:reply_id)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # A list of replies to a comment on a file in Google Drive.
      class CommentReplyList
        include Google::Apis::Core::Hashable
      
        # List of reply.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::CommentReply>]
        attr_accessor :items
      
        # This is always drive#commentReplyList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of replies.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The token to use to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # The metadata for a file.
      class File
        include Google::Apis::Core::Hashable
      
        # A link for opening the file in a relevant Google editor or viewer.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Whether this file is in the Application Data folder.
        # Corresponds to the JSON property `appDataContents`
        # @return [Boolean]
        attr_accessor :app_data_contents
        alias_method :app_data_contents?, :app_data_contents
      
        # Whether the current user can comment on the file.
        # Corresponds to the JSON property `canComment`
        # @return [Boolean]
        attr_accessor :can_comment
        alias_method :can_comment?, :can_comment
      
        # Whether the current user has read access to the Revisions resource of the file.
        # Corresponds to the JSON property `canReadRevisions`
        # @return [Boolean]
        attr_accessor :can_read_revisions
        alias_method :can_read_revisions?, :can_read_revisions
      
        # Whether the file can be copied by the current user.
        # Corresponds to the JSON property `copyable`
        # @return [Boolean]
        attr_accessor :copyable
        alias_method :copyable?, :copyable
      
        # Create time for this file (formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # A link to open this file with the user's default app for this file. Only
        # populated when the drive.apps.readonly scope is used.
        # Corresponds to the JSON property `defaultOpenWithLink`
        # @return [String]
        attr_accessor :default_open_with_link
      
        # A short description of the file.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # Whether the file can be edited by the current user.
        # Corresponds to the JSON property `editable`
        # @return [Boolean]
        attr_accessor :editable
        alias_method :editable?, :editable
      
        # A link for embedding the file.
        # Corresponds to the JSON property `embedLink`
        # @return [String]
        attr_accessor :embed_link
      
        # ETag of the file.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Whether this file has been explicitly trashed, as opposed to recursively
        # trashed.
        # Corresponds to the JSON property `explicitlyTrashed`
        # @return [Boolean]
        attr_accessor :explicitly_trashed
        alias_method :explicitly_trashed?, :explicitly_trashed
      
        # Links for exporting Google Docs to specific formats.
        # Corresponds to the JSON property `exportLinks`
        # @return [Hash<String,String>]
        attr_accessor :export_links
      
        # The final component of fullFileExtension with trailing text that does not
        # appear to be part of the extension removed. This field is only populated for
        # files with content stored in Drive; it is not populated for Google Docs or
        # shortcut files.
        # Corresponds to the JSON property `fileExtension`
        # @return [String]
        attr_accessor :file_extension
      
        # The size of the file in bytes. This field is only populated for files with
        # content stored in Drive; it is not populated for Google Docs or shortcut files.
        # Corresponds to the JSON property `fileSize`
        # @return [String]
        attr_accessor :file_size
      
        # Folder color as an RGB hex string if the file is a folder. The list of
        # supported colors is available in the folderColorPalette field of the About
        # resource. If an unsupported color is specified, it will be changed to the
        # closest color in the palette.
        # Corresponds to the JSON property `folderColorRgb`
        # @return [String]
        attr_accessor :folder_color_rgb
      
        # The full file extension; extracted from the title. May contain multiple
        # concatenated extensions, such as "tar.gz". Removing an extension from the
        # title does not clear this field; however, changing the extension on the title
        # does update this field. This field is only populated for files with content
        # stored in Drive; it is not populated for Google Docs or shortcut files.
        # Corresponds to the JSON property `fullFileExtension`
        # @return [String]
        attr_accessor :full_file_extension
      
        # The ID of the file's head revision. This field is only populated for files
        # with content stored in Drive; it is not populated for Google Docs or shortcut
        # files.
        # Corresponds to the JSON property `headRevisionId`
        # @return [String]
        attr_accessor :head_revision_id
      
        # A link to the file's icon.
        # Corresponds to the JSON property `iconLink`
        # @return [String]
        attr_accessor :icon_link
      
        # The ID of the file.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Metadata about image media. This will only be present for image types, and its
        # contents will depend on what can be parsed from the image content.
        # Corresponds to the JSON property `imageMediaMetadata`
        # @return [Google::Apis::DriveV2::File::ImageMediaMetadata]
        attr_accessor :image_media_metadata
      
        # Indexable text attributes for the file (can only be written)
        # Corresponds to the JSON property `indexableText`
        # @return [Google::Apis::DriveV2::File::IndexableText]
        attr_accessor :indexable_text
      
        # Whether the file was created or opened by the requesting app.
        # Corresponds to the JSON property `isAppAuthorized`
        # @return [Boolean]
        attr_accessor :is_app_authorized
        alias_method :is_app_authorized?, :is_app_authorized
      
        # The type of file. This is always drive#file.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A group of labels for the file.
        # Corresponds to the JSON property `labels`
        # @return [Google::Apis::DriveV2::File::Labels]
        attr_accessor :labels
      
        # Information about a Drive user.
        # Corresponds to the JSON property `lastModifyingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :last_modifying_user
      
        # Name of the last user to modify this file.
        # Corresponds to the JSON property `lastModifyingUserName`
        # @return [String]
        attr_accessor :last_modifying_user_name
      
        # Last time this file was viewed by the user (formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `lastViewedByMeDate`
        # @return [DateTime]
        attr_accessor :last_viewed_by_me_date
      
        # Deprecated.
        # Corresponds to the JSON property `markedViewedByMeDate`
        # @return [DateTime]
        attr_accessor :marked_viewed_by_me_date
      
        # An MD5 checksum for the content of this file. This field is only populated for
        # files with content stored in Drive; it is not populated for Google Docs or
        # shortcut files.
        # Corresponds to the JSON property `md5Checksum`
        # @return [String]
        attr_accessor :md5_checksum
      
        # The MIME type of the file. This is only mutable on update when uploading new
        # content. This field can be left blank, and the mimetype will be determined
        # from the uploaded content's MIME type.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Last time this file was modified by the user (formatted RFC 3339 timestamp).
        # Note that setting modifiedDate will also update the modifiedByMe date for the
        # user which set the date.
        # Corresponds to the JSON property `modifiedByMeDate`
        # @return [DateTime]
        attr_accessor :modified_by_me_date
      
        # Last time this file was modified by anyone (formatted RFC 3339 timestamp).
        # This is only mutable on update when the setModifiedDate parameter is set.
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # A map of the id of each of the user's apps to a link to open this file with
        # that app. Only populated when the drive.apps.readonly scope is used.
        # Corresponds to the JSON property `openWithLinks`
        # @return [Hash<String,String>]
        attr_accessor :open_with_links
      
        # The original filename of the uploaded content if available, or else the
        # original value of the title field. This is only available for files with
        # binary content in Drive.
        # Corresponds to the JSON property `originalFilename`
        # @return [String]
        attr_accessor :original_filename
      
        # Whether the file is owned by the current user.
        # Corresponds to the JSON property `ownedByMe`
        # @return [Boolean]
        attr_accessor :owned_by_me
        alias_method :owned_by_me?, :owned_by_me
      
        # Name(s) of the owner(s) of this file.
        # Corresponds to the JSON property `ownerNames`
        # @return [Array<String>]
        attr_accessor :owner_names
      
        # The owner(s) of this file.
        # Corresponds to the JSON property `owners`
        # @return [Array<Google::Apis::DriveV2::User>]
        attr_accessor :owners
      
        # Collection of parent folders which contain this file.
        # Setting this field will put the file in all of the provided folders. On insert,
        # if no folders are provided, the file will be placed in the default root
        # folder.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DriveV2::ParentReference>]
        attr_accessor :parents
      
        # The list of permissions for users with access to this file.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::DriveV2::Permission>]
        attr_accessor :permissions
      
        # The list of properties.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DriveV2::Property>]
        attr_accessor :properties
      
        # The number of quota bytes used by this file.
        # Corresponds to the JSON property `quotaBytesUsed`
        # @return [String]
        attr_accessor :quota_bytes_used
      
        # A link back to this file.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Whether the file's sharing settings can be modified by the current user.
        # Corresponds to the JSON property `shareable`
        # @return [Boolean]
        attr_accessor :shareable
        alias_method :shareable?, :shareable
      
        # Whether the file has been shared.
        # Corresponds to the JSON property `shared`
        # @return [Boolean]
        attr_accessor :shared
        alias_method :shared?, :shared
      
        # Time at which this file was shared with the user (formatted RFC 3339 timestamp)
        # .
        # Corresponds to the JSON property `sharedWithMeDate`
        # @return [DateTime]
        attr_accessor :shared_with_me_date
      
        # Information about a Drive user.
        # Corresponds to the JSON property `sharingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :sharing_user
      
        # The list of spaces which contain the file. Supported values are 'drive', '
        # appDataFolder' and 'photos'.
        # Corresponds to the JSON property `spaces`
        # @return [Array<String>]
        attr_accessor :spaces
      
        # Thumbnail for the file. Only accepted on upload and for files that are not
        # already thumbnailed by Google.
        # Corresponds to the JSON property `thumbnail`
        # @return [Google::Apis::DriveV2::File::Thumbnail]
        attr_accessor :thumbnail
      
        # A short-lived link to the file's thumbnail. Typically lasts on the order of
        # hours.
        # Corresponds to the JSON property `thumbnailLink`
        # @return [String]
        attr_accessor :thumbnail_link
      
        # The title of this file.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # A permission for a file.
        # Corresponds to the JSON property `userPermission`
        # @return [Google::Apis::DriveV2::Permission]
        attr_accessor :user_permission
      
        # A monotonically increasing version number for the file. This reflects every
        # change made to the file on the server, even those not visible to the
        # requesting user.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Metadata about video media. This will only be present for video types.
        # Corresponds to the JSON property `videoMediaMetadata`
        # @return [Google::Apis::DriveV2::File::VideoMediaMetadata]
        attr_accessor :video_media_metadata
      
        # A link for downloading the content of the file in a browser using cookie based
        # authentication. In cases where the content is shared publicly, the content can
        # be downloaded without any credentials.
        # Corresponds to the JSON property `webContentLink`
        # @return [String]
        attr_accessor :web_content_link
      
        # A link only available on public folders for viewing their static web assets (
        # HTML, CSS, JS, etc) via Google Drive's Website Hosting.
        # Corresponds to the JSON property `webViewLink`
        # @return [String]
        attr_accessor :web_view_link
      
        # Whether writers can share the document with other users.
        # Corresponds to the JSON property `writersCanShare`
        # @return [Boolean]
        attr_accessor :writers_can_share
        alias_method :writers_can_share?, :writers_can_share
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @app_data_contents = args[:app_data_contents] if args.key?(:app_data_contents)
          @can_comment = args[:can_comment] if args.key?(:can_comment)
          @can_read_revisions = args[:can_read_revisions] if args.key?(:can_read_revisions)
          @copyable = args[:copyable] if args.key?(:copyable)
          @created_date = args[:created_date] if args.key?(:created_date)
          @default_open_with_link = args[:default_open_with_link] if args.key?(:default_open_with_link)
          @description = args[:description] if args.key?(:description)
          @download_url = args[:download_url] if args.key?(:download_url)
          @editable = args[:editable] if args.key?(:editable)
          @embed_link = args[:embed_link] if args.key?(:embed_link)
          @etag = args[:etag] if args.key?(:etag)
          @explicitly_trashed = args[:explicitly_trashed] if args.key?(:explicitly_trashed)
          @export_links = args[:export_links] if args.key?(:export_links)
          @file_extension = args[:file_extension] if args.key?(:file_extension)
          @file_size = args[:file_size] if args.key?(:file_size)
          @folder_color_rgb = args[:folder_color_rgb] if args.key?(:folder_color_rgb)
          @full_file_extension = args[:full_file_extension] if args.key?(:full_file_extension)
          @head_revision_id = args[:head_revision_id] if args.key?(:head_revision_id)
          @icon_link = args[:icon_link] if args.key?(:icon_link)
          @id = args[:id] if args.key?(:id)
          @image_media_metadata = args[:image_media_metadata] if args.key?(:image_media_metadata)
          @indexable_text = args[:indexable_text] if args.key?(:indexable_text)
          @is_app_authorized = args[:is_app_authorized] if args.key?(:is_app_authorized)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @last_modifying_user = args[:last_modifying_user] if args.key?(:last_modifying_user)
          @last_modifying_user_name = args[:last_modifying_user_name] if args.key?(:last_modifying_user_name)
          @last_viewed_by_me_date = args[:last_viewed_by_me_date] if args.key?(:last_viewed_by_me_date)
          @marked_viewed_by_me_date = args[:marked_viewed_by_me_date] if args.key?(:marked_viewed_by_me_date)
          @md5_checksum = args[:md5_checksum] if args.key?(:md5_checksum)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @modified_by_me_date = args[:modified_by_me_date] if args.key?(:modified_by_me_date)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @open_with_links = args[:open_with_links] if args.key?(:open_with_links)
          @original_filename = args[:original_filename] if args.key?(:original_filename)
          @owned_by_me = args[:owned_by_me] if args.key?(:owned_by_me)
          @owner_names = args[:owner_names] if args.key?(:owner_names)
          @owners = args[:owners] if args.key?(:owners)
          @parents = args[:parents] if args.key?(:parents)
          @permissions = args[:permissions] if args.key?(:permissions)
          @properties = args[:properties] if args.key?(:properties)
          @quota_bytes_used = args[:quota_bytes_used] if args.key?(:quota_bytes_used)
          @self_link = args[:self_link] if args.key?(:self_link)
          @shareable = args[:shareable] if args.key?(:shareable)
          @shared = args[:shared] if args.key?(:shared)
          @shared_with_me_date = args[:shared_with_me_date] if args.key?(:shared_with_me_date)
          @sharing_user = args[:sharing_user] if args.key?(:sharing_user)
          @spaces = args[:spaces] if args.key?(:spaces)
          @thumbnail = args[:thumbnail] if args.key?(:thumbnail)
          @thumbnail_link = args[:thumbnail_link] if args.key?(:thumbnail_link)
          @title = args[:title] if args.key?(:title)
          @user_permission = args[:user_permission] if args.key?(:user_permission)
          @version = args[:version] if args.key?(:version)
          @video_media_metadata = args[:video_media_metadata] if args.key?(:video_media_metadata)
          @web_content_link = args[:web_content_link] if args.key?(:web_content_link)
          @web_view_link = args[:web_view_link] if args.key?(:web_view_link)
          @writers_can_share = args[:writers_can_share] if args.key?(:writers_can_share)
        end
        
        # Metadata about image media. This will only be present for image types, and its
        # contents will depend on what can be parsed from the image content.
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
        
          # The date and time the photo was taken (EXIF format timestamp).
          # Corresponds to the JSON property `date`
          # @return [String]
          attr_accessor :date
        
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
          # @return [Google::Apis::DriveV2::File::ImageMediaMetadata::Location]
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
            @aperture = args[:aperture] if args.key?(:aperture)
            @camera_make = args[:camera_make] if args.key?(:camera_make)
            @camera_model = args[:camera_model] if args.key?(:camera_model)
            @color_space = args[:color_space] if args.key?(:color_space)
            @date = args[:date] if args.key?(:date)
            @exposure_bias = args[:exposure_bias] if args.key?(:exposure_bias)
            @exposure_mode = args[:exposure_mode] if args.key?(:exposure_mode)
            @exposure_time = args[:exposure_time] if args.key?(:exposure_time)
            @flash_used = args[:flash_used] if args.key?(:flash_used)
            @focal_length = args[:focal_length] if args.key?(:focal_length)
            @height = args[:height] if args.key?(:height)
            @iso_speed = args[:iso_speed] if args.key?(:iso_speed)
            @lens = args[:lens] if args.key?(:lens)
            @location = args[:location] if args.key?(:location)
            @max_aperture_value = args[:max_aperture_value] if args.key?(:max_aperture_value)
            @metering_mode = args[:metering_mode] if args.key?(:metering_mode)
            @rotation = args[:rotation] if args.key?(:rotation)
            @sensor = args[:sensor] if args.key?(:sensor)
            @subject_distance = args[:subject_distance] if args.key?(:subject_distance)
            @white_balance = args[:white_balance] if args.key?(:white_balance)
            @width = args[:width] if args.key?(:width)
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
              @altitude = args[:altitude] if args.key?(:altitude)
              @latitude = args[:latitude] if args.key?(:latitude)
              @longitude = args[:longitude] if args.key?(:longitude)
            end
          end
        end
        
        # Indexable text attributes for the file (can only be written)
        class IndexableText
          include Google::Apis::Core::Hashable
        
          # The text to be indexed for this file.
          # Corresponds to the JSON property `text`
          # @return [String]
          attr_accessor :text
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @text = args[:text] if args.key?(:text)
          end
        end
        
        # A group of labels for the file.
        class Labels
          include Google::Apis::Core::Hashable
        
          # Deprecated.
          # Corresponds to the JSON property `hidden`
          # @return [Boolean]
          attr_accessor :hidden
          alias_method :hidden?, :hidden
        
          # Whether the file has been modified by this user.
          # Corresponds to the JSON property `modified`
          # @return [Boolean]
          attr_accessor :modified
          alias_method :modified?, :modified
        
          # Whether viewers and commenters are prevented from downloading, printing, and
          # copying this file.
          # Corresponds to the JSON property `restricted`
          # @return [Boolean]
          attr_accessor :restricted
          alias_method :restricted?, :restricted
        
          # Whether this file is starred by the user.
          # Corresponds to the JSON property `starred`
          # @return [Boolean]
          attr_accessor :starred
          alias_method :starred?, :starred
        
          # Whether this file has been trashed. This label applies to all users accessing
          # the file; however, only owners are allowed to see and untrash files.
          # Corresponds to the JSON property `trashed`
          # @return [Boolean]
          attr_accessor :trashed
          alias_method :trashed?, :trashed
        
          # Whether this file has been viewed by this user.
          # Corresponds to the JSON property `viewed`
          # @return [Boolean]
          attr_accessor :viewed
          alias_method :viewed?, :viewed
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @hidden = args[:hidden] if args.key?(:hidden)
            @modified = args[:modified] if args.key?(:modified)
            @restricted = args[:restricted] if args.key?(:restricted)
            @starred = args[:starred] if args.key?(:starred)
            @trashed = args[:trashed] if args.key?(:trashed)
            @viewed = args[:viewed] if args.key?(:viewed)
          end
        end
        
        # Thumbnail for the file. Only accepted on upload and for files that are not
        # already thumbnailed by Google.
        class Thumbnail
          include Google::Apis::Core::Hashable
        
          # The URL-safe Base64 encoded bytes of the thumbnail image. It should conform to
          # RFC 4648 section 5.
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
            @image = args[:image] if args.key?(:image)
            @mime_type = args[:mime_type] if args.key?(:mime_type)
          end
        end
        
        # Metadata about video media. This will only be present for video types.
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
            @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
            @height = args[:height] if args.key?(:height)
            @width = args[:width] if args.key?(:width)
          end
        end
      end
      
      # A list of files.
      class FileList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of files.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::File>]
        attr_accessor :items
      
        # This is always drive#fileList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of files.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of files.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of generated IDs which can be provided in insert requests
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
          @ids = args[:ids] if args.key?(:ids)
          @kind = args[:kind] if args.key?(:kind)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # A list of a file's parents.
      class ParentList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of parents.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::ParentReference>]
        attr_accessor :items
      
        # This is always drive#parentList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A reference to a file's parent.
      class ParentReference
        include Google::Apis::Core::Hashable
      
        # The ID of the parent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether or not the parent is the root folder.
        # Corresponds to the JSON property `isRoot`
        # @return [Boolean]
        attr_accessor :is_root
        alias_method :is_root?, :is_root
      
        # This is always drive#parentReference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the parent.
        # Corresponds to the JSON property `parentLink`
        # @return [String]
        attr_accessor :parent_link
      
        # A link back to this reference.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @is_root = args[:is_root] if args.key?(:is_root)
          @kind = args[:kind] if args.key?(:kind)
          @parent_link = args[:parent_link] if args.key?(:parent_link)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A permission for a file.
      class Permission
        include Google::Apis::Core::Hashable
      
        # Additional roles for this user. Only commenter is currently allowed.
        # Corresponds to the JSON property `additionalRoles`
        # @return [Array<String>]
        attr_accessor :additional_roles
      
        # The authkey parameter required for this permission.
        # Corresponds to the JSON property `authKey`
        # @return [String]
        attr_accessor :auth_key
      
        # The domain name of the entity this permission refers to. This is an output-
        # only field which is present when the permission type is user, group or domain.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The email address of the user or group this permission refers to. This is an
        # output-only field which is present when the permission type is user or group.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The ETag of the permission.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The time at which this permission will expire (RFC 3339 date-time).
        # Corresponds to the JSON property `expirationDate`
        # @return [DateTime]
        attr_accessor :expiration_date
      
        # The ID of the user this permission refers to, and identical to the
        # permissionId in the About and Files resources. When making a drive.permissions.
        # insert request, exactly one of the id or value fields must be specified unless
        # the permission type anyone, in which case both id and value are ignored.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#permission.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name for this permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A link to the profile photo, if available.
        # Corresponds to the JSON property `photoLink`
        # @return [String]
        attr_accessor :photo_link
      
        # The primary role for this user. Allowed values are:
        # - owner
        # - reader
        # - writer
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # A link back to this permission.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The account type. Allowed values are:
        # - user
        # - group
        # - domain
        # - anyone
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The email address or domain name for the entity. This is used during inserts
        # and is not populated in responses. When making a drive.permissions.insert
        # request, exactly one of the id or value fields must be specified unless the
        # permission type anyone, in which case both id and value are ignored.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Whether the link is required for this permission.
        # Corresponds to the JSON property `withLink`
        # @return [Boolean]
        attr_accessor :with_link
        alias_method :with_link?, :with_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_roles = args[:additional_roles] if args.key?(:additional_roles)
          @auth_key = args[:auth_key] if args.key?(:auth_key)
          @domain = args[:domain] if args.key?(:domain)
          @email_address = args[:email_address] if args.key?(:email_address)
          @etag = args[:etag] if args.key?(:etag)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @photo_link = args[:photo_link] if args.key?(:photo_link)
          @role = args[:role] if args.key?(:role)
          @self_link = args[:self_link] if args.key?(:self_link)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
          @with_link = args[:with_link] if args.key?(:with_link)
        end
      end
      
      # An ID for a user or group as seen in Permission items.
      class PermissionId
        include Google::Apis::Core::Hashable
      
        # The permission ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#permissionId.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A list of permissions associated with a file.
      class PermissionList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of permissions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Permission>]
        attr_accessor :items
      
        # This is always drive#permissionList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A key-value pair attached to a file that is either public or private to an
      # application.
      # The following limits apply to file properties:
      # - Maximum of 100 properties total per file
      # - Maximum of 30 private properties per app
      # - Maximum of 30 public properties
      # - Maximum of 124 bytes size limit on (key + value) string in UTF-8 encoding
      # for a single property.
      class Property
        include Google::Apis::Core::Hashable
      
        # ETag of the property.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The key of this property.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # This is always drive#property.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The link back to this property.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The value of this property.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The visibility of this property.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @key = args[:key] if args.key?(:key)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
          @value = args[:value] if args.key?(:value)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # A collection of properties, key-value pairs that are either public or private
      # to an application.
      class PropertyList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of properties.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Property>]
        attr_accessor :items
      
        # This is always drive#propertyList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A revision of a file.
      class Revision
        include Google::Apis::Core::Hashable
      
        # Short term download URL for the file. This will only be populated on files
        # with content stored in Drive.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # The ETag of the revision.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Links for exporting Google Docs to specific formats.
        # Corresponds to the JSON property `exportLinks`
        # @return [Hash<String,String>]
        attr_accessor :export_links
      
        # The size of the revision in bytes. This will only be populated on files with
        # content stored in Drive.
        # Corresponds to the JSON property `fileSize`
        # @return [String]
        attr_accessor :file_size
      
        # The ID of the revision.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always drive#revision.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information about a Drive user.
        # Corresponds to the JSON property `lastModifyingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :last_modifying_user
      
        # Name of the last user to modify this revision.
        # Corresponds to the JSON property `lastModifyingUserName`
        # @return [String]
        attr_accessor :last_modifying_user_name
      
        # An MD5 checksum for the content of this revision. This will only be populated
        # on files with content stored in Drive.
        # Corresponds to the JSON property `md5Checksum`
        # @return [String]
        attr_accessor :md5_checksum
      
        # The MIME type of the revision.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Last time this revision was modified (formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # The original filename when this revision was created. This will only be
        # populated on files with content stored in Drive.
        # Corresponds to the JSON property `originalFilename`
        # @return [String]
        attr_accessor :original_filename
      
        # Whether this revision is pinned to prevent automatic purging. This will only
        # be populated and can only be modified on files with content stored in Drive
        # which are not Google Docs. Revisions can also be pinned when they are created
        # through the drive.files.insert/update/copy by using the pinned query parameter.
        # Corresponds to the JSON property `pinned`
        # @return [Boolean]
        attr_accessor :pinned
        alias_method :pinned?, :pinned
      
        # Whether subsequent revisions will be automatically republished. This is only
        # populated and can only be modified for Google Docs.
        # Corresponds to the JSON property `publishAuto`
        # @return [Boolean]
        attr_accessor :publish_auto
        alias_method :publish_auto?, :publish_auto
      
        # Whether this revision is published. This is only populated and can only be
        # modified for Google Docs.
        # Corresponds to the JSON property `published`
        # @return [Boolean]
        attr_accessor :published
        alias_method :published?, :published
      
        # A link to the published revision.
        # Corresponds to the JSON property `publishedLink`
        # @return [String]
        attr_accessor :published_link
      
        # Whether this revision is published outside the domain. This is only populated
        # and can only be modified for Google Docs.
        # Corresponds to the JSON property `publishedOutsideDomain`
        # @return [Boolean]
        attr_accessor :published_outside_domain
        alias_method :published_outside_domain?, :published_outside_domain
      
        # A link back to this revision.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_url = args[:download_url] if args.key?(:download_url)
          @etag = args[:etag] if args.key?(:etag)
          @export_links = args[:export_links] if args.key?(:export_links)
          @file_size = args[:file_size] if args.key?(:file_size)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @last_modifying_user = args[:last_modifying_user] if args.key?(:last_modifying_user)
          @last_modifying_user_name = args[:last_modifying_user_name] if args.key?(:last_modifying_user_name)
          @md5_checksum = args[:md5_checksum] if args.key?(:md5_checksum)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @original_filename = args[:original_filename] if args.key?(:original_filename)
          @pinned = args[:pinned] if args.key?(:pinned)
          @publish_auto = args[:publish_auto] if args.key?(:publish_auto)
          @published = args[:published] if args.key?(:published)
          @published_link = args[:published_link] if args.key?(:published_link)
          @published_outside_domain = args[:published_outside_domain] if args.key?(:published_outside_domain)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of revisions of a file.
      class RevisionList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The actual list of revisions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Revision>]
        attr_accessor :items
      
        # This is always drive#revisionList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of revisions. This field will be absent if
        # the end of the revisions list has been reached. If the token is rejected for
        # any reason, it should be discarded and pagination should be restarted from the
        # first page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Information about a Drive user.
      class User
        include Google::Apis::Core::Hashable
      
        # A plain text displayable name for this user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email address of the user.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Whether this user is the same as the authenticated user for whom the request
        # was made.
        # Corresponds to the JSON property `isAuthenticatedUser`
        # @return [Boolean]
        attr_accessor :is_authenticated_user
        alias_method :is_authenticated_user?, :is_authenticated_user
      
        # This is always drive#user.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's ID as visible in the permissions collection.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # The user's profile picture.
        # Corresponds to the JSON property `picture`
        # @return [Google::Apis::DriveV2::User::Picture]
        attr_accessor :picture
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email_address = args[:email_address] if args.key?(:email_address)
          @is_authenticated_user = args[:is_authenticated_user] if args.key?(:is_authenticated_user)
          @kind = args[:kind] if args.key?(:kind)
          @permission_id = args[:permission_id] if args.key?(:permission_id)
          @picture = args[:picture] if args.key?(:picture)
        end
        
        # The user's profile picture.
        class Picture
          include Google::Apis::Core::Hashable
        
          # A URL that points to a profile picture of this user.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @url = args[:url] if args.key?(:url)
          end
        end
      end
    end
  end
end
