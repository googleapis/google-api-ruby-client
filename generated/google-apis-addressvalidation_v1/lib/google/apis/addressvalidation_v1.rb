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

require 'google/apis/addressvalidation_v1/service.rb'
require 'google/apis/addressvalidation_v1/classes.rb'
require 'google/apis/addressvalidation_v1/representations.rb'
require 'google/apis/addressvalidation_v1/gem_version.rb'

module Google
  module Apis
    # Address Validation API
    #
    # The Address Validation API allows developers to verify the accuracy of
    # addresses. Given an address, it returns information about the correctness of
    # the components of the parsed address, a geocode, and a verdict on the
    # deliverability of the parsed address.
    #
    # @see https://developers.google.com/maps/documentation/addressvalidation
    module AddressvalidationV1
      # Version of the Address Validation API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # Private Service: https://www.googleapis.com/auth/maps-platform.addressvalidation
      AUTH_MAPS_PLATFORM_ADDRESSVALIDATION = 'https://www.googleapis.com/auth/maps-platform.addressvalidation'
    end
  end
end
