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

require 'google/apis/keep_v1/service.rb'
require 'google/apis/keep_v1/classes.rb'
require 'google/apis/keep_v1/representations.rb'
require 'google/apis/keep_v1/gem_version.rb'

module Google
  module Apis
    # Google Keep API
    #
    # This API is an enterprise-only API used to create and manage the Keep notes
    # within your domain, including resolving issues identified by CASB software.
    #
    # @see https://developers.google.com/keep/api
    module KeepV1
      # Version of the Google Keep API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, create and permanently delete all your Google Keep data
      AUTH_KEEP = 'https://www.googleapis.com/auth/keep'
    end
  end
end
