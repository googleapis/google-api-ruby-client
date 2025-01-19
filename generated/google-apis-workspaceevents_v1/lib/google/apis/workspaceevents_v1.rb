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

      # See, add, update, and remove members from conversations and spaces in Google Chat
      AUTH_CHAT_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.memberships'

      # View members in Google Chat conversations.
      AUTH_CHAT_MEMBERSHIPS_READONLY = 'https://www.googleapis.com/auth/chat.memberships.readonly'

      # See, compose, send, update, and delete messages as well as their message content; add, see, and delete reactions to messages.
      AUTH_CHAT_MESSAGES = 'https://www.googleapis.com/auth/chat.messages'

      # See, add, and delete reactions as well as their reaction content to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS = 'https://www.googleapis.com/auth/chat.messages.reactions'

      # View reactions as well as their reaction content to messages in Google Chat
      AUTH_CHAT_MESSAGES_REACTIONS_READONLY = 'https://www.googleapis.com/auth/chat.messages.reactions.readonly'

      # See messages as well as their reactions and message content in Google Chat
      AUTH_CHAT_MESSAGES_READONLY = 'https://www.googleapis.com/auth/chat.messages.readonly'

      # Create conversations and spaces and see or update metadata (including history settings and access settings) in Google Chat
      AUTH_CHAT_SPACES = 'https://www.googleapis.com/auth/chat.spaces'

      # View chat and spaces in Google Chat
      AUTH_CHAT_SPACES_READONLY = 'https://www.googleapis.com/auth/chat.spaces.readonly'

      # See, edit, create, and delete all of your Google Drive files
      AUTH_DRIVE = 'https://www.googleapis.com/auth/drive'

      # See, edit, create, and delete only the specific Google Drive files you use with this app
      AUTH_DRIVE_FILE = 'https://www.googleapis.com/auth/drive.file'

      # View and manage metadata of files in your Google Drive
      AUTH_DRIVE_METADATA = 'https://www.googleapis.com/auth/drive.metadata'

      # See information about your Google Drive files
      AUTH_DRIVE_METADATA_READONLY = 'https://www.googleapis.com/auth/drive.metadata.readonly'

      # See and download all your Google Drive files
      AUTH_DRIVE_READONLY = 'https://www.googleapis.com/auth/drive.readonly'

      # Create, edit, and see information about your Google Meet conferences created by the app.
      AUTH_MEETINGS_SPACE_CREATED = 'https://www.googleapis.com/auth/meetings.space.created'

      # Read information about any of your Google Meet conferences
      AUTH_MEETINGS_SPACE_READONLY = 'https://www.googleapis.com/auth/meetings.space.readonly'
    end
  end
end
