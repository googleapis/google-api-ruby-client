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

require 'google/apis/chromepolicy_v1/service.rb'
require 'google/apis/chromepolicy_v1/classes.rb'
require 'google/apis/chromepolicy_v1/representations.rb'
require 'google/apis/chromepolicy_v1/gem_version.rb'

module Google
  module Apis
    # Chrome Policy API
    #
    # The Chrome Policy API is a suite of services that allows Chrome administrators
    # to control the policies applied to their managed Chrome OS devices and Chrome
    # browsers.
    #
    # @see http://developers.google.com/chrome/policy
    module ChromepolicyV1
      # Version of the Chrome Policy API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, create or delete policies applied to Chrome OS and Chrome Browsers managed within your organization
      AUTH_CHROME_MANAGEMENT_POLICY = 'https://www.googleapis.com/auth/chrome.management.policy'

      # See policies applied to Chrome OS and Chrome Browsers managed within your organization
      AUTH_CHROME_MANAGEMENT_POLICY_READONLY = 'https://www.googleapis.com/auth/chrome.management.policy.readonly'
    end
  end
end
