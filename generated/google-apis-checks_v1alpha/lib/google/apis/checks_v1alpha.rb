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

require 'google/apis/checks_v1alpha/service.rb'
require 'google/apis/checks_v1alpha/classes.rb'
require 'google/apis/checks_v1alpha/representations.rb'
require 'google/apis/checks_v1alpha/gem_version.rb'

module Google
  module Apis
    # Checks API
    #
    # The Checks API contains powerful and easy-to-use privacy and compliance APIs
    # that interact with the Checks product and its underlying technology.
    #
    # @see https://developers.google.com/checks
    module ChecksV1alpha
      # Version of the Checks API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha'

      # Test scope for access to the Zoo service
      AUTH_XAPI_ZOO = 'https://www.googleapis.com/auth/xapi.zoo'
    end
  end
end
