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

require 'google/apis/dfareporting_v3_4/service.rb'
require 'google/apis/dfareporting_v3_4/classes.rb'
require 'google/apis/dfareporting_v3_4/representations.rb'

module Google
  module Apis
    # Campaign Manager 360 API
    #
    # Manage your DoubleClick Campaign Manager ad campaigns and reports.
    #
    # @see https://developers.google.com/doubleclick-advertisers/
    module DfareportingV3_4
      VERSION = 'V3_4'
      REVISION = '20201102'

      # Manage DoubleClick Digital Marketing conversions
      AUTH_DDMCONVERSIONS = 'https://www.googleapis.com/auth/ddmconversions'

      # View and manage DoubleClick for Advertisers reports
      AUTH_DFAREPORTING = 'https://www.googleapis.com/auth/dfareporting'

      # View and manage your DoubleClick Campaign Manager's (DCM) display ad campaigns
      AUTH_DFATRAFFICKING = 'https://www.googleapis.com/auth/dfatrafficking'
    end
  end
end
