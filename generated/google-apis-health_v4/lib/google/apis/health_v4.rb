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

require 'google/apis/health_v4/service.rb'
require 'google/apis/health_v4/classes.rb'
require 'google/apis/health_v4/representations.rb'
require 'google/apis/health_v4/gem_version.rb'

module Google
  module Apis
    # Google Health API
    #
    # The Google Health API lets you view and manage health and fitness metrics and
    # measurement data.
    #
    # @see https://developers.google.com/health
    module HealthV4
      # Version of the Google Health API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V4'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # See your Google Health activity and fitness data
      AUTH_GOOGLEHEALTH_ACTIVITY_AND_FITNESS_READONLY = 'https://www.googleapis.com/auth/googlehealth.activity_and_fitness.readonly'

      # See your Google Health health metrics and measurement data
      AUTH_GOOGLEHEALTH_HEALTH_METRICS_AND_MEASUREMENTS_READONLY = 'https://www.googleapis.com/auth/googlehealth.health_metrics_and_measurements.readonly'

      # See exercise GPS location data in Google Health
      AUTH_GOOGLEHEALTH_LOCATION_READONLY = 'https://www.googleapis.com/auth/googlehealth.location.readonly'

      # See your Google Health profile data
      AUTH_GOOGLEHEALTH_PROFILE_READONLY = 'https://www.googleapis.com/auth/googlehealth.profile.readonly'

      # See your Google Health settings
      AUTH_GOOGLEHEALTH_SETTINGS_READONLY = 'https://www.googleapis.com/auth/googlehealth.settings.readonly'

      # See your Google Health sleep data
      AUTH_GOOGLEHEALTH_SLEEP_READONLY = 'https://www.googleapis.com/auth/googlehealth.sleep.readonly'
    end
  end
end
