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

require 'google/apis/coordinate_v1/service.rb'
require 'google/apis/coordinate_v1/classes.rb'
require 'google/apis/coordinate_v1/representations.rb'

module Google
  module Apis
    # Google Maps Coordinate API
    #
    # Lets you view and manage jobs in a Coordinate team.
    #
    # @see https://developers.google.com/coordinate/
    module CoordinateV1
      VERSION = 'V1'
      REVISION = '20150811'

      # View and manage your Google Maps Coordinate jobs
      AUTH_COORDINATE = 'https://www.googleapis.com/auth/coordinate'

      # View your Google Coordinate jobs
      AUTH_COORDINATE_READONLY = 'https://www.googleapis.com/auth/coordinate.readonly'
    end
  end
end
