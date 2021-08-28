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

require 'google/apis/managedidentities_v1alpha1/service.rb'
require 'google/apis/managedidentities_v1alpha1/classes.rb'
require 'google/apis/managedidentities_v1alpha1/representations.rb'
require 'google/apis/managedidentities_v1alpha1/gem_version.rb'

module Google
  module Apis
    # Managed Service for Microsoft Active Directory API
    #
    # The Managed Service for Microsoft Active Directory API is used for managing a
    # highly available, hardened service running Microsoft Active Directory (AD).
    #
    # @see https://cloud.google.com/managed-microsoft-ad/
    module ManagedidentitiesV1alpha1
      # Version of the Managed Service for Microsoft Active Directory API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
