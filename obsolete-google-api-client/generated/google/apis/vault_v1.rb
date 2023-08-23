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

require 'google/apis/vault_v1/service.rb'
require 'google/apis/vault_v1/classes.rb'
require 'google/apis/vault_v1/representations.rb'

module Google
  module Apis
    # G Suite Vault API
    #
    # Archiving and eDiscovery for G Suite.
    #
    # @see https://developers.google.com/vault
    module VaultV1
      VERSION = 'V1'
      REVISION = '20201117'

      # Manage your eDiscovery data
      AUTH_EDISCOVERY = 'https://www.googleapis.com/auth/ediscovery'

      # View your eDiscovery data
      AUTH_EDISCOVERY_READONLY = 'https://www.googleapis.com/auth/ediscovery.readonly'
    end
  end
end
