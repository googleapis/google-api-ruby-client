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
    module ChatV1
      # Google Chat API
      #
      # The Google Chat API lets you build Chat apps to integrate your services with
      #  Google Chat and manage Chat resources such as spaces, members, and messages.
      #
      # @example
      #    require 'google/apis/chat_v1'
      #
      #    Chat = Google::Apis::ChatV1 # Alias the module
      #    service = Chat::HangoutsChatService.new
      #
      # @see https://developers.google.com/hangouts/chat
      class HangoutsChatService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://chat.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-chat_v1',
                client_version: Google::Apis::ChatV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Downloads media. Download is supported on the URI `/v1/media/`+name`?alt=media`
        # .
        # @param [String] resource_name
        #   Name of the media that is being downloaded. See ReadRequest.resource_name.
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
        # @yieldparam result [Google::Apis::ChatV1::Media] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Media]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(resource_name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v1/media/{+resourceName}', options)
          else
            command = make_download_command(:get, 'v1/media/{+resourceName}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::ChatV1::Media::Representation
          command.response_class = Google::Apis::ChatV1::Media
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an attachment. For an example, see [Upload media as a file attachment](
        # https://developers.google.com/workspace/chat/upload-media-attachments).
        # Requires user [authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user). You can upload attachments up to 200 MB.
        # Certain file types aren't supported. For details, see [File types blocked by
        # Google Chat](https://support.google.com/chat/answer/7651457?&co=GENIE.Platform%
        # 3DDesktop#File%20types%20blocked%20in%20Google%20Chat).
        # @param [String] parent
        #   Required. Resource name of the Chat space in which the attachment is uploaded.
        #   Format "spaces/`space`".
        # @param [Google::Apis::ChatV1::UploadAttachmentRequest] upload_attachment_request_object
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
        # @yieldparam result [Google::Apis::ChatV1::UploadAttachmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::UploadAttachmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium_attachment(parent, upload_attachment_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+parent}/attachments:upload', options)
          else
            command = make_upload_command(:post, 'v1/{+parent}/attachments:upload', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ChatV1::UploadAttachmentRequest::Representation
          command.request_object = upload_attachment_request_object
          command.response_representation = Google::Apis::ChatV1::UploadAttachmentResponse::Representation
          command.response_class = Google::Apis::ChatV1::UploadAttachmentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the [import process](https://developers.google.com/workspace/chat/
        # import-data) for the specified space and makes it visible to users. Requires
        # app authentication and domain-wide delegation. For more information, see [
        # Authorize Google Chat apps to import data](https://developers.google.com/
        # workspace/chat/authorize-import).
        # @param [String] name
        #   Required. Resource name of the import mode space. Format: `spaces/`space``
        # @param [Google::Apis::ChatV1::CompleteImportSpaceRequest] complete_import_space_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::CompleteImportSpaceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::CompleteImportSpaceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_import_space(name, complete_import_space_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:completeImport', options)
          command.request_representation = Google::Apis::ChatV1::CompleteImportSpaceRequest::Representation
          command.request_object = complete_import_space_request_object
          command.response_representation = Google::Apis::ChatV1::CompleteImportSpaceResponse::Representation
          command.response_class = Google::Apis::ChatV1::CompleteImportSpaceResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a named space. Spaces grouped by topics aren't supported. For an
        # example, see [Create a space](https://developers.google.com/workspace/chat/
        # create-spaces). If you receive the error message `ALREADY_EXISTS` when
        # creating a space, try a different `displayName`. An existing space within the
        # Google Workspace organization might already use this display name. Requires [
        # user authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user).
        # @param [Google::Apis::ChatV1::Space] space_object
        # @param [String] request_id
        #   Optional. A unique identifier for this request. A random UUID is recommended.
        #   Specifying an existing request ID returns the space created with that ID
        #   instead of creating a new space. Specifying an existing request ID from the
        #   same Chat app with a different authenticated user returns an error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_space(space_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/spaces', options)
          command.request_representation = Google::Apis::ChatV1::Space::Representation
          command.request_object = space_object
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a named space. Always performs a cascading delete, which means that
        # the space's child resources—like messages posted in the space and memberships
        # in the space—are also deleted. For an example, see [Delete a space](https://
        # developers.google.com/workspace/chat/delete-spaces). Requires [user
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) from a user who has permission to delete the space.
        # @param [String] name
        #   Required. Resource name of the space to delete. Format: `spaces/`space``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_space(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Empty::Representation
          command.response_class = Google::Apis::ChatV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the existing direct message with the specified user. If no direct
        # message space is found, returns a `404 NOT_FOUND` error. For an example, see [
        # Find a direct message](/chat/api/guides/v1/spaces/find-direct-message). With [
        # user authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user), returns the direct message space between the specified
        # user and the authenticated user. With [app authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-app), returns the direct
        # message space between the specified user and the calling Chat app. Requires [
        # user authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) or [app authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app).
        # @param [String] name
        #   Required. Resource name of the user to find direct message with. Format: `
        #   users/`user``, where ``user`` is either the `id` for the [person](https://
        #   developers.google.com/people/api/rest/v1/people) from the People API, or the `
        #   id` for the [user](https://developers.google.com/admin-sdk/directory/reference/
        #   rest/v1/users) in the Directory API. For example, if the People API profile ID
        #   is `123456789`, you can find a direct message with that person by using `users/
        #   123456789` as the `name`. When [authenticated as a user](https://developers.
        #   google.com/workspace/chat/authenticate-authorize-chat-user), you can use the
        #   email as an alias for ``user``. For example, `users/example@gmail.com` where `
        #   example@gmail.com` is the email of the Google Chat user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_space_direct_message(name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/spaces:findDirectMessage', options)
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details about a space. For an example, see [Get details about a space](
        # https://developers.google.com/workspace/chat/get-spaces). Requires [
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize). Supports [app authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) and [user authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
        # @param [String] name
        #   Required. Resource name of the space, in the form "spaces/*". Format: `spaces/`
        #   space``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_space(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists spaces the caller is a member of. Group chats and DMs aren't listed
        # until the first message is sent. For an example, see [List spaces](https://
        # developers.google.com/workspace/chat/list-spaces). Requires [authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize). Supports
        # [app authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app) and [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user). Lists spaces visible to the
        # caller or authenticated user. Group chats and DMs aren't listed until the
        # first message is sent.
        # @param [String] filter
        #   Optional. A query filter. You can filter spaces by the space type ([`
        #   space_type`](https://developers.google.com/workspace/chat/api/reference/rest/
        #   v1/spaces#spacetype)). To filter by space type, you must specify valid enum
        #   value, such as `SPACE` or `GROUP_CHAT` (the `space_type` can't be `
        #   SPACE_TYPE_UNSPECIFIED`). To query for multiple space types, use the `OR`
        #   operator. For example, the following queries are valid: ``` space_type = "
        #   SPACE" spaceType = "GROUP_CHAT" OR spaceType = "DIRECT_MESSAGE" ``` Invalid
        #   queries are rejected by the server with an `INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of spaces to return. The service might return
        #   fewer than this value. If unspecified, at most 100 spaces are returned. The
        #   maximum value is 1000. If you use a value more than 1000, it's automatically
        #   changed to 1000. Negative values return an `INVALID_ARGUMENT` error.
        # @param [String] page_token
        #   Optional. A page token, received from a previous list spaces call. Provide
        #   this parameter to retrieve the subsequent page. When paginating, the filter
        #   value should match the call that provided the page token. Passing a different
        #   value may lead to unexpected results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::ListSpacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ListSpacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_spaces(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/spaces', options)
          command.response_representation = Google::Apis::ChatV1::ListSpacesResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListSpacesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a space. For an example, see [Update a space](https://developers.
        # google.com/workspace/chat/update-spaces). If you're updating the `displayName`
        # field and receive the error message `ALREADY_EXISTS`, try a different display
        # name.. An existing space within the Google Workspace organization might
        # already use this display name. Requires [user authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user).
        # @param [String] name
        #   Resource name of the space. Format: `spaces/`space``
        # @param [Google::Apis::ChatV1::Space] space_object
        # @param [String] update_mask
        #   Required. The updated field paths, comma separated if there are multiple.
        #   Currently supported field paths: - `display_name` (Only supports changing the
        #   display name of a space with the `SPACE` type, or when also including the `
        #   space_type` mask to change a `GROUP_CHAT` space type to `SPACE`. Trying to
        #   update the display name of a `GROUP_CHAT` or a `DIRECT_MESSAGE` space results
        #   in an invalid argument error. If you receive the error message `ALREADY_EXISTS`
        #   when updating the `displayName`, try a different `displayName`. An existing
        #   space within the Google Workspace organization might already use this display
        #   name.) - `space_type` (Only supports changing a `GROUP_CHAT` space type to `
        #   SPACE`. Include `display_name` together with `space_type` in the update mask
        #   and ensure that the specified space has a non-empty display name and the `
        #   SPACE` space type. Including the `space_type` mask and the `SPACE` type in the
        #   specified space when updating the display name is optional if the existing
        #   space already has the `SPACE` type. Trying to update the space type in other
        #   ways results in an invalid argument error). - `space_details` - `
        #   space_history_state` (Supports [turning history on or off for the space](https:
        #   //support.google.com/chat/answer/7664687) if [the organization allows users to
        #   change their history setting](https://support.google.com/a/answer/7664184).
        #   Warning: mutually exclusive with all other field paths.) - Developer Preview: `
        #   access_settings.audience` (Supports changing the [access setting](https://
        #   support.google.com/chat/answer/11971020) of a space. If no audience is
        #   specified in the access setting, the space's access setting is updated to
        #   restricted. Warning: mutually exclusive with all other field paths.)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_space(name, space_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::Space::Representation
          command.request_object = space_object
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a space and adds specified users to it. The calling user is
        # automatically added to the space, and shouldn't be specified as a membership
        # in the request. For an example, see [Set up a space with initial members](
        # https://developers.google.com/workspace/chat/set-up-spaces). To specify the
        # human members to add, add memberships with the appropriate `member.name` in
        # the `SetUpSpaceRequest`. To add a human user, use `users/`user``, where ``user`
        # ` can be the email address for the user. For users in the same Workspace
        # organization ``user`` can also be the `id` for the person from the People API,
        # or the `id` for the user in the Directory API. For example, if the People API
        # Person profile ID for `user@example.com` is `123456789`, you can add the user
        # to the space by setting the `membership.member.name` to `users/user@example.
        # com` or `users/123456789`. For a space or group chat, if the caller blocks or
        # is blocked by some members, then those members aren't added to the created
        # space. To create a direct message (DM) between the calling user and another
        # human user, specify exactly one membership to represent the human user. If one
        # user blocks the other, the request fails and the DM isn't created. To create a
        # DM between the calling user and the calling app, set `Space.singleUserBotDm`
        # to `true` and don't specify any memberships. You can only use this method to
        # set up a DM with the calling app. To add the calling app as a member of a
        # space or an existing DM between two human users, see [Invite or add a user or
        # app to a space](https://developers.google.com/workspace/chat/create-members).
        # If a DM already exists between two users, even when one user blocks the other
        # at the time a request is made, then the existing DM is returned. Spaces with
        # threaded replies aren't supported. If you receive the error message `
        # ALREADY_EXISTS` when setting up a space, try a different `displayName`. An
        # existing space within the Google Workspace organization might already use this
        # display name. Requires [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user).
        # @param [Google::Apis::ChatV1::SetUpSpaceRequest] set_up_space_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setup_space(set_up_space_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/spaces:setup', options)
          command.request_representation = Google::Apis::ChatV1::SetUpSpaceRequest::Representation
          command.request_object = set_up_space_request_object
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a human membership or app membership for the calling app. Creating
        # memberships for other apps isn't supported. For an example, see [Invite or add
        # a user or a Google Chat app to a space](https://developers.google.com/
        # workspace/chat/create-members). When creating a membership, if the specified
        # member has their auto-accept policy turned off, then they're invited, and must
        # accept the space invitation before joining. Otherwise, creating a membership
        # adds the member directly to the specified space. Requires [user authentication]
        # (https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
        # . To specify the member to add, set the `membership.member.name` in the `
        # CreateMembershipRequest`: - To add the calling app to a space or a direct
        # message between two human users, use `users/app`. Unable to add other apps to
        # the space. - To add a human user, use `users/`user``, where ``user`` can be
        # the email address for the user. For users in the same Workspace organization ``
        # user`` can also be the `id` for the person from the People API, or the `id`
        # for the user in the Directory API. For example, if the People API Person
        # profile ID for `user@example.com` is `123456789`, you can add the user to the
        # space by setting the `membership.member.name` to `users/user@example.com` or `
        # users/123456789`.
        # @param [String] parent
        #   Required. The resource name of the space for which to create the membership.
        #   Format: spaces/`space`
        # @param [Google::Apis::ChatV1::Membership] membership_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Membership] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Membership]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_space_member(parent, membership_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/members', options)
          command.request_representation = Google::Apis::ChatV1::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a membership. For an example, see [Remove a user or a Google Chat app
        # from a space](https://developers.google.com/workspace/chat/delete-members).
        # Requires [user authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user).
        # @param [String] name
        #   Required. Resource name of the membership to delete. Chat apps can delete
        #   human users' or their own memberships. Chat apps can't delete other apps'
        #   memberships. When deleting a human membership, requires the `chat.memberships`
        #   scope and `spaces/`space`/members/`member`` format. You can use the email as
        #   an alias for ``member``. For example, `spaces/`space`/members/example@gmail.
        #   com` where `example@gmail.com` is the email of the Google Chat user. When
        #   deleting an app membership, requires the `chat.memberships.app` scope and `
        #   spaces/`space`/members/app` format. Format: `spaces/`space`/members/`member``
        #   or `spaces/`space`/members/app`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Membership] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Membership]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_space_member(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details about a membership. For an example, see [Get details about a
        # user's or Google Chat app's membership](https://developers.google.com/
        # workspace/chat/get-members). Requires [authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize). Supports [app
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app) and [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user).
        # @param [String] name
        #   Required. Resource name of the membership to retrieve. To get the app's own
        #   membership, you can optionally use `spaces/`space`/members/app`. Format: `
        #   spaces/`space`/members/`member`` or `spaces/`space`/members/app` When [
        #   authenticated as a user](https://developers.google.com/workspace/chat/
        #   authenticate-authorize-chat-user), you can use the user's email as an alias
        #   for ``member``. For example, `spaces/`space`/members/example@gmail.com` where `
        #   example@gmail.com` is the email of the Google Chat user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Membership] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Membership]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_space_member(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists memberships in a space. For an example, see [List users and Google Chat
        # apps in a space](https://developers.google.com/workspace/chat/list-members).
        # Listing memberships with [app authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) lists memberships in spaces
        # that the Chat app has access to, but excludes Chat app memberships, including
        # its own. Listing memberships with [User authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user) lists memberships
        # in spaces that the authenticated user has access to. Requires [authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize). Supports
        # [app authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app) and [user authentication](hhttps://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user).
        # @param [String] parent
        #   Required. The resource name of the space for which to fetch a membership list.
        #   Format: spaces/`space`
        # @param [String] filter
        #   Optional. A query filter. You can filter memberships by a member's role ([`
        #   role`](https://developers.google.com/workspace/chat/api/reference/rest/v1/
        #   spaces.members#membershiprole)) and type ([`member.type`](https://developers.
        #   google.com/workspace/chat/api/reference/rest/v1/User#type)). To filter by role,
        #   set `role` to `ROLE_MEMBER` or `ROLE_MANAGER`. To filter by type, set `member.
        #   type` to `HUMAN` or `BOT`. To filter by both role and type, use the `AND`
        #   operator. To filter by either role or type, use the `OR` operator. For example,
        #   the following queries are valid: ``` role = "ROLE_MANAGER" OR role = "
        #   ROLE_MEMBER" member.type = "HUMAN" AND role = "ROLE_MANAGER" ``` The following
        #   queries are invalid: ``` member.type = "HUMAN" AND member.type = "BOT" role = "
        #   ROLE_MANAGER" AND role = "ROLE_MEMBER" ``` Invalid queries are rejected by the
        #   server with an `INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of memberships to return. The service might
        #   return fewer than this value. If unspecified, at most 100 memberships are
        #   returned. The maximum value is 1000. If you use a value more than 1000, it's
        #   automatically changed to 1000. Negative values return an `INVALID_ARGUMENT`
        #   error.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call to list memberships.
        #   Provide this parameter to retrieve the subsequent page. When paginating, all
        #   other parameters provided should match the call that provided the page token.
        #   Passing different values to the other parameters might lead to unexpected
        #   results.
        # @param [Boolean] show_groups
        #   Optional. When `true`, also returns memberships associated with a Google Group,
        #   in addition to other types of memberships. If a filter is set, Google Group
        #   memberships that don't match the filter criteria aren't returned.
        # @param [Boolean] show_invited
        #   Optional. When `true`, also returns memberships associated with invited
        #   members, in addition to other types of memberships. If a filter is set,
        #   invited memberships that don't match the filter criteria aren't returned.
        #   Currently requires [user authentication](https://developers.google.com/
        #   workspace/chat/authenticate-authorize-chat-user).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::ListMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ListMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_space_members(parent, filter: nil, page_size: nil, page_token: nil, show_groups: nil, show_invited: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/members', options)
          command.response_representation = Google::Apis::ChatV1::ListMembershipsResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showGroups'] = show_groups unless show_groups.nil?
          command.query['showInvited'] = show_invited unless show_invited.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a message in a Google Chat space. For an example, see [Send a message](
        # https://developers.google.com/workspace/chat/create-messages). Calling this
        # method requires [authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize) and supports the following authentication types: - For
        # text messages, user authentication or app authentication are supported. - For
        # card messages, only app authentication is supported. (Only Chat apps can
        # create card messages.)
        # @param [String] parent
        #   Required. The resource name of the space in which to create a message. Format:
        #   `spaces/`space``
        # @param [Google::Apis::ChatV1::Message] message_object
        # @param [String] message_id
        #   Optional. A custom ID for a message. Lets Chat apps get, update, or delete a
        #   message without needing to store the system-assigned ID in the message's
        #   resource name (represented in the message `name` field). The value for this
        #   field must meet the following requirements: * Begins with `client-`. For
        #   example, `client-custom-name` is a valid custom ID, but `custom-name` is not. *
        #   Contains up to 63 characters and only lowercase letters, numbers, and hyphens.
        #   * Is unique within a space. A Chat app can't use the same custom ID for
        #   different messages. For details, see [Name a message](https://developers.
        #   google.com/workspace/chat/create-messages#name_a_created_message).
        # @param [String] message_reply_option
        #   Optional. Specifies whether a message starts a thread or replies to one. Only
        #   supported in named spaces.
        # @param [String] request_id
        #   Optional. A unique request ID for this message. Specifying an existing request
        #   ID returns the message created with that ID instead of creating a new message.
        # @param [String] thread_key
        #   Optional. Deprecated: Use thread.thread_key instead. ID for the thread.
        #   Supports up to 4000 characters. To start or add to a thread, create a message
        #   and specify a `threadKey` or the thread.name. For example usage, see [Start or
        #   reply to a message thread](https://developers.google.com/workspace/chat/create-
        #   messages#create-message-thread).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_space_message(parent, message_object = nil, message_id: nil, message_reply_option: nil, request_id: nil, thread_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/messages', options)
          command.request_representation = Google::Apis::ChatV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::ChatV1::Message::Representation
          command.response_class = Google::Apis::ChatV1::Message
          command.params['parent'] = parent unless parent.nil?
          command.query['messageId'] = message_id unless message_id.nil?
          command.query['messageReplyOption'] = message_reply_option unless message_reply_option.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['threadKey'] = thread_key unless thread_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a message. For an example, see [Delete a message](https://developers.
        # google.com/workspace/chat/delete-messages). Requires [authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize). Supports [app
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app) and [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user). When using app
        # authentication, requests can only delete messages created by the calling Chat
        # app.
        # @param [String] name
        #   Required. Resource name of the message. Format: `spaces/`space`/messages/`
        #   message`` If you've set a custom ID for your message, you can use the value
        #   from the `clientAssignedMessageId` field for ``message``. For details, see [
        #   Name a message] (https://developers.google.com/workspace/chat/create-messages#
        #   name_a_created_message).
        # @param [Boolean] force
        #   When `true`, deleting a message also deletes its threaded replies. When `false`
        #   , if a message has threaded replies, deletion fails. Only applies when [
        #   authenticating as a user](https://developers.google.com/workspace/chat/
        #   authenticate-authorize-chat-user). Has no effect when [authenticating as a
        #   Chat app] (https://developers.google.com/workspace/chat/authenticate-authorize-
        #   chat-app).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_space_message(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Empty::Representation
          command.response_class = Google::Apis::ChatV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details about a message. For an example, see [Get details about a
        # message](https://developers.google.com/workspace/chat/get-messages). Requires [
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize). Supports [app authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) and [user authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
        # Note: Might return a message from a blocked member or space.
        # @param [String] name
        #   Required. Resource name of the message. Format: `spaces/`space`/messages/`
        #   message`` If you've set a custom ID for your message, you can use the value
        #   from the `clientAssignedMessageId` field for ``message``. For details, see [
        #   Name a message] (https://developers.google.com/workspace/chat/create-messages#
        #   name_a_created_message).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_space_message(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Message::Representation
          command.response_class = Google::Apis::ChatV1::Message
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists messages in a space that the caller is a member of, including messages
        # from blocked members and spaces. For an example, see [List messages](/chat/api/
        # guides/v1/messages/list). Requires [user authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user).
        # @param [String] parent
        #   Required. The resource name of the space to list messages from. Format: `
        #   spaces/`space``
        # @param [String] filter
        #   A query filter. You can filter messages by date (`create_time`) and thread (`
        #   thread.name`). To filter messages by the date they were created, specify the `
        #   create_time` with a timestamp in [RFC-3339](https://www.rfc-editor.org/rfc/
        #   rfc3339) format and double quotation marks. For example, `"2023-04-21T11:30:00-
        #   04:00"`. You can use the greater than operator `>` to list messages that were
        #   created after a timestamp, or the less than operator `<` to list messages that
        #   were created before a timestamp. To filter messages within a time interval,
        #   use the `AND` operator between two timestamps. To filter by thread, specify
        #   the `thread.name`, formatted as `spaces/`space`/threads/`thread``. You can
        #   only specify one `thread.name` per query. To filter by both thread and date,
        #   use the `AND` operator in your query. For example, the following queries are
        #   valid: ``` create_time > "2012-04-21T11:30:00-04:00" create_time > "2012-04-
        #   21T11:30:00-04:00" AND thread.name = spaces/AAAAAAAAAAA/threads/123
        #   create_time > "2012-04-21T11:30:00+00:00" AND create_time < "2013-01-01T00:00:
        #   00+00:00" AND thread.name = spaces/AAAAAAAAAAA/threads/123 thread.name =
        #   spaces/AAAAAAAAAAA/threads/123 ``` Invalid queries are rejected by the server
        #   with an `INVALID_ARGUMENT` error.
        # @param [String] order_by
        #   Optional, if resuming from a previous query. How the list of messages is
        #   ordered. Specify a value to order by an ordering operation. Valid ordering
        #   operation values are as follows: - `ASC` for ascending. - `DESC` for
        #   descending. The default ordering is `create_time ASC`.
        # @param [Fixnum] page_size
        #   The maximum number of messages returned. The service might return fewer
        #   messages than this value. If unspecified, at most 25 are returned. The maximum
        #   value is 1000. If you use a value more than 1000, it's automatically changed
        #   to 1000. Negative values return an `INVALID_ARGUMENT` error.
        # @param [String] page_token
        #   Optional, if resuming from a previous query. A page token received from a
        #   previous list messages call. Provide this parameter to retrieve the subsequent
        #   page. When paginating, all other parameters provided should match the call
        #   that provided the page token. Passing different values to the other parameters
        #   might lead to unexpected results.
        # @param [Boolean] show_deleted
        #   Whether to include deleted messages. Deleted messages include deleted time and
        #   metadata about their deletion, but message content is unavailable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_space_messages(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/messages', options)
          command.response_representation = Google::Apis::ChatV1::ListMessagesResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a message. There's a difference between the `patch` and `update`
        # methods. The `patch` method uses a `patch` request while the `update` method
        # uses a `put` request. We recommend using the `patch` method. For an example,
        # see [Update a message](https://developers.google.com/workspace/chat/update-
        # messages). Requires [authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize). Supports [app authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-app) and [user
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user). When using app authentication, requests can only update
        # messages created by the calling Chat app.
        # @param [String] name
        #   Resource name of the message. Format: `spaces/`space`/messages/`message``
        #   Where ``space`` is the ID of the space where the message is posted and ``
        #   message`` is a system-assigned ID for the message. For example, `spaces/
        #   AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`. If you set a custom ID when you
        #   create a message, you can use this ID to specify the message in a request by
        #   replacing ``message`` with the value from the `clientAssignedMessageId` field.
        #   For example, `spaces/AAAAAAAAAAA/messages/client-custom-name`. For details,
        #   see [Name a message](https://developers.google.com/workspace/chat/create-
        #   messages#name_a_created_message).
        # @param [Google::Apis::ChatV1::Message] message_object
        # @param [Boolean] allow_missing
        #   Optional. If `true` and the message isn't found, a new message is created and `
        #   updateMask` is ignored. The specified message ID must be [client-assigned](
        #   https://developers.google.com/workspace/chat/create-messages#
        #   name_a_created_message) or the request fails.
        # @param [String] update_mask
        #   Required. The field paths to update. Separate multiple values with commas or
        #   use `*` to update all field paths. Currently supported field paths: - `text` -
        #   `attachment` - `cards` (Requires [app authentication](/chat/api/guides/auth/
        #   service-accounts).) - `cards_v2` (Requires [app authentication](/chat/api/
        #   guides/auth/service-accounts).) - `accessory_widgets` (Requires [app
        #   authentication](/chat/api/guides/auth/service-accounts).)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_space_message(name, message_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::ChatV1::Message::Representation
          command.response_class = Google::Apis::ChatV1::Message
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a message. There's a difference between the `patch` and `update`
        # methods. The `patch` method uses a `patch` request while the `update` method
        # uses a `put` request. We recommend using the `patch` method. For an example,
        # see [Update a message](https://developers.google.com/workspace/chat/update-
        # messages). Requires [authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize). Supports [app authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-app) and [user
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user). When using app authentication, requests can only update
        # messages created by the calling Chat app.
        # @param [String] name
        #   Resource name of the message. Format: `spaces/`space`/messages/`message``
        #   Where ``space`` is the ID of the space where the message is posted and ``
        #   message`` is a system-assigned ID for the message. For example, `spaces/
        #   AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`. If you set a custom ID when you
        #   create a message, you can use this ID to specify the message in a request by
        #   replacing ``message`` with the value from the `clientAssignedMessageId` field.
        #   For example, `spaces/AAAAAAAAAAA/messages/client-custom-name`. For details,
        #   see [Name a message](https://developers.google.com/workspace/chat/create-
        #   messages#name_a_created_message).
        # @param [Google::Apis::ChatV1::Message] message_object
        # @param [Boolean] allow_missing
        #   Optional. If `true` and the message isn't found, a new message is created and `
        #   updateMask` is ignored. The specified message ID must be [client-assigned](
        #   https://developers.google.com/workspace/chat/create-messages#
        #   name_a_created_message) or the request fails.
        # @param [String] update_mask
        #   Required. The field paths to update. Separate multiple values with commas or
        #   use `*` to update all field paths. Currently supported field paths: - `text` -
        #   `attachment` - `cards` (Requires [app authentication](/chat/api/guides/auth/
        #   service-accounts).) - `cards_v2` (Requires [app authentication](/chat/api/
        #   guides/auth/service-accounts).) - `accessory_widgets` (Requires [app
        #   authentication](/chat/api/guides/auth/service-accounts).)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_space_message(name, message_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::ChatV1::Message::Representation
          command.response_class = Google::Apis::ChatV1::Message
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the metadata of a message attachment. The attachment data is fetched
        # using the [media API](https://developers.google.com/workspace/chat/api/
        # reference/rest/v1/media/download). For an example, see [Get metadata about a
        # message attachment](https://developers.google.com/workspace/chat/get-media-
        # attachments). Requires [app authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app).
        # @param [String] name
        #   Required. Resource name of the attachment, in the form `spaces/*/messages/*/
        #   attachments/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_space_message_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Attachment::Representation
          command.response_class = Google::Apis::ChatV1::Attachment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a reaction and adds it to a message. Only unicode emojis are supported.
        # For an example, see [Add a reaction to a reaction](https://developers.google.
        # com/workspace/chat/create-reactions). Requires [user authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user).
        # @param [String] parent
        #   Required. The message where the reaction is created. Format: `spaces/`space`/
        #   messages/`message``
        # @param [Google::Apis::ChatV1::Reaction] reaction_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Reaction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Reaction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_space_message_reaction(parent, reaction_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reactions', options)
          command.request_representation = Google::Apis::ChatV1::Reaction::Representation
          command.request_object = reaction_object
          command.response_representation = Google::Apis::ChatV1::Reaction::Representation
          command.response_class = Google::Apis::ChatV1::Reaction
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a reaction to a message. Only unicode emojis are supported. For an
        # example, see [Delete a reaction](https://developers.google.com/workspace/chat/
        # delete-reactions). Requires [user authentication](https://developers.google.
        # com/workspace/chat/authenticate-authorize-chat-user).
        # @param [String] name
        #   Required. Name of the reaction to delete. Format: `spaces/`space`/messages/`
        #   message`/reactions/`reaction``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_space_message_reaction(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Empty::Representation
          command.response_class = Google::Apis::ChatV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists reactions to a message. For an example, see [List reactions for a
        # message](https://developers.google.com/workspace/chat/list-reactions).
        # Requires [user authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user).
        # @param [String] parent
        #   Required. The message users reacted to. Format: `spaces/`space`/messages/`
        #   message``
        # @param [String] filter
        #   Optional. A query filter. You can filter reactions by [emoji](https://
        #   developers.google.com/workspace/chat/api/reference/rest/v1/Emoji) (either `
        #   emoji.unicode` or `emoji.custom_emoji.uid`) and [user](https://developers.
        #   google.com/workspace/chat/api/reference/rest/v1/User) (`user.name`). To filter
        #   reactions for multiple emojis or users, join similar fields with the `OR`
        #   operator, such as `emoji.unicode = "🙂" OR emoji.unicode = "👍"` and `user.name =
        #   "users/AAAAAA" OR user.name = "users/BBBBBB"`. To filter reactions by emoji
        #   and user, use the `AND` operator, such as `emoji.unicode = "🙂" AND user.name =
        #   "users/AAAAAA"`. If your query uses both `AND` and `OR`, group them with
        #   parentheses. For example, the following queries are valid: ``` user.name = "
        #   users/`user`" emoji.unicode = "🙂" emoji.custom_emoji.uid = "`uid`" emoji.
        #   unicode = "🙂" OR emoji.unicode = "👍" emoji.unicode = "🙂" OR emoji.custom_emoji.
        #   uid = "`uid`" emoji.unicode = "🙂" AND user.name = "users/`user`" (emoji.
        #   unicode = "🙂" OR emoji.custom_emoji.uid = "`uid`") AND user.name = "users/`
        #   user`" ``` The following queries are invalid: ``` emoji.unicode = "🙂" AND
        #   emoji.unicode = "👍" emoji.unicode = "🙂" AND emoji.custom_emoji.uid = "`uid`"
        #   emoji.unicode = "🙂" OR user.name = "users/`user`" emoji.unicode = "🙂" OR emoji.
        #   custom_emoji.uid = "`uid`" OR user.name = "users/`user`" emoji.unicode = "🙂"
        #   OR emoji.custom_emoji.uid = "`uid`" AND user.name = "users/`user`" ``` Invalid
        #   queries are rejected by the server with an `INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reactions returned. The service can return
        #   fewer reactions than this value. If unspecified, the default value is 25. The
        #   maximum value is 200; values above 200 are changed to 200.
        # @param [String] page_token
        #   Optional. (If resuming from a previous query.) A page token received from a
        #   previous list reactions call. Provide this to retrieve the subsequent page.
        #   When paginating, the filter value should match the call that provided the page
        #   token. Passing a different value might lead to unexpected results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::ListReactionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ListReactionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_space_message_reactions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reactions', options)
          command.response_representation = Google::Apis::ChatV1::ListReactionsResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListReactionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns an event from a Google Chat space. The [event payload](https://
        # developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#
        # SpaceEvent.FIELDS.oneof_payload) contains the most recent version of the
        # resource that changed. For example, if you request an event about a new
        # message but the message was later updated, the server returns the updated `
        # Message` resource in the event payload. Requires [user authentication](hhttps:/
        # /developers.google.com/workspace/chat/authenticate-authorize-chat-user). To
        # get an event, the authenticated user must be a member of the space. For an
        # example, see [Get details about an event from a Google Chat space](https://
        # developers.google.com/workspace/chat/get-space-event).
        # @param [String] name
        #   Required. The resource name of the space event. Format: `spaces/`space`/
        #   spaceEvents/`spaceEvent``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::SpaceEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::SpaceEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_space_space_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::SpaceEvent::Representation
          command.response_class = Google::Apis::ChatV1::SpaceEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists events from a Google Chat space. For each event, the [payload](https://
        # developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#
        # SpaceEvent.FIELDS.oneof_payload) contains the most recent version of the Chat
        # resource. For example, if you list events about new space members, the server
        # returns `Membership` resources that contain the latest membership details. If
        # new members were removed during the requested period, the event payload
        # contains an empty `Membership` resource. Requires [user authentication](https:/
        # /developers.google.com/workspace/chat/authenticate-authorize-chat-user). To
        # list events, the authenticated user must be a member of the space. For an
        # example, see [List events from a Google Chat space](https://developers.google.
        # com/workspace/chat/list-space-events).
        # @param [String] parent
        #   Required. Resource name of the [Google Chat space](https://developers.google.
        #   com/workspace/chat/api/reference/rest/v1/spaces) where the events occurred.
        #   Format: `spaces/`space``.
        # @param [String] filter
        #   Required. A query filter. You must specify at least one event type (`
        #   event_type`) using the has `:` operator. To filter by multiple event types,
        #   use the `OR` operator. Omit batch event types in your filter. The request
        #   automatically returns any related batch events. For example, if you filter by
        #   new reactions (`google.workspace.chat.reaction.v1.created`), the server also
        #   returns batch new reactions events (`google.workspace.chat.reaction.v1.
        #   batchCreated`). For a list of supported event types, see the [`SpaceEvents`
        #   reference documentation](https://developers.google.com/workspace/chat/api/
        #   reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.event_type). Optionally,
        #   you can also filter by start time (`start_time`) and end time (`end_time`): *
        #   `start_time`: Exclusive timestamp from which to start listing space events.
        #   You can list events that occurred up to 28 days ago. If unspecified, lists
        #   space events from the past 28 days. * `end_time`: Inclusive timestamp until
        #   which space events are listed. If unspecified, lists events up to the time of
        #   the request. To specify a start or end time, use the equals `=` operator and
        #   format in [RFC-3339](https://www.rfc-editor.org/rfc/rfc3339). To filter by
        #   both `start_time` and `end_time`, use the `AND` operator. For example, the
        #   following queries are valid: ``` start_time="2023-08-23T19:20:33+00:00" AND
        #   end_time="2023-08-23T19:21:54+00:00" ``` ``` start_time="2023-08-23T19:20:33+
        #   00:00" AND (event_types:"google.workspace.chat.space.v1.updated" OR
        #   event_types:"google.workspace.chat.message.v1.created") ``` The following
        #   queries are invalid: ``` start_time="2023-08-23T19:20:33+00:00" OR end_time="
        #   2023-08-23T19:21:54+00:00" ``` ``` event_types:"google.workspace.chat.space.v1.
        #   updated" AND event_types:"google.workspace.chat.message.v1.created" ```
        #   Invalid queries are rejected by the server with an `INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of space events returned. The service might
        #   return fewer than this value. Negative values return an `INVALID_ARGUMENT`
        #   error.
        # @param [String] page_token
        #   A page token, received from a previous list space events call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to list space events must match the call that provided the page token. Passing
        #   different values to the other parameters might lead to unexpected results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::ListSpaceEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ListSpaceEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_space_space_events(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/spaceEvents', options)
          command.response_representation = Google::Apis::ChatV1::ListSpaceEventsResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListSpaceEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
