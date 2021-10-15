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

require 'google/apis/adsense_v2/service.rb'
require 'google/apis/adsense_v2/classes.rb'
require 'google/apis/adsense_v2/representations.rb'
require 'google/apis/adsense_v2/gem_version.rb'

module Google
  module Apis
    # AdSense Management API
    #
    # The AdSense Management API allows publishers to access their inventory and run
    # earnings and performance reports.
    #
    # @see https://developers.google.com/adsense/management/
    module AdsenseV2
      # Version of the AdSense Management API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # View and manage your AdSense data
      AUTH_ADSENSE = 'https://www.googleapis.com/auth/adsense'

      # View your AdSense data
      AUTH_ADSENSE_READONLY = 'https://www.googleapis.com/auth/adsense.readonly'
    end
  end
end
