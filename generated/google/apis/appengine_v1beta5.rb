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

require 'google/apis/appengine_v1beta5/service.rb'
require 'google/apis/appengine_v1beta5/classes.rb'
require 'google/apis/appengine_v1beta5/representations.rb'

module Google
  module Apis
    # Google App Engine Admin API
    #
    # Provisions and manages App Engine applications.
    #
    # @see https://cloud.google.com/appengine/docs/admin-api/
    module AppengineV1beta5
      VERSION = 'V1beta5'
      REVISION = '20161012'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
