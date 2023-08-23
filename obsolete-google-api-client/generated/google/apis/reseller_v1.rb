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

require 'google/apis/reseller_v1/service.rb'
require 'google/apis/reseller_v1/classes.rb'
require 'google/apis/reseller_v1/representations.rb'

module Google
  module Apis
    # Google Workspace Reseller API
    #
    # Perform common functions that are available on the Channel Services console at
    # scale, like placing orders and viewing customer information
    #
    # @see https://developers.google.com/google-apps/reseller/
    module ResellerV1
      VERSION = 'V1'
      REVISION = '20201129'

      # Manage users on your domain
      AUTH_APPS_ORDER = 'https://www.googleapis.com/auth/apps.order'

      # Manage users on your domain
      AUTH_APPS_ORDER_READONLY = 'https://www.googleapis.com/auth/apps.order.readonly'
    end
  end
end
