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

require 'google/apis/clouduseraccounts_vm_alpha/service.rb'
require 'google/apis/clouduseraccounts_vm_alpha/classes.rb'
require 'google/apis/clouduseraccounts_vm_alpha/representations.rb'

module Google
  module Apis
    # Cloud User Accounts API
    #
    # Creates and manages users and groups for accessing Google Compute Engine
    # virtual machines.
    #
    # @see https://cloud.google.com/compute/docs/access/user-accounts/api/latest/
    module ClouduseraccountsVmAlpha
      VERSION = 'VmAlpha'
      REVISION = '20160316'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # Manage your Google Cloud User Accounts
      AUTH_CLOUD_USERACCOUNTS = 'https://www.googleapis.com/auth/cloud.useraccounts'

      # View your Google Cloud User Accounts
      AUTH_CLOUD_USERACCOUNTS_READONLY = 'https://www.googleapis.com/auth/cloud.useraccounts.readonly'
    end
  end
end
