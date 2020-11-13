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

require 'google/apis/deploymentmanager_v2/service.rb'
require 'google/apis/deploymentmanager_v2/classes.rb'
require 'google/apis/deploymentmanager_v2/representations.rb'

module Google
  module Apis
    # Cloud Deployment Manager V2 API
    #
    # The Google Cloud Deployment Manager v2 API provides services for configuring,
    # deploying, and viewing Google Cloud services and APIs via templates which
    # specify deployments of Cloud resources.
    #
    # @see https://cloud.google.com/deployment-manager
    module DeploymentmanagerV2
      VERSION = 'V2'
      REVISION = '20201109'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # View and manage your Google Cloud Platform management resources and deployment status information
      AUTH_NDEV_CLOUDMAN = 'https://www.googleapis.com/auth/ndev.cloudman'

      # View your Google Cloud Platform management resources and deployment status information
      AUTH_NDEV_CLOUDMAN_READONLY = 'https://www.googleapis.com/auth/ndev.cloudman.readonly'
    end
  end
end
