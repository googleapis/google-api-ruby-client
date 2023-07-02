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
      
      # A budget is a plan that describes what you expect to spend on Cloud projects,
      # plus the rules to execute as spend is tracked against that plan, (for example,
      # send an alert when 90% of the target spend is met). The budget time period is
      # configurable, with options such as month (default), quarter, year, or custom
      # time period.
      class GoogleCloudBillingBudgetsV1Budget
        include Google::Apis::Core::Hashable
      
        # The budgeted amount for each usage period.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1BudgetAmount]
        attr_accessor :amount
      
        # A filter for a budget, limiting the scope of the cost to calculate.
        # Corresponds to the JSON property `budgetFilter`
        # @return [Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1Filter]
        attr_accessor :budget_filter
      
        # User data for display name in UI. The name must be less than or equal to 60
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Etag to validate that the object is unchanged for a read-modify-
        # write operation. An empty etag causes an update to overwrite other changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Resource name of the budget. The resource name implies the scope
        # of a budget. Values are of the form `billingAccounts/`billingAccountId`/
        # budgets/`budgetId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NotificationsRule defines notifications that are sent based on budget spend
        # and thresholds.
        # Corresponds to the JSON property `notificationsRule`
        # @return [Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1NotificationsRule]
        attr_accessor :notifications_rule
      
        # Optional. Rules that trigger alerts (notifications of thresholds being crossed)
        # when spend exceeds the specified percentages of the budget. Optional for `
        # pubsubTopic` notifications. Required if using email notifications.
        # Corresponds to the JSON property `thresholdRules`
        # @return [Array<Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1ThresholdRule>]
        attr_accessor :threshold_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @budget_filter = args[:budget_filter] if args.key?(:budget_filter)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @notifications_rule = args[:notifications_rule] if args.key?(:notifications_rule)
          @threshold_rules = args[:threshold_rules] if args.key?(:threshold_rules)
        end
      end
      
      # The budgeted amount for each usage period.
      class GoogleCloudBillingBudgetsV1BudgetAmount
        include Google::Apis::Core::Hashable
      
        # Describes a budget amount targeted to the last Filter.calendar_period spend.
        # At this time, the amount is automatically 100% of the last calendar period's
        # spend; that is, there are no other options yet. LastPeriodAmount cannot be set
        # for a budget configured with a Filter.custom_period.
        # Corresponds to the JSON property `lastPeriodAmount`
        # @return [Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1LastPeriodAmount]
        attr_accessor :last_period_amount
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `specifiedAmount`
        # @return [Google::Apis::BillingbudgetsV1::GoogleTypeMoney]
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
      
      # All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
      class GoogleCloudBillingBudgetsV1CustomPeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::BillingbudgetsV1::GoogleTypeDate]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::BillingbudgetsV1::GoogleTypeDate]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # A filter for a budget, limiting the scope of the cost to calculate.
      class GoogleCloudBillingBudgetsV1Filter
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies to track usage for recurring calendar period. For example,
        # assume that CalendarPeriod.QUARTER is set. The budget tracks usage from April
        # 1 to June 30, when the current calendar month is April, May, June. After that,
        # it tracks usage from July 1 to September 30 when the current calendar month is
        # July, August, September, so on.
        # Corresponds to the JSON property `calendarPeriod`
        # @return [String]
        attr_accessor :calendar_period
      
        # Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this
        # is a list of credit types to be subtracted from gross cost to determine the
        # spend for threshold calculations. See [a list of acceptable credit type values]
        # (https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#
        # credits-type). If Filter.credit_types_treatment is **not**
        # INCLUDE_SPECIFIED_CREDITS, this field must be empty.
        # Corresponds to the JSON property `creditTypes`
        # @return [Array<String>]
        attr_accessor :credit_types
      
        # Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
        # Corresponds to the JSON property `creditTypesTreatment`
        # @return [String]
        attr_accessor :credit_types_treatment
      
        # All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
        # Corresponds to the JSON property `customPeriod`
        # @return [Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1CustomPeriod]
        attr_accessor :custom_period
      
        # Optional. A single label and value pair specifying that usage from only this
        # set of labeled resources should be included in the budget. If omitted, the
        # report includes all labeled and unlabeled usage. An object containing a single
        # `"key": value` pair. Example: `` "name": "wrench" ``. _Currently, multiple
        # entries or multiple values per entry are not allowed._
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :labels
      
        # Optional. A set of projects of the form `projects/`project``, specifying that
        # usage from only this set of projects should be included in the budget. If
        # omitted, the report includes all usage for the billing account, regardless of
        # which project the usage occurred on.
        # Corresponds to the JSON property `projects`
        # @return [Array<String>]
        attr_accessor :projects
      
        # Optional. A set of folder and organization names of the form `folders/`
        # folderId`` or `organizations/`organizationId``, specifying that usage from
        # only this set of folders and organizations should be included in the budget.
        # If omitted, the budget includes all usage that the billing account pays for.
        # If the folder or organization contains projects that are paid for by a
        # different Cloud Billing account, the budget *doesn't* apply to those projects.
        # Corresponds to the JSON property `resourceAncestors`
        # @return [Array<String>]
        attr_accessor :resource_ancestors
      
        # Optional. A set of services of the form `services/`service_id``, specifying
        # that usage from only this set of services should be included in the budget. If
        # omitted, the report includes usage for all the services. The service names are
        # available through the Catalog API: https://cloud.google.com/billing/v1/how-tos/
        # catalog-api.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        # Optional. A set of subaccounts of the form `billingAccounts/`account_id``,
        # specifying that usage from only this set of subaccounts should be included in
        # the budget. If a subaccount is set to the name of the parent account, usage
        # from the parent account is included. If the field is omitted, the report
        # includes usage from the parent account and all subaccounts, if they exist.
        # Corresponds to the JSON property `subaccounts`
        # @return [Array<String>]
        attr_accessor :subaccounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendar_period = args[:calendar_period] if args.key?(:calendar_period)
          @credit_types = args[:credit_types] if args.key?(:credit_types)
          @credit_types_treatment = args[:credit_types_treatment] if args.key?(:credit_types_treatment)
          @custom_period = args[:custom_period] if args.key?(:custom_period)
          @labels = args[:labels] if args.key?(:labels)
          @projects = args[:projects] if args.key?(:projects)
          @resource_ancestors = args[:resource_ancestors] if args.key?(:resource_ancestors)
          @services = args[:services] if args.key?(:services)
          @subaccounts = args[:subaccounts] if args.key?(:subaccounts)
        end
      end
      
      # Describes a budget amount targeted to the last Filter.calendar_period spend.
      # At this time, the amount is automatically 100% of the last calendar period's
      # spend; that is, there are no other options yet. LastPeriodAmount cannot be set
      # for a budget configured with a Filter.custom_period.
      class GoogleCloudBillingBudgetsV1LastPeriodAmount
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for ListBudgets
      class GoogleCloudBillingBudgetsV1ListBudgetsResponse
        include Google::Apis::Core::Hashable
      
        # List of the budgets owned by the requested billing account.
        # Corresponds to the JSON property `budgets`
        # @return [Array<Google::Apis::BillingbudgetsV1::GoogleCloudBillingBudgetsV1Budget>]
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
      
      # NotificationsRule defines notifications that are sent based on budget spend
      # and thresholds.
      class GoogleCloudBillingBudgetsV1NotificationsRule
        include Google::Apis::Core::Hashable
      
        # Optional. When set to true, disables default notifications sent when a
        # threshold is exceeded. Default notifications are sent to those with Billing
        # Account Administrator and Billing Account User IAM roles for the target
        # account.
        # Corresponds to the JSON property `disableDefaultIamRecipients`
        # @return [Boolean]
        attr_accessor :disable_default_iam_recipients
        alias_method :disable_default_iam_recipients?, :disable_default_iam_recipients
      
        # Optional. Email targets to send notifications to when a threshold is exceeded.
        # This is in addition to the `DefaultIamRecipients` who receive alert emails
        # based on their billing account IAM role. The value is the full REST resource
        # name of a Cloud Monitoring email notification channel with the form `projects/`
        # project_id`/notificationChannels/`channel_id``. A maximum of 5 email
        # notifications are allowed. To customize budget alert email recipients with
        # monitoring notification channels, you _must create the monitoring notification
        # channels before you link them to a budget_. For guidance on setting up
        # notification channels to use with budgets, see [Customize budget alert email
        # recipients](https://cloud.google.com/billing/docs/how-to/budgets-notification-
        # recipients). For Cloud Billing budget alerts, you _must use email notification
        # channels_. The other types of notification channels are _not_ supported, such
        # as Slack, SMS, or PagerDuty. If you want to [send budget notifications to
        # Slack](https://cloud.google.com/billing/docs/how-to/notify#
        # send_notifications_to_slack), use a pubsubTopic and configure [programmatic
        # notifications](https://cloud.google.com/billing/docs/how-to/budgets-
        # programmatic-notifications).
        # Corresponds to the JSON property `monitoringNotificationChannels`
        # @return [Array<String>]
        attr_accessor :monitoring_notification_channels
      
        # Optional. The name of the Pub/Sub topic where budget-related messages are
        # published, in the form `projects/`project_id`/topics/`topic_id``. Updates are
        # sent to the topic at regular intervals; the timing of the updates is not
        # dependent on the [threshold rules](#thresholdrule) you've set. Note that if
        # you want your [Pub/Sub JSON object](https://cloud.google.com/billing/docs/how-
        # to/budgets-programmatic-notifications#notification_format) to contain data for
        # `alertThresholdExceeded`, you need at least one [alert threshold rule](#
        # thresholdrule). When you set threshold rules, you must also enable at least
        # one of the email notification options, either using the default IAM recipients
        # or Cloud Monitoring email notification channels. To use Pub/Sub topics with
        # budgets, you must do the following: 1. Create the Pub/Sub topic before
        # connecting it to your budget. For guidance, see [Manage programmatic budget
        # alert notifications](https://cloud.google.com/billing/docs/how-to/budgets-
        # programmatic-notifications). 2. Grant the API caller the `pubsub.topics.
        # setIamPolicy` permission on the Pub/Sub topic. If not set, the API call fails
        # with PERMISSION_DENIED. For additional details on Pub/Sub roles and
        # permissions, see [Permissions required for this task](https://cloud.google.com/
        # billing/docs/how-to/budgets-programmatic-notifications#
        # permissions_required_for_this_task).
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # Optional. Required when NotificationsRule.pubsub_topic is set. The schema
        # version of the notification sent to NotificationsRule.pubsub_topic. Only "1.0"
        # is accepted. It represents the JSON schema as defined in https://cloud.google.
        # com/billing/docs/how-to/budgets-programmatic-notifications#notification_format.
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
      
      # ThresholdRule contains the definition of a threshold. Threshold rules define
      # the triggering events used to generate a budget notification email. When a
      # threshold is crossed (spend exceeds the specified percentages of the budget),
      # budget alert emails are sent to the email recipients you specify in the [
      # NotificationsRule](#notificationsrule). Threshold rules also affect the fields
      # included in the [JSON data object](https://cloud.google.com/billing/docs/how-
      # to/budgets-programmatic-notifications#notification_format) sent to a Pub/Sub
      # topic. Threshold rules are _required_ if using email notifications. Threshold
      # rules are _optional_ if only setting a [`pubsubTopic` NotificationsRule](#
      # NotificationsRule), unless you want your JSON data object to include data
      # about the thresholds you set. For more information, see [set budget threshold
      # rules and actions](https://cloud.google.com/billing/docs/how-to/budgets#budget-
      # actions).
      class GoogleCloudBillingBudgetsV1ThresholdRule
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
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
