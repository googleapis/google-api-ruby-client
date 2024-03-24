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

require 'google/apis/iam_v2/service.rb'
require 'google/apis/iam_v2/classes.rb'
require 'google/apis/iam_v2/representations.rb'
require 'google/apis/iam_v2/gem_version.rb'

module Google
  module Apis
    # Identity and Access Management (IAM) API
    #
    # Manages identity and access control for Google Cloud resources, including the
    # creation of service accounts, which you can use to authenticate to Google and
    # make API calls. Enabling this API also enables the IAM Service Account
    # Credentials API (iamcredentials.googleapis.com). However, disabling this API
    # doesn't disable the IAM Service Account Credentials API.
    #
    # @see https://cloud.google.com/iam/
    module IamV2
      # Version of the Identity and Access Management (IAM) API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
