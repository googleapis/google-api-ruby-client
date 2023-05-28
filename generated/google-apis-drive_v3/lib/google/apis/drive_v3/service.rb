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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DriveV3
      # Google Drive API
      #
      # The Google Drive API allows clients to access resources from Google Drive.
      #
      # @example
      #    require 'google/apis/drive_v3'
      #
      #    Drive = Google::Apis::DriveV3 # Alias the module
      #    service = Drive::DriveService.new
      #
      # @see https://developers.google.com/drive/
      class DriveService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://www.googleapis.com/', 'drive/v3/',
                client_name: 'google-apis-drive_v3',
                client_version: Google::Apis::DriveV3::GEM_VERSION)
          @batch_path = 'batch/drive/v3'
        end
        
        # Gets information about the user, the user's Drive, and system capabilities.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::About] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::About]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_about(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'about', options)
          command.response_representation = Google::Apis::DriveV3::About::Representation
          command.response_class = Google::Apis::DriveV3::About
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the starting pageToken for listing future changes.
        # @param [String] drive_id
        #   The ID of the shared drive for which the starting pageToken for listing future
        #   changes from that shared drive will be returned.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] team_drive_id
        #   Deprecated: Use `driveId` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::StartPageToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::StartPageToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_changes_start_page_token(drive_id: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'changes/startPageToken', options)
          command.response_representation = Google::Apis::DriveV3::StartPageToken::Representation
          command.response_class = Google::Apis::DriveV3::StartPageToken
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the changes for a user or shared drive.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response or to the
        #   response from the getStartPageToken method.
        # @param [String] drive_id
        #   The shared drive from which changes will be returned. If specified the change
        #   IDs will be reflective of the shared drive; use the combined drive ID and
        #   change ID as an identifier.
        # @param [Boolean] include_corpus_removals
        #   Whether changes should include the file resource if the file is still
        #   accessible by the user at the time of the request, even when a file was
        #   removed from the list of changes and there will be no further change entries
        #   for this file.
        # @param [Boolean] include_items_from_all_drives
        #   Whether both My Drive and shared drive items should be included in results.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] include_removed
        #   Whether to include changes indicating that items have been removed from the
        #   list of changes, for example by deletion or loss of access.
        # @param [Boolean] include_team_drive_items
        #   Deprecated: Use `includeItemsFromAllDrives` instead.
        # @param [Fixnum] page_size
        #   The maximum number of changes to return per page.
        # @param [Boolean] restrict_to_my_drive
        #   Whether to restrict the results to changes inside the My Drive hierarchy. This
        #   omits changes to files such as those in the Application Data folder or shared
        #   files which have not been added to My Drive.
        # @param [String] spaces
        #   A comma-separated list of spaces to query within the corpora. Supported values
        #   are 'drive' and 'appDataFolder'.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] team_drive_id
        #   Deprecated: Use `driveId` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::ChangeList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::ChangeList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_changes(page_token, drive_id: nil, include_corpus_removals: nil, include_items_from_all_drives: nil, include_labels: nil, include_permissions_for_view: nil, include_removed: nil, include_team_drive_items: nil, page_size: nil, restrict_to_my_drive: nil, spaces: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'changes', options)
          command.response_representation = Google::Apis::DriveV3::ChangeList::Representation
          command.response_class = Google::Apis::DriveV3::ChangeList
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['includeCorpusRemovals'] = include_corpus_removals unless include_corpus_removals.nil?
          command.query['includeItemsFromAllDrives'] = include_items_from_all_drives unless include_items_from_all_drives.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['includeRemoved'] = include_removed unless include_removed.nil?
          command.query['includeTeamDriveItems'] = include_team_drive_items unless include_team_drive_items.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['restrictToMyDrive'] = restrict_to_my_drive unless restrict_to_my_drive.nil?
          command.query['spaces'] = spaces unless spaces.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Subscribes to changes for a user.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response or to the
        #   response from the getStartPageToken method.
        # @param [Google::Apis::DriveV3::Channel] channel_object
        # @param [String] drive_id
        #   The shared drive from which changes will be returned. If specified the change
        #   IDs will be reflective of the shared drive; use the combined drive ID and
        #   change ID as an identifier.
        # @param [Boolean] include_corpus_removals
        #   Whether changes should include the file resource if the file is still
        #   accessible by the user at the time of the request, even when a file was
        #   removed from the list of changes and there will be no further change entries
        #   for this file.
        # @param [Boolean] include_items_from_all_drives
        #   Whether both My Drive and shared drive items should be included in results.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] include_removed
        #   Whether to include changes indicating that items have been removed from the
        #   list of changes, for example by deletion or loss of access.
        # @param [Boolean] include_team_drive_items
        #   Deprecated: Use `includeItemsFromAllDrives` instead.
        # @param [Fixnum] page_size
        #   The maximum number of changes to return per page.
        # @param [Boolean] restrict_to_my_drive
        #   Whether to restrict the results to changes inside the My Drive hierarchy. This
        #   omits changes to files such as those in the Application Data folder or shared
        #   files which have not been added to My Drive.
        # @param [String] spaces
        #   A comma-separated list of spaces to query within the corpora. Supported values
        #   are 'drive' and 'appDataFolder'.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] team_drive_id
        #   Deprecated: Use `driveId` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_change(page_token, channel_object = nil, drive_id: nil, include_corpus_removals: nil, include_items_from_all_drives: nil, include_labels: nil, include_permissions_for_view: nil, include_removed: nil, include_team_drive_items: nil, page_size: nil, restrict_to_my_drive: nil, spaces: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'changes/watch', options)
          command.request_representation = Google::Apis::DriveV3::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DriveV3::Channel::Representation
          command.response_class = Google::Apis::DriveV3::Channel
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['includeCorpusRemovals'] = include_corpus_removals unless include_corpus_removals.nil?
          command.query['includeItemsFromAllDrives'] = include_items_from_all_drives unless include_items_from_all_drives.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['includeRemoved'] = include_removed unless include_removed.nil?
          command.query['includeTeamDriveItems'] = include_team_drive_items unless include_team_drive_items.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['restrictToMyDrive'] = restrict_to_my_drive unless restrict_to_my_drive.nil?
          command.query['spaces'] = spaces unless spaces.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops watching resources through this channel.
        # @param [Google::Apis::DriveV3::Channel] channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def stop_channel(channel_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'channels/stop', options)
          command.request_representation = Google::Apis::DriveV3::Channel::Representation
          command.request_object = channel_object
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a comment on a file.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV3::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_comment(file_id, comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/comments', options)
          command.request_representation = Google::Apis::DriveV3::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::DriveV3::Comment::Representation
          command.response_class = Google::Apis::DriveV3::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_comment(file_id, comment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/comments/{commentId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a comment by ID.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Boolean] include_deleted
        #   Whether to return deleted comments. Deleted comments will not include their
        #   original content.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_comment(file_id, comment_id, include_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments/{commentId}', options)
          command.response_representation = Google::Apis::DriveV3::Comment::Representation
          command.response_class = Google::Apis::DriveV3::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's comments.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Boolean] include_deleted
        #   Whether to include deleted comments. Deleted comments will not include their
        #   original content.
        # @param [Fixnum] page_size
        #   The maximum number of comments to return per page.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [String] start_modified_time
        #   The minimum value of 'modifiedTime' for the result comments (RFC 3339 date-
        #   time).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::CommentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::CommentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments(file_id, include_deleted: nil, page_size: nil, page_token: nil, start_modified_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments', options)
          command.response_representation = Google::Apis::DriveV3::CommentList::Representation
          command.response_class = Google::Apis::DriveV3::CommentList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startModifiedTime'] = start_modified_time unless start_modified_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a comment with patch semantics.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Google::Apis::DriveV3::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_comment(file_id, comment_id, comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/comments/{commentId}', options)
          command.request_representation = Google::Apis::DriveV3::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::DriveV3::Comment::Representation
          command.response_class = Google::Apis::DriveV3::Comment
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a shared drive.
        # @param [String] request_id
        #   Required. An ID, such as a random UUID, which uniquely identifies this user's
        #   request for idempotent creation of a shared drive. A repeated request by the
        #   same user and with the same request ID will avoid creating duplicates by
        #   attempting to create the same shared drive. If the shared drive already exists
        #   a 409 error will be returned.
        # @param [Google::Apis::DriveV3::Drive] drive_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_drive(request_id, drive_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'drives', options)
          command.request_representation = Google::Apis::DriveV3::Drive::Representation
          command.request_object = drive_object
          command.response_representation = Google::Apis::DriveV3::Drive::Representation
          command.response_class = Google::Apis::DriveV3::Drive
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a shared drive for which the user is an organizer. The
        # shared drive cannot contain any untrashed items.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [Boolean] allow_item_deletion
        #   Whether any items inside the shared drive should also be deleted. This option
        #   is only supported when `useDomainAdminAccess` is also set to `true`.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the shared drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_drive(drive_id, allow_item_deletion: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'drives/{driveId}', options)
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['allowItemDeletion'] = allow_item_deletion unless allow_item_deletion.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_drive(drive_id, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'drives/{driveId}', options)
          command.response_representation = Google::Apis::DriveV3::Drive::Representation
          command.response_class = Google::Apis::DriveV3::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Hides a shared drive from the default view.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def hide_drive(drive_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'drives/{driveId}/hide', options)
          command.response_representation = Google::Apis::DriveV3::Drive::Representation
          command.response_class = Google::Apis::DriveV3::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's shared drives. This method accepts the `q` parameter, which
        # is a search query combining one or more search terms. For more information,
        # see the [Search for shared drives](/drive/api/guides/search-shareddrives)
        # guide.
        # @param [Fixnum] page_size
        #   Maximum number of shared drives to return per page.
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::DriveList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::DriveList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_drives(page_size: nil, page_token: nil, q: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'drives', options)
          command.response_representation = Google::Apis::DriveV3::DriveList::Representation
          command.response_class = Google::Apis::DriveV3::DriveList
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a shared drive to the default view.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unhide_drive(drive_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'drives/{driveId}/unhide', options)
          command.response_representation = Google::Apis::DriveV3::Drive::Representation
          command.response_class = Google::Apis::DriveV3::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadate for a shared drive.
        # @param [String] drive_id
        #   The ID of the shared drive.
        # @param [Google::Apis::DriveV3::Drive] drive_object
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the shared drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Drive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Drive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_drive(drive_id, drive_object = nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'drives/{driveId}', options)
          command.request_representation = Google::Apis::DriveV3::Drive::Representation
          command.request_object = drive_object
          command.response_representation = Google::Apis::DriveV3::Drive::Representation
          command.response_class = Google::Apis::DriveV3::Drive
          command.params['driveId'] = drive_id unless drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a copy of a file and applies any requested updates with patch
        # semantics.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV3::File] file_object
        # @param [Boolean] enforce_single_parent
        #   Deprecated. Copying files into multiple folders is no longer supported. Use
        #   shortcuts instead.
        # @param [Boolean] ignore_default_visibility
        #   Whether to ignore the domain's default visibility settings for the created
        #   file. Domain administrators can choose to make all uploaded files visible to
        #   the domain by default; this parameter bypasses that behavior for the request.
        #   Permissions are still inherited from parent folders.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] keep_revision_forever
        #   Whether to set the 'keepForever' field in the new head revision. This is only
        #   applicable to files with binary content in Google Drive. Only 200 revisions
        #   for the file can be kept forever. If the limit is reached, try deleting pinned
        #   revisions.
        # @param [String] ocr_language
        #   A language hint for OCR processing during image import (ISO 639-1 code).
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def copy_file(file_id, file_object = nil, enforce_single_parent: nil, ignore_default_visibility: nil, include_labels: nil, include_permissions_for_view: nil, keep_revision_forever: nil, ocr_language: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/copy', options)
          command.request_representation = Google::Apis::DriveV3::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV3::File::Representation
          command.response_class = Google::Apis::DriveV3::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['ignoreDefaultVisibility'] = ignore_default_visibility unless ignore_default_visibility.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['keepRevisionForever'] = keep_revision_forever unless keep_revision_forever.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new file. This method supports an */upload* URI and accepts
        # uploaded media with the following characteristics: - *Maximum file size:* 5,
        # 120 GB - *Accepted Media MIME types:*`*/*` Note: Specify a valid MIME type,
        # rather than the literal `*/*` value. The literal `*/*` is only used to
        # indicate that any valid MIME type can be uploaded. For more information on
        # uploading files, see [Upload file data](/drive/api/guides/manage-uploads).
        # Apps creating shortcuts with `files.create` must specify the MIME type `
        # application/vnd.google-apps.shortcut`. Apps should specify a file extension in
        # the `name` property when inserting files with the API. For example, an
        # operation to insert a JPEG file should specify something like `"name": "cat.
        # jpg"` in the metadata. Subsequent `GET` requests include the read-only `
        # fileExtension` property populated with the extension originally specified in
        # the `title` property. When a Google Drive user requests to download a file, or
        # when the file is downloaded through the sync client, Drive builds a full
        # filename (with extension) based on the title. In cases where the extension is
        # missing, Drive attempts to determine the extension based on the file's MIME
        # type.
        # @param [Google::Apis::DriveV3::File] file_object
        # @param [Boolean] enforce_single_parent
        #   Deprecated. Creating files in multiple folders is no longer supported.
        # @param [Boolean] ignore_default_visibility
        #   Whether to ignore the domain's default visibility settings for the created
        #   file. Domain administrators can choose to make all uploaded files visible to
        #   the domain by default; this parameter bypasses that behavior for the request.
        #   Permissions are still inherited from parent folders.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] keep_revision_forever
        #   Whether to set the 'keepForever' field in the new head revision. This is only
        #   applicable to files with binary content in Google Drive. Only 200 revisions
        #   for the file can be kept forever. If the limit is reached, try deleting pinned
        #   revisions.
        # @param [String] ocr_language
        #   A language hint for OCR processing during image import (ISO 639-1 code).
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] use_content_as_indexable_text
        #   Whether to use the uploaded content as indexable text.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_file(file_object = nil, enforce_single_parent: nil, ignore_default_visibility: nil, include_labels: nil, include_permissions_for_view: nil, keep_revision_forever: nil, ocr_language: nil, supports_all_drives: nil, supports_team_drives: nil, use_content_as_indexable_text: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'files', options)
          else
            command = make_upload_command(:post, 'files', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DriveV3::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV3::File::Representation
          command.response_class = Google::Apis::DriveV3::File
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['ignoreDefaultVisibility'] = ignore_default_visibility unless ignore_default_visibility.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['keepRevisionForever'] = keep_revision_forever unless keep_revision_forever.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useContentAsIndexableText'] = use_content_as_indexable_text unless use_content_as_indexable_text.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a file owned by the user without moving it to the trash.
        # If the file belongs to a shared drive the user must be an organizer on the
        # parent. If the target is a folder, all descendants owned by the user are also
        # deleted.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Boolean] enforce_single_parent
        #   Deprecated: If an item is not in a shared drive and its last parent is deleted
        #   but the item itself is not, the item will be placed under its owner's root.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_file(file_id, enforce_single_parent: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all of the user's trashed files.
        # @param [String] drive_id
        #   If set, empties the trash of the provided shared drive.
        # @param [Boolean] enforce_single_parent
        #   Deprecated: If an item is not in a shared drive and its last parent is deleted
        #   but the item itself is not, the item will be placed under its owner's root.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def empty_file_trash(drive_id: nil, enforce_single_parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/trash', options)
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a Google Workspace document to the requested MIME type and returns
        # exported byte content. Note that the exported content is limited to 10MB.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] mime_type
        #   Required. The MIME type of the format requested for this export.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def export_file(file_id, mime_type, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
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
          execute_or_queue_command(command, &block)
        end
        
        # Generates a set of file IDs which can be provided in create or copy requests.
        # @param [Fixnum] count
        #   The number of IDs to return.
        # @param [String] space
        #   The space in which the IDs can be used to create new files. Supported values
        #   are 'drive' and 'appDataFolder'. (Default: 'drive')
        # @param [String] type
        #   The type of items which the IDs can be used for. Supported values are 'files'
        #   and 'shortcuts'. Note that 'shortcuts' are only supported in the `drive` '
        #   space'. (Default: 'files')
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::GeneratedIds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::GeneratedIds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_file_ids(count: nil, space: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/generateIds', options)
          command.response_representation = Google::Apis::DriveV3::GeneratedIds::Representation
          command.response_class = Google::Apis::DriveV3::GeneratedIds
          command.query['count'] = count unless count.nil?
          command.query['space'] = space unless space.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a file's metadata or content by ID. If you provide the URL parameter `
        # alt=media`, then the response includes the file contents in the response body.
        # Downloading content with `alt=media` only works if the file is stored in Drive.
        # To download Google Docs, Sheets, and Slides use [`files.export`](/drive/api/
        # reference/rest/v3/files/export) instead. For more information, see [Download &
        # export files](/drive/api/guides/manage-downloads).
        # @param [String] file_id
        #   The ID of the file.
        # @param [Boolean] acknowledge_abuse
        #   Whether the user is acknowledging the risk of downloading known malware or
        #   other abusive files. This is only applicable when alt=media.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_file(file_id, acknowledge_abuse: nil, include_labels: nil, include_permissions_for_view: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'files/{fileId}', options)
          else
            command = make_download_command(:get, 'files/{fileId}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DriveV3::File::Representation
          command.response_class = Google::Apis::DriveV3::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['acknowledgeAbuse'] = acknowledge_abuse unless acknowledge_abuse.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's files. This method accepts the `q` parameter, which is a
        # search query combining one or more search terms. For more information, see the
        # [Search for files & folders](/drive/api/guides/search-files) guide. *Note:*
        # This method returns *all* files by default, including trashed files. If you
        # don't want trashed files to appear in the list, use the `trashed=false` query
        # parameter to remove trashed files from the results.
        # @param [String] corpora
        #   Bodies of items (files/documents) to which the query applies. Supported bodies
        #   are 'user', 'domain', 'drive', and 'allDrives'. Prefer 'user' or 'drive' to '
        #   allDrives' for efficiency. By default, corpora is set to 'user'. However, this
        #   can change depending on the filter set through the 'q' parameter.
        # @param [String] corpus
        #   Deprecated: The source of files to list. Use 'corpora' instead.
        # @param [String] drive_id
        #   ID of the shared drive to search.
        # @param [Boolean] include_items_from_all_drives
        #   Whether both My Drive and shared drive items should be included in results.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] include_team_drive_items
        #   Deprecated: Use `includeItemsFromAllDrives` instead.
        # @param [String] order_by
        #   A comma-separated list of sort keys. Valid keys are 'createdTime', 'folder', '
        #   modifiedByMeTime', 'modifiedTime', 'name', 'name_natural', 'quotaBytesUsed', '
        #   recency', 'sharedWithMeTime', 'starred', and 'viewedByMeTime'. Each key sorts
        #   ascending by default, but can be reversed with the 'desc' modifier. Example
        #   usage: ?orderBy=folder,modifiedTime desc,name.
        # @param [Fixnum] page_size
        #   The maximum number of files to return per page. Partial or empty result pages
        #   are possible even before the end of the files list has been reached.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [String] q
        #   A query for filtering the file results. See the "Search for files & folders"
        #   guide for supported syntax.
        # @param [String] spaces
        #   A comma-separated list of spaces to query within the corpora. Supported values
        #   are 'drive' and 'appDataFolder'.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] team_drive_id
        #   Deprecated: Use `driveId` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::FileList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::FileList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_files(corpora: nil, corpus: nil, drive_id: nil, include_items_from_all_drives: nil, include_labels: nil, include_permissions_for_view: nil, include_team_drive_items: nil, order_by: nil, page_size: nil, page_token: nil, q: nil, spaces: nil, supports_all_drives: nil, supports_team_drives: nil, team_drive_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files', options)
          command.response_representation = Google::Apis::DriveV3::FileList::Representation
          command.response_class = Google::Apis::DriveV3::FileList
          command.query['corpora'] = corpora unless corpora.nil?
          command.query['corpus'] = corpus unless corpus.nil?
          command.query['driveId'] = drive_id unless drive_id.nil?
          command.query['includeItemsFromAllDrives'] = include_items_from_all_drives unless include_items_from_all_drives.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['includeTeamDriveItems'] = include_team_drive_items unless include_team_drive_items.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['spaces'] = spaces unless spaces.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the labels on a file.
        # @param [String] file_id
        #   The ID for the file or shared drive.
        # @param [Fixnum] max_results
        #   The maximum number of labels to return per page. When not set, defaults to 100.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::LabelList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::LabelList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_file_labels(file_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/listLabels', options)
          command.response_representation = Google::Apis::DriveV3::LabelList::Representation
          command.response_class = Google::Apis::DriveV3::LabelList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the set of labels applied to a file. Returns a list of the labels
        # that were added or modified.
        # @param [String] file_id
        #   The ID of the file to which the labels belong.
        # @param [Google::Apis::DriveV3::ModifyLabelsRequest] modify_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::ModifyLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::ModifyLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_file_labels(file_id, modify_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/modifyLabels', options)
          command.request_representation = Google::Apis::DriveV3::ModifyLabelsRequest::Representation
          command.request_object = modify_labels_request_object
          command.response_representation = Google::Apis::DriveV3::ModifyLabelsResponse::Representation
          command.response_class = Google::Apis::DriveV3::ModifyLabelsResponse
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a file's metadata and/or content. When calling this method, only
        # populate fields in the request that you want to modify. When updating fields,
        # some fields might be changed automatically, such as `modifiedDate`. This
        # method supports patch semantics. This method supports an */upload* URI and
        # accepts uploaded media with the following characteristics: - *Maximum file
        # size:* 5,120 GB - *Accepted Media MIME types:*`*/*` Note: Specify a valid MIME
        # type, rather than the literal `*/*` value. The literal `*/*` is only used to
        # indicate that any valid MIME type can be uploaded. For more information on
        # uploading files, see [Upload file data](/drive/api/guides/manage-uploads).
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV3::File] file_object
        # @param [String] add_parents
        #   A comma-separated list of parent IDs to add.
        # @param [Boolean] enforce_single_parent
        #   Deprecated: Adding files to multiple folders is no longer supported. Use
        #   shortcuts instead.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] keep_revision_forever
        #   Whether to set the 'keepForever' field in the new head revision. This is only
        #   applicable to files with binary content in Google Drive. Only 200 revisions
        #   for the file can be kept forever. If the limit is reached, try deleting pinned
        #   revisions.
        # @param [String] ocr_language
        #   A language hint for OCR processing during image import (ISO 639-1 code).
        # @param [String] remove_parents
        #   A comma-separated list of parent IDs to remove.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] use_content_as_indexable_text
        #   Whether to use the uploaded content as indexable text.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::File] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::File]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_file(file_id, file_object = nil, add_parents: nil, enforce_single_parent: nil, include_labels: nil, include_permissions_for_view: nil, keep_revision_forever: nil, ocr_language: nil, remove_parents: nil, supports_all_drives: nil, supports_team_drives: nil, use_content_as_indexable_text: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:patch, 'files/{fileId}', options)
          else
            command = make_upload_command(:patch, 'files/{fileId}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DriveV3::File::Representation
          command.request_object = file_object
          command.response_representation = Google::Apis::DriveV3::File::Representation
          command.response_class = Google::Apis::DriveV3::File
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['addParents'] = add_parents unless add_parents.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['keepRevisionForever'] = keep_revision_forever unless keep_revision_forever.nil?
          command.query['ocrLanguage'] = ocr_language unless ocr_language.nil?
          command.query['removeParents'] = remove_parents unless remove_parents.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useContentAsIndexableText'] = use_content_as_indexable_text unless use_content_as_indexable_text.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Subscribes to changes to a file.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Google::Apis::DriveV3::Channel] channel_object
        # @param [Boolean] acknowledge_abuse
        #   Whether the user is acknowledging the risk of downloading known malware or
        #   other abusive files. This is only applicable when alt=media.
        # @param [String] include_labels
        #   A comma-separated list of IDs of labels to include in the `labelInfo` part of
        #   the response.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_file(file_id, channel_object = nil, acknowledge_abuse: nil, include_labels: nil, include_permissions_for_view: nil, supports_all_drives: nil, supports_team_drives: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/watch', options)
          command.request_representation = Google::Apis::DriveV3::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::DriveV3::Channel::Representation
          command.response_class = Google::Apis::DriveV3::Channel
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['acknowledgeAbuse'] = acknowledge_abuse unless acknowledge_abuse.nil?
          command.query['includeLabels'] = include_labels unless include_labels.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a permission for a file or shared drive. **Warning:** Concurrent
        # permissions operations on the same file are not supported; only the last
        # update is applied.
        # @param [String] file_id
        #   The ID of the file or shared drive.
        # @param [Google::Apis::DriveV3::Permission] permission_object
        # @param [String] email_message
        #   A plain text custom message to include in the notification email.
        # @param [Boolean] enforce_single_parent
        #   Deprecated: See `moveToNewOwnersRoot` for details.
        # @param [Boolean] move_to_new_owners_root
        #   This parameter will only take effect if the item is not in a shared drive and
        #   the request is attempting to transfer the ownership of the item. If set to `
        #   true`, the item will be moved to the new owner's My Drive root folder and all
        #   prior parents removed. If set to `false`, parents are not changed.
        # @param [Boolean] send_notification_email
        #   Whether to send a notification email when sharing to users or groups. This
        #   defaults to true for users and groups, and is not allowed for other requests.
        #   It must not be disabled for ownership transfers.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] transfer_ownership
        #   Whether to transfer ownership to the specified user and downgrade the current
        #   owner to a writer. This parameter is required as an acknowledgement of the
        #   side effect.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_permission(file_id, permission_object = nil, email_message: nil, enforce_single_parent: nil, move_to_new_owners_root: nil, send_notification_email: nil, supports_all_drives: nil, supports_team_drives: nil, transfer_ownership: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/permissions', options)
          command.request_representation = Google::Apis::DriveV3::Permission::Representation
          command.request_object = permission_object
          command.response_representation = Google::Apis::DriveV3::Permission::Representation
          command.response_class = Google::Apis::DriveV3::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['emailMessage'] = email_message unless email_message.nil?
          command.query['enforceSingleParent'] = enforce_single_parent unless enforce_single_parent.nil?
          command.query['moveToNewOwnersRoot'] = move_to_new_owners_root unless move_to_new_owners_root.nil?
          command.query['sendNotificationEmail'] = send_notification_email unless send_notification_email.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['transferOwnership'] = transfer_ownership unless transfer_ownership.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a permission. **Warning:** Concurrent permissions operations on the
        # same file are not supported; only the last update is applied.
        # @param [String] file_id
        #   The ID of the file or shared drive.
        # @param [String] permission_id
        #   The ID of the permission.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_permission(file_id, permission_id, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/permissions/{permissionId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a permission by ID.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] permission_id
        #   The ID of the permission.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permission(file_id, permission_id, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/permissions/{permissionId}', options)
          command.response_representation = Google::Apis::DriveV3::Permission::Representation
          command.response_class = Google::Apis::DriveV3::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's or shared drive's permissions.
        # @param [String] file_id
        #   The ID of the file or shared drive.
        # @param [String] include_permissions_for_view
        #   Specifies which additional view's permissions to include in the response. Only
        #   'published' is supported.
        # @param [Fixnum] page_size
        #   The maximum number of permissions to return per page. When not set for files
        #   in a shared drive, at most 100 results will be returned. When not set for
        #   files that are not in a shared drive, the entire list will be returned.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::PermissionList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::PermissionList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_permissions(file_id, include_permissions_for_view: nil, page_size: nil, page_token: nil, supports_all_drives: nil, supports_team_drives: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/permissions', options)
          command.response_representation = Google::Apis::DriveV3::PermissionList::Representation
          command.response_class = Google::Apis::DriveV3::PermissionList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['includePermissionsForView'] = include_permissions_for_view unless include_permissions_for_view.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a permission with patch semantics. **Warning:** Concurrent permissions
        # operations on the same file are not supported; only the last update is applied.
        # @param [String] file_id
        #   The ID of the file or shared drive.
        # @param [String] permission_id
        #   The ID of the permission.
        # @param [Google::Apis::DriveV3::Permission] permission_object
        # @param [Boolean] remove_expiration
        #   Whether to remove the expiration date.
        # @param [Boolean] supports_all_drives
        #   Whether the requesting application supports both My Drives and shared drives.
        # @param [Boolean] supports_team_drives
        #   Deprecated: Use `supportsAllDrives` instead.
        # @param [Boolean] transfer_ownership
        #   Whether to transfer ownership to the specified user and downgrade the current
        #   owner to a writer. This parameter is required as an acknowledgement of the
        #   side effect.
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if the file ID parameter refers to a shared
        #   drive and the requester is an administrator of the domain to which the shared
        #   drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_permission(file_id, permission_id, permission_object = nil, remove_expiration: nil, supports_all_drives: nil, supports_team_drives: nil, transfer_ownership: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/permissions/{permissionId}', options)
          command.request_representation = Google::Apis::DriveV3::Permission::Representation
          command.request_object = permission_object
          command.response_representation = Google::Apis::DriveV3::Permission::Representation
          command.response_class = Google::Apis::DriveV3::Permission
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['removeExpiration'] = remove_expiration unless remove_expiration.nil?
          command.query['supportsAllDrives'] = supports_all_drives unless supports_all_drives.nil?
          command.query['supportsTeamDrives'] = supports_team_drives unless supports_team_drives.nil?
          command.query['transferOwnership'] = transfer_ownership unless transfer_ownership.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a reply to a comment.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Google::Apis::DriveV3::Reply] reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Reply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Reply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_reply(file_id, comment_id, reply_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'files/{fileId}/comments/{commentId}/replies', options)
          command.request_representation = Google::Apis::DriveV3::Reply::Representation
          command.request_object = reply_object
          command.response_representation = Google::Apis::DriveV3::Reply::Representation
          command.response_class = Google::Apis::DriveV3::Reply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_reply(file_id, comment_id, reply_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reply by ID.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] reply_id
        #   The ID of the reply.
        # @param [Boolean] include_deleted
        #   Whether to return deleted replies. Deleted replies will not include their
        #   original content.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Reply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Reply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_reply(file_id, comment_id, reply_id, include_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.response_representation = Google::Apis::DriveV3::Reply::Representation
          command.response_class = Google::Apis::DriveV3::Reply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a comment's replies.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [Boolean] include_deleted
        #   Whether to include deleted replies. Deleted replies will not include their
        #   original content.
        # @param [Fixnum] page_size
        #   The maximum number of replies to return per page.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::ReplyList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::ReplyList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_replies(file_id, comment_id, include_deleted: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/comments/{commentId}/replies', options)
          command.response_representation = Google::Apis::DriveV3::ReplyList::Representation
          command.response_class = Google::Apis::DriveV3::ReplyList
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a reply with patch semantics.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] comment_id
        #   The ID of the comment.
        # @param [String] reply_id
        #   The ID of the reply.
        # @param [Google::Apis::DriveV3::Reply] reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Reply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Reply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_reply(file_id, comment_id, reply_id, reply_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/comments/{commentId}/replies/{replyId}', options)
          command.request_representation = Google::Apis::DriveV3::Reply::Representation
          command.request_object = reply_object
          command.response_representation = Google::Apis::DriveV3::Reply::Representation
          command.response_class = Google::Apis::DriveV3::Reply
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.params['replyId'] = reply_id unless reply_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a file version. You can only delete revisions for files
        # with binary content in Google Drive, like images or videos. Revisions for
        # other files, like Google Docs or Sheets, and the last remaining file version
        # can't be deleted.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] revision_id
        #   The ID of the revision.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_revision(file_id, revision_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'files/{fileId}/revisions/{revisionId}', options)
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a revision's metadata or content by ID.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] revision_id
        #   The ID of the revision.
        # @param [Boolean] acknowledge_abuse
        #   Whether the user is acknowledging the risk of downloading known malware or
        #   other abusive files. This is only applicable when alt=media.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_revision(file_id, revision_id, acknowledge_abuse: nil, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'files/{fileId}/revisions/{revisionId}', options)
          else
            command = make_download_command(:get, 'files/{fileId}/revisions/{revisionId}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DriveV3::Revision::Representation
          command.response_class = Google::Apis::DriveV3::Revision
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['acknowledgeAbuse'] = acknowledge_abuse unless acknowledge_abuse.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a file's revisions.
        # @param [String] file_id
        #   The ID of the file.
        # @param [Fixnum] page_size
        #   The maximum number of revisions to return per page.
        # @param [String] page_token
        #   The token for continuing a previous list request on the next page. This should
        #   be set to the value of 'nextPageToken' from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::RevisionList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::RevisionList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_revisions(file_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'files/{fileId}/revisions', options)
          command.response_representation = Google::Apis::DriveV3::RevisionList::Representation
          command.response_class = Google::Apis::DriveV3::RevisionList
          command.params['fileId'] = file_id unless file_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a revision with patch semantics.
        # @param [String] file_id
        #   The ID of the file.
        # @param [String] revision_id
        #   The ID of the revision.
        # @param [Google::Apis::DriveV3::Revision] revision_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_revision(file_id, revision_id, revision_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'files/{fileId}/revisions/{revisionId}', options)
          command.request_representation = Google::Apis::DriveV3::Revision::Representation
          command.request_object = revision_object
          command.response_representation = Google::Apis::DriveV3::Revision::Representation
          command.response_class = Google::Apis::DriveV3::Revision
          command.params['fileId'] = file_id unless file_id.nil?
          command.params['revisionId'] = revision_id unless revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `drives.create` instead.
        # @param [String] request_id
        #   Required. An ID, such as a random UUID, which uniquely identifies this user's
        #   request for idempotent creation of a Team Drive. A repeated request by the
        #   same user and with the same request ID will avoid creating duplicates by
        #   attempting to create the same Team Drive. If the Team Drive already exists a
        #   409 error will be returned.
        # @param [Google::Apis::DriveV3::TeamDrive] team_drive_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::TeamDrive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::TeamDrive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_teamdrive(request_id, team_drive_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'teamdrives', options)
          command.request_representation = Google::Apis::DriveV3::TeamDrive::Representation
          command.request_object = team_drive_object
          command.response_representation = Google::Apis::DriveV3::TeamDrive::Representation
          command.response_class = Google::Apis::DriveV3::TeamDrive
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `drives.delete` instead.
        # @param [String] team_drive_id
        #   The ID of the Team Drive
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_teamdrive(team_drive_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'teamdrives/{teamDriveId}', options)
          command.params['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `drives.get` instead.
        # @param [String] team_drive_id
        #   The ID of the Team Drive
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the Team Drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::TeamDrive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::TeamDrive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_teamdrive(team_drive_id, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'teamdrives/{teamDriveId}', options)
          command.response_representation = Google::Apis::DriveV3::TeamDrive::Representation
          command.response_class = Google::Apis::DriveV3::TeamDrive
          command.params['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `drives.list` instead.
        # @param [Fixnum] page_size
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::TeamDriveList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::TeamDriveList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_teamdrives(page_size: nil, page_token: nil, q: nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'teamdrives', options)
          command.response_representation = Google::Apis::DriveV3::TeamDriveList::Representation
          command.response_class = Google::Apis::DriveV3::TeamDriveList
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `drives.update` instead.
        # @param [String] team_drive_id
        #   The ID of the Team Drive
        # @param [Google::Apis::DriveV3::TeamDrive] team_drive_object
        # @param [Boolean] use_domain_admin_access
        #   Issue the request as a domain administrator; if set to true, then the
        #   requester will be granted access if they are an administrator of the domain to
        #   which the Team Drive belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DriveV3::TeamDrive] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DriveV3::TeamDrive]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_teamdrive(team_drive_id, team_drive_object = nil, use_domain_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'teamdrives/{teamDriveId}', options)
          command.request_representation = Google::Apis::DriveV3::TeamDrive::Representation
          command.request_object = team_drive_object
          command.response_representation = Google::Apis::DriveV3::TeamDrive::Representation
          command.response_class = Google::Apis::DriveV3::TeamDrive
          command.params['teamDriveId'] = team_drive_id unless team_drive_id.nil?
          command.query['useDomainAdminAccess'] = use_domain_admin_access unless use_domain_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
