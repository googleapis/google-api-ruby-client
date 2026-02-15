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

require 'google/apis/run_v1/service.rb'
require 'google/apis/run_v1/classes.rb'
require 'google/apis/run_v1/representations.rb'
require 'google/apis/run_v1/gem_version.rb'

module Google
  module Apis
    # Cloud Run Admin API
    #
    # Deploy and manage user provided container images that scale automatically
    # based on incoming requests. The Cloud Run Admin API v1 follows the Knative
    # Serving API specification, while v2 is aligned with Google Cloud AIP-based API
    # standards, as described in https://google.aip.dev/.
    #
    # @see https://cloud.google.com/run/
    module RunV1
      # Version of the Cloud Run Admin API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # See, edit, configure, and delete your Google Cloud Run data and see the email address for your Google Account
      AUTH_RUN = 'https://www.googleapis.com/auth/run'

      # See your Google Cloud Run data and the email address of your Google Account
      AUTH_RUN_READONLY = 'https://www.googleapis.com/auth/run.readonly'
    end
  end
end
