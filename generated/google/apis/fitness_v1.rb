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
    # Stores and accesses user data in the fitness store from apps on any platform.
    #
    # @see https://developers.google.com/fit/rest/
    module FitnessV1
      VERSION = 'V1'
      REVISION = '20170922'

      # View your activity information in Google Fit
      AUTH_FITNESS_ACTIVITY_READ = 'https://www.googleapis.com/auth/fitness.activity.read'

      # View and store your activity information in Google Fit
      AUTH_FITNESS_ACTIVITY_WRITE = 'https://www.googleapis.com/auth/fitness.activity.write'

      # View blood glucose data in Google Fit
      AUTH_FITNESS_BLOOD_GLUCOSE_READ = 'https://www.googleapis.com/auth/fitness.blood_glucose.read'

      # View and store blood glucose data in Google Fit
      AUTH_FITNESS_BLOOD_GLUCOSE_WRITE = 'https://www.googleapis.com/auth/fitness.blood_glucose.write'

      # View blood pressure data in Google Fit
      AUTH_FITNESS_BLOOD_PRESSURE_READ = 'https://www.googleapis.com/auth/fitness.blood_pressure.read'

      # View and store blood pressure data in Google Fit
      AUTH_FITNESS_BLOOD_PRESSURE_WRITE = 'https://www.googleapis.com/auth/fitness.blood_pressure.write'

      # View body sensor information in Google Fit
      AUTH_FITNESS_BODY_READ = 'https://www.googleapis.com/auth/fitness.body.read'

      # View and store body sensor data in Google Fit
      AUTH_FITNESS_BODY_WRITE = 'https://www.googleapis.com/auth/fitness.body.write'

      # View body temperature data in Google Fit
      AUTH_FITNESS_BODY_TEMPERATURE_READ = 'https://www.googleapis.com/auth/fitness.body_temperature.read'

      # View and store body temperature data in Google Fit
      AUTH_FITNESS_BODY_TEMPERATURE_WRITE = 'https://www.googleapis.com/auth/fitness.body_temperature.write'

      # View your stored location data in Google Fit
      AUTH_FITNESS_LOCATION_READ = 'https://www.googleapis.com/auth/fitness.location.read'

      # View and store your location data in Google Fit
      AUTH_FITNESS_LOCATION_WRITE = 'https://www.googleapis.com/auth/fitness.location.write'

      # View nutrition information in Google Fit
      AUTH_FITNESS_NUTRITION_READ = 'https://www.googleapis.com/auth/fitness.nutrition.read'

      # View and store nutrition information in Google Fit
      AUTH_FITNESS_NUTRITION_WRITE = 'https://www.googleapis.com/auth/fitness.nutrition.write'

      # View oxygen saturation data in Google Fit
      AUTH_FITNESS_OXYGEN_SATURATION_READ = 'https://www.googleapis.com/auth/fitness.oxygen_saturation.read'

      # View and store oxygen saturation data in Google Fit
      AUTH_FITNESS_OXYGEN_SATURATION_WRITE = 'https://www.googleapis.com/auth/fitness.oxygen_saturation.write'

      # View reproductive health data in Google Fit
      AUTH_FITNESS_REPRODUCTIVE_HEALTH_READ = 'https://www.googleapis.com/auth/fitness.reproductive_health.read'

      # View and store reproductive health data in Google Fit
      AUTH_FITNESS_REPRODUCTIVE_HEALTH_WRITE = 'https://www.googleapis.com/auth/fitness.reproductive_health.write'
    end
  end
end
