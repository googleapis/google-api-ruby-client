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

require 'google/apis/analyticsadmin_v1beta/service.rb'
require 'google/apis/analyticsadmin_v1beta/classes.rb'
require 'google/apis/analyticsadmin_v1beta/representations.rb'
require 'google/apis/analyticsadmin_v1beta/gem_version.rb'

module Google
  module Apis
    # Google Analytics Admin API
    #
    # 
    #
    # @see http://code.google.com/apis/analytics/docs/mgmt/home.html
    module AnalyticsadminV1beta
      # Version of the Google Analytics Admin API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta'

      # Edit Google Analytics management entities
      AUTH_ANALYTICS_EDIT = 'https://www.googleapis.com/auth/analytics.edit'

      # See and download your Google Analytics data
      AUTH_ANALYTICS_READONLY = 'https://www.googleapis.com/auth/analytics.readonly'
    end
  end
end
