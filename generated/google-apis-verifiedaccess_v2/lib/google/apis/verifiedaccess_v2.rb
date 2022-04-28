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

require 'google/apis/verifiedaccess_v2/service.rb'
require 'google/apis/verifiedaccess_v2/classes.rb'
require 'google/apis/verifiedaccess_v2/representations.rb'
require 'google/apis/verifiedaccess_v2/gem_version.rb'

module Google
  module Apis
    # Chrome Verified Access API
    #
    # API for Verified Access chrome extension to provide credential verification
    # for chrome devices connecting to an enterprise network
    #
    # @see https://developers.google.com/chrome/verified-access
    module VerifiedaccessV2
      # Version of the Chrome Verified Access API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # Verify your enterprise credentials
      AUTH_VERIFIEDACCESS = 'https://www.googleapis.com/auth/verifiedaccess'
    end
  end
end
