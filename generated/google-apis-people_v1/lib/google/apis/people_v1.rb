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

require 'google/apis/people_v1/service.rb'
require 'google/apis/people_v1/classes.rb'
require 'google/apis/people_v1/representations.rb'
require 'google/apis/people_v1/gem_version.rb'

module Google
  module Apis
    # People API
    #
    # Provides access to information about profiles and contacts.
    #
    # @see https://developers.google.com/people/
    module PeopleV1
      # Version of the People API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, download, and permanently delete your contacts
      AUTH_CONTACTS = 'https://www.googleapis.com/auth/contacts'

      # See and download contact info automatically saved in your "Other contacts"
      AUTH_CONTACTS_OTHER_READONLY = 'https://www.googleapis.com/auth/contacts.other.readonly'

      # See and download your contacts
      AUTH_CONTACTS_READONLY = 'https://www.googleapis.com/auth/contacts.readonly'

      # See and download your organization's Google Workspace directory
      AUTH_DIRECTORY_READONLY = 'https://www.googleapis.com/auth/directory.readonly'

      # View your street addresses
      AUTH_USER_ADDRESSES_READ = 'https://www.googleapis.com/auth/user.addresses.read'

      # See and download your exact date of birth
      AUTH_USER_BIRTHDAY_READ = 'https://www.googleapis.com/auth/user.birthday.read'

      # See and download all of your Google Account email addresses
      AUTH_USER_EMAILS_READ = 'https://www.googleapis.com/auth/user.emails.read'

      # See your gender
      AUTH_USER_GENDER_READ = 'https://www.googleapis.com/auth/user.gender.read'

      # See your education, work history and org info
      AUTH_USER_ORGANIZATION_READ = 'https://www.googleapis.com/auth/user.organization.read'

      # See and download your personal phone numbers
      AUTH_USER_PHONENUMBERS_READ = 'https://www.googleapis.com/auth/user.phonenumbers.read'

      # See your primary Google Account email address
      AUTH_USERINFO_EMAIL = 'https://www.googleapis.com/auth/userinfo.email'

      # See your personal info, including any personal info you've made publicly available
      AUTH_USERINFO_PROFILE = 'https://www.googleapis.com/auth/userinfo.profile'
    end
  end
end
