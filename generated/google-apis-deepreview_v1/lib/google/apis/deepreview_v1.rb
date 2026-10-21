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

require 'google/apis/deepreview_v1/service.rb'
require 'google/apis/deepreview_v1/classes.rb'
require 'google/apis/deepreview_v1/representations.rb'
require 'google/apis/deepreview_v1/gem_version.rb'

module Google
  module Apis
    # Deep Review API
    #
    # Deep Review API for automated, in-depth document reviews.
    #
    # @see https://research.google/deepreview
    module DeepreviewV1
      # Version of the Deep Review API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, create, and delete only the specific Google Drive files you use with this app
      AUTH_DRIVE_FILE = 'https://www.googleapis.com/auth/drive.file'
    end
  end
end
