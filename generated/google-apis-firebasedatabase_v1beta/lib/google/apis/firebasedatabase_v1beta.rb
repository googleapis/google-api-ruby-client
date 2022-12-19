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

require 'google/apis/firebasedatabase_v1beta/service.rb'
require 'google/apis/firebasedatabase_v1beta/classes.rb'
require 'google/apis/firebasedatabase_v1beta/representations.rb'
require 'google/apis/firebasedatabase_v1beta/gem_version.rb'

module Google
  module Apis
    # Firebase Realtime Database API
    #
    # The Firebase Realtime Database API enables programmatic provisioning and
    # management of Realtime Database instances.
    #
    # @see https://firebase.google.com/docs/reference/rest/database/database-management/rest/
    module FirebasedatabaseV1beta
      # Version of the Firebase Realtime Database API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud services and see the email address of your Google Account
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # View and administer all your Firebase data and settings
      AUTH_FIREBASE = 'https://www.googleapis.com/auth/firebase'

      # View all your Firebase data and settings
      AUTH_FIREBASE_READONLY = 'https://www.googleapis.com/auth/firebase.readonly'
    end
  end
end
