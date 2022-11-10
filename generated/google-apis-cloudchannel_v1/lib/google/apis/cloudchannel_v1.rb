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

require 'google/apis/cloudchannel_v1/service.rb'
require 'google/apis/cloudchannel_v1/classes.rb'
require 'google/apis/cloudchannel_v1/representations.rb'
require 'google/apis/cloudchannel_v1/gem_version.rb'

module Google
  module Apis
    # Cloud Channel API
    #
    # The Cloud Channel API enables Google Cloud partners to have a single unified
    # resale platform and APIs across all of Google Cloud including GCP, Workspace,
    # Maps and Chrome.
    #
    # @see https://cloud.google.com/channel
    module CloudchannelV1
      # Version of the Cloud Channel API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Manage users on your domain
      AUTH_APPS_ORDER = 'https://www.googleapis.com/auth/apps.order'

      # View usage reports for your G Suite domain
      AUTH_APPS_REPORTS_USAGE_READONLY = 'https://www.googleapis.com/auth/apps.reports.usage.readonly'
    end
  end
end
