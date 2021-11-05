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

require 'google/apis/monitoring_v3/service.rb'
require 'google/apis/monitoring_v3/classes.rb'
require 'google/apis/monitoring_v3/representations.rb'
require 'google/apis/monitoring_v3/gem_version.rb'

module Google
  module Apis
    # Cloud Monitoring API
    #
    # Manages your Cloud Monitoring data and configurations.
    #
    # @see https://cloud.google.com/monitoring/api/
    module MonitoringV3
      # Version of the Cloud Monitoring API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V3'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View and write monitoring data for all of your Google and third-party Cloud and API projects
      AUTH_MONITORING = 'https://www.googleapis.com/auth/monitoring'

      # View monitoring data for all of your Google Cloud and third-party projects
      AUTH_MONITORING_READ = 'https://www.googleapis.com/auth/monitoring.read'

      # Publish metric data to your Google Cloud projects
      AUTH_MONITORING_WRITE = 'https://www.googleapis.com/auth/monitoring.write'
    end
  end
end
