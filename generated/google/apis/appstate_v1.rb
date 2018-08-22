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

require 'google/apis/appstate_v1/service.rb'
require 'google/apis/appstate_v1/classes.rb'
require 'google/apis/appstate_v1/representations.rb'

module Google
  module Apis
    # Google App State API
    #
    # The Google App State API.
    #
    # @see https://developers.google.com/games/services/web/api/states
    module AppstateV1
      VERSION = 'V1'
      REVISION = '20180816'

      # View and manage your data for this application
      AUTH_APPSTATE = 'https://www.googleapis.com/auth/appstate'
    end
  end
end
