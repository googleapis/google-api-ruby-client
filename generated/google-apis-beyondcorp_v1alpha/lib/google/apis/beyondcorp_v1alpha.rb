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

require 'google/apis/beyondcorp_v1alpha/service.rb'
require 'google/apis/beyondcorp_v1alpha/classes.rb'
require 'google/apis/beyondcorp_v1alpha/representations.rb'
require 'google/apis/beyondcorp_v1alpha/gem_version.rb'

module Google
  module Apis
    # BeyondCorp API
    #
    # Beyondcorp Enterprise provides identity and context aware access controls for
    # enterprise resources and enables zero-trust access. Using the Beyondcorp
    # Enterprise APIs, enterprises can set up multi-cloud and on-prem connectivity
    # using the App Connector hybrid connectivity solution.
    #
    # @see https://cloud.google.com/
    module BeyondcorpV1alpha
      # Version of the BeyondCorp API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
