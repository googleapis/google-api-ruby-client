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

require 'google/apis/cloudidentity_v1/service.rb'
require 'google/apis/cloudidentity_v1/classes.rb'
require 'google/apis/cloudidentity_v1/representations.rb'
require 'google/apis/cloudidentity_v1/gem_version.rb'

module Google
  module Apis
    # Cloud Identity API
    #
    # API for provisioning and managing identity resources.
    #
    # @see https://cloud.google.com/identity/
    module CloudidentityV1
      # Version of the Cloud Identity API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Private Service: https://www.googleapis.com/auth/cloud-identity.devices
      AUTH_CLOUD_IDENTITY_DEVICES = 'https://www.googleapis.com/auth/cloud-identity.devices'

      # See your device details
      AUTH_CLOUD_IDENTITY_DEVICES_LOOKUP = 'https://www.googleapis.com/auth/cloud-identity.devices.lookup'

      # Private Service: https://www.googleapis.com/auth/cloud-identity.devices.readonly
      AUTH_CLOUD_IDENTITY_DEVICES_READONLY = 'https://www.googleapis.com/auth/cloud-identity.devices.readonly'

      # See, change, create, and delete any of the Cloud Identity Groups that you can access, including the members of each group
      AUTH_CLOUD_IDENTITY_GROUPS = 'https://www.googleapis.com/auth/cloud-identity.groups'

      # See any Cloud Identity Groups that you can access, including group members and their emails
      AUTH_CLOUD_IDENTITY_GROUPS_READONLY = 'https://www.googleapis.com/auth/cloud-identity.groups.readonly'

      # See and edit all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization.
      AUTH_CLOUD_IDENTITY_INBOUNDSSO = 'https://www.googleapis.com/auth/cloud-identity.inboundsso'

      # See all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization.
      AUTH_CLOUD_IDENTITY_INBOUNDSSO_READONLY = 'https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly'

      # See and edit policies in your Cloud Identity Organization.
      AUTH_CLOUD_IDENTITY_POLICIES = 'https://www.googleapis.com/auth/cloud-identity.policies'

      # See policies in your Cloud Identity Organization.
      AUTH_CLOUD_IDENTITY_POLICIES_READONLY = 'https://www.googleapis.com/auth/cloud-identity.policies.readonly'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
