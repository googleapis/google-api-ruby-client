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

require 'google/apis/chromewebstore_v1_1/service.rb'
require 'google/apis/chromewebstore_v1_1/classes.rb'
require 'google/apis/chromewebstore_v1_1/representations.rb'
require 'google/apis/chromewebstore_v1_1/gem_version.rb'

module Google
  module Apis
    # Chrome Web Store API
    #
    # The Chrome Web Store API provides access to data about apps and extensions, as
    # well as developer tools for managing them.
    #
    # @see https://developer.chrome.com/docs/webstore/api
    module ChromewebstoreV1_1
      # Version of the Chrome Web Store API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1_1'

      # See, edit, update, or publish your Chrome Web Store extensions, themes, apps, and licences you have access to
      AUTH_CHROMEWEBSTORE = 'https://www.googleapis.com/auth/chromewebstore'

      # See and download your Chrome Web Store extensions and apps, and see licenses you have access to
      AUTH_CHROMEWEBSTORE_READONLY = 'https://www.googleapis.com/auth/chromewebstore.readonly'
    end
  end
end
