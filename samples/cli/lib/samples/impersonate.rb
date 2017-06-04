# Copyright 2017 Google Inc.
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

module Samples
  # Examples for the Gmail API
  #
  # Sample usage:
  #
  #     $ ./google-api-samples impersonate update_email_signature 'My new signature!' \
  #       --impersonated_email='user@example.com'
  #
  class Gmail < BaseCli
    Gmail = Google::Apis::GmailV1

    desc 'impersonate and update email signature', 'Update the email signature of another user'

    method_option :impersonated_email, type: :string, required: true

    def update_email_signature(new_signature_content)
      gmail = Gmail::GmailService.new

      # You can download a client_secret.json form the service account page
      # of your developers console

      attrs = {
        json_key_io: 'client_secret.json',
        scope: [ Gmail::AUTH_GMAIL_SETTINGS_BASIC ]
      }

      auth = Google::Auth::ServiceAccountCredentials.make_creds(attrs)
      impersonate_auth = auth.dup
      impersonate_auth.sub = impersonated_email

      user_id = impersonated_email
      send_as_email = update_user_setting_send_as


      gmail.authorization = impersonate_auth

      send_as_object = {"signature": new_signature_content}
      # options: {} is necessary for method to be called correctly.
      result = service.patch_user_setting_send_as(user_id, send_as_email, send_as_object, options: {})


      puts "signature of #{impersonated_email} is now: #{result.signature}"
    end
  end
end
