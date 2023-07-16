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

require 'google/apis/smartdevicemanagement_v1/service.rb'
require 'google/apis/smartdevicemanagement_v1/classes.rb'
require 'google/apis/smartdevicemanagement_v1/representations.rb'
require 'google/apis/smartdevicemanagement_v1/gem_version.rb'

module Google
  module Apis
    # Smart Device Management API
    #
    # Allow select enterprise partners to access, control, and manage Google and
    # Nest devices programmatically.
    #
    # @see https://developers.google.com/nest/device-access
    module SmartdevicemanagementV1
      # Version of the Smart Device Management API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See and/or control the devices that you selected
      AUTH_SDM_SERVICE = 'https://www.googleapis.com/auth/sdm.service'

      # See your primary Google Account email address
      AUTH_USERINFO_EMAIL = 'https://www.googleapis.com/auth/userinfo.email'
    end
  end
end
