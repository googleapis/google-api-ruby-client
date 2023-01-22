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

require 'google/apis/cloudasset_v1beta1/service.rb'
require 'google/apis/cloudasset_v1beta1/classes.rb'
require 'google/apis/cloudasset_v1beta1/representations.rb'
require 'google/apis/cloudasset_v1beta1/gem_version.rb'

module Google
  module Apis
    # Cloud Asset API
    #
    # The Cloud Asset API manages the history and inventory of Google Cloud
    # resources.
    #
    # @see https://cloud.google.com/asset-inventory/docs/quickstart
    module CloudassetV1beta1
      # Version of the Cloud Asset API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
