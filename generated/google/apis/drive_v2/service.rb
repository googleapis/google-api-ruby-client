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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DriveV2
      # Drive API
      #
      # Manages files in Drive including uploading, downloading, searching, detecting
      #  changes, and updating sharing permissions.
      #
      # @example
      #    require 'google/apis/drive_v2'
      #
      #    Drive = Google::Apis::DriveV2 # Alias the module
      #    service = Drive::DriveService.new
      #
      # @see https://developers.google.com/drive/
      class DriveService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'drive/v2/')
          @batch_path = 'batch/drive/v2'
        end
        
        # Gets the information about the current user along with Drive API settings
        # @param [Boolean] include_subscribed
        #   Whether to count changes outside the My Drive hierarchy. When set to false,
        #   changes to files such as those in the Application Data folder or shared files
        #   which have not been added to My Drive will be omitted from the
        #   maxChangeIdCount.
        # @param [Fixnum] max_change_id_count
        #   Maximum number of remaining change IDs to count
        # @param [Fixnum] start_change_id
        #   Change ID to start counting from when calculating number of remaining change
        #   IDs
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::About] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::About]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_about(include_subscribed: nil, max_change_id_count: nil, start_change_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'about', options)
          command.response_representation = Google::Apis::DriveV2::About::Representation
          command.response_class = Google::Apis::DriveV2::About
          command.query['includeSubscribed'] = include_subscribed unless include_subscribed.nil?
          command.query['maxChangeIdCount'] = max_change_id_count unless max_change_id_count.nil?
          command.query['startChangeId'] = start_change_id unless start_change_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific app.
        # @param [String] app_id
        #   The ID of the app.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::App] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::App]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app(app_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'apps/{appId}', options)
          command.response_representation = Google::Apis::DriveV2::App::Representation
          command.response_class = Google::Apis::DriveV2::App
          command.params['appId'] = app_id unless app_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a user's installed apps.
        # @param [String] app_filter_extensions
        #   A comma-separated list of file extensions for open with filtering. All apps
        #   within the given app query scope which can open any of the given file
        #   extensions will be included in the response. If appFilterMimeTypes are
        #   provided as well, the result is a union of the two resulting app lists.
        # @param [String] app_filter_mime_types
        #   A comma-separated list of MIME types for open with filtering. All apps within
        #   the given app query scope which can open any of the given MIME types will be
        #   included in the response. If appFilterExtensions are provided as well, the
        #   result is a union of the two resulting app lists.
        # @param [String] language_code
        #   A language or locale code, as defined by BCP 47, with some extensions from
        #   Unicode's LDML format (http://www.unicode.org/reports/tr35/).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::AppList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::AppList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_apps(app_filter_extensions: nil, app_filter_mime_types: nil, language_code: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'apps', options)
          command.response_representation = Google::Apis::DriveV2::AppList::Representation
          command.response_class = Google::Apis::DriveV2::AppList
          command.query['appFilterExtensions'] = app_filter_extensions unless app_filter_extensions.nil?
          command.query['appFilterMimeTypes'] = app_filter_mime_types unless app_filter_mime_types.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated - Use changes.getStartPageToken and changes.list to retrieve recent
        # changes.
        # @param [String] change_id
        #   The ID of the change.
        # @param [String] drive_id
        #   The shared drive from which the change is returned.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] team_drive_id
        #   Deprecated use driveId instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Change] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Change]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_change(change_id, drive_id: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'changes/{changeId}', options)
          command.response_representation = Google::Apis::DriveV2::Change::Representation
          command.response_class = Google::Apis::DriveV2::Change
          command.params['changeId'] = change_id unless change_id.nil?
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the starting pageToken for listing future changes.
        # @param [String] drive_id
        #   The ID of the shared drive for which the starting pageToken for listing future
        #   changes from that shared drive is returned.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] team_drive_id
        #   Deprecated use driveId instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::StartPageToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::StartPageToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_change_start_page_token(drive_id: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'changes/startPageToken', options)
          command.response_representation = Google::Apis::DriveV2::StartPageToken::Representation
          command.response_class = Google::Apis::DriveV2::StartPageToken
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the changes for a user or shared drive.
        # @param [String] drive_id
        #   The shared drive from which changes are returned. If specified the change IDs
        #   will be reflective of the shared drive; use the combined drive ID and change
        #   ID as an identifier.
        # @param [Boolean] include_corpus_removals
        #   Whether changes should include the file resource if the file is still
        #   accessible by the user at the time of the request, even when a file was
        #   removed from the list of changes and there will be no further change entries
        #   for this file.
        # @param [Boolean] include_deleted
        #   Whether to include changes indicating that items have been removed from the
        #   list of changes, for example by deletion or loss of access.
        # @param [Boolean] include_items_from_all_drives
        #   Whether both My Drive and shared drive items should be included in results.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] include_subscribed
        #   Whether to include changes outside the My Drive hierarchy in the result. When
        #   set to false, changes to files such as those in the Application Data folder or
        #   shared files which have not been added to My Drive are omitted from the result.
        # @param [Boolean] include_team_drive_items
        #   Deprecated use includeItemsFromAllDrives instead.
        # @param [Fixnum] max_results
        #   Maximum number of changes to return.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response or to the
        #   response from the getStartPageToken method.
        # @param [String] spaces
        #   A comma-separated list of spaces to query. Supported values are 'drive', '
        #   appDataFolder' and 'photos'.
        # @param [Fixnum] start_change_id
        #   Deprecated - use pageToken instead.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] team_drive_id
        #   Deprecated use driveId instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ChangeList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ChangeList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_changes(drive_id: nil, include_corpus_removals: nil, include_deleted: nil, include_items_from_all_drives: nil, include_permissions_for_view: nil, include_subscribed: nil, include_team_drive_items: nil, max_results: nil, page_token: nil, spaces: nil, start_change_id: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'changes', options)
          command.response_representation = Google::Apis::DriveV2::ChangeList::Representation
          command.response_class = Google::Apis::DriveV2::ChangeList
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['includeCorpusRemovals'] = include_corpus_removals unless include_corpus_removals.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['includeItemsFromAllDrives'] = include_items_from_all_drives unless include_items_from_all_drives.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['includeSubscribed'] = include_subscribed unless include_subscribed.nil?
          command.query['includeTeamDriveItems'] = include_team_drive_items unless include_team_drive_items.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['spaces'] = spaces unless spaces.nil?
          command.query['startChangeId'] = start_change_id unless start_change_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Subscribe to changes for a user.
        # @param [Google::Apis::DriveV2::Channel] channel_object
        # @param [String] drive_id
        #   The shared drive from which changes are returned. If specified the change IDs
        #   will be reflective of the shared drive; use the combined drive ID and change
        #   ID as an identifier.
        # @param [Boolean] include_corpus_removals
        #   Whether changes should include the file resource if the file is still
        #   accessible by the user at the time of the request, even when a file was
        #   removed from the list of changes and there will be no further change entries
        #   for this file.
        # @param [Boolean] include_deleted
        #   Whether to include changes indicating that items have been removed from the
        #   list of changes, for example by deletion or loss of access.
        # @param [Boolean] include_items_from_all_drives
        #   Whether both My Drive and shared drive items should be included in results.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] include_subscribed
        #   Whether to include changes outside the My Drive hierarchy in the result. When
        #   set to false, changes to files such as those in the Application Data folder or
        #   shared files which have not been added to My Drive are omitted from the result.
        # @param [Boolean] include_team_drive_items
        #   Deprecated use includeItemsFromAllDrives instead.
        # @param [Fixnum] max_results
        #   Maximum number of changes to return.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response or to the
        #   response from the getStartPageToken method.
        # @param [String] spaces
        #   A comma-separated list of spaces to query. Supported values are 'drive', '
        #   appDataFolder' and 'photos'.
        # @param [Fixnum] start_change_id
        #   Deprecated - use pageToken instead.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] team_drive_id
        #   Deprecated use driveId instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_change(channel_object = nil, drive_id: nil, include_corpus_removals: nil, include_deleted: nil, include_items_from_all_drives: nil, include_permissions_for_view: nil, include_subscribed: nil, include_team_drive_items: nil, max_results: nil, page_token: nil, spaces: nil, start_change_id: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'changes/watch', options)
          command.request_representation = Google::Apis::DriveV2::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DriveV2::Channel::Representation
          command.response_class = Google::Apis::DriveV2::Channel
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['includeCorpusRemovals'] = include_corpus_removals unless include_corpus_removals.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['includeItemsFromAllDrives'] = include_items_from_all_drives unless include_items_from_all_drives.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['includeSubscribed'] = include_subscribed unless include_subscribed.nil?
          command.query['includeTeamDriveItems'] = include_team_drive_items unless include_team_drive_items.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['spaces'] = spaces unless spaces.nil?
          command.query['startChangeId'] = start_change_id unless start_change_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop watching resources through this channel
        # @param [Google::Apis::DriveV2::Channel] channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_channel(channel_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'channels/stop', options)
          command.request_representation = Google::Apis::DriveV2::Channel::Representation
          command.request_object = channel_object
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a child from a folder.
        # @param [String] folder_id
        #   The ID of the folder.
        # @param [String] child_id
        #   The ID of the child.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. If the item's last parent is removed, the item is placed under its
        #   owner's root.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_child(folder_id, child_id, enforce_single_parent: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{folderId}/children/{childId}', options)
          command.params['folderId'] = folder_id unless folder_id.nil?
          command.params['childId'] = child_id unless child_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific child reference.
        # @param [String] folder_id
        #   The ID of the folder.
        # @param [String] child_id
        #   The ID of the child.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ChildReference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ChildReference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_child(folder_id, child_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{folderId}/children/{childId}', options)
          command.response_representation = Google::Apis::DriveV2::ChildReference::Representation
          command.response_class = Google::Apis::DriveV2::ChildReference
          command.params['folderId'] = folder_id unless folder_id.nil?
          command.params['childId'] = child_id unless child_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a file into a folder.
        # @param [String] folder_id
        #   The ID of the folder.
        # @param [Google::Apis::DriveV2::ChildReference] child_reference_object
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. If the child's owner makes the request, the child is removed from all
        #   current folders and placed in the requested folder. Any other requests that
        #   increase the number of the child's parents fail, except when the
        #   canAddMyDriveParent file capability is true and a single parent is being added.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ChildReference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ChildReference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_child(folder_id, child_reference_object = nil, enforce_single_parent: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{folderId}/children', options)
          command.request_representation = Google::Apis::DriveV2::ChildReference::Representation
          command.request_object = child_reference_object
          command.response_representation = Google::Apis::DriveV2::ChildReference::Representation
          command.response_class = Google::Apis::DriveV2::ChildReference
          command.params['folderId'] = folder_id unless folder_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a folder's children.
        # @param [String] folder_id
        #   The ID of the folder.
        # @param [Fixnum] max_results
        #   Maximum number of children to return.
        # @param [String] order_by
        #   A comma-separated list of sort keys. Valid keys are 'createdDate', 'folder', '
        #   lastViewedByMeDate', 'modifiedByMeDate', 'modifiedDate', 'quotaBytesUsed', '
        #   recency', 'sharedWithMeDate', 'starred', and 'title'. Each key sorts ascending
        #   by default, but may be reversed with the 'desc' modifier. Example usage: ?
        #   orderBy=folder,modifiedDate desc,title. Please note that there is a current
        #   limitation for users with approximately one million files in which the
        #   requested sort order is ignored.
        # @param [String] page_token
        #   Page token for children.
        # @param [String] q
        #   Query string for searching children.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ChildList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ChildList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_children(folder_id, max_results: nil, order_by: nil, page_token: nil, q: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{folderId}/children', options)
          command.response_representation = Google::Apis::DriveV2::ChildList::Representation
          command.response_class = Google::Apis::DriveV2::ChildList
          command.params['folderId'] = folder_id unless folder_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a comment.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_comment(file_id, comment_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/comments/{commentId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a comment by ID.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Boolean] include_deleted
        #   If set, this will succeed when retrieving a deleted comment, and will include
        #   any deleted replies.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_comment(file_id, comment_id, include_deleted: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments/{commentId}', options)
          command.response_representation = Google::Apis::DriveV2::Comment::Representation
          command.response_class = Google::Apis::DriveV2::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new comment on the given file.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV2::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_comment(file_id, comment_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/comments', options)
          command.request_representation = Google::Apis::DriveV2::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::DriveV2::Comment::Representation
          command.response_class = Google::Apis::DriveV2::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's comments.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Boolean] include_deleted
        #   If set, all comments and replies, including deleted comments and replies (with
        #   content stripped) will be returned.
        # @param [Fixnum] max_results
        #   The maximum number of discussions to include in the response, used for paging.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of "nextPageToken" from
        #   the previous response.
        # @param [String] updated_min
        #   Only discussions that were updated after this timestamp will be returned.
        #   Formatted as an RFC 3339 timestamp.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::CommentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::CommentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments(file_id, include_deleted: nil, max_results: nil, page_token: nil, updated_min: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments', options)
          command.response_representation = Google::Apis::DriveV2::CommentList::Representation
          command.response_class = Google::Apis::DriveV2::CommentList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['updatedMin'] = updated_min unless updated_min.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing comment.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Google::Apis::DriveV2::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_comment(file_id, comment_id, comment_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/comments/{commentId}', options)
          command.request_representation = Google::Apis::DriveV2::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::DriveV2::Comment::Representation
          command.response_class = Google::Apis::DriveV2::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing comment.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Google::Apis::DriveV2::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_comment(file_id, comment_id, comment_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'files/{fileId}/comments/{commentId}', options)
          command.request_representation = Google::Apis::DriveV2::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::DriveV2::Comment::Representation
          command.response_class = Google::Apis::DriveV2::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a shared drive for which the user is an organizer. The
        # shared drive cannot contain any untrashed items.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_drive(drive_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'drives/{driveId}', options)
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a shared drive's metadata by ID.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the shared drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_drive(drive_id, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'drives/{driveId}', options)
          command.response_representation = Google::Apis::DriveV2::Drive::Representation
          command.response_class = Google::Apis::DriveV2::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Hides a shared drive from the default view.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def hide_drive(drive_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'drives/{driveId}/hide', options)
          command.response_representation = Google::Apis::DriveV2::Drive::Representation
          command.response_class = Google::Apis::DriveV2::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new shared drive.
        # @param [String] request_id
        #   An ID, such as a random UUID, which uniquely identifies this user's request
        #   for idempotent creation of a shared drive. A repeated request by the same user
        #   and with the same request ID will avoid creating duplicates by attempting to
        #   create the same shared drive. If the shared drive already exists a 409 error
        #   will be returned.
        # @param [Google::Apis::DriveV2::Drive] drive_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_drive(request_id, drive_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'drives', options)
          command.request_representation = Google::Apis::DriveV2::Drive::Representation
          command.request_object = drive_object
          command.response_representation = Google::Apis::DriveV2::Drive::Representation
          command.response_class = Google::Apis::DriveV2::Drive
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's shared drives.
        # @param [Fixnum] max_results
        #   Maximum number of shared drives to return.
        # @param [String] page_token
        #   Page token for shared drives.
        # @param [String] q
        #   Query string for searching shared drives.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then all shared
        #   drives of the domain in which the requester is an administrator are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::DriveList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::DriveList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_drives(max_results: nil, page_token: nil, q: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'drives', options)
          command.response_representation = Google::Apis::DriveV2::DriveList::Representation
          command.response_class = Google::Apis::DriveV2::DriveList
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a shared drive to the default view.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unhide_drive(drive_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'drives/{driveId}/unhide', options)
          command.response_representation = Google::Apis::DriveV2::Drive::Representation
          command.response_class = Google::Apis::DriveV2::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadata for a shared drive.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [Google::Apis::DriveV2::Drive] drive_object
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the shared drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_drive(drive_id, drive_object = nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'drives/{driveId}', options)
          command.request_representation = Google::Apis::DriveV2::Drive::Representation
          command.request_object = drive_object
          command.response_representation = Google::Apis::DriveV2::Drive::Representation
          command.response_class = Google::Apis::DriveV2::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a copy of the specified file. Folders cannot be copied.
        # @param [String] file_id
        #   The ID of the file to copy.
        # @param [Google::Apis::DriveV2::File] file_object
        # @param [Boolean] convert
        #   Whether to convert this file to the corresponding Docs Editors format.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. Requests that specify more than one parent fail.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] ocr
        #   Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
        # @param [String] ocr_language
        #   If ocr is true, hints at the language to use. Valid values are BCP 47 codes.
        # @param [Boolean] pinned
        #   Whether to pin the head revision of the new copy. A file can have a maximum of
        #   200 pinned revisions.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] timed_text_language
        #   The language of the timed text.
        # @param [String] timed_text_track_name
        #   The timed text track name.
        # @param [String] visibility
        #   The visibility of the new file. This parameter is only relevant when the
        #   source is not a native Google Doc and convert=false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def copy_file(file_id, file_object = nil, convert: nil, enforce_single_parent: nil, include_permissions_for_view: nil, ocr: nil, ocr_language: nil, pinned: nil, supports_all_drives: nil, supports_team_drives: nil, timed_text_language: nil, timed_text_track_name: nil, visibility: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/copy', options)
          command.request_representation = Google::Apis::DriveV2::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['convert'] = convert unless convert.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['ocr'] = ocr unless ocr.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['pinned'] = pinned unless pinned.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['timedTextLanguage'] = timed_text_language unless timed_text_language.nil?
          command.query['timedTextTrackName'] = timed_text_track_name unless timed_text_track_name.nil?
          command.query['visibility'] = visibility unless visibility.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a file by ID. Skips the trash. The currently authenticated
        # user must own the file or be an organizer on the parent for shared drive files.
        # @param [String] file_id
        #   The ID of the file to delete.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter will only take effect if the item is not in a
        #   shared drive. If an item's last parent is deleted but the item itself is not,
        #   the item will be placed under its owner's root.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_file(file_id, enforce_single_parent: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all of the user's trashed files.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter will only take effect if the item is not in a
        #   shared drive. If an item's last parent is deleted but the item itself is not,
        #   the item will be placed under its owner's root.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def empty_trash(enforce_single_parent: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/trash', options)
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a Google Doc to the requested MIME type and returns the exported
        # content. Please note that the exported content is limited to 10MB.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] mime_type
        #   The MIME type of the format requested for this export.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_file(file_id, mime_type, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'files/{fileId}/export', options)
          else
            command = make_download_command(:get, 'files/{fileId}/export', options)
            command.download_dest = download_dest
          end
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['mimeType'] = mime_type unless mime_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a set of file IDs which can be provided in insert or copy requests.
        # @param [Fixnum] max_results
        #   Maximum number of IDs to return.
        # @param [String] space
        #   The space in which the IDs can be used to create new files. Supported values
        #   are 'drive' and 'appDataFolder'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::GeneratedIds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::GeneratedIds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_file_ids(max_results: nil, space: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/generateIds', options)
          command.response_representation = Google::Apis::DriveV2::GeneratedIds::Representation
          command.response_class = Google::Apis::DriveV2::GeneratedIds
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['space'] = space unless space.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a file's metadata by ID.
        # @param [String] file_id
        #   The ID for the file in question.
        # @param [Boolean] acknowledge_abuse
        #   Whether the user is acknowledging the risk of downloading known malware or
        #   other abusive files.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [String] projection
        #   This parameter is deprecated and has no function.
        # @param [String] revision_id
        #   Specifies the Revision ID that should be downloaded. Ignored unless alt=media
        #   is specified.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] update_viewed_date
        #   Deprecated: Use files.update with modifiedDateBehavior=noChange,
        #   updateViewedDate=true and an empty request body.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_file(file_id, acknowledge_abuse: nil, include_permissions_for_view: nil, projection: nil, revision_id: nil, supports_all_drives: nil, supports_team_drives: nil, update_viewed_date: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'files/{fileId}', options)
          else
            command = make_download_command(:get, 'files/{fileId}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['acknowledgeAbuse'] = acknowledge_abuse unless acknowledge_abuse.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['revisionId'] = revision_id unless revision_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['updateViewedDate'] = update_viewed_date unless update_viewed_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Insert a new file.
        # @param [Google::Apis::DriveV2::File] file_object
        # @param [Boolean] convert
        #   Whether to convert this file to the corresponding Docs Editors format.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. Requests that specify more than one parent fail.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] ocr
        #   Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
        # @param [String] ocr_language
        #   If ocr is true, hints at the language to use. Valid values are BCP 47 codes.
        # @param [Boolean] pinned
        #   Whether to pin the head revision of the uploaded file. A file can have a
        #   maximum of 200 pinned revisions.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] timed_text_language
        #   The language of the timed text.
        # @param [String] timed_text_track_name
        #   The timed text track name.
        # @param [Boolean] use_content_as_indexable_text
        #   Whether to use the content as indexable text.
        # @param [String] visibility
        #   The visibility of the new file. This parameter is only relevant when convert=
        #   false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_file(file_object = nil, convert: nil, enforce_single_parent: nil, include_permissions_for_view: nil, ocr: nil, ocr_language: nil, pinned: nil, supports_all_drives: nil, supports_team_drives: nil, timed_text_language: nil, timed_text_track_name: nil, use_content_as_indexable_text: nil, visibility: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'files', options)
          else
            command = make_upload_command(:post, 'files', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DriveV2::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.query['convert'] = convert unless convert.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['ocr'] = ocr unless ocr.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['pinned'] = pinned unless pinned.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['timedTextLanguage'] = timed_text_language unless timed_text_language.nil?
          command.query['timedTextTrackName'] = timed_text_track_name unless timed_text_track_name.nil?
          command.query['useContentAsIndexableText'] = use_content_as_indexable_text unless use_content_as_indexable_text.nil?
          command.query['visibility'] = visibility unless visibility.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's files.
        # @param [String] corpora
        #   Groupings of files to which the query applies. Supported groupings are: 'user'
        #   (files created by, opened by, or shared directly with the user), 'drive' (
        #   files in the specified shared drive as indicated by the 'driveId'), 'domain' (
        #   files shared to the user's domain), and 'allDrives' (A combination of 'user'
        #   and 'drive' for all drives where the user is a member). When able, use 'user'
        #   or 'drive', instead of 'allDrives', for efficiency.
        # @param [String] corpus
        #   The body of items (files/documents) to which the query applies. Deprecated:
        #   use 'corpora' instead.
        # @param [String] drive_id
        #   ID of the shared drive to search.
        # @param [Boolean] include_items_from_all_drives
        #   Whether both My Drive and shared drive items should be included in results.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] include_team_drive_items
        #   Deprecated use includeItemsFromAllDrives instead.
        # @param [Fixnum] max_results
        #   The maximum number of files to return per page. Partial or empty result pages
        #   are possible even before the end of the files list has been reached.
        # @param [String] order_by
        #   A comma-separated list of sort keys. Valid keys are 'createdDate', 'folder', '
        #   lastViewedByMeDate', 'modifiedByMeDate', 'modifiedDate', 'quotaBytesUsed', '
        #   recency', 'sharedWithMeDate', 'starred', 'title', and 'title_natural'. Each
        #   key sorts ascending by default, but may be reversed with the 'desc' modifier.
        #   Example usage: ?orderBy=folder,modifiedDate desc,title. Please note that there
        #   is a current limitation for users with approximately one million files in
        #   which the requested sort order is ignored.
        # @param [String] page_token
        #   Page token for files.
        # @param [String] projection
        #   This parameter is deprecated and has no function.
        # @param [String] q
        #   Query string for searching files.
        # @param [String] spaces
        #   A comma-separated list of spaces to query. Supported values are 'drive', '
        #   appDataFolder' and 'photos'.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] team_drive_id
        #   Deprecated use driveId instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::FileList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::FileList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_files(corpora: nil, corpus: nil, drive_id: nil, include_items_from_all_drives: nil, include_permissions_for_view: nil, include_team_drive_items: nil, max_results: nil, order_by: nil, page_token: nil, projection: nil, q: nil, spaces: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files', options)
          command.response_representation = Google::Apis::DriveV2::FileList::Representation
          command.response_class = Google::Apis::DriveV2::FileList
          command.query['corpora'] = corpora unless corpora.nil?
          command.query['corpus'] = corpus unless corpus.nil?
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['includeItemsFromAllDrives'] = include_items_from_all_drives unless include_items_from_all_drives.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['includeTeamDriveItems'] = include_team_drive_items unless include_team_drive_items.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['q'] = q unless q.nil?
          command.query['spaces'] = spaces unless spaces.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates file metadata and/or content. This method supports patch semantics.
        # @param [String] file_id
        #   The ID of the file to update.
        # @param [Google::Apis::DriveV2::File] file_object
        # @param [String] add_parents
        #   Comma-separated list of parent IDs to add.
        # @param [Boolean] convert
        #   This parameter is deprecated and has no function.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. If the item's owner makes a request to add a single parent, the item is
        #   removed from all current folders and placed in the requested folder. Other
        #   requests that increase the number of parents fail, except when the
        #   canAddMyDriveParent file capability is true and a single parent is being added.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [String] modified_date_behavior
        #   Determines the behavior in which modifiedDate is updated. This overrides
        #   setModifiedDate.
        # @param [Boolean] new_revision
        #   Whether a blob upload should create a new revision. If false, the blob data in
        #   the current head revision is replaced. If true or not set, a new blob is
        #   created as head revision, and previous unpinned revisions are preserved for a
        #   short period of time. Pinned revisions are stored indefinitely, using
        #   additional storage quota, up to a maximum of 200 revisions. For details on how
        #   revisions are retained, see the Drive Help Center. Note that this field is
        #   ignored if there is no payload in the request.
        # @param [Boolean] ocr
        #   Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
        # @param [String] ocr_language
        #   If ocr is true, hints at the language to use. Valid values are BCP 47 codes.
        # @param [Boolean] pinned
        #   Whether to pin the new revision. A file can have a maximum of 200 pinned
        #   revisions. Note that this field is ignored if there is no payload in the
        #   request.
        # @param [String] remove_parents
        #   Comma-separated list of parent IDs to remove.
        # @param [Boolean] set_modified_date
        #   Whether to set the modified date using the value supplied in the request body.
        #   Setting this field to true is equivalent to modifiedDateBehavior=fromBodyOrNow,
        #   and false is equivalent to modifiedDateBehavior=now. To prevent any changes
        #   to the modified date set modifiedDateBehavior=noChange.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] timed_text_language
        #   The language of the timed text.
        # @param [String] timed_text_track_name
        #   The timed text track name.
        # @param [Boolean] update_viewed_date
        #   Whether to update the view date after successfully updating the file.
        # @param [Boolean] use_content_as_indexable_text
        #   Whether to use the content as indexable text.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_file(file_id, file_object = nil, add_parents: nil, convert: nil, enforce_single_parent: nil, include_permissions_for_view: nil, modified_date_behavior: nil, new_revision: nil, ocr: nil, ocr_language: nil, pinned: nil, remove_parents: nil, set_modified_date: nil, supports_all_drives: nil, supports_team_drives: nil, timed_text_language: nil, timed_text_track_name: nil, update_viewed_date: nil, use_content_as_indexable_text: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}', options)
          command.request_representation = Google::Apis::DriveV2::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['addParents'] = add_parents unless add_parents.nil?
          command.query['convert'] = convert unless convert.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['modifiedDateBehavior'] = modified_date_behavior unless modified_date_behavior.nil?
          command.query['newRevision'] = new_revision unless new_revision.nil?
          command.query['ocr'] = ocr unless ocr.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['pinned'] = pinned unless pinned.nil?
          command.query['removeParents'] = remove_parents unless remove_parents.nil?
          command.query['setModifiedDate'] = set_modified_date unless set_modified_date.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['timedTextLanguage'] = timed_text_language unless timed_text_language.nil?
          command.query['timedTextTrackName'] = timed_text_track_name unless timed_text_track_name.nil?
          command.query['updateViewedDate'] = update_viewed_date unless update_viewed_date.nil?
          command.query['useContentAsIndexableText'] = use_content_as_indexable_text unless use_content_as_indexable_text.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set the file's updated time to the current server time.
        # @param [String] file_id
        #   The ID of the file to update.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def touch_file(file_id, include_permissions_for_view: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/touch', options)
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a file to the trash. The currently authenticated user must own the file
        # or be at least a fileOrganizer on the parent for shared drive files. Only the
        # owner may trash a file. The trashed item is excluded from all files.list
        # responses returned for any user who does not own the file. However, all users
        # with access to the file can see the trashed item metadata in an API response.
        # All users with access can copy, download, export, and share the file.
        # @param [String] file_id
        #   The ID of the file to trash.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def trash_file(file_id, include_permissions_for_view: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/trash', options)
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a file from the trash. The currently authenticated user must own the
        # file or be at least a fileOrganizer on the parent for shared drive files. Only
        # the owner may untrash a file.
        # @param [String] file_id
        #   The ID of the file to untrash.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def untrash_file(file_id, include_permissions_for_view: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/untrash', options)
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates file metadata and/or content.
        # @param [String] file_id
        #   The ID of the file to update.
        # @param [Google::Apis::DriveV2::File] file_object
        # @param [String] add_parents
        #   Comma-separated list of parent IDs to add.
        # @param [Boolean] convert
        #   This parameter is deprecated and has no function.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. If the item's owner makes a request to add a single parent, the item is
        #   removed from all current folders and placed in the requested folder. Other
        #   requests that increase the number of parents fail, except when the
        #   canAddMyDriveParent file capability is true and a single parent is being added.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [String] modified_date_behavior
        #   Determines the behavior in which modifiedDate is updated. This overrides
        #   setModifiedDate.
        # @param [Boolean] new_revision
        #   Whether a blob upload should create a new revision. If false, the blob data in
        #   the current head revision is replaced. If true or not set, a new blob is
        #   created as head revision, and previous unpinned revisions are preserved for a
        #   short period of time. Pinned revisions are stored indefinitely, using
        #   additional storage quota, up to a maximum of 200 revisions. For details on how
        #   revisions are retained, see the Drive Help Center. Note that this field is
        #   ignored if there is no payload in the request.
        # @param [Boolean] ocr
        #   Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
        # @param [String] ocr_language
        #   If ocr is true, hints at the language to use. Valid values are BCP 47 codes.
        # @param [Boolean] pinned
        #   Whether to pin the new revision. A file can have a maximum of 200 pinned
        #   revisions. Note that this field is ignored if there is no payload in the
        #   request.
        # @param [String] remove_parents
        #   Comma-separated list of parent IDs to remove.
        # @param [Boolean] set_modified_date
        #   Whether to set the modified date using the value supplied in the request body.
        #   Setting this field to true is equivalent to modifiedDateBehavior=fromBodyOrNow,
        #   and false is equivalent to modifiedDateBehavior=now. To prevent any changes
        #   to the modified date set modifiedDateBehavior=noChange.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] timed_text_language
        #   The language of the timed text.
        # @param [String] timed_text_track_name
        #   The timed text track name.
        # @param [Boolean] update_viewed_date
        #   Whether to update the view date after successfully updating the file.
        # @param [Boolean] use_content_as_indexable_text
        #   Whether to use the content as indexable text.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_file(file_id, file_object = nil, add_parents: nil, convert: nil, enforce_single_parent: nil, include_permissions_for_view: nil, modified_date_behavior: nil, new_revision: nil, ocr: nil, ocr_language: nil, pinned: nil, remove_parents: nil, set_modified_date: nil, supports_all_drives: nil, supports_team_drives: nil, timed_text_language: nil, timed_text_track_name: nil, update_viewed_date: nil, use_content_as_indexable_text: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:put, 'files/{fileId}', options)
          else
            command = make_upload_command(:put, 'files/{fileId}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DriveV2::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV2::File::Representation
          command.response_class = Google::Apis::DriveV2::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['addParents'] = add_parents unless add_parents.nil?
          command.query['convert'] = convert unless convert.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['modifiedDateBehavior'] = modified_date_behavior unless modified_date_behavior.nil?
          command.query['newRevision'] = new_revision unless new_revision.nil?
          command.query['ocr'] = ocr unless ocr.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['pinned'] = pinned unless pinned.nil?
          command.query['removeParents'] = remove_parents unless remove_parents.nil?
          command.query['setModifiedDate'] = set_modified_date unless set_modified_date.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['timedTextLanguage'] = timed_text_language unless timed_text_language.nil?
          command.query['timedTextTrackName'] = timed_text_track_name unless timed_text_track_name.nil?
          command.query['updateViewedDate'] = update_viewed_date unless update_viewed_date.nil?
          command.query['useContentAsIndexableText'] = use_content_as_indexable_text unless use_content_as_indexable_text.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Subscribe to changes on a file
        # @param [String] file_id
        #   The ID for the file in question.
        # @param [Google::Apis::DriveV2::Channel] channel_object
        # @param [Boolean] acknowledge_abuse
        #   Whether the user is acknowledging the risk of downloading known malware or
        #   other abusive files.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [String] projection
        #   This parameter is deprecated and has no function.
        # @param [String] revision_id
        #   Specifies the Revision ID that should be downloaded. Ignored unless alt=media
        #   is specified.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] update_viewed_date
        #   Deprecated: Use files.update with modifiedDateBehavior=noChange,
        #   updateViewedDate=true and an empty request body.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_file(file_id, channel_object = nil, acknowledge_abuse: nil, include_permissions_for_view: nil, projection: nil, revision_id: nil, supports_all_drives: nil, supports_team_drives: nil, update_viewed_date: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:post, 'files/{fileId}/watch', options)
          else
            command = make_download_command(:post, 'files/{fileId}/watch', options)
            command.download_dest = download_dest
          end
          command.request_representation = Google::Apis::DriveV2::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DriveV2::Channel::Representation
          command.response_class = Google::Apis::DriveV2::Channel
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['acknowledgeAbuse'] = acknowledge_abuse unless acknowledge_abuse.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['revisionId'] = revision_id unless revision_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['updateViewedDate'] = update_viewed_date unless update_viewed_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a parent from a file.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] parent_id
        #   The ID of the parent.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. If the item's last parent is removed, the item is placed under its
        #   owner's root.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_parent(file_id, parent_id, enforce_single_parent: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/parents/{parentId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['parentId'] = parent_id unless parent_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific parent reference.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] parent_id
        #   The ID of the parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ParentReference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ParentReference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_parent(file_id, parent_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/parents/{parentId}', options)
          command.response_representation = Google::Apis::DriveV2::ParentReference::Representation
          command.response_class = Google::Apis::DriveV2::ParentReference
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['parentId'] = parent_id unless parent_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a parent folder for a file.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV2::ParentReference] parent_reference_object
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. If the child's owner makes the request, the child is removed from all
        #   current folders and placed in the requested folder. Any other requests that
        #   increase the number of the child's parents fail, except when the
        #   canAddMyDriveParent file capability is true and a single parent is being added.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ParentReference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ParentReference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_parent(file_id, parent_reference_object = nil, enforce_single_parent: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/parents', options)
          command.request_representation = Google::Apis::DriveV2::ParentReference::Representation
          command.request_object = parent_reference_object
          command.response_representation = Google::Apis::DriveV2::ParentReference::Representation
          command.response_class = Google::Apis::DriveV2::ParentReference
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's parents.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::ParentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::ParentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_parents(file_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/parents', options)
          command.response_representation = Google::Apis::DriveV2::ParentList::Representation
          command.response_class = Google::Apis::DriveV2::ParentList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a permission from a file or shared drive.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [String] permission_id
        #   The ID for the permission.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_permission(file_id, permission_id, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/permissions/{permissionId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a permission by ID.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [String] permission_id
        #   The ID for the permission.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permission(file_id, permission_id, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/permissions/{permissionId}', options)
          command.response_representation = Google::Apis::DriveV2::Permission::Representation
          command.response_class = Google::Apis::DriveV2::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the permission ID for an email address.
        # @param [String] email
        #   The email address for which to return a permission ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::PermissionId] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::PermissionId]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permission_id_for_email(email, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'permissionIds/{email}', options)
          command.response_representation = Google::Apis::DriveV2::PermissionId::Representation
          command.response_class = Google::Apis::DriveV2::PermissionId
          command.params['email'] = email unless email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a permission for a file or shared drive.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [Google::Apis::DriveV2::Permission] permission_object
        # @param [String] email_message
        #   A plain text custom message to include in notification emails.
        # @param [Boolean] enforce_single_parent
        #   Set to true to opt in to API behavior that aims for all items to have exactly
        #   one parent. This parameter only takes effect if the item is not in a shared
        #   drive. See moveToNewOwnersRoot for details.
        # @param [Boolean] move_to_new_owners_root
        #   This parameter only takes effect if the item is not in a shared drive and the
        #   request is attempting to transfer the ownership of the item. When set to true,
        #   the item will be moved to the new owner's My Drive root folder and all prior
        #   parents removed. If set to false, when enforceSingleParent=true, parents are
        #   not changed. If set to false, when enforceSingleParent=false, existing parents
        #   are not changed; however, the file will be added to the new owner's My Drive
        #   root folder, unless it is already in the new owner's My Drive.
        # @param [Boolean] send_notification_emails
        #   Whether to send notification emails when sharing to users or groups. This
        #   parameter is ignored and an email is sent if the role is owner.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_permission(file_id, permission_object = nil, email_message: nil, enforce_single_parent: nil, move_to_new_owners_root: nil, send_notification_emails: nil, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/permissions', options)
          command.request_representation = Google::Apis::DriveV2::Permission::Representation
          command.request_object = permission_object
          command.response_representation = Google::Apis::DriveV2::Permission::Representation
          command.response_class = Google::Apis::DriveV2::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['emailMessage'] = email_message unless email_message.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['moveToNewOwnersRoot'] = move_to_new_owners_root unless move_to_new_owners_root.nil?
          command.query['sendNotificationEmails'] = send_notification_emails unless send_notification_emails.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's or shared drive's permissions.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Fixnum] max_results
        #   The maximum number of permissions to return per page. When not set for files
        #   in a shared drive, at most 100 results will be returned. When not set for
        #   files that are not in a shared drive, the entire list will be returned.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::PermissionList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::PermissionList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_permissions(file_id, include_permissions_for_view: nil, max_results: nil, page_token: nil, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/permissions', options)
          command.response_representation = Google::Apis::DriveV2::PermissionList::Representation
          command.response_class = Google::Apis::DriveV2::PermissionList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a permission using patch semantics.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [String] permission_id
        #   The ID for the permission.
        # @param [Google::Apis::DriveV2::Permission] permission_object
        # @param [Boolean] remove_expiration
        #   Whether to remove the expiration date.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] transfer_ownership
        #   Whether changing a role to 'owner' downgrades the current owners to writers.
        #   Does nothing if the specified role is not 'owner'.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_permission(file_id, permission_id, permission_object = nil, remove_expiration: nil, supports_all_drives: nil, supports_team_drives: nil, transfer_ownership: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/permissions/{permissionId}', options)
          command.request_representation = Google::Apis::DriveV2::Permission::Representation
          command.request_object = permission_object
          command.response_representation = Google::Apis::DriveV2::Permission::Representation
          command.response_class = Google::Apis::DriveV2::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['removeExpiration'] = remove_expiration unless remove_expiration.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['transferOwnership'] = transfer_ownership unless transfer_ownership.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a permission.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [String] permission_id
        #   The ID for the permission.
        # @param [Google::Apis::DriveV2::Permission] permission_object
        # @param [Boolean] remove_expiration
        #   Whether to remove the expiration date.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated use supportsAllDrives instead.
        # @param [Boolean] transfer_ownership
        #   Whether changing a role to 'owner' downgrades the current owners to writers.
        #   Does nothing if the specified role is not 'owner'.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_permission(file_id, permission_id, permission_object = nil, remove_expiration: nil, supports_all_drives: nil, supports_team_drives: nil, transfer_ownership: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'files/{fileId}/permissions/{permissionId}', options)
          command.request_representation = Google::Apis::DriveV2::Permission::Representation
          command.request_object = permission_object
          command.response_representation = Google::Apis::DriveV2::Permission::Representation
          command.response_class = Google::Apis::DriveV2::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['removeExpiration'] = remove_expiration unless remove_expiration.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['transferOwnership'] = transfer_ownership unless transfer_ownership.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a property.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] property_key
        #   The key of the property.
        # @param [String] visibility
        #   The visibility of the property.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property(file_id, property_key, visibility: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/properties/{propertyKey}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['propertyKey'] = property_key unless property_key.nil?
          command.query['visibility'] = visibility unless visibility.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a property by its key.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] property_key
        #   The key of the property.
        # @param [String] visibility
        #   The visibility of the property.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Property] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Property]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property(file_id, property_key, visibility: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/properties/{propertyKey}', options)
          command.response_representation = Google::Apis::DriveV2::Property::Representation
          command.response_class = Google::Apis::DriveV2::Property
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['propertyKey'] = property_key unless property_key.nil?
          command.query['visibility'] = visibility unless visibility.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a property to a file, or updates it if it already exists.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV2::Property] property_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Property] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Property]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_property(file_id, property_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/properties', options)
          command.request_representation = Google::Apis::DriveV2::Property::Representation
          command.request_object = property_object
          command.response_representation = Google::Apis::DriveV2::Property::Representation
          command.response_class = Google::Apis::DriveV2::Property
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's properties.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::PropertyList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::PropertyList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_properties(file_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/properties', options)
          command.response_representation = Google::Apis::DriveV2::PropertyList::Representation
          command.response_class = Google::Apis::DriveV2::PropertyList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a property.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] property_key
        #   The key of the property.
        # @param [Google::Apis::DriveV2::Property] property_object
        # @param [String] visibility
        #   The visibility of the property. Allowed values are PRIVATE and PUBLIC. (
        #   Default: PRIVATE)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Property] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Property]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property(file_id, property_key, property_object = nil, visibility: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/properties/{propertyKey}', options)
          command.request_representation = Google::Apis::DriveV2::Property::Representation
          command.request_object = property_object
          command.response_representation = Google::Apis::DriveV2::Property::Representation
          command.response_class = Google::Apis::DriveV2::Property
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['propertyKey'] = property_key unless property_key.nil?
          command.query['visibility'] = visibility unless visibility.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a property.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] property_key
        #   The key of the property.
        # @param [Google::Apis::DriveV2::Property] property_object
        # @param [String] visibility
        #   The visibility of the property. Allowed values are PRIVATE and PUBLIC. (
        #   Default: PRIVATE)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Property] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Property]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property(file_id, property_key, property_object = nil, visibility: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'files/{fileId}/properties/{propertyKey}', options)
          command.request_representation = Google::Apis::DriveV2::Property::Representation
          command.request_object = property_object
          command.response_representation = Google::Apis::DriveV2::Property::Representation
          command.response_class = Google::Apis::DriveV2::Property
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['propertyKey'] = property_key unless property_key.nil?
          command.query['visibility'] = visibility unless visibility.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a reply.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] reply_id
        #   The ID of the reply.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_reply(file_id, comment_id, reply_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reply.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] reply_id
        #   The ID of the reply.
        # @param [Boolean] include_deleted
        #   If set, this will succeed when retrieving a deleted reply.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::CommentReply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::CommentReply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_reply(file_id, comment_id, reply_id, include_deleted: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.response_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.response_class = Google::Apis::DriveV2::CommentReply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new reply to the given comment.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Google::Apis::DriveV2::CommentReply] comment_reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::CommentReply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::CommentReply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_reply(file_id, comment_id, comment_reply_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/comments/{commentId}/replies', options)
          command.request_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.request_object = comment_reply_object
          command.response_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.response_class = Google::Apis::DriveV2::CommentReply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the replies to a comment.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Boolean] include_deleted
        #   If set, all replies, including deleted replies (with content stripped) will be
        #   returned.
        # @param [Fixnum] max_results
        #   The maximum number of replies to include in the response, used for paging.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of "nextPageToken" from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::CommentReplyList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::CommentReplyList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_replies(file_id, comment_id, include_deleted: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments/{commentId}/replies', options)
          command.response_representation = Google::Apis::DriveV2::CommentReplyList::Representation
          command.response_class = Google::Apis::DriveV2::CommentReplyList
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing reply.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] reply_id
        #   The ID of the reply.
        # @param [Google::Apis::DriveV2::CommentReply] comment_reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::CommentReply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::CommentReply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_reply(file_id, comment_id, reply_id, comment_reply_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.request_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.request_object = comment_reply_object
          command.response_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.response_class = Google::Apis::DriveV2::CommentReply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing reply.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] reply_id
        #   The ID of the reply.
        # @param [Google::Apis::DriveV2::CommentReply] comment_reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::CommentReply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::CommentReply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_reply(file_id, comment_id, reply_id, comment_reply_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.request_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.request_object = comment_reply_object
          command.response_representation = Google::Apis::DriveV2::CommentReply::Representation
          command.response_class = Google::Apis::DriveV2::CommentReply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a file version. You can only delete revisions for files
        # with binary content, like images or videos. Revisions for other files, like
        # Google Docs or Sheets, and the last remaining file version can't be deleted.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] revision_id
        #   The ID of the revision.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_revision(file_id, revision_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/revisions/{revisionId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific revision.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] revision_id
        #   The ID of the revision.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_revision(file_id, revision_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/revisions/{revisionId}', options)
          command.response_representation = Google::Apis::DriveV2::Revision::Representation
          command.response_class = Google::Apis::DriveV2::Revision
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's revisions.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Fixnum] max_results
        #   Maximum number of revisions to return.
        # @param [String] page_token
        #   Page token for revisions. To get the next page of results, set this parameter
        #   to the value of "nextPageToken" from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::RevisionList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::RevisionList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_revisions(file_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/revisions', options)
          command.response_representation = Google::Apis::DriveV2::RevisionList::Representation
          command.response_class = Google::Apis::DriveV2::RevisionList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a revision.
        # @param [String] file_id
        #   The ID for the file.
        # @param [String] revision_id
        #   The ID for the revision.
        # @param [Google::Apis::DriveV2::Revision] revision_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_revision(file_id, revision_id, revision_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/revisions/{revisionId}', options)
          command.request_representation = Google::Apis::DriveV2::Revision::Representation
          command.request_object = revision_object
          command.response_representation = Google::Apis::DriveV2::Revision::Representation
          command.response_class = Google::Apis::DriveV2::Revision
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a revision.
        # @param [String] file_id
        #   The ID for the file.
        # @param [String] revision_id
        #   The ID for the revision.
        # @param [Google::Apis::DriveV2::Revision] revision_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_revision(file_id, revision_id, revision_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'files/{fileId}/revisions/{revisionId}', options)
          command.request_representation = Google::Apis::DriveV2::Revision::Representation
          command.request_object = revision_object
          command.response_representation = Google::Apis::DriveV2::Revision::Representation
          command.response_class = Google::Apis::DriveV2::Revision
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated use drives.delete instead.
        # @param [String] team_drive_id
        #   The ID of the Team Drive
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_teamdrive(team_drive_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, 'teamdrives/{teamDriveId}', options)
          command.params['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated use drives.get instead.
        # @param [String] team_drive_id
        #   The ID of the Team Drive
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the Team Drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::TeamDrive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::TeamDrive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_teamdrive(team_drive_id, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'teamdrives/{teamDriveId}', options)
          command.response_representation = Google::Apis::DriveV2::TeamDrive::Representation
          command.response_class = Google::Apis::DriveV2::TeamDrive
          command.params['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated use drives.insert instead.
        # @param [String] request_id
        #   An ID, such as a random UUID, which uniquely identifies this user's request
        #   for idempotent creation of a Team Drive. A repeated request by the same user
        #   and with the same request ID will avoid creating duplicates by attempting to
        #   create the same Team Drive. If the Team Drive already exists a 409 error will
        #   be returned.
        # @param [Google::Apis::DriveV2::TeamDrive] team_drive_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::TeamDrive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::TeamDrive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_teamdrive(request_id, team_drive_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'teamdrives', options)
          command.request_representation = Google::Apis::DriveV2::TeamDrive::Representation
          command.request_object = team_drive_object
          command.response_representation = Google::Apis::DriveV2::TeamDrive::Representation
          command.response_class = Google::Apis::DriveV2::TeamDrive
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated use drives.list instead.
        # @param [Fixnum] max_results
        #   Maximum number of Team Drives to return.
        # @param [String] page_token
        #   Page token for Team Drives.
        # @param [String] q
        #   Query string for searching Team Drives.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then all Team
        #   Drives of the domain in which the requester is an administrator are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::TeamDriveList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::TeamDriveList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_teamdrives(max_results: nil, page_token: nil, q: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'teamdrives', options)
          command.response_representation = Google::Apis::DriveV2::TeamDriveList::Representation
          command.response_class = Google::Apis::DriveV2::TeamDriveList
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated use drives.update instead.
        # @param [String] team_drive_id
        #   The ID of the Team Drive
        # @param [Google::Apis::DriveV2::TeamDrive] team_drive_object
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the Team Drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV2::TeamDrive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV2::TeamDrive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_teamdrive(team_drive_id, team_drive_object = nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, 'teamdrives/{teamDriveId}', options)
          command.request_representation = Google::Apis::DriveV2::TeamDrive::Representation
          command.request_object = team_drive_object
          command.response_representation = Google::Apis::DriveV2::TeamDrive::Representation
          command.response_class = Google::Apis::DriveV2::TeamDrive
          command.params['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
