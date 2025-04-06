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

require 'google/apis/chat_v1/service.rb'
require 'google/apis/chat_v1/classes.rb'
require 'google/apis/chat_v1/representations.rb'
require 'google/apis/chat_v1/gem_version.rb'

module Google
  module Apis
    # Google Chat API
    #
    # The Google Chat API lets you build Chat apps to integrate your services with
    # Google Chat and manage Chat resources such as spaces, members, and messages.
    #
    # @see https://developers.google.com/hangouts/chat
    module ChatV1
      # Version of the Google Chat API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Delete conversations and spaces owned by your organization and remove access to associated files in Google Chat
      AUTH_CHAT_ADMIN_DELETE = 'https://www.googleapis.com/auth/chat.admin.delete'

      # View, add, update and remove members and managers in conversations owned by your organization
      AUTH_CHAT_ADMIN_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.admin.memberships'

      # View members and managers in conversations owned by your organization
      AUTH_CHAT_ADMIN_MEMBERSHIPS_READONLY = 'https://www.googleapis.com/auth/chat.admin.memberships.readonly'

      # View or edit display name, description, and other metadata for all Google Chat conversations owned by your organization
      AUTH_CHAT_ADMIN_SPACES = 'https://www.googleapis.com/auth/chat.admin.spaces'

      # View display name, description, and other metadata for all Google Chat conversations owned by your organization
      AUTH_CHAT_ADMIN_SPACES_READONLY = 'https://www.googleapis.com/auth/chat.admin.spaces.readonly'

      # On their own behalf, apps in Google Chat can delete conversations and spaces and remove access to associated files
      AUTH_CHAT_APP_DELETE = 'https://www.googleapis.com/auth/chat.app.delete'

      # On their own behalf, apps in Google Chat can see, add, update, and remove members from conversations and spaces
      AUTH_CHAT_APP_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.app.memberships'

      # On their own behalf, apps in Google Chat can create conversations and spaces and see or update their metadata (including history settings and access settings)
      AUTH_CHAT_APP_SPACES = 'https://www.googleapis.com/auth/chat.app.spaces'

      # On their own behalf, apps in Google Chat can create conversations and spaces
      AUTH_CHAT_APP_SPACES_CREATE = 'https://www.googleapis.com/auth/chat.app.spaces.create'

      # Private Service: https://www.googleapis.com/auth/chat.bot
      AUTH_CHAT_BOT = 'https://www.googleapis.com/auth/chat.bot'

      # View, create, and delete custom emoji in Google Chat
      AUTH_CHAT_CUSTOMEMOJIS = 'https://www.googleapis.com/auth/chat.customemojis'

      # View custom emoji in Google Chat
      AUTH_CHAT_CUSTOMEMOJIS_READONLY = 'https://www.googleapis.com/auth/chat.customemojis.readonly'

      # Delete conversations and spaces and remove access to associated files in Google Chat
      AUTH_CHAT_DELETE = 'https://www.googleapis.com/auth/chat.delete'

      # Import spaces, messages, and memberships into Google Chat.
      AUTH_CHAT_IMPORT = 'https://www.googleapis.com/auth/chat.import'

      # See, add, update, and remove members from conversations and spaces in Google Chat
      AUTH_CHAT_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.memberships'

      # Add and remove itself from conversations and spaces in Google Chat
      AUTH_CHAT_MEMBERSHIPS_APP = 'https://www.googleapis.com/auth/chat.memberships.app'

      # View members in Google Chat conversations.
      AUTH_CHAT_MEMBERSHIPS_READONLY = 'https://www.googleapis.com/auth/chat.memberships.readonly'

      # See, compose, send, update, and delete messages as well as their message content; add, see, and delete reactions to messages.
      AUTH_CHAT_MESSAGES = 'https://www.googleapis.com/auth/chat.messages'

      # Compose and send messages in Google Chat
      AUTH_CHAT_MESSAGES_CREATE = 'https://www.googleapis.com/auth/chat.messages.create'

      # See, add, and delete reactions as well as their reaction content to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS = 'https://www.googleapis.com/auth/chat.messages.reactions'

      # Add reactions to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS_CREATE = 'https://www.googleapis.com/auth/chat.messages.reactions.create'

      # View reactions as well as their reaction content to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS_READONLY = 'https://www.googleapis.com/auth/chat.messages.reactions.readonly'

      # See messages as well as their reactions and message content in Google Chat
      AUTH_CHAT_MESSAGES_READONLY = 'https://www.googleapis.com/auth/chat.messages.readonly'

      # Create conversations and spaces and see or update metadata (including history settings and access settings) in Google Chat
      AUTH_CHAT_SPACES = 'https://www.googleapis.com/auth/chat.spaces'

      # Create new conversations and spaces in Google Chat
      AUTH_CHAT_SPACES_CREATE = 'https://www.googleapis.com/auth/chat.spaces.create'

      # View chat and spaces in Google Chat
      AUTH_CHAT_SPACES_READONLY = 'https://www.googleapis.com/auth/chat.spaces.readonly'

      # View and modify last read time for Google Chat conversations
      AUTH_CHAT_USERS_READSTATE = 'https://www.googleapis.com/auth/chat.users.readstate'

      # View last read time for Google Chat conversations
      AUTH_CHAT_USERS_READSTATE_READONLY = 'https://www.googleapis.com/auth/chat.users.readstate.readonly'

      # Read and update your space settings
      AUTH_CHAT_USERS_SPACESETTINGS = 'https://www.googleapis.com/auth/chat.users.spacesettings'
    end
  end
end
