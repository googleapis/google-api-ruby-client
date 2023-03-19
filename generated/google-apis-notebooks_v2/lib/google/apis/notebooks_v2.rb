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

require 'google/apis/notebooks_v2/service.rb'
require 'google/apis/notebooks_v2/classes.rb'
require 'google/apis/notebooks_v2/representations.rb'
require 'google/apis/notebooks_v2/gem_version.rb'

module Google
  module Apis
    # Notebooks API
    #
    # Notebooks API is used to manage notebook resources in Google Cloud.
    #
    # @see https://cloud.google.com/notebooks/docs/
    module NotebooksV2
      # Version of the Notebooks API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
