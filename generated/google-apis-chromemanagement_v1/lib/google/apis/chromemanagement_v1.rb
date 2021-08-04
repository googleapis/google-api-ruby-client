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

require 'google/apis/chromemanagement_v1/service.rb'
require 'google/apis/chromemanagement_v1/classes.rb'
require 'google/apis/chromemanagement_v1/representations.rb'
require 'google/apis/chromemanagement_v1/gem_version.rb'

module Google
  module Apis
    # Chrome Management API
    #
    # The Chrome Management API is a suite of services that allows Chrome
    # administrators to view, manage and gain insights on their Chrome OS and Chrome
    # Browser devices.
    #
    # @see http://developers.google.com/chrome/management/
    module ChromemanagementV1
      # Version of the Chrome Management API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See detailed information about apps installed on Chrome browsers and devices managed by your organization
      AUTH_CHROME_MANAGEMENT_APPDETAILS_READONLY = 'https://www.googleapis.com/auth/chrome.management.appdetails.readonly'

      # See reports about devices and Chrome browsers managed within your organization
      AUTH_CHROME_MANAGEMENT_REPORTS_READONLY = 'https://www.googleapis.com/auth/chrome.management.reports.readonly'
    end
  end
end
