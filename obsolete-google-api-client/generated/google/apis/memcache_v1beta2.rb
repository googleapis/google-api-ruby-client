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

require 'google/apis/memcache_v1beta2/service.rb'
require 'google/apis/memcache_v1beta2/classes.rb'
require 'google/apis/memcache_v1beta2/representations.rb'

module Google
  module Apis
    # Cloud Memorystore for Memcached API
    #
    # Google Cloud Memorystore for Memcached API is used for creating and managing
    # Memcached instances in GCP.
    #
    # @see https://cloud.google.com/memorystore/
    module MemcacheV1beta2
      VERSION = 'V1beta2'
      REVISION = '20201109'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
