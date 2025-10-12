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

require 'google/apis/datamanager_v1/service.rb'
require 'google/apis/datamanager_v1/classes.rb'
require 'google/apis/datamanager_v1/representations.rb'
require 'google/apis/datamanager_v1/gem_version.rb'

module Google
  module Apis
    # Data Manager API
    #
    # A unified ingestion API for data partners, agencies and advertisers to connect
    # first-party data across Google advertising products.
    #
    # @see https://developers.google.com/data-manager
    module DatamanagerV1
      # Version of the Data Manager API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, create, import, or delete your customer data in Google Ads, Google Marketing Platform (Campaign Manager 360, Search Ads 360, Display & Video 360), and Google Analytics
      AUTH_DATAMANAGER = 'https://www.googleapis.com/auth/datamanager'
    end
  end
end
