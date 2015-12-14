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

require 'google/apis/mapsengine_v1/service.rb'
require 'google/apis/mapsengine_v1/classes.rb'
require 'google/apis/mapsengine_v1/representations.rb'

module Google
  module Apis
    # Google Maps Engine API
    #
    # The Google Maps Engine API allows developers to store and query geospatial
    # vector and raster data.
    #
    # @see https://developers.google.com/maps-engine/
    module MapsengineV1
      VERSION = 'V1'
      REVISION = '20151202'

      # View and manage your Google My Maps data
      AUTH_MAPSENGINE = 'https://www.googleapis.com/auth/mapsengine'

      # View your Google My Maps data
      AUTH_MAPSENGINE_READONLY = 'https://www.googleapis.com/auth/mapsengine.readonly'
    end
  end
end
