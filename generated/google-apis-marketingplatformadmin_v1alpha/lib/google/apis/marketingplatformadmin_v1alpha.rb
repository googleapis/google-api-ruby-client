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

require 'google/apis/marketingplatformadmin_v1alpha/service.rb'
require 'google/apis/marketingplatformadmin_v1alpha/classes.rb'
require 'google/apis/marketingplatformadmin_v1alpha/representations.rb'
require 'google/apis/marketingplatformadmin_v1alpha/gem_version.rb'

module Google
  module Apis
    # Google Marketing Platform Admin API
    #
    # marketingplatformadmin.googleapis.com API.
    #
    # @see https://developers.google.com/analytics/devguides/config/gmp/v1
    module MarketingplatformadminV1alpha
      # Version of the Google Marketing Platform Admin API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha'

      # View your Google Analytics product account data in GMP home
      AUTH_MARKETINGPLATFORMADMIN_ANALYTICS_READ = 'https://www.googleapis.com/auth/marketingplatformadmin.analytics.read'

      # Manage your Google Analytics product account data in GMP home
      AUTH_MARKETINGPLATFORMADMIN_ANALYTICS_UPDATE = 'https://www.googleapis.com/auth/marketingplatformadmin.analytics.update'
    end
  end
end
