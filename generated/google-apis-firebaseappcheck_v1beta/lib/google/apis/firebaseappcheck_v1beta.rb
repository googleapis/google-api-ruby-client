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

require 'google/apis/firebaseappcheck_v1beta/service.rb'
require 'google/apis/firebaseappcheck_v1beta/classes.rb'
require 'google/apis/firebaseappcheck_v1beta/representations.rb'
require 'google/apis/firebaseappcheck_v1beta/gem_version.rb'

module Google
  module Apis
    # Firebase App Check API
    #
    # App Check works alongside other Firebase services to help protect your backend
    # resources from abuse, such as billing fraud or phishing. With App Check,
    # devices running your app will use an app or device attestation provider that
    # attests to one or both of the following: * Requests originate from your
    # authentic app * Requests originate from an authentic, untampered device This
    # attestation is attached to every request your app makes to your Firebase
    # backend resources. The Firebase App Check REST API allows you to manage your
    # App Check configurations programmatically. It also allows you to exchange
    # attestation material for App Check tokens directly without using a Firebase
    # SDK. Finally, it allows you to obtain the public key set necessary to validate
    # an App Check token yourself. [Learn more about App Check](https://firebase.
    # google.com/docs/app-check).
    #
    # @see https://firebase.google.com/docs/app-check
    module FirebaseappcheckV1beta
      # Version of the Firebase App Check API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View and administer all your Firebase data and settings
      AUTH_FIREBASE = 'https://www.googleapis.com/auth/firebase'
    end
  end
end
