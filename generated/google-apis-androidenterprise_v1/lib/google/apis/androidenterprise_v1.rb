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

require 'google/apis/androidenterprise_v1/service.rb'
require 'google/apis/androidenterprise_v1/classes.rb'
require 'google/apis/androidenterprise_v1/representations.rb'
require 'google/apis/androidenterprise_v1/gem_version.rb'

module Google
  module Apis
    # Google Play EMM API
    #
    # Manages the deployment of apps to Android Enterprise devices.
    #
    # @see https://developers.google.com/android/work/play/emm-api
    module AndroidenterpriseV1
      # Version of the Google Play EMM API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Manage corporate Android devices
      AUTH_ANDROIDENTERPRISE = 'https://www.googleapis.com/auth/androidenterprise'
    end
  end
end
