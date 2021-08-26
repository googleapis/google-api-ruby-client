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

require 'google/apis/dataflow_v1b3/service.rb'
require 'google/apis/dataflow_v1b3/classes.rb'
require 'google/apis/dataflow_v1b3/representations.rb'
require 'google/apis/dataflow_v1b3/gem_version.rb'

module Google
  module Apis
    # Dataflow API
    #
    # Manages Google Cloud Dataflow projects on Google Cloud Platform.
    #
    # @see https://cloud.google.com/dataflow
    module DataflowV1b3
      # Version of the Dataflow API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1b3'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View and manage your Google Compute Engine resources
      AUTH_COMPUTE = 'https://www.googleapis.com/auth/compute'

      # View your Google Compute Engine resources
      AUTH_COMPUTE_READONLY = 'https://www.googleapis.com/auth/compute.readonly'

      # See your primary Google Account email address
      AUTH_USERINFO_EMAIL = 'https://www.googleapis.com/auth/userinfo.email'
    end
  end
end
