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

require 'google/apis/runtimeconfig_v1beta1/service.rb'
require 'google/apis/runtimeconfig_v1beta1/classes.rb'
require 'google/apis/runtimeconfig_v1beta1/representations.rb'
require 'google/apis/runtimeconfig_v1beta1/gem_version.rb'

module Google
  module Apis
    # Cloud Runtime Configuration API
    #
    # The Runtime Configurator allows you to dynamically configure and expose
    # variables through Google Cloud Platform. In addition, you can also set
    # Watchers and Waiters that will watch for changes to your data and return based
    # on certain conditions.
    #
    # @see https://cloud.google.com/deployment-manager/runtime-configurator/
    module RuntimeconfigV1beta1
      # Version of the Cloud Runtime Configuration API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # Manage your Google Cloud Platform services' runtime configuration
      AUTH_CLOUDRUNTIMECONFIG = 'https://www.googleapis.com/auth/cloudruntimeconfig'
    end
  end
end
