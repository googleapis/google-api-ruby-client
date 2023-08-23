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

require 'google/apis/billingbudgets_v1/service.rb'
require 'google/apis/billingbudgets_v1/classes.rb'
require 'google/apis/billingbudgets_v1/representations.rb'

module Google
  module Apis
    # Cloud Billing Budget API
    #
    # The Cloud Billing Budget API stores Cloud Billing budgets, which define a
    # budget plan and the rules to execute as spend is tracked against that plan.
    #
    # @see https://cloud.google.com/billing/docs/how-to/budget-api-overview
    module BillingbudgetsV1
      VERSION = 'V1'
      REVISION = '20201107'

      # View and manage your Google Cloud Platform billing accounts
      AUTH_CLOUD_BILLING = 'https://www.googleapis.com/auth/cloud-billing'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
