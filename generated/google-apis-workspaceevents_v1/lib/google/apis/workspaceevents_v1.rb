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

require 'google/apis/workspaceevents_v1/service.rb'
require 'google/apis/workspaceevents_v1/classes.rb'
require 'google/apis/workspaceevents_v1/representations.rb'
require 'google/apis/workspaceevents_v1/gem_version.rb'

module Google
  module Apis
    # Google Workspace Events API
    #
    # The Google Workspace Events API lets you subscribe to events and manage change
    # notifications across Google Workspace applications.
    #
    # @see https://developers.google.com/workspace/events
    module WorkspaceeventsV1
      # Version of the Google Workspace Events API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Private Service: https://www.googleapis.com/auth/chat.bot
      AUTH_CHAT_BOT = 'https://www.googleapis.com/auth/chat.bot'

      # View, add, and remove members from conversations in Google Chat
      AUTH_CHAT_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.memberships'

      # View members in Google Chat conversations.
      AUTH_CHAT_MEMBERSHIPS_READONLY = 'https://www.googleapis.com/auth/chat.memberships.readonly'

      # View, compose, send, update, and delete messages, and add, view, and delete reactions to messages.
      AUTH_CHAT_MESSAGES = 'https://www.googleapis.com/auth/chat.messages'

      # View, add, and delete reactions to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS = 'https://www.googleapis.com/auth/chat.messages.reactions'

      # View reactions to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS_READONLY = 'https://www.googleapis.com/auth/chat.messages.reactions.readonly'

      # View messages and reactions in Google Chat
      AUTH_CHAT_MESSAGES_READONLY = 'https://www.googleapis.com/auth/chat.messages.readonly'

      # Create conversations and spaces and see or edit metadata (including history settings and access settings) in Google Chat
      AUTH_CHAT_SPACES = 'https://www.googleapis.com/auth/chat.spaces'

      # View chat and spaces in Google Chat
      AUTH_CHAT_SPACES_READONLY = 'https://www.googleapis.com/auth/chat.spaces.readonly'

      # Create, edit, and see information about your Google Meet conferences created by the app.
      AUTH_MEETINGS_SPACE_CREATED = 'https://www.googleapis.com/auth/meetings.space.created'

      # Read information about any of your Google Meet conferences
      AUTH_MEETINGS_SPACE_READONLY = 'https://www.googleapis.com/auth/meetings.space.readonly'
    end
  end
end
