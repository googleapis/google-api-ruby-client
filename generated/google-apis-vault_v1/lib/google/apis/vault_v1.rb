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

require 'google/apis/vault_v1/service.rb'
require 'google/apis/vault_v1/classes.rb'
require 'google/apis/vault_v1/representations.rb'
require 'google/apis/vault_v1/gem_version.rb'

module Google
  module Apis
    # G Suite Vault API
    #
    # Retention and eDiscovery for Google Workspace. To work with Vault resources,
    # the account must have the [required Vault privileges](https://support.google.
    # com/vault/answer/2799699) and access to the matter. To access a matter, the
    # account must have created the matter, have the matter shared with them, or
    # have the **View All Matters** privilege. For example, to download an export,
    # an account needs the **Manage Exports** privilege and the matter shared with
    # them.
    #
    # @see https://developers.google.com/vault
    module VaultV1
      # Version of the G Suite Vault API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Manage your eDiscovery data
      AUTH_EDISCOVERY = 'https://www.googleapis.com/auth/ediscovery'

      # View your eDiscovery data
      AUTH_EDISCOVERY_READONLY = 'https://www.googleapis.com/auth/ediscovery.readonly'
    end
  end
end
