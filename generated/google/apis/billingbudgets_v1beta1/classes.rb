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
      
      # AllUpdatesRule defines notifications that are sent based on budget spend and
      # thresholds.
      class GoogleCloudBillingBudgetsV1beta1AllUpdatesRule
        include Google::Apis::Core::Hashable
      
        # Optional. When set to true, disables default notifications sent when a
        # threshold is exceeded. Default notifications are sent to those with Billing
        # Account Administrator and Billing Account User IAM roles for the target
        # account.
        # Corresponds to the JSON property `disableDefaultIamRecipients`
        # @return [Boolean]
        attr_accessor :disable_default_iam_recipients
        alias_method :disable_default_iam_recipients?, :disable_default_iam_recipients
      
        # Optional. Targets to send notifications to when a threshold is exceeded. This
        # is in addition to default recipients who have billing account IAM roles. The
        # value is the full REST resource name of a monitoring notification channel with
        # the form `projects/`project_id`/notificationChannels/`channel_id``. A maximum
        # of 5 channels are allowed. See https://cloud.google.com/billing/docs/how-to/
        # budgets-notification-recipients for more details.
        # Corresponds to the JSON property `monitoringNotificationChannels`
        # @return [Array<String>]
        attr_accessor :monitoring_notification_channels
      
        # Optional. The name of the Pub/Sub topic where budget related messages will be
        # published, in the form `projects/`project_id`/topics/`topic_id``. Updates are
        # sent at regular intervals to the topic. The topic needs to be created before
        # the budget is created; see https://cloud.google.com/billing/docs/how-to/
        # budgets#manage-notifications for more details. Caller is expected to have `
        # pubsub.topics.setIamPolicy` permission on the topic when it's set for a budget,
        # otherwise, the API call will fail with PERMISSION_DENIED. See https://cloud.
        # google.com/billing/docs/how-to/budgets-programmatic-notifications for more
        # details on Pub/Sub roles and permissions.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # Optional. The schema version of the notification sent to `pubsub_topic`. Only "
        # 1.0" is accepted. It represents the JSON schema as defined in https://cloud.
        # google.com/billing/docs/how-to/budgets-programmatic-notifications#
        # notification_format
        # Corresponds to the JSON property `schemaVersion`
        # @return [String]
        attr_accessor :schema_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_default_iam_recipients = args[:disable_default_iam_recipients] if args.key?(:disable_default_iam_recipients)
          @monitoring_notification_channels = args[:monitoring_notification_channels] if args.key?(:monitoring_notification_channels)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @schema_version = args[:schema_version] if args.key?(:schema_version)
        end
      end
      
      # A budget is a plan that describes what you expect to spend on Cloud projects,
      # plus the rules to execute as spend is tracked against that plan, (for example,
      # send an alert when 90% of the target spend is met). Currently all plans are
      # monthly budgets so the usage period(s) tracked are implied (calendar months of
      # usage back-to-back).
      class GoogleCloudBillingBudgetsV1beta1Budget
        include Google::Apis::Core::Hashable
      
        # AllUpdatesRule defines notifications that are sent based on budget spend and
        # thresholds.
        # Corresponds to the JSON property `allUpdatesRule`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1AllUpdatesRule]
        attr_accessor :all_updates_rule
      
        # The budgeted amount for each usage period.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1BudgetAmount]
        attr_accessor :amount
      
        # A filter for a budget, limiting the scope of the cost to calculate.
        # Corresponds to the JSON property `budgetFilter`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Filter]
        attr_accessor :budget_filter
      
        # User data for display name in UI. Validation: <= 60 chars.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Etag to validate that the object is unchanged for a read-modify-
        # write operation. An empty etag will cause an update to overwrite other changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Resource name of the budget. The resource name implies the scope
        # of a budget. Values are of the form `billingAccounts/`billingAccountId`/
        # budgets/`budgetId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Rules that trigger alerts (notifications of thresholds being crossed)
        # when spend exceeds the specified percentages of the budget.
        # Corresponds to the JSON property `thresholdRules`
        # @return [Array<Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ThresholdRule>]
        attr_accessor :threshold_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_updates_rule = args[:all_updates_rule] if args.key?(:all_updates_rule)
          @amount = args[:amount] if args.key?(:amount)
          @budget_filter = args[:budget_filter] if args.key?(:budget_filter)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @threshold_rules = args[:threshold_rules] if args.key?(:threshold_rules)
        end
      end
      
      # The budgeted amount for each usage period.
      class GoogleCloudBillingBudgetsV1beta1BudgetAmount
        include Google::Apis::Core::Hashable
      
        # Describes a budget amount targeted to last period's spend. At this time, the
        # amount is automatically 100% of last period's spend; that is, there are no
        # other options yet. Future configuration will be described here (for example,
        # configuring a percentage of last period's spend).
        # Corresponds to the JSON property `lastPeriodAmount`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1LastPeriodAmount]
        attr_accessor :last_period_amount
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `specifiedAmount`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleTypeMoney]
        attr_accessor :specified_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_period_amount = args[:last_period_amount] if args.key?(:last_period_amount)
          @specified_amount = args[:specified_amount] if args.key?(:specified_amount)
        end
      end
      
      # Request for CreateBudget
      class GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest
        include Google::Apis::Core::Hashable
      
        # A budget is a plan that describes what you expect to spend on Cloud projects,
        # plus the rules to execute as spend is tracked against that plan, (for example,
        # send an alert when 90% of the target spend is met). Currently all plans are
        # monthly budgets so the usage period(s) tracked are implied (calendar months of
        # usage back-to-back).
        # Corresponds to the JSON property `budget`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget]
        attr_accessor :budget
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget = args[:budget] if args.key?(:budget)
        end
      end
      
      # A filter for a budget, limiting the scope of the cost to calculate.
      class GoogleCloudBillingBudgetsV1beta1Filter
        include Google::Apis::Core::Hashable
      
        # Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this
        # is a list of credit types to be subtracted from gross cost to determine the
        # spend for threshold calculations. If Filter.credit_types_treatment is **not**
        # INCLUDE_SPECIFIED_CREDITS, this field must be empty. See [a list of acceptable
        # credit type values](https://cloud.google.com/billing/docs/how-to/export-data-
        # bigquery-tables#credits-type).
        # Corresponds to the JSON property `creditTypes`
        # @return [Array<String>]
        attr_accessor :credit_types
      
        # Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
        # Corresponds to the JSON property `creditTypesTreatment`
        # @return [String]
        attr_accessor :credit_types_treatment
      
        # Optional. A single label and value pair specifying that usage from only this
        # set of labeled resources should be included in the budget. Currently, multiple
        # entries or multiple values per entry are not allowed. If omitted, the report
        # will include all labeled and unlabeled usage.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :labels
      
        # Optional. A set of projects of the form `projects/`project``, specifying that
        # usage from only this set of projects should be included in the budget. If
        # omitted, the report will include all usage for the billing account, regardless
        # of which project the usage occurred on. Only zero or one project can be
        # specified currently.
        # Corresponds to the JSON property `projects`
        # @return [Array<String>]
        attr_accessor :projects
      
        # Optional. A set of services of the form `services/`service_id``, specifying
        # that usage from only this set of services should be included in the budget. If
        # omitted, the report will include usage for all the services. The service names
        # are available through the Catalog API: https://cloud.google.com/billing/v1/how-
        # tos/catalog-api.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        # Optional. A set of subaccounts of the form `billingAccounts/`account_id``,
        # specifying that usage from only this set of subaccounts should be included in
        # the budget. If a subaccount is set to the name of the parent account, usage
        # from the parent account will be included. If omitted, the report will include
        # usage from the parent account and all subaccounts, if they exist.
        # Corresponds to the JSON property `subaccounts`
        # @return [Array<String>]
        attr_accessor :subaccounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credit_types = args[:credit_types] if args.key?(:credit_types)
          @credit_types_treatment = args[:credit_types_treatment] if args.key?(:credit_types_treatment)
          @labels = args[:labels] if args.key?(:labels)
          @projects = args[:projects] if args.key?(:projects)
          @services = args[:services] if args.key?(:services)
          @subaccounts = args[:subaccounts] if args.key?(:subaccounts)
        end
      end
      
      # Describes a budget amount targeted to last period's spend. At this time, the
      # amount is automatically 100% of last period's spend; that is, there are no
      # other options yet. Future configuration will be described here (for example,
      # configuring a percentage of last period's spend).
      class GoogleCloudBillingBudgetsV1beta1LastPeriodAmount
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for ListBudgets
      class GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse
        include Google::Apis::Core::Hashable
      
        # List of the budgets owned by the requested billing account.
        # Corresponds to the JSON property `budgets`
        # @return [Array<Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget>]
        attr_accessor :budgets
      
        # If not empty, indicates that there may be more budgets that match the request;
        # this value should be passed in a new `ListBudgetsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budgets = args[:budgets] if args.key?(:budgets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # ThresholdRule contains a definition of a threshold which triggers an alert (a
      # notification of a threshold being crossed) to be sent when spend goes above
      # the specified amount. Alerts are automatically e-mailed to users with the
      # Billing Account Administrator role or the Billing Account User role. The
      # thresholds here have no effect on notifications sent to anything configured
      # under `Budget.all_updates_rule`.
      class GoogleCloudBillingBudgetsV1beta1ThresholdRule
        include Google::Apis::Core::Hashable
      
        # Optional. The type of basis used to determine if spend has passed the
        # threshold. Behavior defaults to CURRENT_SPEND if not set.
        # Corresponds to the JSON property `spendBasis`
        # @return [String]
        attr_accessor :spend_basis
      
        # Required. Send an alert when this threshold is exceeded. This is a 1.0-based
        # percentage, so 0.5 = 50%. Validation: non-negative number.
        # Corresponds to the JSON property `thresholdPercent`
        # @return [Float]
        attr_accessor :threshold_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spend_basis = args[:spend_basis] if args.key?(:spend_basis)
          @threshold_percent = args[:threshold_percent] if args.key?(:threshold_percent)
        end
      end
      
      # Request for UpdateBudget
      class GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest
        include Google::Apis::Core::Hashable
      
        # A budget is a plan that describes what you expect to spend on Cloud projects,
        # plus the rules to execute as spend is tracked against that plan, (for example,
        # send an alert when 90% of the target spend is met). Currently all plans are
        # monthly budgets so the usage period(s) tracked are implied (calendar months of
        # usage back-to-back).
        # Corresponds to the JSON property `budget`
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget]
        attr_accessor :budget
      
        # Optional. Indicates which fields in the provided budget to update. Read-only
        # fields (such as `name`) cannot be changed. If this is not provided, then only
        # fields with non-default values from the request are updated. See https://
        # developers.google.com/protocol-buffers/docs/proto3#default for more details
        # about default values.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget = args[:budget] if args.key?(:budget)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
    end
  end
end
