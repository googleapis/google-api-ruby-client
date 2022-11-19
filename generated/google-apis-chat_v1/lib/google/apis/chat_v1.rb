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
    # Enables apps to fetch information and perform actions in Google Chat.
    # Authentication is a prerequisite for using the Google Chat REST API.
    #
    # @see https://developers.google.com/hangouts/chat
    module ChatV1
      # Version of the Google Chat API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # View, add, and remove members from conversations in Google Chat
      AUTH_CHAT_MEMBERSHIPS = 'https://www.googleapis.com/auth/chat.memberships'

      # View, compose, send, update, and delete messages, and add, view, and delete reactions to messages.
      AUTH_CHAT_MESSAGES = 'https://www.googleapis.com/auth/chat.messages'

      # Compose and send messages in Google Chat
      AUTH_CHAT_MESSAGES_CREATE = 'https://www.googleapis.com/auth/chat.messages.create'

      # view messages and reactions in Google Chat
      AUTH_CHAT_MESSAGES_READONLY = 'https://www.googleapis.com/auth/chat.messages.readonly'
    end
  end
end
