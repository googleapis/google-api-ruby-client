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

require 'google/apis/searchads360_v0/service.rb'
require 'google/apis/searchads360_v0/classes.rb'
require 'google/apis/searchads360_v0/representations.rb'
require 'google/apis/searchads360_v0/gem_version.rb'

module Google
  module Apis
    # Search Ads 360 Reporting API
    #
    # The Search Ads 360 API allows developers to automate downloading reports from
    # Search Ads 360.
    #
    # @see https://developers.google.com/search-ads/reporting
    module Searchads360V0
      # Version of the Search Ads 360 Reporting API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V0'

      # View and manage your advertising data in DoubleClick Search
      AUTH_DOUBLECLICKSEARCH = 'https://www.googleapis.com/auth/doubleclicksearch'
    end
  end
end
