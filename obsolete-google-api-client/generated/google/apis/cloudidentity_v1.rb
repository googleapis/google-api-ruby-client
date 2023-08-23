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

require 'google/apis/cloudidentity_v1/service.rb'
require 'google/apis/cloudidentity_v1/classes.rb'
require 'google/apis/cloudidentity_v1/representations.rb'

module Google
  module Apis
    # Cloud Identity API
    #
    # API for provisioning and managing identity resources.
    #
    # @see https://cloud.google.com/identity/
    module CloudidentityV1
      VERSION = 'V1'
      REVISION = '20201208'

      # See your device details
      AUTH_CLOUD_IDENTITY_DEVICES_LOOKUP = 'https://www.googleapis.com/auth/cloud-identity.devices.lookup'

      # See, change, create, and delete any of the Cloud Identity Groups that you can access, including the members of each group
      AUTH_CLOUD_IDENTITY_GROUPS = 'https://www.googleapis.com/auth/cloud-identity.groups'

      # See any Cloud Identity Groups that you can access, including group members and their emails
      AUTH_CLOUD_IDENTITY_GROUPS_READONLY = 'https://www.googleapis.com/auth/cloud-identity.groups.readonly'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
