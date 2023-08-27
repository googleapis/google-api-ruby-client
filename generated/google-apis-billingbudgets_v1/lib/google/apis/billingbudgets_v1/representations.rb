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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module BillingbudgetsV1
      
      class GoogleCloudBillingBudgetsV1Budget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1BudgetAmount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1CustomPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1LastPeriodAmount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1ListBudgetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1NotificationsRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1ThresholdRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBudgetsV1Budget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1BudgetAmount, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1BudgetAmount::Representation
      
          property :budget_filter, as: 'budgetFilter', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1Filter, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1Filter::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :notifications_rule, as: 'notificationsRule', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1NotificationsRule, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1NotificationsRule::Representation
      
          collection :threshold_rules, as: 'thresholdRules', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1ThresholdRule, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1ThresholdRule::Representation
      
        end
      end
      
      class GoogleCloudBillingBudgetsV1BudgetAmount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_period_amount, as: 'lastPeriodAmount', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1LastPeriodAmount, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1LastPeriodAmount::Representation
      
          property :specified_amount, as: 'specifiedAmount', class: Google::Apis::BillingbudgetsV1::GoogleTypeMoney, decorator: Google::Apis::BillingbudgetsV1::GoogleTypeMoney::Representation
      
        end
      end
      
      class GoogleCloudBillingBudgetsV1CustomPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::BillingbudgetsV1::GoogleTypeDate, decorator: Google::Apis::BillingbudgetsV1::GoogleTypeDate::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::BillingbudgetsV1::GoogleTypeDate, decorator: Google::Apis::BillingbudgetsV1::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleCloudBillingBudgetsV1Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calendar_period, as: 'calendarPeriod'
          collection :credit_types, as: 'creditTypes'
          property :credit_types_treatment, as: 'creditTypesTreatment'
          property :custom_period, as: 'customPeriod', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1CustomPeriod, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1CustomPeriod::Representation
      
          hash :labels, as: 'labels', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :projects, as: 'projects'
          collection :resource_ancestors, as: 'resourceAncestors'
          collection :services, as: 'services'
          collection :subaccounts, as: 'subaccounts'
        end
      end
      
      class GoogleCloudBillingBudgetsV1LastPeriodAmount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBudgetsV1ListBudgetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :budgets, as: 'budgets', class: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1Budget, decorator: Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1Budget::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBudgetsV1NotificationsRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_default_iam_recipients, as: 'disableDefaultIamRecipients'
          property :enable_project_level_recipients, as: 'enableProjectLevelRecipients'
          collection :monitoring_notification_channels, as: 'monitoringNotificationChannels'
          property :pubsub_topic, as: 'pubsubTopic'
          property :schema_version, as: 'schemaVersion'
        end
      end
      
      class GoogleCloudBillingBudgetsV1ThresholdRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spend_basis, as: 'spendBasis'
          property :threshold_percent, as: 'thresholdPercent'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
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
