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

require 'google/apis/fitness_v1/service.rb'
require 'google/apis/fitness_v1/classes.rb'
require 'google/apis/fitness_v1/representations.rb'

module Google
  module Apis
    # Fitness
    #
    # Google Fit API
    #
    # @see https://developers.google.com/fit/rest/
    module FitnessV1
      VERSION = 'V1'
      REVISION = '20151021'

      # View your activity information in Google Fit
      AUTH_FITNESS_ACTIVITY_READ = 'https://www.googleapis.com/auth/fitness.activity.read'

      # View and store your activity information in Google Fit
      AUTH_FITNESS_ACTIVITY_WRITE = 'https://www.googleapis.com/auth/fitness.activity.write'

      # View body sensor information in Google Fit
      AUTH_FITNESS_BODY_READ = 'https://www.googleapis.com/auth/fitness.body.read'

      # View and store body sensor data in Google Fit
      AUTH_FITNESS_BODY_WRITE = 'https://www.googleapis.com/auth/fitness.body.write'

      # View your stored location data in Google Fit
      AUTH_FITNESS_LOCATION_READ = 'https://www.googleapis.com/auth/fitness.location.read'

      # View and store your location data in Google Fit
      AUTH_FITNESS_LOCATION_WRITE = 'https://www.googleapis.com/auth/fitness.location.write'
    end
  end
end
