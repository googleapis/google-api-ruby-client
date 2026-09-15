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

require 'google/apis/agenciesandbrands_v1/service.rb'
require 'google/apis/agenciesandbrands_v1/classes.rb'
require 'google/apis/agenciesandbrands_v1/representations.rb'
require 'google/apis/agenciesandbrands_v1/gem_version.rb'

module Google
  module Apis
    # Agencies and Brands API
    #
    # Agencies and brands API is an externally available HTTP API for ad agencies
    # and brands to programmatically manage their deals and spending with Google Ad
    # Manager publishers.
    #
    # @see https://developers.google.com/authorized-buyers/agencies-and-brands/get-started/start
    module AgenciesandbrandsV1
      # Version of the Agencies and Brands API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # View, create, edit, and delete data entities in your Agency account.
      AUTH_AGENCIES_AND_BRANDS = 'https://www.googleapis.com/auth/agencies-and-brands'
    end
  end
end
