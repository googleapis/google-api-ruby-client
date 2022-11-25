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

require 'google/apis/mybusinessnotifications_v1/service.rb'
require 'google/apis/mybusinessnotifications_v1/classes.rb'
require 'google/apis/mybusinessnotifications_v1/representations.rb'
require 'google/apis/mybusinessnotifications_v1/gem_version.rb'

module Google
  module Apis
    # My Business Notifications API
    #
    # The My Business Notification Settings API enables managing notification
    # settings for business accounts. Note - If you have a quota of 0 after enabling
    # the API, please request for GBP API access.
    #
    # @see https://developers.google.com/my-business/
    module MybusinessnotificationsV1
      # Version of the My Business Notifications API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'
    end
  end
end
