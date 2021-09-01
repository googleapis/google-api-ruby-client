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

require 'google/apis/osconfig_v1beta/service.rb'
require 'google/apis/osconfig_v1beta/classes.rb'
require 'google/apis/osconfig_v1beta/representations.rb'
require 'google/apis/osconfig_v1beta/gem_version.rb'

module Google
  module Apis
    # OS Config API
    #
    # OS management tools that can be used for patch management, patch compliance,
    # and configuration management on VM instances.
    #
    # @see https://cloud.google.com/compute/docs/osconfig/rest
    module OsconfigV1beta
      # Version of the OS Config API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
