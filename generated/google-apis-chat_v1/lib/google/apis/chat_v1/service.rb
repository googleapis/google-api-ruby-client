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
      # Enables apps to fetch information and perform actions in Google Chat.
      #  Authentication is a prerequisite for using the Google Chat REST API.
      #
      # @example
      #    require 'google/apis/chat_v1'
      #
      #    Chat = Google::Apis::ChatV1 # Alias the module
      #    service = Chat::HangoutsChatService.new
      #
      # @see https://developers.google.com/hangouts/chat
      class HangoutsChatService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://chat.googleapis.com/', '',
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
        
        # Returns a space. Requires [authentication](https://developers.google.com/chat/
        # api/guides/auth). Fully supports [service account authentication](https://
        # developers.google.com/chat/api/guides/auth/service-accounts). Supports [user
        # authentication](https://developers.google.com/chat/api/guides/auth/users) as
        # part of the [Google Workspace Developer Preview Program](https://developers.
        # google.com/workspace/preview), which grants early access to certain features. [
        # User authentication](https://developers.google.com/chat/api/guides/auth/users)
        # requires the `chat.spaces` or `chat.spaces.readonly` authorization scope.
        # @param [String] name
        #   Required. Resource name of the space, in the form "spaces/*". Format: spaces/`
        #   space`
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
        
        # Lists spaces the caller is a member of. Requires [authentication](https://
        # developers.google.com/chat/api/guides/auth). Fully supports [service account
        # authentication](https://developers.google.com/chat/api/guides/auth/service-
        # accounts). Supports [user authentication](https://developers.google.com/chat/
        # api/guides/auth/users) as part of the [Google Workspace Developer Preview
        # Program](https://developers.google.com/workspace/preview), which grants early
        # access to certain features. [User authentication](https://developers.google.
        # com/chat/api/guides/auth/users) requires the `chat.spaces` or `chat.spaces.
        # readonly` authorization scope. Lists spaces visible to the caller or
        # authenticated user. Group chats and DMs aren't listed until the first message
        # is sent.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of spaces to return. The service may return fewer
        #   than this value. If unspecified, at most 100 spaces are returned. The maximum
        #   value is 1000; values above 1000 are coerced to 1000. Negative values return
        #   an `INVALID_ARGUMENT` error.
        # @param [String] page_token
        #   Optional. A page token, received from a previous list spaces call. Provide
        #   this to retrieve the subsequent page. When paginating, the filter value should
        #   match the call that provided the page token. Passing a different value may
        #   lead to unexpected results.
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
        def list_spaces(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/spaces', options)
          command.response_representation = Google::Apis::ChatV1::ListSpacesResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListSpacesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a membership. Requires [authentication](https://developers.google.com/
        # chat/api/guides/auth/). Fully supports [service account authentication](https:/
        # /developers.google.com/chat/api/guides/auth/service-accounts). Supports [user
        # authentication](https://developers.google.com/chat/api/guides/auth/users) as
        # part of the [Google Workspace Developer Preview Program](https://developers.
        # google.com/workspace/preview), which grants early access to certain features. [
        # User authentication](https://developers.google.com/chat/api/guides/auth/users)
        # requires the `chat.memberships` or `chat.memberships.readonly` authorization
        # scope.
        # @param [String] name
        #   Required. Resource name of the membership to retrieve. Format: spaces/`space`/
        #   members/`member`
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
        
        # Lists memberships in a space. Requires [authentication](https://developers.
        # google.com/chat/api/guides/auth/). Fully supports [service account
        # authentication](https://developers.google.com/chat/api/guides/auth/service-
        # accounts). Supports [user authentication](https://developers.google.com/chat/
        # api/guides/auth/users) as part of the [Google Workspace Developer Preview
        # Program](https://developers.google.com/workspace/preview), which grants early
        # access to certain features. [User authentication](https://developers.google.
        # com/chat/api/guides/auth/users) requires the `chat.memberships` or `chat.
        # memberships.readonly` authorization scope.
        # @param [String] parent
        #   Required. The resource name of the space for which to fetch a membership list.
        #   Format: spaces/`space`
        # @param [Fixnum] page_size
        #   The maximum number of memberships to return. The service may return fewer than
        #   this value. If unspecified, at most 100 memberships are returned. The maximum
        #   value is 1000; values above 1000 are coerced to 1000. Negative values return
        #   an INVALID_ARGUMENT error.
        # @param [String] page_token
        #   A page token, received from a previous call to list memberships. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided should match the call that provided the page token. Passing different
        #   values to the other parameters may lead to unexpected results.
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
        def list_space_members(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/members', options)
          command.response_representation = Google::Apis::ChatV1::ListMembershipsResponse::Representation
          command.response_class = Google::Apis::ChatV1::ListMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a message. For example usage, see [Create a message](https://
        # developers.google.com/chat/api/guides/crudl/messages#create_a_message).
        # Requires [authentication](https://developers.google.com/chat/api/guides/auth).
        # Fully supports [service account authentication](https://developers.google.com/
        # chat/api/guides/auth/service-accounts). Supports [user authentication](https://
        # developers.google.com/chat/api/guides/auth/users) as part of the [Google
        # Workspace Developer Preview Program](https://developers.google.com/workspace/
        # preview), which grants early access to certain features. [User authentication](
        # https://developers.google.com/chat/api/guides/auth/users) requires the `chat.
        # messages` or `chat.messages.create` authorization scope. Because Chat provides
        # authentication for [webhooks](https://developers.google.com/chat/how-tos/
        # webhooks) as part of the URL that's generated when a webhook is registered,
        # webhooks can create messages without a service account or user authentication.
        # @param [String] parent
        #   Required. The resource name of the space in which to create a message. Format:
        #   spaces/`space`
        # @param [Google::Apis::ChatV1::Message] message_object
        # @param [String] message_id
        #   Optional. A custom name for a Chat message assigned at creation. Must start
        #   with `client-` and contain only lowercase letters, numbers, and hyphens up to
        #   63 characters in length. Specify this field to get, update, or delete the
        #   message with the specified value. For example usage, see [Name a created
        #   message](https://developers.google.com/chat/api/guides/crudl/messages#
        #   name_a_created_message).
        # @param [String] message_reply_option
        #   Optional. Specifies whether a message starts a thread or replies to one. Only
        #   supported in named spaces.
        # @param [String] request_id
        #   Optional. A unique request ID for this message. Specifying an existing request
        #   ID returns the message created with that ID instead of creating a new message.
        # @param [String] thread_key
        #   Optional. Deprecated: Use thread.thread_key instead. Opaque thread identifier.
        #   To start or add to a thread, create a message and specify a `threadKey` or the
        #   thread.name. For example usage, see [Start or reply to a message thread](https:
        #   //developers.google.com/chat/api/guides/crudl/messages#
        #   start_or_reply_to_a_message_thread).
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
        
        # Deletes a message. For example usage, see [Delete a message](https://
        # developers.google.com/chat/api/guides/crudl/messages#delete_a_message).
        # Requires [authentication](https://developers.google.com/chat/api/guides/auth).
        # Fully supports [service account authentication](https://developers.google.com/
        # chat/api/guides/auth/service-accounts). Supports [user authentication](https://
        # developers.google.com/chat/api/guides/auth/users) as part of the [Google
        # Workspace Developer Preview Program](https://developers.google.com/workspace/
        # preview), which grants early access to certain features. [User authentication](
        # https://developers.google.com/chat/api/guides/auth/users) requires the `chat.
        # messages` authorization scope.
        # @param [String] name
        #   Required. Resource name of the message to be deleted, in the form "spaces/*/
        #   messages/*" Example: spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB
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
        def delete_space_message(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChatV1::Empty::Representation
          command.response_class = Google::Apis::ChatV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a message. For example usage, see [Read a message](https://developers.
        # google.com/chat/api/guides/crudl/messages#read_a_message). Requires [
        # authentication](https://developers.google.com/chat/api/guides/auth). Fully
        # supports [Service account authentication](https://developers.google.com/chat/
        # api/guides/auth/service-accounts). Supports [user authentication](https://
        # developers.google.com/chat/api/guides/auth/users) as part of the [Google
        # Workspace Developer Preview Program](https://developers.google.com/workspace/
        # preview), which grants early access to certain features. [User authentication](
        # https://developers.google.com/chat/api/guides/auth/users) requires the `chat.
        # messages` or `chat.messages.readonly` authorization scope. Note: Might return
        # a message from a blocked member or space.
        # @param [String] name
        #   Required. Resource name of the message to retrieve. Format: spaces/`space`/
        #   messages/`message` If the message begins with `client-`, then it has a custom
        #   name assigned by a Chat app that created it with the Chat REST API. That Chat
        #   app (but not others) can pass the custom name to get, update, or delete the
        #   message. To learn more, see [create and name a message] (https://developers.
        #   google.com/chat/api/guides/crudl/messages#name_a_created_message).
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
        
        # Updates a message. There's a difference between `patch` and `update` methods.
        # The `patch` method uses a `patch` request while the `update` method uses a `
        # put` request. We recommend using the `patch` method. For example usage, see [
        # Update a message](https://developers.google.com/chat/api/guides/crudl/messages#
        # update_a_message). Requires [authentication](https://developers.google.com/
        # chat/api/guides/auth/). Fully supports [service account authentication](https:/
        # /developers.google.com/chat/api/guides/auth/service-accounts). Supports [user
        # authentication](https://developers.google.com/chat/api/guides/auth/users) as
        # part of the [Google Workspace Developer Preview Program](https://developers.
        # google.com/workspace/preview), which grants early access to certain features. [
        # User authentication](https://developers.google.com/chat/api/guides/auth/users)
        # requires the `chat.messages` authorization scope.
        # @param [String] name
        #   Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/
        #   messages/BBBBBBBBBBB.BBBBBBBBBBB`
        # @param [Google::Apis::ChatV1::Message] message_object
        # @param [Boolean] allow_missing
        #   Optional. If `true` and the message is not found, a new message is created and
        #   `updateMask` is ignored. The specified message ID must be [client-assigned](
        #   https://developers.google.com/chat/api/guides/crudl/messages#
        #   name_a_created_message) or the request fails.
        # @param [String] update_mask
        #   Required. The field paths to update. Separate multiple values with commas.
        #   Currently supported field paths: - text - cards (Requires [service account
        #   authentication](/chat/api/guides/auth/service-accounts).) - cards_v2
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
        
        # Updates a message. There's a difference between `patch` and `update` methods.
        # The `patch` method uses a `patch` request while the `update` method uses a `
        # put` request. We recommend using the `patch` method. For example usage, see [
        # Update a message](https://developers.google.com/chat/api/guides/crudl/messages#
        # update_a_message). Requires [authentication](https://developers.google.com/
        # chat/api/guides/auth/). Fully supports [service account authentication](https:/
        # /developers.google.com/chat/api/guides/auth/service-accounts). Supports [user
        # authentication](https://developers.google.com/chat/api/guides/auth/users) as
        # part of the [Google Workspace Developer Preview Program](https://developers.
        # google.com/workspace/preview), which grants early access to certain features. [
        # User authentication](https://developers.google.com/chat/api/guides/auth/users)
        # requires the `chat.messages` authorization scope.
        # @param [String] name
        #   Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/
        #   messages/BBBBBBBBBBB.BBBBBBBBBBB`
        # @param [Google::Apis::ChatV1::Message] message_object
        # @param [Boolean] allow_missing
        #   Optional. If `true` and the message is not found, a new message is created and
        #   `updateMask` is ignored. The specified message ID must be [client-assigned](
        #   https://developers.google.com/chat/api/guides/crudl/messages#
        #   name_a_created_message) or the request fails.
        # @param [String] update_mask
        #   Required. The field paths to update. Separate multiple values with commas.
        #   Currently supported field paths: - text - cards (Requires [service account
        #   authentication](/chat/api/guides/auth/service-accounts).) - cards_v2
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
        # using the [media API](https://developers.google.com/chat/api/reference/rest/v1/
        # media/download). Requires [service account authentication](https://developers.
        # google.com/chat/api/guides/auth/service-accounts).
        # @param [String] name
        #   Required. Resource name of the attachment, in the form "spaces/*/messages/*/
        #   attachments/*".
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

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
