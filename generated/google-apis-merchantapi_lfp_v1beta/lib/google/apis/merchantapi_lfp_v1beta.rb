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

require 'google/apis/merchantapi_lfp_v1beta/service.rb'
require 'google/apis/merchantapi_lfp_v1beta/classes.rb'
require 'google/apis/merchantapi_lfp_v1beta/representations.rb'
require 'google/apis/merchantapi_lfp_v1beta/gem_version.rb'

module Google
  module Apis
    # Merchant API
    #
    # Programmatically manage your Merchant Center Accounts.
    #
    # @see https://developers.devsite.corp.google.com/merchant/api
    module MerchantapiLfpV1beta
      # Version of the Merchant API this client connects to.
      # This is NOT the gem version.
      VERSION = 'LfpV1beta'

      # Manage your product listings and accounts for Google Shopping
      AUTH_CONTENT = 'https://www.googleapis.com/auth/content'
    end
  end
end
