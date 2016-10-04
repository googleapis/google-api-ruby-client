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

require 'google/apis/replicapoolupdater_v1beta1/service.rb'
require 'google/apis/replicapoolupdater_v1beta1/classes.rb'
require 'google/apis/replicapoolupdater_v1beta1/representations.rb'

module Google
  module Apis
    # Google Compute Engine Instance Group Updater API
    #
    # [Deprecated. Please use compute.instanceGroupManagers.update method.
    # replicapoolupdater API will be disabled after December 30th, 2016] Updates
    # groups of Compute Engine instances.
    #
    # @see https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service
    module ReplicapoolupdaterV1beta1
      VERSION = 'V1beta1'
      REVISION = '20161003'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # View and manage replica pools
      AUTH_REPLICAPOOL = 'https://www.googleapis.com/auth/replicapool'

      # View replica pools
      AUTH_REPLICAPOOL_READONLY = 'https://www.googleapis.com/auth/replicapool.readonly'
    end
  end
end
