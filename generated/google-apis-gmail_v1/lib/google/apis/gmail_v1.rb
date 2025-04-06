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

require 'google/apis/gmail_v1/service.rb'
require 'google/apis/gmail_v1/classes.rb'
require 'google/apis/gmail_v1/representations.rb'
require 'google/apis/gmail_v1/gem_version.rb'

module Google
  module Apis
    # Gmail API
    #
    # The Gmail API lets you view and manage Gmail mailbox data like threads,
    # messages, and labels.
    #
    # @see https://developers.google.com/workspace/gmail/api/
    module GmailV1
      # Version of the Gmail API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Read, compose, send, and permanently delete all your email from Gmail
      AUTH_SCOPE = 'https://mail.google.com/'

      # Manage drafts and send emails when you interact with the add-on
      AUTH_GMAIL_ADDONS_CURRENT_ACTION_COMPOSE = 'https://www.googleapis.com/auth/gmail.addons.current.action.compose'

      # View your email messages when you interact with the add-on
      AUTH_GMAIL_ADDONS_CURRENT_MESSAGE_ACTION = 'https://www.googleapis.com/auth/gmail.addons.current.message.action'

      # View your email message metadata when the add-on is running
      AUTH_GMAIL_ADDONS_CURRENT_MESSAGE_METADATA = 'https://www.googleapis.com/auth/gmail.addons.current.message.metadata'

      # View your email messages when the add-on is running
      AUTH_GMAIL_ADDONS_CURRENT_MESSAGE_READONLY = 'https://www.googleapis.com/auth/gmail.addons.current.message.readonly'

      # Manage drafts and send emails
      AUTH_GMAIL_COMPOSE = 'https://www.googleapis.com/auth/gmail.compose'

      # Add emails into your Gmail mailbox
      AUTH_GMAIL_INSERT = 'https://www.googleapis.com/auth/gmail.insert'

      # See and edit your email labels
      AUTH_GMAIL_LABELS = 'https://www.googleapis.com/auth/gmail.labels'

      # View your email message metadata such as labels and headers, but not the email body
      AUTH_GMAIL_METADATA = 'https://www.googleapis.com/auth/gmail.metadata'

      # Read, compose, and send emails from your Gmail account
      AUTH_GMAIL_MODIFY = 'https://www.googleapis.com/auth/gmail.modify'

      # View your email messages and settings
      AUTH_GMAIL_READONLY = 'https://www.googleapis.com/auth/gmail.readonly'

      # Send email on your behalf
      AUTH_GMAIL_SEND = 'https://www.googleapis.com/auth/gmail.send'

      # See, edit, create, or change your email settings and filters in Gmail
      AUTH_GMAIL_SETTINGS_BASIC = 'https://www.googleapis.com/auth/gmail.settings.basic'

      # Manage your sensitive mail settings, including who can manage your mail
      AUTH_GMAIL_SETTINGS_SHARING = 'https://www.googleapis.com/auth/gmail.settings.sharing'
    end
  end
end
