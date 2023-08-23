# Copyright 2015 Google Inc.
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

require 'google/apis/appsmarket_v2/service.rb'
require 'google/apis/appsmarket_v2/classes.rb'
require 'google/apis/appsmarket_v2/representations.rb'

module Google
  module Apis
    # G Suite Marketplace API
    #
    # Lets your G Suite Marketplace applications integrate with Google's licensing
    # and billing services.
    #
    # @see https://developers.google.com/apps-marketplace
    module AppsmarketV2
      VERSION = 'V2'
      REVISION = '20201005'

      # View your installed application's licensing information
      AUTH_APPSMARKETPLACE_LICENSE = 'https://www.googleapis.com/auth/appsmarketplace.license'
    end
  end
end
