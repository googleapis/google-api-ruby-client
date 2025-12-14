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
      # @see https://developers.google.com/workspace/chat
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
        
        # Creates a custom emoji. Custom emojis are only available for Google Workspace
        # accounts, and the administrator must turn custom emojis on for the
        # organization. For more information, see [Learn about custom emojis in Google
        # Chat](https://support.google.com/chat/answer/12800149) and [Manage custom
        # emoji permissions](https://support.google.com/a/answer/12850085). Requires [
        # user authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with the [authorization scope](https://developers.google.
        # com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.
        # googleapis.com/auth/chat.customemojis`
        # @param [Google::Apis::ChatV1::CustomEmoji] custom_emoji_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::CustomEmoji] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::CustomEmoji]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_custom_emoji(custom_emoji_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/customEmojis', options)
          command.request_representation = Google::Apis::ChatV1::CustomEmoji::Representation
          command.request_object = custom_emoji_object
          command.response_representation = Google::Apis::ChatV1::CustomEmoji::Representation
          command.response_class = Google::Apis::ChatV1::CustomEmoji
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a custom emoji. By default, users can only delete custom emoji they
        # created. [Emoji managers](https://support.google.com/a/answer/12850085)
        # assigned by the administrator can delete any custom emoji in the organization.
        # See [Learn about custom emojis in Google Chat](https://support.google.com/chat/
        # answer/12800149). Custom emojis are only available for Google Workspace
        # accounts, and the administrator must turn custom emojis on for the
        # organization. For more information, see [Learn about custom emojis in Google
        # Chat](https://support.google.com/chat/answer/12800149) and [Manage custom
        # emoji permissions](https://support.google.com/a/answer/12850085). Requires [
        # user authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with the [authorization scope](https://developers.google.
        # com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.
        # googleapis.com/auth/chat.customemojis`
        # @param [String] name
        #   Required. Resource name of the custom emoji to delete. Format: `customEmojis/`
        #   customEmoji`` You can use the emoji name as an alias for ``customEmoji``. For
        #   example, `customEmojis/:example-emoji:` where `:example-emoji:` is the emoji
        #   name for a custom emoji.
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
        def delete_custom_emoji(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Empty::Representation
          command.response_class = Google::Apis::ChatV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details about a custom emoji. Custom emojis are only available for
        # Google Workspace accounts, and the administrator must turn custom emojis on
        # for the organization. For more information, see [Learn about custom emojis in
        # Google Chat](https://support.google.com/chat/answer/12800149) and [Manage
        # custom emoji permissions](https://support.google.com/a/answer/12850085).
        # Requires [user authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user) with one of the following [authorization
        # scopes](https://developers.google.com/workspace/chat/authenticate-authorize#
        # chat-api-scopes): - `https://www.googleapis.com/auth/chat.customemojis.
        # readonly` - `https://www.googleapis.com/auth/chat.customemojis`
        # @param [String] name
        #   Required. Resource name of the custom emoji. Format: `customEmojis/`
        #   customEmoji`` You can use the emoji name as an alias for ``customEmoji``. For
        #   example, `customEmojis/:example-emoji:` where `:example-emoji:` is the emoji
        #   name for a custom emoji.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::CustomEmoji] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::CustomEmoji]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_custom_emoji(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::CustomEmoji::Representation
          command.response_class = Google::Apis::ChatV1::CustomEmoji
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists custom emojis visible to the authenticated user. Custom emojis are only
        # available for Google Workspace accounts, and the administrator must turn
        # custom emojis on for the organization. For more information, see [Learn about
        # custom emojis in Google Chat](https://support.google.com/chat/answer/12800149)
        # and [Manage custom emoji permissions](https://support.google.com/a/answer/
        # 12850085). Requires [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user) with one of the following [
        # authorization scopes](https://developers.google.com/workspace/chat/
        # authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/
        # chat.customemojis.readonly` - `https://www.googleapis.com/auth/chat.
        # customemojis`
        # @param [String] filter
        #   Optional. A query filter. Supports filtering by creator. To filter by creator,
        #   you must specify a valid value. Currently only `creator("users/me")` and `NOT
        #   creator("users/me")` are accepted to filter custom emojis by whether they were
        #   created by the calling user or not. For example, the following query returns
        #   custom emojis created by the caller: ``` creator("users/me") ``` Invalid
        #   queries are rejected with an `INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of custom emojis returned. The service can return
        #   fewer custom emojis than this value. If unspecified, the default value is 25.
        #   The maximum value is 200; values above 200 are changed to 200.
        # @param [String] page_token
        #   Optional. (If resuming from a previous query.) A page token received from a
        #   previous list custom emoji call. Provide this to retrieve the subsequent page.
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
        # @yieldparam result [Google::Apis::ChatV1::ListCustomEmojisResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ListCustomEmojisResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_custom_emojis(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/customEmojis', options)
          command.response_representation = Google::Apis::ChatV1::ListCustomEmojisResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListCustomEmojisResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        # authenticate-authorize-chat-user) with one of the following [authorization
        # scopes](https://developers.google.com/workspace/chat/authenticate-authorize#
        # chat-api-scopes): - `https://www.googleapis.com/auth/chat.messages.create` - `
        # https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/
        # auth/chat.import` (import mode spaces only) You can upload attachments up to
        # 200 MB. Certain file types aren't supported. For details, see [File types
        # blocked by Google Chat](https://support.google.com/chat/answer/7651457?&co=
        # GENIE.Platform%3DDesktop#File%20types%20blocked%20in%20Google%20Chat).
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
        # import-data) for the specified space and makes it visible to users. Requires [
        # user authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) and domain-wide delegation with the [authorization scope](
        # https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-
        # scopes): - `https://www.googleapis.com/auth/chat.import` For more information,
        # see [Authorize Google Chat apps to import data](https://developers.google.com/
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
        
        # Creates a space. Can be used to create a named space, or a group chat in `
        # Import mode`. For an example, see [Create a space](https://developers.google.
        # com/workspace/chat/create-spaces). Supports the following types of [
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize): - [App authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-app) with [administrator approval](https://
        # support.google.com/a?p=chat-app-auth) and one of the following authorization
        # scopes: - `https://www.googleapis.com/auth/chat.app.spaces.create` - `https://
        # www.googleapis.com/auth/chat.app.spaces` - [User authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # one of the following authorization scopes: - `https://www.googleapis.com/auth/
        # chat.spaces.create` - `https://www.googleapis.com/auth/chat.spaces` - `https://
        # www.googleapis.com/auth/chat.import` (import mode spaces only) When
        # authenticating as an app, the `space.customer` field must be set in the
        # request. When authenticating as an app, the Chat app is added as a member of
        # the space. However, unlike human authentication, the Chat app is not added as
        # a space manager. By default, the Chat app can be removed from the space by all
        # space members. To allow only space managers to remove the app from a space,
        # set `space.permission_settings.manage_apps` to `managers_allowed`. Space
        # membership upon creation depends on whether the space is created in `Import
        # mode`: * **Import mode:** No members are created. * **All other modes:** The
        # calling user is added as a member. This is: * The app itself when using app
        # authentication. * The human user when using user authentication. If you
        # receive the error message `ALREADY_EXISTS` when creating a space, try a
        # different `displayName`. An existing space within the Google Workspace
        # organization might already use this display name.
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
        # developers.google.com/workspace/chat/delete-spaces). Supports the following
        # types of [authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize): - [App authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) with [administrator approval](
        # https://support.google.com/a?p=chat-app-auth) and the authorization scope: - `
        # https://www.googleapis.com/auth/chat.app.delete` (only in spaces the app
        # created) - [User authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user) with one of the following authorization
        # scopes: - `https://www.googleapis.com/auth/chat.delete` - `https://www.
        # googleapis.com/auth/chat.import` (import mode spaces only) - User
        # authentication grants administrator privileges when an administrator account
        # authenticates, `use_admin_access` is `true`, and the following authorization
        # scope is used: - `https://www.googleapis.com/auth/chat.admin.delete`
        # @param [String] name
        #   Required. Resource name of the space to delete. Format: `spaces/`space``
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.delete` [
        #   OAuth 2.0 scope](https://developers.google.com/workspace/chat/authenticate-
        #   authorize#chat-api-scopes).
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
        def delete_space(name, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Empty::Representation
          command.response_class = Google::Apis::ChatV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the existing direct message with the specified user. If no direct
        # message space is found, returns a `404 NOT_FOUND` error. For an example, see [
        # Find a direct message](/chat/api/guides/v1/spaces/find-direct-message). With [
        # app authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app), returns the direct message space between the specified
        # user and the calling Chat app. With [user authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user), returns the
        # direct message space between the specified user and the authenticated user.
        # Supports the following types of [authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize): - [App authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the
        # authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with one of the following authorization scopes: - `https:/
        # /www.googleapis.com/auth/chat.spaces.readonly` - `https://www.googleapis.com/
        # auth/chat.spaces`
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
        # https://developers.google.com/workspace/chat/get-spaces). Supports the
        # following types of [authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize): - [App authentication](https://developers.google.
        # com/workspace/chat/authenticate-authorize-chat-app) with one of the following
        # authorization scopes: - `https://www.googleapis.com/auth/chat.bot` - `https://
        # www.googleapis.com/auth/chat.app.spaces` with [administrator approval](https://
        # support.google.com/a?p=chat-app-auth) - [User authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # one of the following authorization scopes: - `https://www.googleapis.com/auth/
        # chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` - User
        # authentication grants administrator privileges when an administrator account
        # authenticates, `use_admin_access` is `true`, and one of the following
        # authorization scopes is used: - `https://www.googleapis.com/auth/chat.admin.
        # spaces.readonly` - `https://www.googleapis.com/auth/chat.admin.spaces` App
        # authentication has the following limitations: - `space.access_settings` is
        # only populated when using the `chat.app.spaces` scope. - `space.
        # predefind_permission_settings` and `space.permission_settings` are only
        # populated when using the `chat.app.spaces` scope, and only for spaces the app
        # created.
        # @param [String] name
        #   Required. Resource name of the space, in the form `spaces/`space``. Format: `
        #   spaces/`space``
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.spaces` or `
        #   chat.admin.spaces.readonly` [OAuth 2.0 scopes](https://developers.google.com/
        #   workspace/chat/authenticate-authorize#chat-api-scopes).
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
        def get_space(name, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists spaces the caller is a member of. Group chats and DMs aren't listed
        # until the first message is sent. For an example, see [List spaces](https://
        # developers.google.com/workspace/chat/list-spaces). Supports the following
        # types of [authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize): - [App authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) with the authorization scope: -
        # `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # one of the following authorization scopes: - `https://www.googleapis.com/auth/
        # chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` To list
        # all named spaces by Google Workspace organization, use the [`spaces.search()`](
        # https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/
        # search) method using Workspace administrator privileges instead.
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
        # already use this display name. Supports the following types of [authentication]
        # (https://developers.google.com/workspace/chat/authenticate-authorize): - [App
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app) with [administrator approval](https://support.google.com/a?
        # p=chat-app-auth) and one of the following authorization scopes: - `https://www.
        # googleapis.com/auth/chat.app.spaces` - [User authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # one of the following authorization scopes: - `https://www.googleapis.com/auth/
        # chat.spaces` - `https://www.googleapis.com/auth/chat.import` (import mode
        # spaces only) - User authentication grants administrator privileges when an
        # administrator account authenticates, `use_admin_access` is `true`, and the
        # following authorization scopes is used: - `https://www.googleapis.com/auth/
        # chat.admin.spaces` App authentication has the following limitations: - To
        # update either `space.predefined_permission_settings` or `space.
        # permission_settings`, the app must be the space creator. - Updating the `space.
        # access_settings.audience` is not supported for app authentication.
        # @param [String] name
        #   Identifier. Resource name of the space. Format: `spaces/`space`` Where ``space`
        #   ` represents the system-assigned ID for the space. You can obtain the space ID
        #   by calling the [`spaces.list()`](https://developers.google.com/workspace/chat/
        #   api/reference/rest/v1/spaces/list) method or from the space URL. For example,
        #   if the space URL is `https://mail.google.com/mail/u/0/#chat/space/AAAAAAAAA`,
        #   the space ID is `AAAAAAAAA`.
        # @param [Google::Apis::ChatV1::Space] space_object
        # @param [String] update_mask
        #   Required. The updated field paths, comma separated if there are multiple. You
        #   can update the following fields for a space: `space_details`: Updates the
        #   space's description and guidelines. You must pass both description and
        #   guidelines in the update request as `SpaceDetails`. If you only want to update
        #   one of the fields, pass the existing value for the other field. `display_name`:
        #   Only supports updating the display name for spaces where `spaceType` field is
        #   `SPACE`. If you receive the error message `ALREADY_EXISTS`, try a different
        #   value. An existing space within the Google Workspace organization might
        #   already use this display name. `space_type`: Only supports changing a `
        #   GROUP_CHAT` space type to `SPACE`. Include `display_name` together with `
        #   space_type` in the update mask and ensure that the specified space has a non-
        #   empty display name and the `SPACE` space type. Including the `space_type` mask
        #   and the `SPACE` type in the specified space when updating the display name is
        #   optional if the existing space already has the `SPACE` type. Trying to update
        #   the space type in other ways results in an invalid argument error. `space_type`
        #   is not supported with `useAdminAccess`. `space_history_state`: Updates [space
        #   history settings](https://support.google.com/chat/answer/7664687) by turning
        #   history on or off for the space. Only supported if history settings are
        #   enabled for the Google Workspace organization. To update the space history
        #   state, you must omit all other field masks in your request. `
        #   space_history_state` is not supported with `useAdminAccess`. `access_settings.
        #   audience`: Updates the [access setting](https://support.google.com/chat/answer/
        #   11971020) of who can discover the space, join the space, and preview the
        #   messages in named space where `spaceType` field is `SPACE`. If the existing
        #   space has a target audience, you can remove the audience and restrict space
        #   access by omitting a value for this field mask. To update access settings for
        #   a space, the authenticating user must be a space manager and omit all other
        #   field masks in your request. You can't update this field if the space is in [
        #   import mode](https://developers.google.com/workspace/chat/import-data-overview)
        #   . To learn more, see [Make a space discoverable to specific users](https://
        #   developers.google.com/workspace/chat/space-target-audience). `access_settings.
        #   audience` is not supported with `useAdminAccess`. `permission_settings`:
        #   Supports changing the [permission settings](https://support.google.com/chat/
        #   answer/13340792) of a space. When updating permission settings, you can only
        #   specify `permissionSettings` field masks; you cannot update other field masks
        #   at the same time. The supported field masks include: - `permission_settings.
        #   manageMembersAndGroups` - `permission_settings.modifySpaceDetails` - `
        #   permission_settings.toggleHistory` - `permission_settings.useAtMentionAll` - `
        #   permission_settings.manageApps` - `permission_settings.manageWebhooks` - `
        #   permission_settings.replyMessages`
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.spaces` [
        #   OAuth 2.0 scope](https://developers.google.com/workspace/chat/authenticate-
        #   authorize#chat-api-scopes). Some `FieldMask` values are not supported using
        #   admin access. For details, see the description of `update_mask`.
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
        def patch_space(name, space_object = nil, update_mask: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::Space::Representation
          command.request_object = space_object
          command.response_representation = Google::Apis::ChatV1::Space::Representation
          command.response_class = Google::Apis::ChatV1::Space
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of spaces in a Google Workspace organization based on an
        # administrator's search. In the request, set `use_admin_access` to `true`. For
        # an example, see [Search for and manage spaces](https://developers.google.com/
        # workspace/chat/search-manage-admin). Requires [user authentication with
        # administrator privileges](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user#admin-privileges) and one of the following [
        # authorization scopes](https://developers.google.com/workspace/chat/
        # authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/
        # chat.admin.spaces.readonly` - `https://www.googleapis.com/auth/chat.admin.
        # spaces`
        # @param [String] order_by
        #   Optional. How the list of spaces is ordered. Supported attributes to order by
        #   are: - `membership_count.joined_direct_human_user_count` — Denotes the count
        #   of human users that have directly joined a space. - `last_active_time` —
        #   Denotes the time when last eligible item is added to any topic of this space. -
        #   `create_time` — Denotes the time of the space creation. Valid ordering
        #   operation values are: - `ASC` for ascending. Default value. - `DESC` for
        #   descending. The supported syntax are: - `membership_count.
        #   joined_direct_human_user_count DESC` - `membership_count.
        #   joined_direct_human_user_count ASC` - `last_active_time DESC` - `
        #   last_active_time ASC` - `create_time DESC` - `create_time ASC`
        # @param [Fixnum] page_size
        #   The maximum number of spaces to return. The service may return fewer than this
        #   value. If unspecified, at most 100 spaces are returned. The maximum value is
        #   1000. If you use a value more than 1000, it's automatically changed to 1000.
        # @param [String] page_token
        #   A token, received from the previous search spaces call. Provide this parameter
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided should match the call that provided the page token. Passing different
        #   values to the other parameters might lead to unexpected results.
        # @param [String] query
        #   Required. A search query. You can search by using the following parameters: - `
        #   create_time` - `customer` - `display_name` - `external_user_allowed` - `
        #   last_active_time` - `space_history_state` - `space_type` `create_time` and `
        #   last_active_time` accept a timestamp in [RFC-3339](https://www.rfc-editor.org/
        #   rfc/rfc3339) format and the supported comparison operators are: `=`, `<`, `>`,
        #   `<=`, `>=`. `customer` is required and is used to indicate which customer to
        #   fetch spaces from. `customers/my_customer` is the only supported value. `
        #   display_name` only accepts the `HAS` (`:`) operator. The text to match is
        #   first tokenized into tokens and each token is prefix-matched case-
        #   insensitively and independently as a substring anywhere in the space's `
        #   display_name`. For example, `Fun Eve` matches `Fun event` or `The evening was
        #   fun`, but not `notFun event` or `even`. `external_user_allowed` accepts either
        #   `true` or `false`. `space_history_state` only accepts values from the [`
        #   historyState`] (https://developers.google.com/workspace/chat/api/reference/
        #   rest/v1/spaces#Space.HistoryState) field of a `space` resource. `space_type`
        #   is required and the only valid value is `SPACE`. Across different fields, only
        #   `AND` operators are supported. A valid example is `space_type = "SPACE" AND
        #   display_name:"Hello"` and an invalid example is `space_type = "SPACE" OR
        #   display_name:"Hello"`. Among the same field, `space_type` doesn't support `AND`
        #   or `OR` operators. `display_name`, 'space_history_state', and '
        #   external_user_allowed' only support `OR` operators. `last_active_time` and `
        #   create_time` support both `AND` and `OR` operators. `AND` can only be used to
        #   represent an interval, such as `last_active_time < "2022-01-01T00:00:00+00:00"
        #   AND last_active_time > "2023-01-01T00:00:00+00:00"`. The following example
        #   queries are valid: ``` customer = "customers/my_customer" AND space_type = "
        #   SPACE" customer = "customers/my_customer" AND space_type = "SPACE" AND
        #   display_name:"Hello World" customer = "customers/my_customer" AND space_type =
        #   "SPACE" AND (last_active_time < "2020-01-01T00:00:00+00:00" OR
        #   last_active_time > "2022-01-01T00:00:00+00:00") customer = "customers/
        #   my_customer" AND space_type = "SPACE" AND (display_name:"Hello World" OR
        #   display_name:"Fun event") AND (last_active_time > "2020-01-01T00:00:00+00:00"
        #   AND last_active_time < "2022-01-01T00:00:00+00:00") customer = "customers/
        #   my_customer" AND space_type = "SPACE" AND (create_time > "2019-01-01T00:00:00+
        #   00:00" AND create_time < "2020-01-01T00:00:00+00:00") AND (
        #   external_user_allowed = "true") AND (space_history_state = "HISTORY_ON" OR
        #   space_history_state = "HISTORY_OFF") ```
        # @param [Boolean] use_admin_access
        #   When `true`, the method runs using the user's Google Workspace administrator
        #   privileges. The calling user must be a Google Workspace administrator with the
        #   [manage chat and spaces conversations privilege](https://support.google.com/a/
        #   answer/13369245). Requires either the `chat.admin.spaces.readonly` or `chat.
        #   admin.spaces` [OAuth 2.0 scope](https://developers.google.com/workspace/chat/
        #   authenticate-authorize#chat-api-scopes). This method currently only supports
        #   admin access, thus only `true` is accepted for this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::SearchSpacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::SearchSpacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_spaces(order_by: nil, page_size: nil, page_token: nil, query: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/spaces:search', options)
          command.response_representation = Google::Apis::ChatV1::SearchSpacesResponse::Representation
          command.response_class = Google::Apis::ChatV1::SearchSpacesResponse
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a space and adds specified users to it. The calling user is
        # automatically added to the space, and shouldn't be specified as a membership
        # in the request. For an example, see [Set up a space with initial members](
        # https://developers.google.com/workspace/chat/set-up-spaces). To specify the
        # human members to add, add memberships with the appropriate `membership.member.
        # name`. To add a human user, use `users/`user``, where ``user`` can be the
        # email address for the user. For users in the same Workspace organization ``
        # user`` can also be the `id` for the person from the People API, or the `id`
        # for the user in the Directory API. For example, if the People API Person
        # profile ID for `user@example.com` is `123456789`, you can add the user to the
        # space by setting the `membership.member.name` to `users/user@example.com` or `
        # users/123456789`. To specify the Google groups to add, add memberships with
        # the appropriate `membership.group_member.name`. To add or invite a Google
        # group, use `groups/`group``, where ``group`` is the `id` for the group from
        # the Cloud Identity Groups API. For example, you can use [Cloud Identity Groups
        # lookup API](https://cloud.google.com/identity/docs/reference/rest/v1/groups/
        # lookup) to retrieve the ID `123456789` for group email `group@example.com`,
        # then you can add the group to the space by setting the `membership.
        # group_member.name` to `groups/123456789`. Group email is not supported, and
        # Google groups can only be added as members in named spaces. For a named space
        # or group chat, if the caller blocks, or is blocked by some members, or doesn't
        # have permission to add some members, then those members aren't added to the
        # created space. To create a direct message (DM) between the calling user and
        # another human user, specify exactly one membership to represent the human user.
        # If one user blocks the other, the request fails and the DM isn't created. To
        # create a DM between the calling user and the calling app, set `Space.
        # singleUserBotDm` to `true` and don't specify any memberships. You can only use
        # this method to set up a DM with the calling app. To add the calling app as a
        # member of a space or an existing DM between two human users, see [Invite or
        # add a user or app to a space](https://developers.google.com/workspace/chat/
        # create-members). If a DM already exists between two users, even when one user
        # blocks the other at the time a request is made, then the existing DM is
        # returned. Spaces with threaded replies aren't supported. If you receive the
        # error message `ALREADY_EXISTS` when setting up a space, try a different `
        # displayName`. An existing space within the Google Workspace organization might
        # already use this display name. Requires [user authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # one of the following [authorization scopes](https://developers.google.com/
        # workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.
        # googleapis.com/auth/chat.spaces.create` - `https://www.googleapis.com/auth/
        # chat.spaces`
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
        
        # Creates a membership for the calling Chat app, a user, or a Google Group.
        # Creating memberships for other Chat apps isn't supported. When creating a
        # membership, if the specified member has their auto-accept policy turned off,
        # then they're invited, and must accept the space invitation before joining.
        # Otherwise, creating a membership adds the member directly to the specified
        # space. Supports the following types of [authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize): - [App authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
        # with [administrator approval](https://support.google.com/a?p=chat-app-auth)
        # and the authorization scope: - `https://www.googleapis.com/auth/chat.app.
        # memberships` - [User authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-user) with one of the following authorization
        # scopes: - `https://www.googleapis.com/auth/chat.memberships` - `https://www.
        # googleapis.com/auth/chat.memberships.app` (to add the calling app to the space)
        # - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) -
        # User authentication grants administrator privileges when an administrator
        # account authenticates, `use_admin_access` is `true`, and the following
        # authorization scope is used: - `https://www.googleapis.com/auth/chat.admin.
        # memberships` App authentication is not supported for the following use cases: -
        # Inviting users external to the Workspace organization that owns the space. -
        # Adding a Google Group to a space. - Adding a Chat app to a space. For example
        # usage, see: - [Invite or add a user to a space](https://developers.google.com/
        # workspace/chat/create-members#create-user-membership). - [Invite or add a
        # Google Group to a space](https://developers.google.com/workspace/chat/create-
        # members#create-group-membership). - [Add the Chat app to a space](https://
        # developers.google.com/workspace/chat/create-members#create-membership-calling-
        # api).
        # @param [String] parent
        #   Required. The resource name of the space for which to create the membership.
        #   Format: spaces/`space`
        # @param [Google::Apis::ChatV1::Membership] membership_object
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.memberships` [
        #   OAuth 2.0 scope](https://developers.google.com/workspace/chat/authenticate-
        #   authorize#chat-api-scopes). Creating app memberships or creating memberships
        #   for users outside the administrator's Google Workspace organization isn't
        #   supported using admin access.
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
        def create_space_member(parent, membership_object = nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/members', options)
          command.request_representation = Google::Apis::ChatV1::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['parent'] = parent unless parent.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a membership. For an example, see [Remove a user or a Google Chat app
        # from a space](https://developers.google.com/workspace/chat/delete-members).
        # Supports the following types of [authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize): - [App authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [
        # administrator approval](https://support.google.com/a?p=chat-app-auth) and the
        # authorization scope: - `https://www.googleapis.com/auth/chat.app.memberships` -
        # [User authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user) with one of the following authorization
        # scopes: - `https://www.googleapis.com/auth/chat.memberships` - `https://www.
        # googleapis.com/auth/chat.memberships.app` (to remove the calling app from the
        # space) - `https://www.googleapis.com/auth/chat.import` (import mode spaces
        # only) - User authentication grants administrator privileges when an
        # administrator account authenticates, `use_admin_access` is `true`, and the
        # following authorization scope is used: - `https://www.googleapis.com/auth/chat.
        # admin.memberships` App authentication is not supported for the following use
        # cases: - Removing a Google Group from a space. - Removing a Chat app from a
        # space. To delete memberships for space managers, the requester must be a space
        # manager. If you're using [app authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) the Chat app must be the space
        # creator.
        # @param [String] name
        #   Required. Resource name of the membership to delete. Chat apps can delete
        #   human users' or their own memberships. Chat apps can't delete other apps'
        #   memberships. When deleting a human membership, requires the `chat.memberships`
        #   scope with [user authentication](https://developers.google.com/workspace/chat/
        #   authenticate-authorize-chat-user) or the `chat.memberships.app` scope with [
        #   app authentication](https://developers.google.com/workspace/chat/authenticate-
        #   authorize-chat-app) and the `spaces/`space`/members/`member`` format. You can
        #   use the email as an alias for ``member``. For example, `spaces/`space`/members/
        #   example@gmail.com` where `example@gmail.com` is the email of the Google Chat
        #   user. When deleting an app membership, requires the `chat.memberships.app`
        #   scope and `spaces/`space`/members/app` format. Format: `spaces/`space`/members/
        #   `member`` or `spaces/`space`/members/app`.
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.memberships` [
        #   OAuth 2.0 scope](https://developers.google.com/workspace/chat/authenticate-
        #   authorize#chat-api-scopes). Deleting app memberships in a space isn't
        #   supported using admin access.
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
        def delete_space_member(name, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details about a membership. For an example, see [Get details about a
        # user's or Google Chat app's membership](https://developers.google.com/
        # workspace/chat/get-members). Supports the following types of [authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize): - [App
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app) with one of the following authorization scopes: - `https://
        # www.googleapis.com/auth/chat.bot` - `https://www.googleapis.com/auth/chat.app.
        # memberships` (requires [administrator approval](https://support.google.com/a?p=
        # chat-app-auth)) - [User authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user) with one of the following
        # authorization scopes: - `https://www.googleapis.com/auth/chat.memberships.
        # readonly` - `https://www.googleapis.com/auth/chat.memberships` - User
        # authentication grants administrator privileges when an administrator account
        # authenticates, `use_admin_access` is `true`, and one of the following
        # authorization scopes is used: - `https://www.googleapis.com/auth/chat.admin.
        # memberships.readonly` - `https://www.googleapis.com/auth/chat.admin.
        # memberships`
        # @param [String] name
        #   Required. Resource name of the membership to retrieve. To get the app's own
        #   membership [by using user authentication](https://developers.google.com/
        #   workspace/chat/authenticate-authorize-chat-user), you can optionally use `
        #   spaces/`space`/members/app`. Format: `spaces/`space`/members/`member`` or `
        #   spaces/`space`/members/app` You can use the user's email as an alias for ``
        #   member``. For example, `spaces/`space`/members/example@gmail.com` where `
        #   example@gmail.com` is the email of the Google Chat user.
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.memberships`
        #   or `chat.admin.memberships.readonly` [OAuth 2.0 scopes](https://developers.
        #   google.com/workspace/chat/authenticate-authorize#chat-api-scopes). Getting app
        #   memberships in a space isn't supported when using admin access.
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
        def get_space_member(name, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
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
        # in spaces that the authenticated user has access to. Supports the following
        # types of [authentication](https://developers.google.com/workspace/chat/
        # authenticate-authorize): - [App authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) with one of the following
        # authorization scopes: - `https://www.googleapis.com/auth/chat.bot` - `https://
        # www.googleapis.com/auth/chat.app.memberships` (requires [administrator
        # approval](https://support.google.com/a?p=chat-app-auth)) - [User
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with one of the following authorization scopes: - `https:/
        # /www.googleapis.com/auth/chat.memberships.readonly` - `https://www.googleapis.
        # com/auth/chat.memberships` - `https://www.googleapis.com/auth/chat.import` (
        # import mode spaces only) - User authentication grants administrator privileges
        # when an administrator account authenticates, `use_admin_access` is `true`, and
        # one of the following authorization scopes is used: - `https://www.googleapis.
        # com/auth/chat.admin.memberships.readonly` - `https://www.googleapis.com/auth/
        # chat.admin.memberships`
        # @param [String] parent
        #   Required. The resource name of the space for which to fetch a membership list.
        #   Format: spaces/`space`
        # @param [String] filter
        #   Optional. A query filter. You can filter memberships by a member's role ([`
        #   role`](https://developers.google.com/workspace/chat/api/reference/rest/v1/
        #   spaces.members#membershiprole)) and type ([`member.type`](https://developers.
        #   google.com/workspace/chat/api/reference/rest/v1/User#type)). To filter by role,
        #   set `role` to `ROLE_MEMBER` or `ROLE_MANAGER`. To filter by type, set `member.
        #   type` to `HUMAN` or `BOT`. You can also filter for `member.type` using the `!=`
        #   operator. To filter by both role and type, use the `AND` operator. To filter
        #   by either role or type, use the `OR` operator. Either `member.type = "HUMAN"`
        #   or `member.type != "BOT"` is required when `use_admin_access` is set to true.
        #   Other member type filters will be rejected. For example, the following queries
        #   are valid: ``` role = "ROLE_MANAGER" OR role = "ROLE_MEMBER" member.type = "
        #   HUMAN" AND role = "ROLE_MANAGER" member.type != "BOT" ``` The following
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
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires either the `chat.admin.
        #   memberships.readonly` or `chat.admin.memberships` [OAuth 2.0 scope](https://
        #   developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes).
        #   Listing app memberships in a space isn't supported when using admin access.
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
        def list_space_members(parent, filter: nil, page_size: nil, page_token: nil, show_groups: nil, show_invited: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/members', options)
          command.response_representation = Google::Apis::ChatV1::ListMembershipsResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showGroups'] = show_groups unless show_groups.nil?
          command.query['showInvited'] = show_invited unless show_invited.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a membership. For an example, see [Update a user's membership in a
        # space](https://developers.google.com/workspace/chat/update-members). Supports
        # the following types of [authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize): - [App authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [
        # administrator approval](https://support.google.com/a?p=chat-app-auth) and the
        # authorization scope: - `https://www.googleapis.com/auth/chat.app.memberships` (
        # only in spaces the app created) - [User authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user) with one of the
        # following authorization scopes: - `https://www.googleapis.com/auth/chat.
        # memberships` - `https://www.googleapis.com/auth/chat.import` (import mode
        # spaces only) - User authentication grants administrator privileges when an
        # administrator account authenticates, `use_admin_access` is `true`, and the
        # following authorization scope is used: - `https://www.googleapis.com/auth/chat.
        # admin.memberships`
        # @param [String] name
        #   Identifier. Resource name of the membership, assigned by the server. Format: `
        #   spaces/`space`/members/`member``
        # @param [Google::Apis::ChatV1::Membership] membership_object
        # @param [String] update_mask
        #   Required. The field paths to update. Separate multiple values with commas or
        #   use `*` to update all field paths. Currently supported field paths: - `role`
        # @param [Boolean] use_admin_access
        #   Optional. When `true`, the method runs using the user's Google Workspace
        #   administrator privileges. The calling user must be a Google Workspace
        #   administrator with the [manage chat and spaces conversations privilege](https:/
        #   /support.google.com/a/answer/13369245). Requires the `chat.admin.memberships` [
        #   OAuth 2.0 scope](https://developers.google.com/workspace/chat/authenticate-
        #   authorize#chat-api-scopes).
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
        def patch_space_member(name, membership_object = nil, update_mask: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::ChatV1::Membership::Representation
          command.response_class = Google::Apis::ChatV1::Membership
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a message in a Google Chat space. For an example, see [Send a message](
        # https://developers.google.com/workspace/chat/create-messages). Supports the
        # following types of [authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize): - [App authentication](https://developers.google.
        # com/workspace/chat/authenticate-authorize-chat-app) with the authorization
        # scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
        # with one of the following authorization scopes: - `https://www.googleapis.com/
        # auth/chat.messages.create` - `https://www.googleapis.com/auth/chat.messages` -
        # `https://www.googleapis.com/auth/chat.import` (import mode spaces only) Chat
        # attributes the message sender differently depending on the type of
        # authentication that you use in your request. The following image shows how
        # Chat attributes a message when you use app authentication. Chat displays the
        # Chat app as the message sender. The content of the message can contain text (`
        # text`), cards (`cardsV2`), and accessory widgets (`accessoryWidgets`). ![
        # Message sent with app authentication](https://developers.google.com/workspace/
        # chat/images/message-app-auth.svg) The following image shows how Chat
        # attributes a message when you use user authentication. Chat displays the user
        # as the message sender and attributes the Chat app to the message by displaying
        # its name. The content of message can only contain text (`text`). ![Message
        # sent with user authentication](https://developers.google.com/workspace/chat/
        # images/message-user-auth.svg) The maximum message size, including the message
        # contents, is 32,000 bytes. For [webhook](https://developers.google.com/
        # workspace/chat/quickstart/webhooks) requests, the response doesn't contain the
        # full message. The response only populates the `name` and `thread.name` fields
        # in addition to the information that was in the request.
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
        #   supported in named spaces. When [responding to user interactions](https://
        #   developers.google.com/workspace/chat/receive-respond-interactions), this field
        #   is ignored. For interactions within a thread, the reply is created in the same
        #   thread. Otherwise, the reply is created as a new thread.
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
        # google.com/workspace/chat/delete-messages). Supports the following types of [
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize): - [App authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-app) with the authorization scope: - `https://
        # www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user) with one of the
        # following authorization scopes: - `https://www.googleapis.com/auth/chat.
        # messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces
        # only) When using app authentication, requests can only delete messages created
        # by the calling Chat app.
        # @param [String] name
        #   Required. Resource name of the message. Format: `spaces/`space`/messages/`
        #   message`` If you've set a custom ID for your message, you can use the value
        #   from the `clientAssignedMessageId` field for ``message``. For details, see [
        #   Name a message] (https://developers.google.com/workspace/chat/create-messages#
        #   name_a_created_message).
        # @param [Boolean] force
        #   Optional. When `true`, deleting a message also deletes its threaded replies.
        #   When `false`, if a message has threaded replies, deletion fails. Only applies
        #   when [authenticating as a user](https://developers.google.com/workspace/chat/
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
        # message](https://developers.google.com/workspace/chat/get-messages). Supports
        # the following types of [authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize): - [App authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-app) with one
        # of the following authorization scopes: - `https://www.googleapis.com/auth/chat.
        # bot`: When using this authorization scope, this method returns details about a
        # message the Chat app has access to, like direct messages and [slash commands](
        # https://developers.google.com/workspace/chat/slash-commands) that invoke the
        # Chat app. - `https://www.googleapis.com/auth/chat.app.messages.readonly` with [
        # administrator approval](https://support.google.com/a?p=chat-app-auth) (
        # available in [Developer Preview](https://developers.google.com/workspace/
        # preview)). When using this authentication scope, this method returns details
        # about a public message in a space. - [User authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user) with one of the
        # following authorization scopes: - `https://www.googleapis.com/auth/chat.
        # messages.readonly` - `https://www.googleapis.com/auth/chat.messages` Note:
        # Might return a message from a blocked member or space.
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
        # from blocked members and spaces. System messages, like those announcing new
        # space members, aren't included. If you list messages from a space with no
        # messages, the response is an empty object. When using a REST/HTTP interface,
        # the response contains an empty JSON object, ````. For an example, see [List
        # messages](https://developers.google.com/workspace/chat/api/guides/v1/messages/
        # list). Supports the following types of [authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize): - [App authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
        # with [administrator approval](https://support.google.com/a?p=chat-app-auth) in
        # [Developer Preview](https://developers.google.com/workspace/preview) with the
        # authorization scope: - `https://www.googleapis.com/auth/chat.app.messages.
        # readonly`. When using this authentication scope, this method only returns
        # public messages in a space. It doesn't include private messages. - [User
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with one of the following authorization scopes: - `https:/
        # /www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.com/
        # auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import
        # mode spaces only)
        # @param [String] parent
        #   Required. The resource name of the space to list messages from. Format: `
        #   spaces/`space``
        # @param [String] filter
        #   Optional. A query filter. You can filter messages by date (`create_time`) and
        #   thread (`thread.name`). To filter messages by the date they were created,
        #   specify the `create_time` with a timestamp in [RFC-3339](https://www.rfc-
        #   editor.org/rfc/rfc3339) format and double quotation marks. For example, `"2023-
        #   04-21T11:30:00-04:00"`. You can use the greater than operator `>` to list
        #   messages that were created after a timestamp, or the less than operator `<` to
        #   list messages that were created before a timestamp. To filter messages within
        #   a time interval, use the `AND` operator between two timestamps. To filter by
        #   thread, specify the `thread.name`, formatted as `spaces/`space`/threads/`
        #   thread``. You can only specify one `thread.name` per query. To filter by both
        #   thread and date, use the `AND` operator in your query. For example, the
        #   following queries are valid: ``` create_time > "2012-04-21T11:30:00-04:00"
        #   create_time > "2012-04-21T11:30:00-04:00" AND thread.name = spaces/AAAAAAAAAAA/
        #   threads/123 create_time > "2012-04-21T11:30:00+00:00" AND create_time < "2013-
        #   01-01T00:00:00+00:00" AND thread.name = spaces/AAAAAAAAAAA/threads/123 thread.
        #   name = spaces/AAAAAAAAAAA/threads/123 ``` Invalid queries are rejected by the
        #   server with an `INVALID_ARGUMENT` error.
        # @param [String] order_by
        #   Optional. How the list of messages is ordered. Specify a value to order by an
        #   ordering operation. Valid ordering operation values are as follows: - `ASC`
        #   for ascending. - `DESC` for descending. The default ordering is `create_time
        #   ASC`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of messages returned. The service might return
        #   fewer messages than this value. If unspecified, at most 25 are returned. The
        #   maximum value is 1000. If you use a value more than 1000, it's automatically
        #   changed to 1000. Negative values return an `INVALID_ARGUMENT` error.
        # @param [String] page_token
        #   Optional. A page token received from a previous list messages call. Provide
        #   this parameter to retrieve the subsequent page. When paginating, all other
        #   parameters provided should match the call that provided the page token.
        #   Passing different values to the other parameters might lead to unexpected
        #   results.
        # @param [Boolean] show_deleted
        #   Optional. Whether to include deleted messages. Deleted messages include
        #   deleted time and metadata about their deletion, but message content is
        #   unavailable.
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
        # messages). Supports the following types of [authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize): - [App authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
        # with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [
        # User authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with one of the following authorization scopes: - `https:/
        # /www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/
        # chat.import` (import mode spaces only) When using app authentication, requests
        # can only update messages created by the calling Chat app.
        # @param [String] name
        #   Identifier. Resource name of the message. Format: `spaces/`space`/messages/`
        #   message`` Where ``space`` is the ID of the space where the message is posted
        #   and ``message`` is a system-assigned ID for the message. For example, `spaces/
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
        #   authentication](/chat/api/guides/auth/service-accounts).) - `
        #   quoted_message_metadata` (Only allows removal of the quoted message.)
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
        # messages). Supports the following types of [authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize): - [App authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
        # with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [
        # User authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with one of the following authorization scopes: - `https:/
        # /www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/
        # chat.import` (import mode spaces only) When using app authentication, requests
        # can only update messages created by the calling Chat app.
        # @param [String] name
        #   Identifier. Resource name of the message. Format: `spaces/`space`/messages/`
        #   message`` Where ``space`` is the ID of the space where the message is posted
        #   and ``message`` is a system-assigned ID for the message. For example, `spaces/
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
        #   authentication](/chat/api/guides/auth/service-accounts).) - `
        #   quoted_message_metadata` (Only allows removal of the quoted message.)
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
        # workspace/chat/authenticate-authorize-chat-app) with the [authorization scope](
        # https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-
        # scopes): - `https://www.googleapis.com/auth/chat.bot`
        # @param [String] name
        #   Required. Resource name of the attachment, in the form `spaces/`space`/
        #   messages/`message`/attachments/`attachment``.
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
        
        # Creates a reaction and adds it to a message. For an example, see [Add a
        # reaction to a message](https://developers.google.com/workspace/chat/create-
        # reactions). Requires [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user) with one of the following [
        # authorization scopes](https://developers.google.com/workspace/chat/
        # authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/
        # chat.messages.reactions.create` - `https://www.googleapis.com/auth/chat.
        # messages.reactions` - `https://www.googleapis.com/auth/chat.messages` - `https:
        # //www.googleapis.com/auth/chat.import` (import mode spaces only)
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
        
        # Deletes a reaction to a message. For an example, see [Delete a reaction](https:
        # //developers.google.com/workspace/chat/delete-reactions). Requires [user
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with one of the following [authorization scopes](https://
        # developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): -
        # `https://www.googleapis.com/auth/chat.messages.reactions` - `https://www.
        # googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.
        # import` (import mode spaces only)
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
        # authenticate-authorize-chat-user) with one of the following [authorization
        # scopes](https://developers.google.com/workspace/chat/authenticate-authorize#
        # chat-api-scopes): - `https://www.googleapis.com/auth/chat.messages.reactions.
        # readonly` - `https://www.googleapis.com/auth/chat.messages.reactions` - `https:
        # //www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.
        # com/auth/chat.messages`
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
        #   queries are rejected with an `INVALID_ARGUMENT` error.
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
        # Message` resource in the event payload. Note: The `permissionSettings` field
        # is not returned in the Space object of the Space event data for this request.
        # Supports the following types of [authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize) with an [authorization scope](https://
        # developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes)
        # appropriate for reading the requested data: - [App authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [
        # administrator approval](https://support.google.com/a?p=chat-app-auth) in [
        # Developer Preview](https://developers.google.com/workspace/preview) with one
        # of the following authorization scopes: - `https://www.googleapis.com/auth/chat.
        # app.spaces` - `https://www.googleapis.com/auth/chat.app.messages.readonly` - `
        # https://www.googleapis.com/auth/chat.app.memberships` - [User authentication](
        # https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
        # with one of the following authorization scopes: - `https://www.googleapis.com/
        # auth/chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` - `
        # https://www.googleapis.com/auth/chat.messages.readonly` - `https://www.
        # googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.
        # messages.reactions.readonly` - `https://www.googleapis.com/auth/chat.messages.
        # reactions` - `https://www.googleapis.com/auth/chat.memberships.readonly` - `
        # https://www.googleapis.com/auth/chat.memberships` To get an event, the
        # authenticated caller must be a member of the space. For an example, see [Get
        # details about an event from a Google Chat space](https://developers.google.com/
        # workspace/chat/get-space-event).
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
        # contains an empty `Membership` resource. Supports the following types of [
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize) with an [authorization scope](https://developers.google.com/
        # workspace/chat/authenticate-authorize#chat-api-scopes) appropriate for reading
        # the requested data: - [App authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) with [administrator approval](
        # https://support.google.com/a?p=chat-app-auth) in [Developer Preview](https://
        # developers.google.com/workspace/preview) with one of the following
        # authorization scopes: - `https://www.googleapis.com/auth/chat.app.spaces` - `
        # https://www.googleapis.com/auth/chat.app.messages.readonly` - `https://www.
        # googleapis.com/auth/chat.app.memberships` - [User authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # one of the following authorization scopes: - `https://www.googleapis.com/auth/
        # chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` - `https:
        # //www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.
        # com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.messages.
        # reactions.readonly` - `https://www.googleapis.com/auth/chat.messages.reactions`
        # - `https://www.googleapis.com/auth/chat.memberships.readonly` - `https://www.
        # googleapis.com/auth/chat.memberships` To list events, the authenticated caller
        # must be a member of the space. For an example, see [List events from a Google
        # Chat space](https://developers.google.com/workspace/chat/list-space-events).
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
        #   Optional. A page token, received from a previous list space events call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to list space events must match the call that provided the
        #   page token. Passing different values to the other parameters might lead to
        #   unexpected results.
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
        
        # Returns details about a user's read state within a space, used to identify
        # read and unread messages. For an example, see [Get details about a user's
        # space read state](https://developers.google.com/workspace/chat/get-space-read-
        # state). Requires [user authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-user) with one of the following [
        # authorization scopes](https://developers.google.com/workspace/chat/
        # authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/
        # chat.users.readstate.readonly` - `https://www.googleapis.com/auth/chat.users.
        # readstate`
        # @param [String] name
        #   Required. Resource name of the space read state to retrieve. Only supports
        #   getting read state for the calling user. To refer to the calling user, set one
        #   of the following: - The `me` alias. For example, `users/me/spaces/`space`/
        #   spaceReadState`. - Their Workspace email address. For example, `users/user@
        #   example.com/spaces/`space`/spaceReadState`. - Their user id. For example, `
        #   users/123456789/spaces/`space`/spaceReadState`. Format: users/`user`/spaces/`
        #   space`/spaceReadState
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::SpaceReadState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::SpaceReadState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_space_space_read_state(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::SpaceReadState::Representation
          command.response_class = Google::Apis::ChatV1::SpaceReadState
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user's read state within a space, used to identify read and unread
        # messages. For an example, see [Update a user's space read state](https://
        # developers.google.com/workspace/chat/update-space-read-state). Requires [user
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) with the [authorization scope](https://developers.google.
        # com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.
        # googleapis.com/auth/chat.users.readstate`
        # @param [String] name
        #   Resource name of the space read state. Format: `users/`user`/spaces/`space`/
        #   spaceReadState`
        # @param [Google::Apis::ChatV1::SpaceReadState] space_read_state_object
        # @param [String] update_mask
        #   Required. The field paths to update. Currently supported field paths: - `
        #   last_read_time` When the `last_read_time` is before the latest message create
        #   time, the space appears as unread in the UI. To mark the space as read, set `
        #   last_read_time` to any value later (larger) than the latest message create
        #   time. The `last_read_time` is coerced to match the latest message create time.
        #   Note that the space read state only affects the read state of messages that
        #   are visible in the space's top-level conversation. Replies in threads are
        #   unaffected by this timestamp, and instead rely on the thread read state.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::SpaceReadState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::SpaceReadState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_space_space_read_state(name, space_read_state_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::SpaceReadState::Representation
          command.request_object = space_read_state_object
          command.response_representation = Google::Apis::ChatV1::SpaceReadState::Representation
          command.response_class = Google::Apis::ChatV1::SpaceReadState
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the space notification setting. For an example, see [Get the caller's
        # space notification setting](https://developers.google.com/workspace/chat/get-
        # space-notification-setting). Requires [user authentication](https://developers.
        # google.com/workspace/chat/authenticate-authorize-chat-user) with the [
        # authorization scope](https://developers.google.com/workspace/chat/authenticate-
        # authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.users.
        # spacesettings`
        # @param [String] name
        #   Required. Format: users/`user`/spaces/`space`/spaceNotificationSetting - `
        #   users/me/spaces/`space`/spaceNotificationSetting`, OR - `users/user@example.
        #   com/spaces/`space`/spaceNotificationSetting`, OR - `users/123456789/spaces/`
        #   space`/spaceNotificationSetting`. Note: Only the caller's user id or email is
        #   allowed in the path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::SpaceNotificationSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::SpaceNotificationSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_space_space_notification_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::SpaceNotificationSetting::Representation
          command.response_class = Google::Apis::ChatV1::SpaceNotificationSetting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the space notification setting. For an example, see [Update the caller'
        # s space notification setting](https://developers.google.com/workspace/chat/
        # update-space-notification-setting). Requires [user authentication](https://
        # developers.google.com/workspace/chat/authenticate-authorize-chat-user) with
        # the [authorization scope](https://developers.google.com/workspace/chat/
        # authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/
        # chat.users.spacesettings`
        # @param [String] name
        #   Identifier. The resource name of the space notification setting. Format: `
        #   users/`user`/spaces/`space`/spaceNotificationSetting`.
        # @param [Google::Apis::ChatV1::SpaceNotificationSetting] space_notification_setting_object
        # @param [String] update_mask
        #   Required. Supported field paths: - `notification_setting` - `mute_setting`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::SpaceNotificationSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::SpaceNotificationSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_space_space_notification_setting(name, space_notification_setting_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ChatV1::SpaceNotificationSetting::Representation
          command.request_object = space_notification_setting_object
          command.response_representation = Google::Apis::ChatV1::SpaceNotificationSetting::Representation
          command.response_class = Google::Apis::ChatV1::SpaceNotificationSetting
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details about a user's read state within a thread, used to identify
        # read and unread messages. For an example, see [Get details about a user's
        # thread read state](https://developers.google.com/workspace/chat/get-thread-
        # read-state). Requires [user authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-user) with one of the following [
        # authorization scopes](https://developers.google.com/workspace/chat/
        # authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/
        # chat.users.readstate.readonly` - `https://www.googleapis.com/auth/chat.users.
        # readstate`
        # @param [String] name
        #   Required. Resource name of the thread read state to retrieve. Only supports
        #   getting read state for the calling user. To refer to the calling user, set one
        #   of the following: - The `me` alias. For example, `users/me/spaces/`space`/
        #   threads/`thread`/threadReadState`. - Their Workspace email address. For
        #   example, `users/user@example.com/spaces/`space`/threads/`thread`/
        #   threadReadState`. - Their user id. For example, `users/123456789/spaces/`space`
        #   /threads/`thread`/threadReadState`. Format: users/`user`/spaces/`space`/
        #   threads/`thread`/threadReadState
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChatV1::ThreadReadState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChatV1::ThreadReadState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_space_thread_thread_read_state(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::ThreadReadState::Representation
          command.response_class = Google::Apis::ChatV1::ThreadReadState
          command.params['name'] = name unless name.nil?
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
