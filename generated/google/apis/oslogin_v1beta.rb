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

require 'google/apis/oslogin_v1beta/service.rb'
require 'google/apis/oslogin_v1beta/classes.rb'
require 'google/apis/oslogin_v1beta/representations.rb'

module Google
  module Apis
    # Google Cloud OS Login API
    #
    # Manages OS login configuration for Directory API users.
    #
    # @see https://cloud.google.com/compute/docs/oslogin/rest/
    module OsloginV1beta
      VERSION = 'V1beta'
      REVISION = '20170926'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # View and manage your Google Compute Engine resources
      AUTH_COMPUTE = 'https://www.googleapis.com/auth/compute'

      # View your Google Compute Engine resources
      AUTH_COMPUTE_READONLY = 'https://www.googleapis.com/auth/compute.readonly'
    end
  end
end
