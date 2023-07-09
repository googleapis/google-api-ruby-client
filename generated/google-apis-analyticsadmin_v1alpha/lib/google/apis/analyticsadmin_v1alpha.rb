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

require 'google/apis/analyticsadmin_v1alpha/service.rb'
require 'google/apis/analyticsadmin_v1alpha/classes.rb'
require 'google/apis/analyticsadmin_v1alpha/representations.rb'
require 'google/apis/analyticsadmin_v1alpha/gem_version.rb'

module Google
  module Apis
    # Google Analytics Admin API
    #
    # Manage properties in Google Analytics. Warning: Creating multiple Customer
    # Applications, Accounts, or Projects to simulate or act as a single Customer
    # Application, Account, or Project (respectively) or to circumvent Service-
    # specific usage limits or quotas is a direct violation of Google Cloud Platform
    # Terms of Service as well as Google APIs Terms of Service. These actions can
    # result in immediate termination of your GCP project(s) without any warning.
    #
    # @see http://code.google.com/apis/analytics/docs/mgmt/home.html
    module AnalyticsadminV1alpha
      # Version of the Google Analytics Admin API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha'

      # Edit Google Analytics management entities
      AUTH_ANALYTICS_EDIT = 'https://www.googleapis.com/auth/analytics.edit'

      # Manage Google Analytics Account users by email address
      AUTH_ANALYTICS_MANAGE_USERS = 'https://www.googleapis.com/auth/analytics.manage.users'

      # View Google Analytics user permissions
      AUTH_ANALYTICS_MANAGE_USERS_READONLY = 'https://www.googleapis.com/auth/analytics.manage.users.readonly'

      # See and download your Google Analytics data
      AUTH_ANALYTICS_READONLY = 'https://www.googleapis.com/auth/analytics.readonly'
    end
  end
end
