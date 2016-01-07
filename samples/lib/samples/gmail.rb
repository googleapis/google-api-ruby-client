# Copyright 2016 Google Inc.
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

require 'google/apis/gmail_v1'
require 'base_cli'
require 'rmail'

module Samples
  # Examples for the Gmail API
  #
  # Sample usage:
  #
  #     $ ./google-api-samples gmail send 'Hello there!' \
  #       --to='recipient@example.com' --from='user@example.com' \
  #       --subject='Hello'
  #
  class Gmail < BaseCli
    Gmail = Google::Apis::GmailV1

    desc 'send TEXT', 'Send a message with the gmail API'
    method_option :to, type: :string, required: true
    method_option :from, type: :string, required: true
    method_option :subject, type: :string, required: true
    def send(body)
      gmail = Gmail::GmailService.new
      gmail.authorization = user_credentials_for(Gmail::AUTH_SCOPE)

      message = RMail::Message.new
      message.header['To'] = options[:to]
      message.header['From'] = options[:from]
      message.header['Subject'] = options[:subject]
      message.body = body

      gmail.send_user_message('me',
                              upload_source: StringIO.new(message.to_s),
                              content_type: 'message/rfc822')
    end
  end
end
