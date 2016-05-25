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

require 'google/apis/resourceviews_v1beta2/service.rb'
require 'google/apis/resourceviews_v1beta2/classes.rb'
require 'google/apis/resourceviews_v1beta2/representations.rb'

module Google
  module Apis
    # Google Compute Engine Instance Groups API
    #
    # The Resource View API allows users to create and manage logical sets of Google
    # Compute Engine instances.
    #
    # @see https://developers.google.com/compute/
    module ResourceviewsV1beta2
      VERSION = 'V1beta2'
      REVISION = '20160512'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # View and manage your Google Compute Engine resources
      AUTH_COMPUTE = 'https://www.googleapis.com/auth/compute'

      # View your Google Compute Engine resources
      AUTH_COMPUTE_READONLY = 'https://www.googleapis.com/auth/compute.readonly'

      # View and manage your Google Cloud Platform management resources and deployment status information
      AUTH_NDEV_CLOUDMAN = 'https://www.googleapis.com/auth/ndev.cloudman'

      # View your Google Cloud Platform management resources and deployment status information
      AUTH_NDEV_CLOUDMAN_READONLY = 'https://www.googleapis.com/auth/ndev.cloudman.readonly'
    end
  end
end
