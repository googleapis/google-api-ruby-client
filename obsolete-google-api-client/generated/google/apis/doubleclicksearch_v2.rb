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

require 'google/apis/doubleclicksearch_v2/service.rb'
require 'google/apis/doubleclicksearch_v2/classes.rb'
require 'google/apis/doubleclicksearch_v2/representations.rb'

module Google
  module Apis
    # Search Ads 360 API
    #
    # The Search Ads 360 API allows developers to automate uploading conversions and
    # downloading reports from Search Ads 360.
    #
    # @see https://developers.google.com/search-ads
    module DoubleclicksearchV2
      VERSION = 'V2'
      REVISION = '20200825'

      # View and manage your advertising data in DoubleClick Search
      AUTH_DOUBLECLICKSEARCH = 'https://www.googleapis.com/auth/doubleclicksearch'
    end
  end
end
