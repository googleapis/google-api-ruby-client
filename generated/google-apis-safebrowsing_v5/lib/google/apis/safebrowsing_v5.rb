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

require 'google/apis/safebrowsing_v5/service.rb'
require 'google/apis/safebrowsing_v5/classes.rb'
require 'google/apis/safebrowsing_v5/representations.rb'
require 'google/apis/safebrowsing_v5/gem_version.rb'

module Google
  module Apis
    # Safe Browsing API
    #
    # Enables client applications to check web resources (most commonly URLs)
    # against Google-generated lists of unsafe web resources. The Safe Browsing APIs
    # are for non-commercial use only. If you need to use APIs to detect malicious
    # URLs for commercial purposes – meaning “for sale or revenue-generating
    # purposes” – please refer to the Web Risk API.
    #
    # @see https://developers.google.com/safe-browsing/
    module SafebrowsingV5
      # Version of the Safe Browsing API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V5'
    end
  end
end
