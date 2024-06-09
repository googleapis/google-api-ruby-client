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

      # Private Service: https://www.googleapis.com/auth/chat.bot
      AUTH_CHAT_BOT = 'https://www.googleapis.com/auth/chat.bot'

      # Delete conversations and spaces & remove access to associated files in Google Chat
      AUTH_CHAT_DELETE = 'https://www.googleapis.com/auth/chat.delete'

      # Import spaces, messages, and memberships into Google Chat.
      AUTH_CHAT_IMPORT = 'https://www.googleapis.com/auth/chat.import'

      # View, add, update, and remove members from conversations in Google Chat
      AUTH_CHAT_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.memberships'

      # Add and remove itself from conversations in Google Chat
      AUTH_CHAT_MEMBERSHIPS_APP = 'https://www.googleapis.com/auth/chat.memberships.app'

      # View members in Google Chat conversations.
      AUTH_CHAT_MEMBERSHIPS_READONLY = 'https://www.googleapis.com/auth/chat.memberships.readonly'

      # View, compose, send, update, and delete messages, and add, view, and delete reactions to messages.
      AUTH_CHAT_MESSAGES = 'https://www.googleapis.com/auth/chat.messages'

      # Compose and send messages in Google Chat
      AUTH_CHAT_MESSAGES_CREATE = 'https://www.googleapis.com/auth/chat.messages.create'

      # View, add, and delete reactions to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS = 'https://www.googleapis.com/auth/chat.messages.reactions'

      # Add reactions to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS_CREATE = 'https://www.googleapis.com/auth/chat.messages.reactions.create'

      # View reactions to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS_READONLY = 'https://www.googleapis.com/auth/chat.messages.reactions.readonly'

      # View messages and reactions in Google Chat
      AUTH_CHAT_MESSAGES_READONLY = 'https://www.googleapis.com/auth/chat.messages.readonly'

      # Create conversations and spaces and see or edit metadata (including history settings and access settings) in Google Chat
      AUTH_CHAT_SPACES = 'https://www.googleapis.com/auth/chat.spaces'

      # Create new conversations in Google Chat
      AUTH_CHAT_SPACES_CREATE = 'https://www.googleapis.com/auth/chat.spaces.create'

      # View chat and spaces in Google Chat
      AUTH_CHAT_SPACES_READONLY = 'https://www.googleapis.com/auth/chat.spaces.readonly'

      # View and modify last read time for Google Chat conversations
      AUTH_CHAT_USERS_READSTATE = 'https://www.googleapis.com/auth/chat.users.readstate'

      # View last read time for Google Chat conversations
      AUTH_CHAT_USERS_READSTATE_READONLY = 'https://www.googleapis.com/auth/chat.users.readstate.readonly'
    end
  end
end
