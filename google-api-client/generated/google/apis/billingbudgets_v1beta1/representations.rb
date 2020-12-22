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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module BillingbudgetsV1beta1
      
      class GoogleCloudBillingBudgetsV1beta1AllUpdatesRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1Budget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1BudgetAmount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1LastPeriodAmount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1ThresholdRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1beta1AllUpdatesRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_default_iam_recipients, as: 'disableDefaultIamRecipients'
          collection :monitoring_notification_channels, as: 'monitoringNotificationChannels'
          property :pubsub_topic, as: 'pubsubTopic'
          property :schema_version, as: 'schemaVersion'
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1Budget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_updates_rule, as: 'allUpdatesRule', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1AllUpdatesRule, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1AllUpdatesRule::Representation
      
          property :amount, as: 'amount', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1BudgetAmount, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1BudgetAmount::Representation
      
          property :budget_filter, as: 'budgetFilter', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Filter, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Filter::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          collection :threshold_rules, as: 'thresholdRules', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ThresholdRule, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ThresholdRule::Representation
      
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1BudgetAmount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_period_amount, as: 'lastPeriodAmount', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1LastPeriodAmount, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1LastPeriodAmount::Representation
      
          property :specified_amount, as: 'specifiedAmount', class: Google::Apis::BillingbudgetsV1beta1::GoogleTypeMoney, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleTypeMoney::Representation
      
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget, as: 'budget', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget::Representation
      
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :credit_types, as: 'creditTypes'
          property :credit_types_treatment, as: 'creditTypesTreatment'
          hash :labels, as: 'labels', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :projects, as: 'projects'
          collection :services, as: 'services'
          collection :subaccounts, as: 'subaccounts'
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1LastPeriodAmount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :budgets, as: 'budgets', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1ThresholdRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spend_basis, as: 'spendBasis'
          property :threshold_percent, as: 'thresholdPercent'
        end
      end
      
      class GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget, as: 'budget', class: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget, decorator: Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
    end
  end
end
