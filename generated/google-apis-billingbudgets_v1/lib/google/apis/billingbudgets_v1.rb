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

require 'google/apis/billingbudgets_v1/service.rb'
require 'google/apis/billingbudgets_v1/classes.rb'
require 'google/apis/billingbudgets_v1/representations.rb'
require 'google/apis/billingbudgets_v1/gem_version.rb'

module Google
  module Apis
    # Cloud Billing Budget API
    #
    # The Cloud Billing Budget API stores Cloud Billing budgets, which define a
    # budget plan and the rules to execute as spend is tracked against that plan.
    #
    # @see https://cloud.google.com/billing/docs/how-to/budget-api-overview
    module BillingbudgetsV1
      # Version of the Cloud Billing Budget API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # View and manage your Google Cloud Platform billing accounts
      AUTH_CLOUD_BILLING = 'https://www.googleapis.com/auth/cloud-billing'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
