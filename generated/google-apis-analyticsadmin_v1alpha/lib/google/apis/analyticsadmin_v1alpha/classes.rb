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
    module AnalyticsadminV1alpha
      
      # To express that the result needs to be between two numbers (inclusive).
      class GoogleAnalyticsAdminV1alphaAccessBetweenFilter
        include Google::Apis::Core::Hashable
      
        # To represent a number.
        # Corresponds to the JSON property `fromValue`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue]
        attr_accessor :from_value
      
        # To represent a number.
        # Corresponds to the JSON property `toValue`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue]
        attr_accessor :to_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_value = args[:from_value] if args.key?(:from_value)
          @to_value = args[:to_value] if args.key?(:to_value)
        end
      end
      
      # A binding of a user to a set of roles.
      class GoogleAnalyticsAdminV1alphaAccessBinding
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of this binding. Format: accounts/`account`/
        # accessBindings/`access_binding` or properties/`property`/accessBindings/`
        # access_binding` Example: "accounts/100/accessBindings/200"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of roles for to grant to the parent resource. Valid values:
        # predefinedRoles/viewer predefinedRoles/analyst predefinedRoles/editor
        # predefinedRoles/admin predefinedRoles/no-cost-data predefinedRoles/no-revenue-
        # data For users, if an empty list of roles is set, this AccessBinding will be
        # deleted.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        # If set, the email address of the user to set roles for. Format: "someuser@
        # gmail.com"
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @roles = args[:roles] if args.key?(:roles)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # A contiguous range of days: startDate, startDate + 1, ..., endDate.
      class GoogleAnalyticsAdminV1alphaAccessDateRange
        include Google::Apis::Core::Hashable
      
        # The inclusive end date for the query in the format `YYYY-MM-DD`. Cannot be
        # before `startDate`. The format `NdaysAgo`, `yesterday`, or `today` is also
        # accepted, and in that case, the date is inferred based on the current time in
        # the request's time zone.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # The inclusive start date for the query in the format `YYYY-MM-DD`. Cannot be
        # after `endDate`. The format `NdaysAgo`, `yesterday`, or `today` is also
        # accepted, and in that case, the date is inferred based on the current time in
        # the request's time zone.
        # Corresponds to the JSON property `startDate`
        # @return [String]
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
      
      # Dimensions are attributes of your data. For example, the dimension `userEmail`
      # indicates the email of the user that accessed reporting data. Dimension values
      # in report responses are strings.
      class GoogleAnalyticsAdminV1alphaAccessDimension
        include Google::Apis::Core::Hashable
      
        # The API name of the dimension. See [Data Access Schema](https://developers.
        # google.com/analytics/devguides/config/admin/v1/access-api-schema) for the list
        # of dimensions supported in this API. Dimensions are referenced by name in `
        # dimensionFilter` and `orderBys`.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
        end
      end
      
      # Describes a dimension column in the report. Dimensions requested in a report
      # produce column entries within rows and DimensionHeaders. However, dimensions
      # used exclusively within filters or expressions do not produce columns in a
      # report; correspondingly, those dimensions do not produce headers.
      class GoogleAnalyticsAdminV1alphaAccessDimensionHeader
        include Google::Apis::Core::Hashable
      
        # The dimension's name; for example 'userEmail'.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
        end
      end
      
      # The value of a dimension.
      class GoogleAnalyticsAdminV1alphaAccessDimensionValue
        include Google::Apis::Core::Hashable
      
        # The dimension value. For example, this value may be 'France' for the 'country'
        # dimension.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An expression to filter dimension or metric values.
      class GoogleAnalyticsAdminV1alphaAccessFilter
        include Google::Apis::Core::Hashable
      
        # To express that the result needs to be between two numbers (inclusive).
        # Corresponds to the JSON property `betweenFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBetweenFilter]
        attr_accessor :between_filter
      
        # The dimension name or metric name.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The result needs to be in a list of string values.
        # Corresponds to the JSON property `inListFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessInListFilter]
        attr_accessor :in_list_filter
      
        # Filters for numeric or date values.
        # Corresponds to the JSON property `numericFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessNumericFilter]
        attr_accessor :numeric_filter
      
        # The filter for strings.
        # Corresponds to the JSON property `stringFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessStringFilter]
        attr_accessor :string_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @between_filter = args[:between_filter] if args.key?(:between_filter)
          @field_name = args[:field_name] if args.key?(:field_name)
          @in_list_filter = args[:in_list_filter] if args.key?(:in_list_filter)
          @numeric_filter = args[:numeric_filter] if args.key?(:numeric_filter)
          @string_filter = args[:string_filter] if args.key?(:string_filter)
        end
      end
      
      # Expresses dimension or metric filters. The fields in the same expression need
      # to be either all dimensions or all metrics.
      class GoogleAnalyticsAdminV1alphaAccessFilterExpression
        include Google::Apis::Core::Hashable
      
        # An expression to filter dimension or metric values.
        # Corresponds to the JSON property `accessFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilter]
        attr_accessor :access_filter
      
        # A list of filter expressions.
        # Corresponds to the JSON property `andGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpressionList]
        attr_accessor :and_group
      
        # Expresses dimension or metric filters. The fields in the same expression need
        # to be either all dimensions or all metrics.
        # Corresponds to the JSON property `notExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression]
        attr_accessor :not_expression
      
        # A list of filter expressions.
        # Corresponds to the JSON property `orGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpressionList]
        attr_accessor :or_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_filter = args[:access_filter] if args.key?(:access_filter)
          @and_group = args[:and_group] if args.key?(:and_group)
          @not_expression = args[:not_expression] if args.key?(:not_expression)
          @or_group = args[:or_group] if args.key?(:or_group)
        end
      end
      
      # A list of filter expressions.
      class GoogleAnalyticsAdminV1alphaAccessFilterExpressionList
        include Google::Apis::Core::Hashable
      
        # A list of filter expressions.
        # Corresponds to the JSON property `expressions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression>]
        attr_accessor :expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expressions = args[:expressions] if args.key?(:expressions)
        end
      end
      
      # The result needs to be in a list of string values.
      class GoogleAnalyticsAdminV1alphaAccessInListFilter
        include Google::Apis::Core::Hashable
      
        # If true, the string value is case sensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # The list of string values. Must be non-empty.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The quantitative measurements of a report. For example, the metric `
      # accessCount` is the total number of data access records.
      class GoogleAnalyticsAdminV1alphaAccessMetric
        include Google::Apis::Core::Hashable
      
        # The API name of the metric. See [Data Access Schema](https://developers.google.
        # com/analytics/devguides/config/admin/v1/access-api-schema) for the list of
        # metrics supported in this API. Metrics are referenced by name in `metricFilter`
        # & `orderBys`.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
        end
      end
      
      # Describes a metric column in the report. Visible metrics requested in a report
      # produce column entries within rows and MetricHeaders. However, metrics used
      # exclusively within filters or expressions do not produce columns in a report;
      # correspondingly, those metrics do not produce headers.
      class GoogleAnalyticsAdminV1alphaAccessMetricHeader
        include Google::Apis::Core::Hashable
      
        # The metric's name; for example 'accessCount'.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
        end
      end
      
      # The value of a metric.
      class GoogleAnalyticsAdminV1alphaAccessMetricValue
        include Google::Apis::Core::Hashable
      
        # The measurement value. For example, this value may be '13'.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Filters for numeric or date values.
      class GoogleAnalyticsAdminV1alphaAccessNumericFilter
        include Google::Apis::Core::Hashable
      
        # The operation type for this filter.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # To represent a number.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Order bys define how rows will be sorted in the response. For example,
      # ordering rows by descending access count is one ordering, and ordering rows by
      # the country string is a different ordering.
      class GoogleAnalyticsAdminV1alphaAccessOrderBy
        include Google::Apis::Core::Hashable
      
        # If true, sorts by descending order. If false or unspecified, sorts in
        # ascending order.
        # Corresponds to the JSON property `desc`
        # @return [Boolean]
        attr_accessor :desc
        alias_method :desc?, :desc
      
        # Sorts by dimension values.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy]
        attr_accessor :dimension
      
        # Sorts by metric values.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desc = args[:desc] if args.key?(:desc)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # Sorts by dimension values.
      class GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy
        include Google::Apis::Core::Hashable
      
        # A dimension name in the request to order by.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # Controls the rule for dimension value ordering.
        # Corresponds to the JSON property `orderType`
        # @return [String]
        attr_accessor :order_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
          @order_type = args[:order_type] if args.key?(:order_type)
        end
      end
      
      # Sorts by metric values.
      class GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy
        include Google::Apis::Core::Hashable
      
        # A metric name in the request to order by.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
        end
      end
      
      # Current state of all quotas for this Analytics property. If any quota for a
      # property is exhausted, all requests to that property will return Resource
      # Exhausted errors.
      class GoogleAnalyticsAdminV1alphaAccessQuota
        include Google::Apis::Core::Hashable
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `concurrentRequests`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus]
        attr_accessor :concurrent_requests
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `serverErrorsPerProjectPerHour`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus]
        attr_accessor :server_errors_per_project_per_hour
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `tokensPerDay`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus]
        attr_accessor :tokens_per_day
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `tokensPerHour`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus]
        attr_accessor :tokens_per_hour
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `tokensPerProjectPerHour`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus]
        attr_accessor :tokens_per_project_per_hour
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrent_requests = args[:concurrent_requests] if args.key?(:concurrent_requests)
          @server_errors_per_project_per_hour = args[:server_errors_per_project_per_hour] if args.key?(:server_errors_per_project_per_hour)
          @tokens_per_day = args[:tokens_per_day] if args.key?(:tokens_per_day)
          @tokens_per_hour = args[:tokens_per_hour] if args.key?(:tokens_per_hour)
          @tokens_per_project_per_hour = args[:tokens_per_project_per_hour] if args.key?(:tokens_per_project_per_hour)
        end
      end
      
      # Current state for a particular quota group.
      class GoogleAnalyticsAdminV1alphaAccessQuotaStatus
        include Google::Apis::Core::Hashable
      
        # Quota consumed by this request.
        # Corresponds to the JSON property `consumed`
        # @return [Fixnum]
        attr_accessor :consumed
      
        # Quota remaining after this request.
        # Corresponds to the JSON property `remaining`
        # @return [Fixnum]
        attr_accessor :remaining
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumed = args[:consumed] if args.key?(:consumed)
          @remaining = args[:remaining] if args.key?(:remaining)
        end
      end
      
      # Access report data for each row.
      class GoogleAnalyticsAdminV1alphaAccessRow
        include Google::Apis::Core::Hashable
      
        # List of dimension values. These values are in the same order as specified in
        # the request.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimensionValue>]
        attr_accessor :dimension_values
      
        # List of metric values. These values are in the same order as specified in the
        # request.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # The filter for strings.
      class GoogleAnalyticsAdminV1alphaAccessStringFilter
        include Google::Apis::Core::Hashable
      
        # If true, the string value is case sensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # The match type for this filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # The string value used for the matching.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @match_type = args[:match_type] if args.key?(:match_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A resource message representing a Google Analytics account.
      class GoogleAnalyticsAdminV1alphaAccount
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this account was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Indicates whether this Account is soft-deleted or not. Deleted
        # accounts are excluded from List results unless specifically requested.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Required. Human-readable display name for this account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this account. Format: accounts/`account` Example:
        # "accounts/100"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Country of business. Must be a Unicode CLDR region code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Output only. Time when account payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deleted = args[:deleted] if args.key?(:deleted)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A virtual resource representing an overview of an account and all its child
      # GA4 properties.
      class GoogleAnalyticsAdminV1alphaAccountSummary
        include Google::Apis::Core::Hashable
      
        # Resource name of account referred to by this account summary Format: accounts/`
        # account_id` Example: "accounts/1000"
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # Display name for the account referred to in this account summary.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for this account summary. Format: accountSummaries/`account_id`
        # Example: "accountSummaries/1000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of summaries for child accounts of this account.
        # Corresponds to the JSON property `propertySummaries`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPropertySummary>]
        attr_accessor :property_summaries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @property_summaries = args[:property_summaries] if args.key?(:property_summaries)
        end
      end
      
      # Request message for AcknowledgeUserDataCollection RPC.
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
        include Google::Apis::Core::Hashable
      
        # Required. An acknowledgement that the caller of this method understands the
        # terms of user data collection. This field must contain the exact value: "I
        # acknowledge that I have the necessary privacy disclosures and rights from my
        # end users for the collection and processing of their data, including the
        # association of such data with the visitation information Google Analytics
        # collects from my site and/or app property."
        # Corresponds to the JSON property `acknowledgement`
        # @return [String]
        attr_accessor :acknowledgement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledgement = args[:acknowledgement] if args.key?(:acknowledgement)
        end
      end
      
      # Response message for AcknowledgeUserDataCollection RPC.
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A link between a GA4 Property and an AdSense for Content ad client.
      class GoogleAnalyticsAdminV1alphaAdSenseLink
        include Google::Apis::Core::Hashable
      
        # Immutable. The AdSense ad client code that the GA4 property is linked to.
        # Example format: "ca-pub-1234567890"
        # Corresponds to the JSON property `adClientCode`
        # @return [String]
        attr_accessor :ad_client_code
      
        # Output only. The resource name for this AdSense Link resource. Format:
        # properties/`propertyId`/adSenseLinks/`linkId` Example: properties/1234/
        # adSenseLinks/6789
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_client_code = args[:ad_client_code] if args.key?(:ad_client_code)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        include Google::Apis::Core::Hashable
      
        # A link between a GA4 property and a Display & Video 360 advertiser.
        # Corresponds to the JSON property `displayVideo360AdvertiserLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        attr_accessor :display_video360_advertiser_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_video360_advertiser_link = args[:display_video360_advertiser_link] if args.key?(:display_video360_advertiser_link)
        end
      end
      
      # Request message for ArchiveAudience RPC.
      class GoogleAnalyticsAdminV1alphaArchiveAudienceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ArchiveCustomDimension RPC.
      class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ArchiveCustomMetric RPC.
      class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The attribution settings used for a given property. This is a singleton
      # resource.
      class GoogleAnalyticsAdminV1alphaAttributionSettings
        include Google::Apis::Core::Hashable
      
        # Required. The lookback window configuration for acquisition conversion events.
        # The default window size is 30 days.
        # Corresponds to the JSON property `acquisitionConversionEventLookbackWindow`
        # @return [String]
        attr_accessor :acquisition_conversion_event_lookback_window
      
        # Required. The Conversion Export Scope for data exported to linked Ads Accounts.
        # Corresponds to the JSON property `adsWebConversionDataExportScope`
        # @return [String]
        attr_accessor :ads_web_conversion_data_export_scope
      
        # Output only. Resource name of this attribution settings resource. Format:
        # properties/`property_id`/attributionSettings Example: "properties/1000/
        # attributionSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The lookback window for all other, non-acquisition conversion events.
        # The default window size is 90 days.
        # Corresponds to the JSON property `otherConversionEventLookbackWindow`
        # @return [String]
        attr_accessor :other_conversion_event_lookback_window
      
        # Required. The reporting attribution model used to calculate conversion credit
        # in this property's reports. Changing the attribution model will apply to both
        # historical and future data. These changes will be reflected in reports with
        # conversion and revenue data. User and session data will be unaffected.
        # Corresponds to the JSON property `reportingAttributionModel`
        # @return [String]
        attr_accessor :reporting_attribution_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquisition_conversion_event_lookback_window = args[:acquisition_conversion_event_lookback_window] if args.key?(:acquisition_conversion_event_lookback_window)
          @ads_web_conversion_data_export_scope = args[:ads_web_conversion_data_export_scope] if args.key?(:ads_web_conversion_data_export_scope)
          @name = args[:name] if args.key?(:name)
          @other_conversion_event_lookback_window = args[:other_conversion_event_lookback_window] if args.key?(:other_conversion_event_lookback_window)
          @reporting_attribution_model = args[:reporting_attribution_model] if args.key?(:reporting_attribution_model)
        end
      end
      
      # A resource message representing a GA4 Audience.
      class GoogleAnalyticsAdminV1alphaAudience
        include Google::Apis::Core::Hashable
      
        # Output only. It is automatically set by GA to false if this is an NPA Audience
        # and is excluded from ads personalization.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Required. The description of the Audience.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the Audience.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Specifies an event to log when a user joins the Audience.
        # Corresponds to the JSON property `eventTrigger`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceEventTrigger]
        attr_accessor :event_trigger
      
        # Immutable. Specifies how long an exclusion lasts for users that meet the
        # exclusion filter. It is applied to all EXCLUDE filter clauses and is ignored
        # when there is no EXCLUDE filter clause in the Audience.
        # Corresponds to the JSON property `exclusionDurationMode`
        # @return [String]
        attr_accessor :exclusion_duration_mode
      
        # Required. Immutable. Unordered list. Filter clauses that define the Audience.
        # All clauses will be AND’ed together.
        # Corresponds to the JSON property `filterClauses`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterClause>]
        attr_accessor :filter_clauses
      
        # Required. Immutable. The duration a user should stay in an Audience. It cannot
        # be set to more than 540 days.
        # Corresponds to the JSON property `membershipDurationDays`
        # @return [Fixnum]
        attr_accessor :membership_duration_days
      
        # Output only. The resource name for this Audience resource. Format: properties/`
        # propertyId`/audiences/`audienceId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @event_trigger = args[:event_trigger] if args.key?(:event_trigger)
          @exclusion_duration_mode = args[:exclusion_duration_mode] if args.key?(:exclusion_duration_mode)
          @filter_clauses = args[:filter_clauses] if args.key?(:filter_clauses)
          @membership_duration_days = args[:membership_duration_days] if args.key?(:membership_duration_days)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A specific filter for a single dimension or metric.
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether this filter needs dynamic evaluation or not. If
        # set to true, users join the Audience if they ever met the condition (static
        # evaluation). If unset or set to false, user evaluation for an Audience is
        # dynamic; users are added to an Audience when they meet the conditions and then
        # removed when they no longer meet them. This can only be set when Audience
        # scope is ACROSS_ALL_SESSIONS.
        # Corresponds to the JSON property `atAnyPointInTime`
        # @return [Boolean]
        attr_accessor :at_any_point_in_time
        alias_method :at_any_point_in_time?, :at_any_point_in_time
      
        # A filter for numeric or date values between certain values on a dimension or
        # metric.
        # Corresponds to the JSON property `betweenFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter]
        attr_accessor :between_filter
      
        # Required. Immutable. The dimension name or metric name to filter. If the field
        # name refers to a custom dimension or metric, a scope prefix will be added to
        # the front of the custom dimensions or metric name. For more on scope prefixes
        # or custom dimensions/metrics, reference the [Google Analytics Data API
        # documentation] (https://developers.google.com/analytics/devguides/reporting/
        # data/v1/api-schema#custom_dimensions).
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # Optional. If set, specifies the time window for which to evaluate data in
        # number of days. If not set, then audience data is evaluated against lifetime
        # data (For example, infinite time window). For example, if set to 1 day, only
        # the current day's data is evaluated. The reference point is the current day
        # when at_any_point_in_time is unset or false. It can only be set when Audience
        # scope is ACROSS_ALL_SESSIONS and cannot be greater than 60 days.
        # Corresponds to the JSON property `inAnyNDayPeriod`
        # @return [Fixnum]
        attr_accessor :in_any_n_day_period
      
        # A filter for a string dimension that matches a particular list of options.
        # Corresponds to the JSON property `inListFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter]
        attr_accessor :in_list_filter
      
        # A filter for numeric or date values on a dimension or metric.
        # Corresponds to the JSON property `numericFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter]
        attr_accessor :numeric_filter
      
        # A filter for a string-type dimension that matches a particular pattern.
        # Corresponds to the JSON property `stringFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter]
        attr_accessor :string_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @at_any_point_in_time = args[:at_any_point_in_time] if args.key?(:at_any_point_in_time)
          @between_filter = args[:between_filter] if args.key?(:between_filter)
          @field_name = args[:field_name] if args.key?(:field_name)
          @in_any_n_day_period = args[:in_any_n_day_period] if args.key?(:in_any_n_day_period)
          @in_list_filter = args[:in_list_filter] if args.key?(:in_list_filter)
          @numeric_filter = args[:numeric_filter] if args.key?(:numeric_filter)
          @string_filter = args[:string_filter] if args.key?(:string_filter)
        end
      end
      
      # A filter for numeric or date values between certain values on a dimension or
      # metric.
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter
        include Google::Apis::Core::Hashable
      
        # To represent a number.
        # Corresponds to the JSON property `fromValue`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue]
        attr_accessor :from_value
      
        # To represent a number.
        # Corresponds to the JSON property `toValue`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue]
        attr_accessor :to_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_value = args[:from_value] if args.key?(:from_value)
          @to_value = args[:to_value] if args.key?(:to_value)
        end
      end
      
      # A filter for a string dimension that matches a particular list of options.
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the match is case-sensitive. If false, the match is case-
        # insensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Required. The list of possible string values to match against. Must be non-
        # empty.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A filter for numeric or date values on a dimension or metric.
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter
        include Google::Apis::Core::Hashable
      
        # Required. The operation applied to a numeric filter.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # To represent a number.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # To represent a number.
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue
        include Google::Apis::Core::Hashable
      
        # Double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Integer value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
        end
      end
      
      # A filter for a string-type dimension that matches a particular pattern.
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the match is case-sensitive. If false, the match is case-
        # insensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Required. The match type for the string filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # Required. The string value to be matched against.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @match_type = args[:match_type] if args.key?(:match_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A filter that matches events of a single event name. If an event parameter is
      # specified, only the subset of events that match both the single event name and
      # the parameter filter expressions match this event filter.
      class GoogleAnalyticsAdminV1alphaAudienceEventFilter
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The name of the event to match against.
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # A logical expression of Audience dimension, metric, or event filters.
        # Corresponds to the JSON property `eventParameterFilterExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression]
        attr_accessor :event_parameter_filter_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_name = args[:event_name] if args.key?(:event_name)
          @event_parameter_filter_expression = args[:event_parameter_filter_expression] if args.key?(:event_parameter_filter_expression)
        end
      end
      
      # Specifies an event to log when a user joins the Audience.
      class GoogleAnalyticsAdminV1alphaAudienceEventTrigger
        include Google::Apis::Core::Hashable
      
        # Required. The event name that will be logged.
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # Required. When to log the event.
        # Corresponds to the JSON property `logCondition`
        # @return [String]
        attr_accessor :log_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_name = args[:event_name] if args.key?(:event_name)
          @log_condition = args[:log_condition] if args.key?(:log_condition)
        end
      end
      
      # A clause for defining either a simple or sequence filter. A filter can be
      # inclusive (For example, users satisfying the filter clause are included in the
      # Audience) or exclusive (For example, users satisfying the filter clause are
      # excluded from the Audience).
      class GoogleAnalyticsAdminV1alphaAudienceFilterClause
        include Google::Apis::Core::Hashable
      
        # Required. Specifies whether this is an include or exclude filter clause.
        # Corresponds to the JSON property `clauseType`
        # @return [String]
        attr_accessor :clause_type
      
        # Defines filters that must occur in a specific order for the user to be a
        # member of the Audience.
        # Corresponds to the JSON property `sequenceFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSequenceFilter]
        attr_accessor :sequence_filter
      
        # Defines a simple filter that a user must satisfy to be a member of the
        # Audience.
        # Corresponds to the JSON property `simpleFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSimpleFilter]
        attr_accessor :simple_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clause_type = args[:clause_type] if args.key?(:clause_type)
          @sequence_filter = args[:sequence_filter] if args.key?(:sequence_filter)
          @simple_filter = args[:simple_filter] if args.key?(:simple_filter)
        end
      end
      
      # A logical expression of Audience dimension, metric, or event filters.
      class GoogleAnalyticsAdminV1alphaAudienceFilterExpression
        include Google::Apis::Core::Hashable
      
        # A list of Audience filter expressions.
        # Corresponds to the JSON property `andGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList]
        attr_accessor :and_group
      
        # A specific filter for a single dimension or metric.
        # Corresponds to the JSON property `dimensionOrMetricFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter]
        attr_accessor :dimension_or_metric_filter
      
        # A filter that matches events of a single event name. If an event parameter is
        # specified, only the subset of events that match both the single event name and
        # the parameter filter expressions match this event filter.
        # Corresponds to the JSON property `eventFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceEventFilter]
        attr_accessor :event_filter
      
        # A logical expression of Audience dimension, metric, or event filters.
        # Corresponds to the JSON property `notExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression]
        attr_accessor :not_expression
      
        # A list of Audience filter expressions.
        # Corresponds to the JSON property `orGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList]
        attr_accessor :or_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @and_group = args[:and_group] if args.key?(:and_group)
          @dimension_or_metric_filter = args[:dimension_or_metric_filter] if args.key?(:dimension_or_metric_filter)
          @event_filter = args[:event_filter] if args.key?(:event_filter)
          @not_expression = args[:not_expression] if args.key?(:not_expression)
          @or_group = args[:or_group] if args.key?(:or_group)
        end
      end
      
      # A list of Audience filter expressions.
      class GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList
        include Google::Apis::Core::Hashable
      
        # A list of Audience filter expressions.
        # Corresponds to the JSON property `filterExpressions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression>]
        attr_accessor :filter_expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_expressions = args[:filter_expressions] if args.key?(:filter_expressions)
        end
      end
      
      # Defines filters that must occur in a specific order for the user to be a
      # member of the Audience.
      class GoogleAnalyticsAdminV1alphaAudienceSequenceFilter
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Specifies the scope for this filter.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Optional. Defines the time period in which the whole sequence must occur.
        # Corresponds to the JSON property `sequenceMaximumDuration`
        # @return [String]
        attr_accessor :sequence_maximum_duration
      
        # Required. An ordered sequence of steps. A user must complete each step in
        # order to join the sequence filter.
        # Corresponds to the JSON property `sequenceSteps`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep>]
        attr_accessor :sequence_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scope = args[:scope] if args.key?(:scope)
          @sequence_maximum_duration = args[:sequence_maximum_duration] if args.key?(:sequence_maximum_duration)
          @sequence_steps = args[:sequence_steps] if args.key?(:sequence_steps)
        end
      end
      
      # A condition that must occur in the specified step order for this user to match
      # the sequence.
      class GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
        include Google::Apis::Core::Hashable
      
        # Optional. When set, this step must be satisfied within the constraint_duration
        # of the previous step (For example, t[i] - t[i-1] <= constraint_duration). If
        # not set, there is no duration requirement (the duration is effectively
        # unlimited). It is ignored for the first step.
        # Corresponds to the JSON property `constraintDuration`
        # @return [String]
        attr_accessor :constraint_duration
      
        # A logical expression of Audience dimension, metric, or event filters.
        # Corresponds to the JSON property `filterExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression]
        attr_accessor :filter_expression
      
        # Optional. If true, the event satisfying this step must be the very next event
        # after the event satisfying the last step. If unset or false, this step
        # indirectly follows the prior step; for example, there may be events between
        # the prior step and this step. It is ignored for the first step.
        # Corresponds to the JSON property `immediatelyFollows`
        # @return [Boolean]
        attr_accessor :immediately_follows
        alias_method :immediately_follows?, :immediately_follows
      
        # Required. Immutable. Specifies the scope for this step.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraint_duration = args[:constraint_duration] if args.key?(:constraint_duration)
          @filter_expression = args[:filter_expression] if args.key?(:filter_expression)
          @immediately_follows = args[:immediately_follows] if args.key?(:immediately_follows)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Defines a simple filter that a user must satisfy to be a member of the
      # Audience.
      class GoogleAnalyticsAdminV1alphaAudienceSimpleFilter
        include Google::Apis::Core::Hashable
      
        # A logical expression of Audience dimension, metric, or event filters.
        # Corresponds to the JSON property `filterExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression]
        attr_accessor :filter_expression
      
        # Required. Immutable. Specifies the scope for this filter.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_expression = args[:filter_expression] if args.key?(:filter_expression)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Request message for BatchCreateAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the access bindings to create. A maximum of
        # 1000 access bindings can be created in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchCreateAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The access bindings created.
        # Corresponds to the JSON property `accessBindings`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding>]
        attr_accessor :access_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_bindings = args[:access_bindings] if args.key?(:access_bindings)
        end
      end
      
      # Request message for BatchDeleteAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the access bindings to delete. A maximum of
        # 1000 access bindings can be deleted in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchGetAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The requested access bindings.
        # Corresponds to the JSON property `accessBindings`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding>]
        attr_accessor :access_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_bindings = args[:access_bindings] if args.key?(:access_bindings)
        end
      end
      
      # Request message for BatchUpdateAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the access bindings to update. A maximum of
        # 1000 access bindings can be updated in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchUpdateAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The access bindings updated.
        # Corresponds to the JSON property `accessBindings`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding>]
        attr_accessor :access_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_bindings = args[:access_bindings] if args.key?(:access_bindings)
        end
      end
      
      # A link between a GA4 Property and BigQuery project.
      class GoogleAnalyticsAdminV1alphaBigQueryLink
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the link was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # If set true, enables daily data export to the linked Google Cloud project.
        # Corresponds to the JSON property `dailyExportEnabled`
        # @return [Boolean]
        attr_accessor :daily_export_enabled
        alias_method :daily_export_enabled?, :daily_export_enabled
      
        # The list of event names that will be excluded from exports.
        # Corresponds to the JSON property `excludedEvents`
        # @return [Array<String>]
        attr_accessor :excluded_events
      
        # The list of streams under the parent property for which data will be exported.
        # Format: properties/`property_id`/dataStreams/`stream_id` Example: ['properties/
        # 1000/dataStreams/2000']
        # Corresponds to the JSON property `exportStreams`
        # @return [Array<String>]
        attr_accessor :export_streams
      
        # If set true, enables fresh daily export to the linked Google Cloud project.
        # Corresponds to the JSON property `freshDailyExportEnabled`
        # @return [Boolean]
        attr_accessor :fresh_daily_export_enabled
        alias_method :fresh_daily_export_enabled?, :fresh_daily_export_enabled
      
        # If set true, exported data will include advertising identifiers for mobile app
        # streams.
        # Corresponds to the JSON property `includeAdvertisingId`
        # @return [Boolean]
        attr_accessor :include_advertising_id
        alias_method :include_advertising_id?, :include_advertising_id
      
        # Output only. Resource name of this BigQuery link. Format: 'properties/`
        # property_id`/bigQueryLinks/`bigquery_link_id`' Format: 'properties/1234/
        # bigQueryLinks/abc567'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The linked Google Cloud project. When creating a BigQueryLink, you
        # may provide this resource name using either a project number or project ID.
        # Once this resource has been created, the returned project will always have a
        # project that contains a project number. Format: 'projects/`project number`'
        # Example: 'projects/1234'
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # If set true, enables streaming export to the linked Google Cloud project.
        # Corresponds to the JSON property `streamingExportEnabled`
        # @return [Boolean]
        attr_accessor :streaming_export_enabled
        alias_method :streaming_export_enabled?, :streaming_export_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @daily_export_enabled = args[:daily_export_enabled] if args.key?(:daily_export_enabled)
          @excluded_events = args[:excluded_events] if args.key?(:excluded_events)
          @export_streams = args[:export_streams] if args.key?(:export_streams)
          @fresh_daily_export_enabled = args[:fresh_daily_export_enabled] if args.key?(:fresh_daily_export_enabled)
          @include_advertising_id = args[:include_advertising_id] if args.key?(:include_advertising_id)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @streaming_export_enabled = args[:streaming_export_enabled] if args.key?(:streaming_export_enabled)
        end
      end
      
      # Request message for CancelDisplayVideo360AdvertiserLinkProposal RPC.
      class GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A description of a change to a single Google Analytics resource.
      class GoogleAnalyticsAdminV1alphaChangeHistoryChange
        include Google::Apis::Core::Hashable
      
        # The type of action that changed this resource.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Resource name of the resource whose changes are described by this entry.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # A snapshot of a resource as before or after the result of a change in change
        # history.
        # Corresponds to the JSON property `resourceAfterChange`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource]
        attr_accessor :resource_after_change
      
        # A snapshot of a resource as before or after the result of a change in change
        # history.
        # Corresponds to the JSON property `resourceBeforeChange`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource]
        attr_accessor :resource_before_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @resource = args[:resource] if args.key?(:resource)
          @resource_after_change = args[:resource_after_change] if args.key?(:resource_after_change)
          @resource_before_change = args[:resource_before_change] if args.key?(:resource_before_change)
        end
      end
      
      # A snapshot of a resource as before or after the result of a change in change
      # history.
      class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        attr_accessor :account
      
        # A link between a GA4 Property and an AdSense for Content ad client.
        # Corresponds to the JSON property `adsenseLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink]
        attr_accessor :adsense_link
      
        # The attribution settings used for a given property. This is a singleton
        # resource.
        # Corresponds to the JSON property `attributionSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings]
        attr_accessor :attribution_settings
      
        # A resource message representing a GA4 Audience.
        # Corresponds to the JSON property `audience`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience]
        attr_accessor :audience
      
        # A link between a GA4 Property and BigQuery project.
        # Corresponds to the JSON property `bigqueryLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink]
        attr_accessor :bigquery_link
      
        # A resource message representing a Channel Group.
        # Corresponds to the JSON property `channelGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup]
        attr_accessor :channel_group
      
        # A conversion event in a Google Analytics property.
        # Corresponds to the JSON property `conversionEvent`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        attr_accessor :conversion_event
      
        # A definition for a CustomDimension.
        # Corresponds to the JSON property `customDimension`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        attr_accessor :custom_dimension
      
        # A definition for a custom metric.
        # Corresponds to the JSON property `customMetric`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        attr_accessor :custom_metric
      
        # Settings for client-side data redaction. Singleton resource under a Web Stream.
        # Corresponds to the JSON property `dataRedactionSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings]
        attr_accessor :data_redaction_settings
      
        # Settings values for data retention. This is a singleton resource.
        # Corresponds to the JSON property `dataRetentionSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings]
        attr_accessor :data_retention_settings
      
        # A resource message representing a data stream.
        # Corresponds to the JSON property `dataStream`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream]
        attr_accessor :data_stream
      
        # A link between a GA4 property and a Display & Video 360 advertiser.
        # Corresponds to the JSON property `displayVideo360AdvertiserLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        attr_accessor :display_video360_advertiser_link
      
        # A proposal for a link between a GA4 property and a Display & Video 360
        # advertiser. A proposal is converted to a DisplayVideo360AdvertiserLink once
        # approved. Google Analytics admins approve inbound proposals while Display &
        # Video 360 admins approve outbound proposals.
        # Corresponds to the JSON property `displayVideo360AdvertiserLinkProposal`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        attr_accessor :display_video360_advertiser_link_proposal
      
        # Singleton resource under a web DataStream, configuring measurement of
        # additional site interactions and content.
        # Corresponds to the JSON property `enhancedMeasurementSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings]
        attr_accessor :enhanced_measurement_settings
      
        # An Event Create Rule defines conditions that will trigger the creation of an
        # entirely new event based upon matched criteria of a source event. Additional
        # mutations of the parameters from the source event can be defined. Unlike Event
        # Edit rules, Event Creation Rules have no defined order. They will all be run
        # independently. Event Edit and Event Create rules can't be used to modify an
        # event created from an Event Create rule.
        # Corresponds to the JSON property `eventCreateRule`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule]
        attr_accessor :event_create_rule
      
        # A resource message representing a GA4 ExpandedDataSet.
        # Corresponds to the JSON property `expandedDataSet`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet]
        attr_accessor :expanded_data_set
      
        # A link between a GA4 property and a Firebase project.
        # Corresponds to the JSON property `firebaseLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink]
        attr_accessor :firebase_link
      
        # A link between a GA4 property and a Google Ads account.
        # Corresponds to the JSON property `googleAdsLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink]
        attr_accessor :google_ads_link
      
        # Settings values for Google Signals. This is a singleton resource.
        # Corresponds to the JSON property `googleSignalsSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings]
        attr_accessor :google_signals_settings
      
        # A secret value used for sending hits to Measurement Protocol.
        # Corresponds to the JSON property `measurementProtocolSecret`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        attr_accessor :measurement_protocol_secret
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        attr_accessor :property
      
        # A link between a GA4 property and a Search Ads 360 entity.
        # Corresponds to the JSON property `searchAds360Link`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link]
        attr_accessor :search_ads360_link
      
        # SKAdNetwork conversion value schema of an iOS stream.
        # Corresponds to the JSON property `skadnetworkConversionValueSchema`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema]
        attr_accessor :skadnetwork_conversion_value_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @adsense_link = args[:adsense_link] if args.key?(:adsense_link)
          @attribution_settings = args[:attribution_settings] if args.key?(:attribution_settings)
          @audience = args[:audience] if args.key?(:audience)
          @bigquery_link = args[:bigquery_link] if args.key?(:bigquery_link)
          @channel_group = args[:channel_group] if args.key?(:channel_group)
          @conversion_event = args[:conversion_event] if args.key?(:conversion_event)
          @custom_dimension = args[:custom_dimension] if args.key?(:custom_dimension)
          @custom_metric = args[:custom_metric] if args.key?(:custom_metric)
          @data_redaction_settings = args[:data_redaction_settings] if args.key?(:data_redaction_settings)
          @data_retention_settings = args[:data_retention_settings] if args.key?(:data_retention_settings)
          @data_stream = args[:data_stream] if args.key?(:data_stream)
          @display_video360_advertiser_link = args[:display_video360_advertiser_link] if args.key?(:display_video360_advertiser_link)
          @display_video360_advertiser_link_proposal = args[:display_video360_advertiser_link_proposal] if args.key?(:display_video360_advertiser_link_proposal)
          @enhanced_measurement_settings = args[:enhanced_measurement_settings] if args.key?(:enhanced_measurement_settings)
          @event_create_rule = args[:event_create_rule] if args.key?(:event_create_rule)
          @expanded_data_set = args[:expanded_data_set] if args.key?(:expanded_data_set)
          @firebase_link = args[:firebase_link] if args.key?(:firebase_link)
          @google_ads_link = args[:google_ads_link] if args.key?(:google_ads_link)
          @google_signals_settings = args[:google_signals_settings] if args.key?(:google_signals_settings)
          @measurement_protocol_secret = args[:measurement_protocol_secret] if args.key?(:measurement_protocol_secret)
          @property = args[:property] if args.key?(:property)
          @search_ads360_link = args[:search_ads360_link] if args.key?(:search_ads360_link)
          @skadnetwork_conversion_value_schema = args[:skadnetwork_conversion_value_schema] if args.key?(:skadnetwork_conversion_value_schema)
        end
      end
      
      # A set of changes within a Google Analytics account or its child properties
      # that resulted from the same cause. Common causes would be updates made in the
      # Google Analytics UI, changes from customer support, or automatic Google
      # Analytics system changes.
      class GoogleAnalyticsAdminV1alphaChangeHistoryEvent
        include Google::Apis::Core::Hashable
      
        # The type of actor that made this change.
        # Corresponds to the JSON property `actorType`
        # @return [String]
        attr_accessor :actor_type
      
        # Time when change was made.
        # Corresponds to the JSON property `changeTime`
        # @return [String]
        attr_accessor :change_time
      
        # A list of changes made in this change history event that fit the filters
        # specified in SearchChangeHistoryEventsRequest.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChange>]
        attr_accessor :changes
      
        # If true, then the list of changes returned was filtered, and does not
        # represent all changes that occurred in this event.
        # Corresponds to the JSON property `changesFiltered`
        # @return [Boolean]
        attr_accessor :changes_filtered
        alias_method :changes_filtered?, :changes_filtered
      
        # ID of this change history event. This ID is unique across Google Analytics.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Email address of the Google account that made the change. This will be a valid
        # email address if the actor field is set to USER, and empty otherwise. Google
        # accounts that have been deleted will cause an error.
        # Corresponds to the JSON property `userActorEmail`
        # @return [String]
        attr_accessor :user_actor_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor_type = args[:actor_type] if args.key?(:actor_type)
          @change_time = args[:change_time] if args.key?(:change_time)
          @changes = args[:changes] if args.key?(:changes)
          @changes_filtered = args[:changes_filtered] if args.key?(:changes_filtered)
          @id = args[:id] if args.key?(:id)
          @user_actor_email = args[:user_actor_email] if args.key?(:user_actor_email)
        end
      end
      
      # A resource message representing a Channel Group.
      class GoogleAnalyticsAdminV1alphaChannelGroup
        include Google::Apis::Core::Hashable
      
        # The description of the Channel Group. Max length of 256 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the Channel Group. Max length of 80 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The grouping rules of channels. Maximum number of rules is 25.
        # Corresponds to the JSON property `groupingRule`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGroupingRule>]
        attr_accessor :grouping_rule
      
        # Output only. The resource name for this Channel Group resource. Format:
        # properties/`property`/channelGroups/`channel_group`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. If true, then this channel group is the Default Channel Group
        # predefined by Google Analytics. Display name and grouping rules cannot be
        # updated for this channel group.
        # Corresponds to the JSON property `systemDefined`
        # @return [Boolean]
        attr_accessor :system_defined
        alias_method :system_defined?, :system_defined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @grouping_rule = args[:grouping_rule] if args.key?(:grouping_rule)
          @name = args[:name] if args.key?(:name)
          @system_defined = args[:system_defined] if args.key?(:system_defined)
        end
      end
      
      # A specific filter for a single dimension.
      class GoogleAnalyticsAdminV1alphaChannelGroupFilter
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The dimension name to filter.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # A filter for a string dimension that matches a particular list of options. The
        # match is case insensitive.
        # Corresponds to the JSON property `inListFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter]
        attr_accessor :in_list_filter
      
        # Filter where the field value is a String. The match is case insensitive.
        # Corresponds to the JSON property `stringFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter]
        attr_accessor :string_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @in_list_filter = args[:in_list_filter] if args.key?(:in_list_filter)
          @string_filter = args[:string_filter] if args.key?(:string_filter)
        end
      end
      
      # A logical expression of Channel Group dimension filters.
      class GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression
        include Google::Apis::Core::Hashable
      
        # A list of Channel Group filter expressions.
        # Corresponds to the JSON property `andGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList]
        attr_accessor :and_group
      
        # A specific filter for a single dimension.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilter]
        attr_accessor :filter
      
        # A logical expression of Channel Group dimension filters.
        # Corresponds to the JSON property `notExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression]
        attr_accessor :not_expression
      
        # A list of Channel Group filter expressions.
        # Corresponds to the JSON property `orGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList]
        attr_accessor :or_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @and_group = args[:and_group] if args.key?(:and_group)
          @filter = args[:filter] if args.key?(:filter)
          @not_expression = args[:not_expression] if args.key?(:not_expression)
          @or_group = args[:or_group] if args.key?(:or_group)
        end
      end
      
      # A list of Channel Group filter expressions.
      class GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList
        include Google::Apis::Core::Hashable
      
        # A list of Channel Group filter expressions.
        # Corresponds to the JSON property `filterExpressions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression>]
        attr_accessor :filter_expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_expressions = args[:filter_expressions] if args.key?(:filter_expressions)
        end
      end
      
      # A filter for a string dimension that matches a particular list of options. The
      # match is case insensitive.
      class GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter
        include Google::Apis::Core::Hashable
      
        # Required. The list of possible string values to match against. Must be non-
        # empty.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Filter where the field value is a String. The match is case insensitive.
      class GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter
        include Google::Apis::Core::Hashable
      
        # Required. The match type for the string filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # Required. The string value to be matched against.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_type = args[:match_type] if args.key?(:match_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Configuration for a specific Connected Site Tag.
      class GoogleAnalyticsAdminV1alphaConnectedSiteTag
        include Google::Apis::Core::Hashable
      
        # Required. User-provided display name for the connected site tag. Must be less
        # than 256 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. "Tag ID to forward events to. Also known as the Measurement ID, or
        # the "G-ID" (For example: G-12345).
        # Corresponds to the JSON property `tagId`
        # @return [String]
        attr_accessor :tag_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @tag_id = args[:tag_id] if args.key?(:tag_id)
        end
      end
      
      # A conversion event in a Google Analytics property.
      class GoogleAnalyticsAdminV1alphaConversionEvent
        include Google::Apis::Core::Hashable
      
        # Optional. The method by which conversions will be counted across multiple
        # events within a session. If this value is not provided, it will be set to `
        # ONCE_PER_EVENT`.
        # Corresponds to the JSON property `countingMethod`
        # @return [String]
        attr_accessor :counting_method
      
        # Output only. Time when this conversion event was created in the property.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. If set to true, this conversion event refers to a custom event.
        # If set to false, this conversion event refers to a default event in GA.
        # Default events typically have special meaning in GA. Default events are
        # usually created for you by the GA system, but in some cases can be created by
        # property admins. Custom events count towards the maximum number of custom
        # conversion events that may be created per property.
        # Corresponds to the JSON property `custom`
        # @return [Boolean]
        attr_accessor :custom
        alias_method :custom?, :custom
      
        # Output only. If set, this event can currently be deleted with
        # DeleteConversionEvent.
        # Corresponds to the JSON property `deletable`
        # @return [Boolean]
        attr_accessor :deletable
        alias_method :deletable?, :deletable
      
        # Immutable. The event name for this conversion event. Examples: 'click', '
        # purchase'
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # Output only. Resource name of this conversion event. Format: properties/`
        # property`/conversionEvents/`conversion_event`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counting_method = args[:counting_method] if args.key?(:counting_method)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom = args[:custom] if args.key?(:custom)
          @deletable = args[:deletable] if args.key?(:deletable)
          @event_name = args[:event_name] if args.key?(:event_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Conversion value settings for a postback window for SKAdNetwork conversion
      # value schema.
      class GoogleAnalyticsAdminV1alphaConversionValues
        include Google::Apis::Core::Hashable
      
        # Required. A coarse grained conversion value. This value is not guaranteed to
        # be unique.
        # Corresponds to the JSON property `coarseValue`
        # @return [String]
        attr_accessor :coarse_value
      
        # Display name of the SKAdNetwork conversion value. The max allowed display name
        # length is 50 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Event conditions that must be met for this Conversion Value to be achieved.
        # The conditions in this list are ANDed together. It must have minimum of 1
        # entry and maximum of 3 entries, if the postback window is enabled.
        # Corresponds to the JSON property `eventMappings`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventMapping>]
        attr_accessor :event_mappings
      
        # The fine-grained conversion value. This is applicable only to the first
        # postback window. Its valid values are [0,63], both inclusive. It must be set
        # for postback window 1, and must not be set for postback window 2 & 3. This
        # value is not guaranteed to be unique. If the configuration for the first
        # postback window is re-used for second or third postback windows this field has
        # no effect.
        # Corresponds to the JSON property `fineValue`
        # @return [Fixnum]
        attr_accessor :fine_value
      
        # If true, the SDK should lock to this conversion value for the current postback
        # window.
        # Corresponds to the JSON property `lockEnabled`
        # @return [Boolean]
        attr_accessor :lock_enabled
        alias_method :lock_enabled?, :lock_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coarse_value = args[:coarse_value] if args.key?(:coarse_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @event_mappings = args[:event_mappings] if args.key?(:event_mappings)
          @fine_value = args[:fine_value] if args.key?(:fine_value)
          @lock_enabled = args[:lock_enabled] if args.key?(:lock_enabled)
        end
      end
      
      # Request message for CreateAccessBinding RPC.
      class GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest
        include Google::Apis::Core::Hashable
      
        # A binding of a user to a set of roles.
        # Corresponds to the JSON property `accessBinding`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        attr_accessor :access_binding
      
        # Required. Formats: - accounts/`account` - properties/`property`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_binding = args[:access_binding] if args.key?(:access_binding)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Request message for CreateConnectedSiteTag RPC.
      class GoogleAnalyticsAdminV1alphaCreateConnectedSiteTagRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a specific Connected Site Tag.
        # Corresponds to the JSON property `connectedSiteTag`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConnectedSiteTag]
        attr_accessor :connected_site_tag
      
        # The Universal Analytics property to create connected site tags for. This API
        # does not support GA4 properties. Format: properties/`
        # universalAnalyticsPropertyId` Example: properties/1234
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_site_tag = args[:connected_site_tag] if args.key?(:connected_site_tag)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # Response message for CreateConnectedSiteTag RPC.
      class GoogleAnalyticsAdminV1alphaCreateConnectedSiteTagResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for CreateRollupProperty RPC.
      class GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `rollupProperty`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        attr_accessor :rollup_property
      
        # Optional. The resource names of properties that will be sources to the created
        # roll-up property.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Array<String>]
        attr_accessor :source_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rollup_property = args[:rollup_property] if args.key?(:rollup_property)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
        end
      end
      
      # Response message for CreateRollupProperty RPC.
      class GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `rollupProperty`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        attr_accessor :rollup_property
      
        # The created roll-up property source links.
        # Corresponds to the JSON property `rollupPropertySourceLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink>]
        attr_accessor :rollup_property_source_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rollup_property = args[:rollup_property] if args.key?(:rollup_property)
          @rollup_property_source_links = args[:rollup_property_source_links] if args.key?(:rollup_property_source_links)
        end
      end
      
      # Request message for CreateSubproperty RPC.
      class GoogleAnalyticsAdminV1alphaCreateSubpropertyRequest
        include Google::Apis::Core::Hashable
      
        # Required. The ordinary property for which to create a subproperty. Format:
        # properties/property_id Example: properties/123
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `subproperty`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        attr_accessor :subproperty
      
        # A resource message representing a GA4 Subproperty event filter.
        # Corresponds to the JSON property `subpropertyEventFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter]
        attr_accessor :subproperty_event_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @subproperty = args[:subproperty] if args.key?(:subproperty)
          @subproperty_event_filter = args[:subproperty_event_filter] if args.key?(:subproperty_event_filter)
        end
      end
      
      # Response message for CreateSubproperty RPC.
      class GoogleAnalyticsAdminV1alphaCreateSubpropertyResponse
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `subproperty`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        attr_accessor :subproperty
      
        # A resource message representing a GA4 Subproperty event filter.
        # Corresponds to the JSON property `subpropertyEventFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter]
        attr_accessor :subproperty_event_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subproperty = args[:subproperty] if args.key?(:subproperty)
          @subproperty_event_filter = args[:subproperty_event_filter] if args.key?(:subproperty_event_filter)
        end
      end
      
      # A definition for a CustomDimension.
      class GoogleAnalyticsAdminV1alphaCustomDimension
        include Google::Apis::Core::Hashable
      
        # Optional. Description for this custom dimension. Max length of 150 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If set to true, sets this dimension as NPA and excludes it from ads
        # personalization. This is currently only supported by user-scoped custom
        # dimensions.
        # Corresponds to the JSON property `disallowAdsPersonalization`
        # @return [Boolean]
        attr_accessor :disallow_ads_personalization
        alias_method :disallow_ads_personalization?, :disallow_ads_personalization
      
        # Required. Display name for this custom dimension as shown in the Analytics UI.
        # Max length of 82 characters, alphanumeric plus space and underscore starting
        # with a letter. Legacy system-generated display names may contain square
        # brackets, but updates to this field will never permit square brackets.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name for this CustomDimension resource. Format:
        # properties/`property`/customDimensions/`customDimension`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Tagging parameter name for this custom dimension. If this
        # is a user-scoped dimension, then this is the user property name. If this is an
        # event-scoped dimension, then this is the event parameter name. If this is an
        # item-scoped dimension, then this is the parameter name found in the eCommerce
        # items array. May only contain alphanumeric and underscore characters, starting
        # with a letter. Max length of 24 characters for user-scoped dimensions, 40
        # characters for event-scoped dimensions.
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Required. Immutable. The scope of this dimension.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disallow_ads_personalization = args[:disallow_ads_personalization] if args.key?(:disallow_ads_personalization)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # A definition for a custom metric.
      class GoogleAnalyticsAdminV1alphaCustomMetric
        include Google::Apis::Core::Hashable
      
        # Optional. Description for this custom dimension. Max length of 150 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name for this custom metric as shown in the Analytics UI.
        # Max length of 82 characters, alphanumeric plus space and underscore starting
        # with a letter. Legacy system-generated display names may contain square
        # brackets, but updates to this field will never permit square brackets.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The type for the custom metric's value.
        # Corresponds to the JSON property `measurementUnit`
        # @return [String]
        attr_accessor :measurement_unit
      
        # Output only. Resource name for this CustomMetric resource. Format: properties/`
        # property`/customMetrics/`customMetric`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Tagging name for this custom metric. If this is an event-
        # scoped metric, then this is the event parameter name. May only contain
        # alphanumeric and underscore charactes, starting with a letter. Max length of
        # 40 characters for event-scoped metrics.
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Optional. Types of restricted data that this metric may contain. Required for
        # metrics with CURRENCY measurement unit. Must be empty for metrics with a non-
        # CURRENCY measurement unit.
        # Corresponds to the JSON property `restrictedMetricType`
        # @return [Array<String>]
        attr_accessor :restricted_metric_type
      
        # Required. Immutable. The scope of this custom metric.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @measurement_unit = args[:measurement_unit] if args.key?(:measurement_unit)
          @name = args[:name] if args.key?(:name)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @restricted_metric_type = args[:restricted_metric_type] if args.key?(:restricted_metric_type)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Settings for client-side data redaction. Singleton resource under a Web Stream.
      class GoogleAnalyticsAdminV1alphaDataRedactionSettings
        include Google::Apis::Core::Hashable
      
        # If enabled, any event parameter or user property values that look like an
        # email will be redacted.
        # Corresponds to the JSON property `emailRedactionEnabled`
        # @return [Boolean]
        attr_accessor :email_redaction_enabled
        alias_method :email_redaction_enabled?, :email_redaction_enabled
      
        # Output only. Name of this Data Redaction Settings resource. Format: properties/
        # `property_id`/dataStreams/`data_stream`/dataRedactionSettings Example: "
        # properties/1000/dataStreams/2000/dataRedactionSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The query parameter keys to apply redaction logic to if present in the URL.
        # Query parameter matching is case-insensitive. Must contain at least one
        # element if query_parameter_replacement_enabled is true. Keys cannot contain
        # commas.
        # Corresponds to the JSON property `queryParameterKeys`
        # @return [Array<String>]
        attr_accessor :query_parameter_keys
      
        # Query Parameter redaction removes the key and value portions of a query
        # parameter if it is in the configured set of query parameters. If enabled, URL
        # query replacement logic will be run for the Stream. Any query parameters
        # defined in query_parameter_keys will be redacted.
        # Corresponds to the JSON property `queryParameterRedactionEnabled`
        # @return [Boolean]
        attr_accessor :query_parameter_redaction_enabled
        alias_method :query_parameter_redaction_enabled?, :query_parameter_redaction_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_redaction_enabled = args[:email_redaction_enabled] if args.key?(:email_redaction_enabled)
          @name = args[:name] if args.key?(:name)
          @query_parameter_keys = args[:query_parameter_keys] if args.key?(:query_parameter_keys)
          @query_parameter_redaction_enabled = args[:query_parameter_redaction_enabled] if args.key?(:query_parameter_redaction_enabled)
        end
      end
      
      # Settings values for data retention. This is a singleton resource.
      class GoogleAnalyticsAdminV1alphaDataRetentionSettings
        include Google::Apis::Core::Hashable
      
        # The length of time that event-level data is retained.
        # Corresponds to the JSON property `eventDataRetention`
        # @return [String]
        attr_accessor :event_data_retention
      
        # Output only. Resource name for this DataRetentionSetting resource. Format:
        # properties/`property`/dataRetentionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If true, reset the retention period for the user identifier with every event
        # from that user.
        # Corresponds to the JSON property `resetUserDataOnNewActivity`
        # @return [Boolean]
        attr_accessor :reset_user_data_on_new_activity
        alias_method :reset_user_data_on_new_activity?, :reset_user_data_on_new_activity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_data_retention = args[:event_data_retention] if args.key?(:event_data_retention)
          @name = args[:name] if args.key?(:name)
          @reset_user_data_on_new_activity = args[:reset_user_data_on_new_activity] if args.key?(:reset_user_data_on_new_activity)
        end
      end
      
      # A resource message representing data sharing settings of a Google Analytics
      # account.
      class GoogleAnalyticsAdminV1alphaDataSharingSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name. Format: accounts/`account`/dataSharingSettings
        # Example: "accounts/1000/dataSharingSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Allows any of Google sales to access the data in order to suggest
        # configuration changes to improve results.
        # Corresponds to the JSON property `sharingWithGoogleAnySalesEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_any_sales_enabled
        alias_method :sharing_with_google_any_sales_enabled?, :sharing_with_google_any_sales_enabled
      
        # Allows Google sales teams that are assigned to the customer to access the data
        # in order to suggest configuration changes to improve results. Sales team
        # restrictions still apply when enabled.
        # Corresponds to the JSON property `sharingWithGoogleAssignedSalesEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_assigned_sales_enabled
        alias_method :sharing_with_google_assigned_sales_enabled?, :sharing_with_google_assigned_sales_enabled
      
        # Allows Google to use the data to improve other Google products or services.
        # Corresponds to the JSON property `sharingWithGoogleProductsEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_products_enabled
        alias_method :sharing_with_google_products_enabled?, :sharing_with_google_products_enabled
      
        # Allows Google support to access the data in order to help troubleshoot issues.
        # Corresponds to the JSON property `sharingWithGoogleSupportEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_support_enabled
        alias_method :sharing_with_google_support_enabled?, :sharing_with_google_support_enabled
      
        # Allows Google to share the data anonymously in aggregate form with others.
        # Corresponds to the JSON property `sharingWithOthersEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_others_enabled
        alias_method :sharing_with_others_enabled?, :sharing_with_others_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sharing_with_google_any_sales_enabled = args[:sharing_with_google_any_sales_enabled] if args.key?(:sharing_with_google_any_sales_enabled)
          @sharing_with_google_assigned_sales_enabled = args[:sharing_with_google_assigned_sales_enabled] if args.key?(:sharing_with_google_assigned_sales_enabled)
          @sharing_with_google_products_enabled = args[:sharing_with_google_products_enabled] if args.key?(:sharing_with_google_products_enabled)
          @sharing_with_google_support_enabled = args[:sharing_with_google_support_enabled] if args.key?(:sharing_with_google_support_enabled)
          @sharing_with_others_enabled = args[:sharing_with_others_enabled] if args.key?(:sharing_with_others_enabled)
        end
      end
      
      # A resource message representing a data stream.
      class GoogleAnalyticsAdminV1alphaDataStream
        include Google::Apis::Core::Hashable
      
        # Data specific to Android app streams.
        # Corresponds to the JSON property `androidAppStreamData`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData]
        attr_accessor :android_app_stream_data
      
        # Output only. Time when this stream was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable display name for the Data Stream. Required for web data streams.
        # The max allowed display name length is 255 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Data specific to iOS app streams.
        # Corresponds to the JSON property `iosAppStreamData`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData]
        attr_accessor :ios_app_stream_data
      
        # Output only. Resource name of this Data Stream. Format: properties/`
        # property_id`/dataStreams/`stream_id` Example: "properties/1000/dataStreams/
        # 2000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The type of this DataStream resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Time when stream payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Data specific to web streams.
        # Corresponds to the JSON property `webStreamData`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamWebStreamData]
        attr_accessor :web_stream_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_stream_data = args[:android_app_stream_data] if args.key?(:android_app_stream_data)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @ios_app_stream_data = args[:ios_app_stream_data] if args.key?(:ios_app_stream_data)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @web_stream_data = args[:web_stream_data] if args.key?(:web_stream_data)
        end
      end
      
      # Data specific to Android app streams.
      class GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
        include Google::Apis::Core::Hashable
      
        # Output only. ID of the corresponding Android app in Firebase, if any. This ID
        # can change if the Android app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Immutable. The package name for the app being measured. Example: "com.example.
        # myandroidapp"
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Data specific to iOS app streams.
      class GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The Apple App Store Bundle ID for the app Example: "com.
        # example.myiosapp"
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Output only. ID of the corresponding iOS app in Firebase, if any. This ID can
        # change if the iOS app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
        end
      end
      
      # Data specific to web streams.
      class GoogleAnalyticsAdminV1alphaDataStreamWebStreamData
        include Google::Apis::Core::Hashable
      
        # Domain name of the web app being measured, or empty. Example: "http://www.
        # google.com", "https://www.google.com"
        # Corresponds to the JSON property `defaultUri`
        # @return [String]
        attr_accessor :default_uri
      
        # Output only. ID of the corresponding web app in Firebase, if any. This ID can
        # change if the web app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Output only. Analytics Measurement ID. Example: "G-1A2BCD345E"
        # Corresponds to the JSON property `measurementId`
        # @return [String]
        attr_accessor :measurement_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_uri = args[:default_uri] if args.key?(:default_uri)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @measurement_id = args[:measurement_id] if args.key?(:measurement_id)
        end
      end
      
      # Request message for DeleteAccessBinding RPC.
      class GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest
        include Google::Apis::Core::Hashable
      
        # Required. Formats: - accounts/`account`/accessBindings/`accessBinding` -
        # properties/`property`/accessBindings/`accessBinding`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for DeleteConnectedSiteTag RPC.
      class GoogleAnalyticsAdminV1alphaDeleteConnectedSiteTagRequest
        include Google::Apis::Core::Hashable
      
        # The Universal Analytics property to delete connected site tags for. This API
        # does not support GA4 properties. Format: properties/`
        # universalAnalyticsPropertyId` Example: properties/1234
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # Tag ID to forward events to. Also known as the Measurement ID, or the "G-ID" (
        # For example: G-12345).
        # Corresponds to the JSON property `tagId`
        # @return [String]
        attr_accessor :tag_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
          @tag_id = args[:tag_id] if args.key?(:tag_id)
        end
      end
      
      # A link between a GA4 property and a Display & Video 360 advertiser.
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
        include Google::Apis::Core::Hashable
      
        # Enables personalized advertising features with this integration. If this field
        # is not set on create/update, it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. The display name of the Display & Video 360 Advertiser.
        # Corresponds to the JSON property `advertiserDisplayName`
        # @return [String]
        attr_accessor :advertiser_display_name
      
        # Immutable. The Display & Video 360 Advertiser's advertiser ID.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Immutable. Enables the import of campaign data from Display & Video 360 into
        # the GA4 property. After link creation, this can only be updated from the
        # Display & Video 360 product. If this field is not set on create, it will be
        # defaulted to true.
        # Corresponds to the JSON property `campaignDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :campaign_data_sharing_enabled
        alias_method :campaign_data_sharing_enabled?, :campaign_data_sharing_enabled
      
        # Immutable. Enables the import of cost data from Display & Video 360 into the
        # GA4 property. This can only be enabled if campaign_data_sharing_enabled is
        # enabled. After link creation, this can only be updated from the Display &
        # Video 360 product. If this field is not set on create, it will be defaulted to
        # true.
        # Corresponds to the JSON property `costDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :cost_data_sharing_enabled
        alias_method :cost_data_sharing_enabled?, :cost_data_sharing_enabled
      
        # Output only. The resource name for this DisplayVideo360AdvertiserLink resource.
        # Format: properties/`propertyId`/displayVideo360AdvertiserLinks/`linkId` Note:
        # linkId is not the Display & Video 360 Advertiser ID
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @advertiser_display_name = args[:advertiser_display_name] if args.key?(:advertiser_display_name)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_data_sharing_enabled = args[:campaign_data_sharing_enabled] if args.key?(:campaign_data_sharing_enabled)
          @cost_data_sharing_enabled = args[:cost_data_sharing_enabled] if args.key?(:cost_data_sharing_enabled)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A proposal for a link between a GA4 property and a Display & Video 360
      # advertiser. A proposal is converted to a DisplayVideo360AdvertiserLink once
      # approved. Google Analytics admins approve inbound proposals while Display &
      # Video 360 admins approve outbound proposals.
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        include Google::Apis::Core::Hashable
      
        # Immutable. Enables personalized advertising features with this integration. If
        # this field is not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. The display name of the Display & Video Advertiser. Only
        # populated for proposals that originated from Display & Video 360.
        # Corresponds to the JSON property `advertiserDisplayName`
        # @return [String]
        attr_accessor :advertiser_display_name
      
        # Immutable. The Display & Video 360 Advertiser's advertiser ID.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Immutable. Enables the import of campaign data from Display & Video 360. If
        # this field is not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `campaignDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :campaign_data_sharing_enabled
        alias_method :campaign_data_sharing_enabled?, :campaign_data_sharing_enabled
      
        # Immutable. Enables the import of cost data from Display & Video 360. This can
        # only be enabled if campaign_data_sharing_enabled is enabled. If this field is
        # not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `costDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :cost_data_sharing_enabled
        alias_method :cost_data_sharing_enabled?, :cost_data_sharing_enabled
      
        # Status information for a link proposal.
        # Corresponds to the JSON property `linkProposalStatusDetails`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails]
        attr_accessor :link_proposal_status_details
      
        # Output only. The resource name for this DisplayVideo360AdvertiserLinkProposal
        # resource. Format: properties/`propertyId`/
        # displayVideo360AdvertiserLinkProposals/`proposalId` Note: proposalId is not
        # the Display & Video 360 Advertiser ID
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. On a proposal being sent to Display & Video 360, this field must
        # be set to the email address of an admin on the target advertiser. This is used
        # to verify that the Google Analytics admin is aware of at least one admin on
        # the Display & Video 360 Advertiser. This does not restrict approval of the
        # proposal to a single user. Any admin on the Display & Video 360 Advertiser may
        # approve the proposal.
        # Corresponds to the JSON property `validationEmail`
        # @return [String]
        attr_accessor :validation_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @advertiser_display_name = args[:advertiser_display_name] if args.key?(:advertiser_display_name)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_data_sharing_enabled = args[:campaign_data_sharing_enabled] if args.key?(:campaign_data_sharing_enabled)
          @cost_data_sharing_enabled = args[:cost_data_sharing_enabled] if args.key?(:cost_data_sharing_enabled)
          @link_proposal_status_details = args[:link_proposal_status_details] if args.key?(:link_proposal_status_details)
          @name = args[:name] if args.key?(:name)
          @validation_email = args[:validation_email] if args.key?(:validation_email)
        end
      end
      
      # Singleton resource under a web DataStream, configuring measurement of
      # additional site interactions and content.
      class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
        include Google::Apis::Core::Hashable
      
        # If enabled, capture a file download event each time a link is clicked with a
        # common document, compressed file, application, video, or audio extension.
        # Corresponds to the JSON property `fileDownloadsEnabled`
        # @return [Boolean]
        attr_accessor :file_downloads_enabled
        alias_method :file_downloads_enabled?, :file_downloads_enabled
      
        # If enabled, capture a form interaction event each time a visitor interacts
        # with a form on your website. False by default.
        # Corresponds to the JSON property `formInteractionsEnabled`
        # @return [Boolean]
        attr_accessor :form_interactions_enabled
        alias_method :form_interactions_enabled?, :form_interactions_enabled
      
        # Output only. Resource name of the Enhanced Measurement Settings. Format:
        # properties/`property_id`/dataStreams/`data_stream`/enhancedMeasurementSettings
        # Example: "properties/1000/dataStreams/2000/enhancedMeasurementSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If enabled, capture an outbound click event each time a visitor clicks a link
        # that leads them away from your domain.
        # Corresponds to the JSON property `outboundClicksEnabled`
        # @return [Boolean]
        attr_accessor :outbound_clicks_enabled
        alias_method :outbound_clicks_enabled?, :outbound_clicks_enabled
      
        # If enabled, capture a page view event each time the website changes the
        # browser history state.
        # Corresponds to the JSON property `pageChangesEnabled`
        # @return [Boolean]
        attr_accessor :page_changes_enabled
        alias_method :page_changes_enabled?, :page_changes_enabled
      
        # If enabled, capture scroll events each time a visitor gets to the bottom of a
        # page.
        # Corresponds to the JSON property `scrollsEnabled`
        # @return [Boolean]
        attr_accessor :scrolls_enabled
        alias_method :scrolls_enabled?, :scrolls_enabled
      
        # Required. URL query parameters to interpret as site search parameters. Max
        # length is 1024 characters. Must not be empty.
        # Corresponds to the JSON property `searchQueryParameter`
        # @return [String]
        attr_accessor :search_query_parameter
      
        # If enabled, capture a view search results event each time a visitor performs a
        # search on your site (based on a query parameter).
        # Corresponds to the JSON property `siteSearchEnabled`
        # @return [Boolean]
        attr_accessor :site_search_enabled
        alias_method :site_search_enabled?, :site_search_enabled
      
        # Indicates whether Enhanced Measurement Settings will be used to automatically
        # measure interactions and content on this web stream. Changing this value does
        # not affect the settings themselves, but determines whether they are respected.
        # Corresponds to the JSON property `streamEnabled`
        # @return [Boolean]
        attr_accessor :stream_enabled
        alias_method :stream_enabled?, :stream_enabled
      
        # Additional URL query parameters. Max length is 1024 characters.
        # Corresponds to the JSON property `uriQueryParameter`
        # @return [String]
        attr_accessor :uri_query_parameter
      
        # If enabled, capture video play, progress, and complete events as visitors view
        # embedded videos on your site.
        # Corresponds to the JSON property `videoEngagementEnabled`
        # @return [Boolean]
        attr_accessor :video_engagement_enabled
        alias_method :video_engagement_enabled?, :video_engagement_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_downloads_enabled = args[:file_downloads_enabled] if args.key?(:file_downloads_enabled)
          @form_interactions_enabled = args[:form_interactions_enabled] if args.key?(:form_interactions_enabled)
          @name = args[:name] if args.key?(:name)
          @outbound_clicks_enabled = args[:outbound_clicks_enabled] if args.key?(:outbound_clicks_enabled)
          @page_changes_enabled = args[:page_changes_enabled] if args.key?(:page_changes_enabled)
          @scrolls_enabled = args[:scrolls_enabled] if args.key?(:scrolls_enabled)
          @search_query_parameter = args[:search_query_parameter] if args.key?(:search_query_parameter)
          @site_search_enabled = args[:site_search_enabled] if args.key?(:site_search_enabled)
          @stream_enabled = args[:stream_enabled] if args.key?(:stream_enabled)
          @uri_query_parameter = args[:uri_query_parameter] if args.key?(:uri_query_parameter)
          @video_engagement_enabled = args[:video_engagement_enabled] if args.key?(:video_engagement_enabled)
        end
      end
      
      # An Event Create Rule defines conditions that will trigger the creation of an
      # entirely new event based upon matched criteria of a source event. Additional
      # mutations of the parameters from the source event can be defined. Unlike Event
      # Edit rules, Event Creation Rules have no defined order. They will all be run
      # independently. Event Edit and Event Create rules can't be used to modify an
      # event created from an Event Create rule.
      class GoogleAnalyticsAdminV1alphaEventCreateRule
        include Google::Apis::Core::Hashable
      
        # Required. The name of the new event to be created. This value must: * be less
        # than 40 characters * consist only of letters, digits or _ (underscores) *
        # start with a letter
        # Corresponds to the JSON property `destinationEvent`
        # @return [String]
        attr_accessor :destination_event
      
        # Required. Must have at least one condition, and can have up to 10 max.
        # Conditions on the source event must match for this rule to be applied.
        # Corresponds to the JSON property `eventConditions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMatchingCondition>]
        attr_accessor :event_conditions
      
        # Output only. Resource name for this EventCreateRule resource. Format:
        # properties/`property`/dataStreams/`data_stream`/eventCreateRules/`
        # event_create_rule`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameter mutations define parameter behavior on the new event, and are
        # applied in order. A maximum of 20 mutations can be applied.
        # Corresponds to the JSON property `parameterMutations`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaParameterMutation>]
        attr_accessor :parameter_mutations
      
        # If true, the source parameters are copied to the new event. If false, or unset,
        # all non-internal parameters are not copied from the source event. Parameter
        # mutations are applied after the parameters have been copied.
        # Corresponds to the JSON property `sourceCopyParameters`
        # @return [Boolean]
        attr_accessor :source_copy_parameters
        alias_method :source_copy_parameters?, :source_copy_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_event = args[:destination_event] if args.key?(:destination_event)
          @event_conditions = args[:event_conditions] if args.key?(:event_conditions)
          @name = args[:name] if args.key?(:name)
          @parameter_mutations = args[:parameter_mutations] if args.key?(:parameter_mutations)
          @source_copy_parameters = args[:source_copy_parameters] if args.key?(:source_copy_parameters)
        end
      end
      
      # Event setting conditions to match an event.
      class GoogleAnalyticsAdminV1alphaEventMapping
        include Google::Apis::Core::Hashable
      
        # Required. Name of the GA4 event. It must always be set. The max allowed
        # display name length is 40 UTF-16 code units.
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # The maximum number of times the event occurred. If not set, maximum event
        # count won't be checked.
        # Corresponds to the JSON property `maxEventCount`
        # @return [Fixnum]
        attr_accessor :max_event_count
      
        # The maximum revenue generated due to the event. Revenue currency will be
        # defined at the property level. If not set, maximum event value won't be
        # checked.
        # Corresponds to the JSON property `maxEventValue`
        # @return [Float]
        attr_accessor :max_event_value
      
        # At least one of the following four min/max values must be set. The values set
        # will be ANDed together to qualify an event. The minimum number of times the
        # event occurred. If not set, minimum event count won't be checked.
        # Corresponds to the JSON property `minEventCount`
        # @return [Fixnum]
        attr_accessor :min_event_count
      
        # The minimum revenue generated due to the event. Revenue currency will be
        # defined at the property level. If not set, minimum event value won't be
        # checked.
        # Corresponds to the JSON property `minEventValue`
        # @return [Float]
        attr_accessor :min_event_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_name = args[:event_name] if args.key?(:event_name)
          @max_event_count = args[:max_event_count] if args.key?(:max_event_count)
          @max_event_value = args[:max_event_value] if args.key?(:max_event_value)
          @min_event_count = args[:min_event_count] if args.key?(:min_event_count)
          @min_event_value = args[:min_event_value] if args.key?(:min_event_value)
        end
      end
      
      # A resource message representing a GA4 ExpandedDataSet.
      class GoogleAnalyticsAdminV1alphaExpandedDataSet
        include Google::Apis::Core::Hashable
      
        # Output only. Time when expanded data set began (or will begin) collecing data.
        # Corresponds to the JSON property `dataCollectionStartTime`
        # @return [String]
        attr_accessor :data_collection_start_time
      
        # Optional. The description of the ExpandedDataSet. Max 50 chars.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A logical expression of EnhancedDataSet dimension filters.
        # Corresponds to the JSON property `dimensionFilterExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression]
        attr_accessor :dimension_filter_expression
      
        # Immutable. The list of dimensions included in the ExpandedDataSet. See the [
        # API Dimensions](https://developers.google.com/analytics/devguides/reporting/
        # data/v1/api-schema#dimensions) for the list of dimension names.
        # Corresponds to the JSON property `dimensionNames`
        # @return [Array<String>]
        attr_accessor :dimension_names
      
        # Required. The display name of the ExpandedDataSet. Max 200 chars.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The list of metrics included in the ExpandedDataSet. See the [API
        # Metrics](https://developers.google.com/analytics/devguides/reporting/data/v1/
        # api-schema#metrics) for the list of dimension names.
        # Corresponds to the JSON property `metricNames`
        # @return [Array<String>]
        attr_accessor :metric_names
      
        # Output only. The resource name for this ExpandedDataSet resource. Format:
        # properties/`property_id`/expandedDataSets/`expanded_data_set`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_collection_start_time = args[:data_collection_start_time] if args.key?(:data_collection_start_time)
          @description = args[:description] if args.key?(:description)
          @dimension_filter_expression = args[:dimension_filter_expression] if args.key?(:dimension_filter_expression)
          @dimension_names = args[:dimension_names] if args.key?(:dimension_names)
          @display_name = args[:display_name] if args.key?(:display_name)
          @metric_names = args[:metric_names] if args.key?(:metric_names)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A specific filter for a single dimension
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilter
        include Google::Apis::Core::Hashable
      
        # Required. The dimension name to filter.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # A filter for a string dimension that matches a particular list of options.
        # Corresponds to the JSON property `inListFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter]
        attr_accessor :in_list_filter
      
        # A filter for a string-type dimension that matches a particular pattern.
        # Corresponds to the JSON property `stringFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter]
        attr_accessor :string_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @in_list_filter = args[:in_list_filter] if args.key?(:in_list_filter)
          @string_filter = args[:string_filter] if args.key?(:string_filter)
        end
      end
      
      # A logical expression of EnhancedDataSet dimension filters.
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression
        include Google::Apis::Core::Hashable
      
        # A list of ExpandedDataSet filter expressions.
        # Corresponds to the JSON property `andGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList]
        attr_accessor :and_group
      
        # A specific filter for a single dimension
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilter]
        attr_accessor :filter
      
        # A logical expression of EnhancedDataSet dimension filters.
        # Corresponds to the JSON property `notExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression]
        attr_accessor :not_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @and_group = args[:and_group] if args.key?(:and_group)
          @filter = args[:filter] if args.key?(:filter)
          @not_expression = args[:not_expression] if args.key?(:not_expression)
        end
      end
      
      # A list of ExpandedDataSet filter expressions.
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList
        include Google::Apis::Core::Hashable
      
        # A list of ExpandedDataSet filter expressions.
        # Corresponds to the JSON property `filterExpressions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression>]
        attr_accessor :filter_expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_expressions = args[:filter_expressions] if args.key?(:filter_expressions)
        end
      end
      
      # A filter for a string dimension that matches a particular list of options.
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the match is case-sensitive. If false, the match is case-
        # insensitive. Must be true.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Required. The list of possible string values to match against. Must be non-
        # empty.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A filter for a string-type dimension that matches a particular pattern.
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the match is case-sensitive. If false, the match is case-
        # insensitive. Must be true when match_type is EXACT. Must be false when
        # match_type is CONTAINS.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Required. The match type for the string filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # Required. The string value to be matched against.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @match_type = args[:match_type] if args.key?(:match_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request for fetching the opt out status for the automated GA4 setup process.
      class GoogleAnalyticsAdminV1alphaFetchAutomatedGa4ConfigurationOptOutRequest
        include Google::Apis::Core::Hashable
      
        # Required. The UA property to get the opt out status. Note this request uses
        # the internal property ID, not the tracking ID of the form UA-XXXXXX-YY. Format:
        # properties/`internalWebPropertyId` Example: properties/1234
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # Response message for fetching the opt out status for the automated GA4 setup
      # process.
      class GoogleAnalyticsAdminV1alphaFetchAutomatedGa4ConfigurationOptOutResponse
        include Google::Apis::Core::Hashable
      
        # The opt out status for the UA property.
        # Corresponds to the JSON property `optOut`
        # @return [Boolean]
        attr_accessor :opt_out
        alias_method :opt_out?, :opt_out
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @opt_out = args[:opt_out] if args.key?(:opt_out)
        end
      end
      
      # Response for looking up GA4 property connected to a UA property.
      class GoogleAnalyticsAdminV1alphaFetchConnectedGa4PropertyResponse
        include Google::Apis::Core::Hashable
      
        # The GA4 property connected to the UA property. An empty string is returned
        # when there is no connected GA4 property. Format: properties/`property_id`
        # Example: properties/1234
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A link between a GA4 property and a Firebase project.
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this FirebaseLink was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Example format: properties/1234/firebaseLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Firebase project resource name. When creating a FirebaseLink, you
        # may provide this resource name using either a project number or project ID.
        # Once this resource has been created, returned FirebaseLinks will always have a
        # project_name that contains a project number. Format: 'projects/`project number`
        # ' Example: 'projects/1234'
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Read-only resource with the tag for sending data from a website to a
      # DataStream. Only present for web DataStream resources.
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name for this GlobalSiteTag resource. Format: properties/
        # `property_id`/dataStreams/`stream_id`/globalSiteTag Example: "properties/123/
        # dataStreams/456/globalSiteTag"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. JavaScript code snippet to be pasted as the first item into the
        # head tag of every webpage to measure.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # A link between a GA4 property and a Google Ads account.
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        include Google::Apis::Core::Hashable
      
        # Enable personalized advertising features with this integration. Automatically
        # publish my Google Analytics audience lists and Google Analytics remarketing
        # events/parameters to the linked Google Ads account. If this field is not set
        # on create/update, it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. If true, this link is for a Google Ads manager account.
        # Corresponds to the JSON property `canManageClients`
        # @return [Boolean]
        attr_accessor :can_manage_clients
        alias_method :can_manage_clients?, :can_manage_clients
      
        # Output only. Time when this link was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Email address of the user that created the link. An empty string
        # will be returned if the email address can't be retrieved.
        # Corresponds to the JSON property `creatorEmailAddress`
        # @return [String]
        attr_accessor :creator_email_address
      
        # Immutable. Google Ads customer ID.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Output only. Format: properties/`propertyId`/googleAdsLinks/`googleAdsLinkId`
        # Note: googleAdsLinkId is not the Google Ads customer ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when this link was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @can_manage_clients = args[:can_manage_clients] if args.key?(:can_manage_clients)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_email_address = args[:creator_email_address] if args.key?(:creator_email_address)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings values for Google Signals. This is a singleton resource.
      class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Terms of Service acceptance.
        # Corresponds to the JSON property `consent`
        # @return [String]
        attr_accessor :consent
      
        # Output only. Resource name of this setting. Format: properties/`property_id`/
        # googleSignalsSettings Example: "properties/1000/googleSignalsSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of this setting.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The rules that govern how traffic is grouped into one channel.
      class GoogleAnalyticsAdminV1alphaGroupingRule
        include Google::Apis::Core::Hashable
      
        # Required. Customer defined display name for the channel.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A logical expression of Channel Group dimension filters.
        # Corresponds to the JSON property `expression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression]
        attr_accessor :expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expression = args[:expression] if args.key?(:expression)
        end
      end
      
      # Status information for a link proposal.
      class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The source of this proposal.
        # Corresponds to the JSON property `linkProposalInitiatingProduct`
        # @return [String]
        attr_accessor :link_proposal_initiating_product
      
        # Output only. The state of this proposal.
        # Corresponds to the JSON property `linkProposalState`
        # @return [String]
        attr_accessor :link_proposal_state
      
        # Output only. The email address of the user that proposed this linkage.
        # Corresponds to the JSON property `requestorEmail`
        # @return [String]
        attr_accessor :requestor_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link_proposal_initiating_product = args[:link_proposal_initiating_product] if args.key?(:link_proposal_initiating_product)
          @link_proposal_state = args[:link_proposal_state] if args.key?(:link_proposal_state)
          @requestor_email = args[:requestor_email] if args.key?(:requestor_email)
        end
      end
      
      # Response message for ListAccessBindings RPC.
      class GoogleAnalyticsAdminV1alphaListAccessBindingsResponse
        include Google::Apis::Core::Hashable
      
        # List of AccessBindings. These will be ordered stably, but in an arbitrary
        # order.
        # Corresponds to the JSON property `accessBindings`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding>]
        attr_accessor :access_bindings
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_bindings = args[:access_bindings] if args.key?(:access_bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListAccountSummaries RPC.
      class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
        include Google::Apis::Core::Hashable
      
        # Account summaries of all accounts the caller has access to.
        # Corresponds to the JSON property `accountSummaries`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccountSummary>]
        attr_accessor :account_summaries
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_summaries = args[:account_summaries] if args.key?(:account_summaries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for ListAccounts RPC.
      class GoogleAnalyticsAdminV1alphaListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount>]
        attr_accessor :accounts
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListAdSenseLinks method.
      class GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of AdSenseLinks.
        # Corresponds to the JSON property `adsenseLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink>]
        attr_accessor :adsense_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adsense_links = args[:adsense_links] if args.key?(:adsense_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListAudiences RPC.
      class GoogleAnalyticsAdminV1alphaListAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # List of Audiences.
        # Corresponds to the JSON property `audiences`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience>]
        attr_accessor :audiences
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audiences = args[:audiences] if args.key?(:audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListBigQueryLinks RPC
      class GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of BigQueryLinks.
        # Corresponds to the JSON property `bigqueryLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink>]
        attr_accessor :bigquery_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_links = args[:bigquery_links] if args.key?(:bigquery_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListChannelGroups RPC.
      class GoogleAnalyticsAdminV1alphaListChannelGroupsResponse
        include Google::Apis::Core::Hashable
      
        # List of ChannelGroup. These will be ordered stably, but in an arbitrary order.
        # Corresponds to the JSON property `channelGroups`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup>]
        attr_accessor :channel_groups
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_groups = args[:channel_groups] if args.key?(:channel_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for ListConnectedSiteTags RPC.
      class GoogleAnalyticsAdminV1alphaListConnectedSiteTagsRequest
        include Google::Apis::Core::Hashable
      
        # The Universal Analytics property to fetch connected site tags for. This does
        # not work on GA4 properties. A maximum of 20 connected site tags will be
        # returned. Example Format: `properties/1234`
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # Response message for ListConnectedSiteTags RPC.
      class GoogleAnalyticsAdminV1alphaListConnectedSiteTagsResponse
        include Google::Apis::Core::Hashable
      
        # The site tags for the Universal Analytics property. A maximum of 20 connected
        # site tags will be returned.
        # Corresponds to the JSON property `connectedSiteTags`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConnectedSiteTag>]
        attr_accessor :connected_site_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_site_tags = args[:connected_site_tags] if args.key?(:connected_site_tags)
        end
      end
      
      # Response message for ListConversionEvents RPC.
      class GoogleAnalyticsAdminV1alphaListConversionEventsResponse
        include Google::Apis::Core::Hashable
      
        # The requested conversion events
        # Corresponds to the JSON property `conversionEvents`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent>]
        attr_accessor :conversion_events
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_events = args[:conversion_events] if args.key?(:conversion_events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListCustomDimensions RPC.
      class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
        include Google::Apis::Core::Hashable
      
        # List of CustomDimensions.
        # Corresponds to the JSON property `customDimensions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension>]
        attr_accessor :custom_dimensions
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_dimensions = args[:custom_dimensions] if args.key?(:custom_dimensions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListCustomMetrics RPC.
      class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
        include Google::Apis::Core::Hashable
      
        # List of CustomMetrics.
        # Corresponds to the JSON property `customMetrics`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric>]
        attr_accessor :custom_metrics
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_metrics = args[:custom_metrics] if args.key?(:custom_metrics)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDataStreams RPC.
      class GoogleAnalyticsAdminV1alphaListDataStreamsResponse
        include Google::Apis::Core::Hashable
      
        # List of DataStreams.
        # Corresponds to the JSON property `dataStreams`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream>]
        attr_accessor :data_streams
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_streams = args[:data_streams] if args.key?(:data_streams)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDisplayVideo360AdvertiserLinkProposals RPC.
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        include Google::Apis::Core::Hashable
      
        # List of DisplayVideo360AdvertiserLinkProposals.
        # Corresponds to the JSON property `displayVideo360AdvertiserLinkProposals`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>]
        attr_accessor :display_video360_advertiser_link_proposals
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_video360_advertiser_link_proposals = args[:display_video360_advertiser_link_proposals] if args.key?(:display_video360_advertiser_link_proposals)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDisplayVideo360AdvertiserLinks RPC.
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of DisplayVideo360AdvertiserLinks.
        # Corresponds to the JSON property `displayVideo360AdvertiserLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink>]
        attr_accessor :display_video360_advertiser_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_video360_advertiser_links = args[:display_video360_advertiser_links] if args.key?(:display_video360_advertiser_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListEventCreateRules RPC.
      class GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse
        include Google::Apis::Core::Hashable
      
        # List of EventCreateRules. These will be ordered stably, but in an arbitrary
        # order.
        # Corresponds to the JSON property `eventCreateRules`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule>]
        attr_accessor :event_create_rules
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_create_rules = args[:event_create_rules] if args.key?(:event_create_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListExpandedDataSets RPC.
      class GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse
        include Google::Apis::Core::Hashable
      
        # List of ExpandedDataSet. These will be ordered stably, but in an arbitrary
        # order.
        # Corresponds to the JSON property `expandedDataSets`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet>]
        attr_accessor :expanded_data_sets
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expanded_data_sets = args[:expanded_data_sets] if args.key?(:expanded_data_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListFirebaseLinks RPC
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of FirebaseLinks. This will have at most one value.
        # Corresponds to the JSON property `firebaseLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink>]
        attr_accessor :firebase_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. Currently, Google Analytics
        # supports only one FirebaseLink per property, so this will never be populated.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firebase_links = args[:firebase_links] if args.key?(:firebase_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListGoogleAdsLinks RPC.
      class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of GoogleAdsLinks.
        # Corresponds to the JSON property `googleAdsLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink>]
        attr_accessor :google_ads_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_ads_links = args[:google_ads_links] if args.key?(:google_ads_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListMeasurementProtocolSecret RPC
      class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        include Google::Apis::Core::Hashable
      
        # A list of secrets for the parent stream specified in the request.
        # Corresponds to the JSON property `measurementProtocolSecrets`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>]
        attr_accessor :measurement_protocol_secrets
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @measurement_protocol_secrets = args[:measurement_protocol_secrets] if args.key?(:measurement_protocol_secrets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListProperties RPC.
      class GoogleAnalyticsAdminV1alphaListPropertiesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Response message for ListRollupPropertySourceLinks RPC.
      class GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of RollupPropertySourceLinks.
        # Corresponds to the JSON property `rollupPropertySourceLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink>]
        attr_accessor :rollup_property_source_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rollup_property_source_links = args[:rollup_property_source_links] if args.key?(:rollup_property_source_links)
        end
      end
      
      # Response message for ListSKAdNetworkConversionValueSchemas RPC
      class GoogleAnalyticsAdminV1alphaListSkAdNetworkConversionValueSchemasResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. Currently, Google Analytics
        # supports only one SKAdNetworkConversionValueSchema per dataStream, so this
        # will never be populated.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of SKAdNetworkConversionValueSchemas. This will have at most one value.
        # Corresponds to the JSON property `skadnetworkConversionValueSchemas`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema>]
        attr_accessor :skadnetwork_conversion_value_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @skadnetwork_conversion_value_schemas = args[:skadnetwork_conversion_value_schemas] if args.key?(:skadnetwork_conversion_value_schemas)
        end
      end
      
      # Response message for ListSearchAds360Links RPC.
      class GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of SearchAds360Links.
        # Corresponds to the JSON property `searchAds360Links`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link>]
        attr_accessor :search_ads360_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @search_ads360_links = args[:search_ads360_links] if args.key?(:search_ads360_links)
        end
      end
      
      # Response message for ListSubpropertyEventFilter RPC.
      class GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of subproperty event filters.
        # Corresponds to the JSON property `subpropertyEventFilters`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter>]
        attr_accessor :subproperty_event_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subproperty_event_filters = args[:subproperty_event_filters] if args.key?(:subproperty_event_filters)
        end
      end
      
      # Defines a condition for when an Event Edit or Event Creation rule applies to
      # an event.
      class GoogleAnalyticsAdminV1alphaMatchingCondition
        include Google::Apis::Core::Hashable
      
        # Required. The type of comparison to be applied to the value.
        # Corresponds to the JSON property `comparisonType`
        # @return [String]
        attr_accessor :comparison_type
      
        # Required. The name of the field that is compared against for the condition. If
        # 'event_name' is specified this condition will apply to the name of the event.
        # Otherwise the condition will apply to a parameter with the specified name.
        # This value cannot contain spaces.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Whether or not the result of the comparison should be negated. For example, if
        # `negated` is true, then 'equals' comparisons would function as 'not equals'.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        # Required. The value being compared against for this condition. The runtime
        # implementation may perform type coercion of this value to evaluate this
        # condition based on the type of the parameter value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comparison_type = args[:comparison_type] if args.key?(:comparison_type)
          @field = args[:field] if args.key?(:field)
          @negated = args[:negated] if args.key?(:negated)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A secret value used for sending hits to Measurement Protocol.
      class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
        include Google::Apis::Core::Hashable
      
        # Required. Human-readable display name for this secret.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this secret. This secret may be a child of any
        # type of stream. Format: properties/`property`/dataStreams/`dataStream`/
        # measurementProtocolSecrets/`measurementProtocolSecret`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The measurement protocol secret value. Pass this value to the
        # api_secret field of the Measurement Protocol API when sending hits to this
        # secret's parent property.
        # Corresponds to the JSON property `secretValue`
        # @return [String]
        attr_accessor :secret_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @secret_value = args[:secret_value] if args.key?(:secret_value)
        end
      end
      
      # To represent a number.
      class GoogleAnalyticsAdminV1alphaNumericValue
        include Google::Apis::Core::Hashable
      
        # Double value
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Integer value
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
        end
      end
      
      # Defines an event parameter to mutate.
      class GoogleAnalyticsAdminV1alphaParameterMutation
        include Google::Apis::Core::Hashable
      
        # Required. The name of the parameter to mutate. This value must: * be less than
        # 40 characters. * be unique across across all mutations within the rule *
        # consist only of letters, digits or _ (underscores) For event edit rules, the
        # name may also be set to 'event_name' to modify the event_name in place.
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        # Required. The value mutation to perform. * Must be less than 100 characters. *
        # To specify a constant value for the param, use the value's string. * To copy
        # value from another parameter, use syntax like "[[other_parameter]]" For more
        # details, see this [help center article](https://support.google.com/analytics/
        # answer/10085872#modify-an-event&zippy=%2Cin-this-article%2Cmodify-parameters).
        # Corresponds to the JSON property `parameterValue`
        # @return [String]
        attr_accessor :parameter_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter = args[:parameter] if args.key?(:parameter)
          @parameter_value = args[:parameter_value] if args.key?(:parameter_value)
        end
      end
      
      # Settings for a SKAdNetwork conversion postback window.
      class GoogleAnalyticsAdminV1alphaPostbackWindow
        include Google::Apis::Core::Hashable
      
        # Ordering of the repeated field will be used to prioritize the conversion value
        # settings. Lower indexed entries are prioritized higher. The first conversion
        # value setting that evaluates to true will be selected. It must have at least
        # one entry if enable_postback_window_settings is set to true. It can have
        # maximum of 128 entries.
        # Corresponds to the JSON property `conversionValues`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionValues>]
        attr_accessor :conversion_values
      
        # If enable_postback_window_settings is true, conversion_values must be
        # populated and will be used for determining when and how to set the Conversion
        # Value on a client device and exporting schema to linked Ads accounts. If false,
        # the settings are not used, but are retained in case they may be used in the
        # future. This must always be true for postback_window_one.
        # Corresponds to the JSON property `postbackWindowSettingsEnabled`
        # @return [Boolean]
        attr_accessor :postback_window_settings_enabled
        alias_method :postback_window_settings_enabled?, :postback_window_settings_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_values = args[:conversion_values] if args.key?(:conversion_values)
          @postback_window_settings_enabled = args[:postback_window_settings_enabled] if args.key?(:postback_window_settings_enabled)
        end
      end
      
      # A resource message representing a Google Analytics GA4 property.
      class GoogleAnalyticsAdminV1alphaProperty
        include Google::Apis::Core::Hashable
      
        # Immutable. The resource name of the parent account Format: accounts/`
        # account_id` Example: "accounts/123"
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # Output only. Time when the entity was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The currency type used in reports involving monetary values. Format: https://
        # en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR", "JPY"
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Output only. If set, the time at which this property was trashed. If not set,
        # then this property is not currently in the trash can.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Required. Human-readable display name for this property. The max allowed
        # display name length is 100 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. If set, the time at which this trashed property will be
        # permanently deleted. If not set, then this property is not currently in the
        # trash can and is not slated to be deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK
        # Corresponds to the JSON property `industryCategory`
        # @return [String]
        attr_accessor :industry_category
      
        # Output only. Resource name of this property. Format: properties/`property_id`
        # Example: "properties/1000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Resource name of this property's logical parent. Note: The Property-
        # Moving UI can be used to change the parent. Format: accounts/`account`,
        # properties/`property` Example: "accounts/100", "properties/101"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Immutable. The property type for this Property resource. When creating a
        # property, if the type is "PROPERTY_TYPE_UNSPECIFIED", then "ORDINARY_PROPERTY"
        # will be implied.
        # Corresponds to the JSON property `propertyType`
        # @return [String]
        attr_accessor :property_type
      
        # Output only. The Google Analytics service level that applies to this property.
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        # Required. Reporting Time Zone, used as the day boundary for reports,
        # regardless of where the data originates. If the time zone honors DST,
        # Analytics will automatically adjust for the changes. NOTE: Changing the time
        # zone only affects data going forward, and is not applied retroactively. Format:
        # https://www.iana.org/time-zones Example: "America/Los_Angeles"
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. Time when entity payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @create_time = args[:create_time] if args.key?(:create_time)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @industry_category = args[:industry_category] if args.key?(:industry_category)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @property_type = args[:property_type] if args.key?(:property_type)
          @service_level = args[:service_level] if args.key?(:service_level)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A virtual resource representing metadata for a GA4 property.
      class GoogleAnalyticsAdminV1alphaPropertySummary
        include Google::Apis::Core::Hashable
      
        # Display name for the property referred to in this property summary.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of this property's logical parent. Note: The Property-Moving UI
        # can be used to change the parent. Format: accounts/`account`, properties/`
        # property` Example: "accounts/100", "properties/200"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Resource name of property referred to by this property summary Format:
        # properties/`property_id` Example: "properties/1000"
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # The property's property type.
        # Corresponds to the JSON property `propertyType`
        # @return [String]
        attr_accessor :property_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
          @property = args[:property] if args.key?(:property)
          @property_type = args[:property_type] if args.key?(:property_type)
        end
      end
      
      # Request message for ProvisionAccountTicket RPC.
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        attr_accessor :account
      
        # Redirect URI where the user will be sent after accepting Terms of Service.
        # Must be configured in Cloud Console as a Redirect URI.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
        end
      end
      
      # Response message for ProvisionAccountTicket RPC.
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
        include Google::Apis::Core::Hashable
      
        # The param to be passed in the ToS link.
        # Corresponds to the JSON property `accountTicketId`
        # @return [String]
        attr_accessor :account_ticket_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_ticket_id = args[:account_ticket_id] if args.key?(:account_ticket_id)
        end
      end
      
      # A link that references a source property under the parent rollup property.
      class GoogleAnalyticsAdminV1alphaRollupPropertySourceLink
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of this RollupPropertySourceLink. Format: '
        # properties/`property_id`/rollupPropertySourceLinks/`
        # rollup_property_source_link`' Format: 'properties/123/
        # rollupPropertySourceLinks/456'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Resource name of the source property. Format: properties/`
        # property_id` Example: "properties/789"
        # Corresponds to the JSON property `sourceProperty`
        # @return [String]
        attr_accessor :source_property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @source_property = args[:source_property] if args.key?(:source_property)
        end
      end
      
      # The request for a Data Access Record Report.
      class GoogleAnalyticsAdminV1alphaRunAccessReportRequest
        include Google::Apis::Core::Hashable
      
        # Date ranges of access records to read. If multiple date ranges are requested,
        # each response row will contain a zero based date range index. If two date
        # ranges overlap, the access records for the overlapping days is included in the
        # response rows for both date ranges. Requests are allowed up to 2 date ranges.
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDateRange>]
        attr_accessor :date_ranges
      
        # Expresses dimension or metric filters. The fields in the same expression need
        # to be either all dimensions or all metrics.
        # Corresponds to the JSON property `dimensionFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression]
        attr_accessor :dimension_filter
      
        # The dimensions requested and displayed in the response. Requests are allowed
        # up to 9 dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimension>]
        attr_accessor :dimensions
      
        # Optional. Decides whether to return the users within user groups. This field
        # works only when include_all_users is set to true. If true, it will return all
        # users with access to the specified property or account. If false, only the
        # users with direct access will be returned.
        # Corresponds to the JSON property `expandGroups`
        # @return [Boolean]
        attr_accessor :expand_groups
        alias_method :expand_groups?, :expand_groups
      
        # Optional. Determines whether to include users who have never made an API call
        # in the response. If true, all users with access to the specified property or
        # account are included in the response, regardless of whether they have made an
        # API call or not. If false, only the users who have made an API call will be
        # included.
        # Corresponds to the JSON property `includeAllUsers`
        # @return [Boolean]
        attr_accessor :include_all_users
        alias_method :include_all_users?, :include_all_users
      
        # The number of rows to return. If unspecified, 10,000 rows are returned. The
        # API returns a maximum of 100,000 rows per request, no matter how many you ask
        # for. `limit` must be positive. The API may return fewer rows than the
        # requested `limit`, if there aren't as many remaining rows as the `limit`. For
        # instance, there are fewer than 300 possible values for the dimension `country`,
        # so when reporting on only `country`, you can't get more than 300 rows, even
        # if you set `limit` to a higher value. To learn more about this pagination
        # parameter, see [Pagination](https://developers.google.com/analytics/devguides/
        # reporting/data/v1/basics#pagination).
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Expresses dimension or metric filters. The fields in the same expression need
        # to be either all dimensions or all metrics.
        # Corresponds to the JSON property `metricFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression]
        attr_accessor :metric_filter
      
        # The metrics requested and displayed in the response. Requests are allowed up
        # to 10 metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetric>]
        attr_accessor :metrics
      
        # The row count of the start row. The first row is counted as row 0. If offset
        # is unspecified, it is treated as 0. If offset is zero, then this method will
        # return the first page of results with `limit` entries. To learn more about
        # this pagination parameter, see [Pagination](https://developers.google.com/
        # analytics/devguides/reporting/data/v1/basics#pagination).
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # Specifies how rows are ordered in the response.
        # Corresponds to the JSON property `orderBys`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderBy>]
        attr_accessor :order_bys
      
        # Toggles whether to return the current state of this Analytics Property's quota.
        # Quota is returned in [AccessQuota](#AccessQuota). For account-level requests,
        # this field must be false.
        # Corresponds to the JSON property `returnEntityQuota`
        # @return [Boolean]
        attr_accessor :return_entity_quota
        alias_method :return_entity_quota?, :return_entity_quota
      
        # This request's time zone if specified. If unspecified, the property's time
        # zone is used. The request's time zone is used to interpret the start & end
        # dates of the report. Formatted as strings from the IANA Time Zone database (
        # https://www.iana.org/time-zones); for example "America/New_York" or "Asia/
        # Tokyo".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
          @dimension_filter = args[:dimension_filter] if args.key?(:dimension_filter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @expand_groups = args[:expand_groups] if args.key?(:expand_groups)
          @include_all_users = args[:include_all_users] if args.key?(:include_all_users)
          @limit = args[:limit] if args.key?(:limit)
          @metric_filter = args[:metric_filter] if args.key?(:metric_filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @offset = args[:offset] if args.key?(:offset)
          @order_bys = args[:order_bys] if args.key?(:order_bys)
          @return_entity_quota = args[:return_entity_quota] if args.key?(:return_entity_quota)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # The customized Data Access Record Report response.
      class GoogleAnalyticsAdminV1alphaRunAccessReportResponse
        include Google::Apis::Core::Hashable
      
        # The header for a column in the report that corresponds to a specific dimension.
        # The number of DimensionHeaders and ordering of DimensionHeaders matches the
        # dimensions present in rows.
        # Corresponds to the JSON property `dimensionHeaders`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimensionHeader>]
        attr_accessor :dimension_headers
      
        # The header for a column in the report that corresponds to a specific metric.
        # The number of MetricHeaders and ordering of MetricHeaders matches the metrics
        # present in rows.
        # Corresponds to the JSON property `metricHeaders`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetricHeader>]
        attr_accessor :metric_headers
      
        # Current state of all quotas for this Analytics property. If any quota for a
        # property is exhausted, all requests to that property will return Resource
        # Exhausted errors.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuota]
        attr_accessor :quota
      
        # The total number of rows in the query result. `rowCount` is independent of the
        # number of rows returned in the response, the `limit` request parameter, and
        # the `offset` request parameter. For example if a query returns 175 rows and
        # includes `limit` of 50 in the API request, the response will contain `rowCount`
        # of 175 but only 50 rows. To learn more about this pagination parameter, see [
        # Pagination](https://developers.google.com/analytics/devguides/reporting/data/
        # v1/basics#pagination).
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Rows of dimension value combinations and metric values in the report.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_headers = args[:dimension_headers] if args.key?(:dimension_headers)
          @metric_headers = args[:metric_headers] if args.key?(:metric_headers)
          @quota = args[:quota] if args.key?(:quota)
          @row_count = args[:row_count] if args.key?(:row_count)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # SKAdNetwork conversion value schema of an iOS stream.
      class GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema
        include Google::Apis::Core::Hashable
      
        # If enabled, the GA SDK will set conversion values using this schema definition,
        # and schema will be exported to any Google Ads accounts linked to this
        # property. If disabled, the GA SDK will not automatically set conversion values,
        # and also the schema will not be exported to Ads.
        # Corresponds to the JSON property `applyConversionValues`
        # @return [Boolean]
        attr_accessor :apply_conversion_values
        alias_method :apply_conversion_values?, :apply_conversion_values
      
        # Output only. Resource name of the schema. This will be child of ONLY an iOS
        # stream, and there can be at most one such child under an iOS stream. Format:
        # properties/`property`/dataStreams/`dataStream`/
        # sKAdNetworkConversionValueSchema
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings for a SKAdNetwork conversion postback window.
        # Corresponds to the JSON property `postbackWindowOne`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPostbackWindow]
        attr_accessor :postback_window_one
      
        # Settings for a SKAdNetwork conversion postback window.
        # Corresponds to the JSON property `postbackWindowThree`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPostbackWindow]
        attr_accessor :postback_window_three
      
        # Settings for a SKAdNetwork conversion postback window.
        # Corresponds to the JSON property `postbackWindowTwo`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPostbackWindow]
        attr_accessor :postback_window_two
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_conversion_values = args[:apply_conversion_values] if args.key?(:apply_conversion_values)
          @name = args[:name] if args.key?(:name)
          @postback_window_one = args[:postback_window_one] if args.key?(:postback_window_one)
          @postback_window_three = args[:postback_window_three] if args.key?(:postback_window_three)
          @postback_window_two = args[:postback_window_two] if args.key?(:postback_window_two)
        end
      end
      
      # A link between a GA4 property and a Search Ads 360 entity.
      class GoogleAnalyticsAdminV1alphaSearchAds360Link
        include Google::Apis::Core::Hashable
      
        # Enables personalized advertising features with this integration. If this field
        # is not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. The display name of the Search Ads 360 Advertiser. Allows users
        # to easily identify the linked resource.
        # Corresponds to the JSON property `advertiserDisplayName`
        # @return [String]
        attr_accessor :advertiser_display_name
      
        # Immutable. This field represents the Advertiser ID of the Search Ads 360
        # Advertiser. that has been linked.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Immutable. Enables the import of campaign data from Search Ads 360 into the
        # GA4 property. After link creation, this can only be updated from the Search
        # Ads 360 product. If this field is not set on create, it will be defaulted to
        # true.
        # Corresponds to the JSON property `campaignDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :campaign_data_sharing_enabled
        alias_method :campaign_data_sharing_enabled?, :campaign_data_sharing_enabled
      
        # Immutable. Enables the import of cost data from Search Ads 360 to the GA4
        # property. This can only be enabled if campaign_data_sharing_enabled is enabled.
        # After link creation, this can only be updated from the Search Ads 360 product.
        # If this field is not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `costDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :cost_data_sharing_enabled
        alias_method :cost_data_sharing_enabled?, :cost_data_sharing_enabled
      
        # Output only. The resource name for this SearchAds360Link resource. Format:
        # properties/`propertyId`/searchAds360Links/`linkId` Note: linkId is not the
        # Search Ads 360 advertiser ID
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Enables export of site stats with this integration. If this field is not set
        # on create, it will be defaulted to true.
        # Corresponds to the JSON property `siteStatsSharingEnabled`
        # @return [Boolean]
        attr_accessor :site_stats_sharing_enabled
        alias_method :site_stats_sharing_enabled?, :site_stats_sharing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @advertiser_display_name = args[:advertiser_display_name] if args.key?(:advertiser_display_name)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_data_sharing_enabled = args[:campaign_data_sharing_enabled] if args.key?(:campaign_data_sharing_enabled)
          @cost_data_sharing_enabled = args[:cost_data_sharing_enabled] if args.key?(:cost_data_sharing_enabled)
          @name = args[:name] if args.key?(:name)
          @site_stats_sharing_enabled = args[:site_stats_sharing_enabled] if args.key?(:site_stats_sharing_enabled)
        end
      end
      
      # Request message for SearchChangeHistoryEvents RPC.
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, only return changes that match one or more of these types of
        # actions.
        # Corresponds to the JSON property `action`
        # @return [Array<String>]
        attr_accessor :action
      
        # Optional. If set, only return changes if they are made by a user in this list.
        # Corresponds to the JSON property `actorEmail`
        # @return [Array<String>]
        attr_accessor :actor_email
      
        # Optional. If set, only return changes made after this time (inclusive).
        # Corresponds to the JSON property `earliestChangeTime`
        # @return [String]
        attr_accessor :earliest_change_time
      
        # Optional. If set, only return changes made before this time (inclusive).
        # Corresponds to the JSON property `latestChangeTime`
        # @return [String]
        attr_accessor :latest_change_time
      
        # Optional. The maximum number of ChangeHistoryEvent items to return. The
        # service may return fewer than this value, even if there are additional pages.
        # If unspecified, at most 50 items will be returned. The maximum value is 200 (
        # higher values will be coerced to the maximum).
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `SearchChangeHistoryEvents`
        # call. Provide this to retrieve the subsequent page. When paginating, all other
        # parameters provided to `SearchChangeHistoryEvents` must match the call that
        # provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Resource name for a child property. If set, only return changes made
        # to this property or its child resources.
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # Optional. If set, only return changes if they are for a resource that matches
        # at least one of these types.
        # Corresponds to the JSON property `resourceType`
        # @return [Array<String>]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @actor_email = args[:actor_email] if args.key?(:actor_email)
          @earliest_change_time = args[:earliest_change_time] if args.key?(:earliest_change_time)
          @latest_change_time = args[:latest_change_time] if args.key?(:latest_change_time)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @property = args[:property] if args.key?(:property)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Response message for SearchAccounts RPC.
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller.
        # Corresponds to the JSON property `changeHistoryEvents`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryEvent>]
        attr_accessor :change_history_events
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_history_events = args[:change_history_events] if args.key?(:change_history_events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request for setting the opt out status for the automated GA4 setup process.
      class GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutRequest
        include Google::Apis::Core::Hashable
      
        # The status to set.
        # Corresponds to the JSON property `optOut`
        # @return [Boolean]
        attr_accessor :opt_out
        alias_method :opt_out?, :opt_out
      
        # Required. The UA property to set the opt out status. Note this request uses
        # the internal property ID, not the tracking ID of the form UA-XXXXXX-YY. Format:
        # properties/`internalWebPropertyId` Example: properties/1234
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @opt_out = args[:opt_out] if args.key?(:opt_out)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # Response message for setting the opt out status for the automated GA4 setup
      # process.
      class GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A resource message representing a GA4 Subproperty event filter.
      class GoogleAnalyticsAdminV1alphaSubpropertyEventFilter
        include Google::Apis::Core::Hashable
      
        # Immutable. Resource name of the Subproperty that uses this filter.
        # Corresponds to the JSON property `applyToProperty`
        # @return [String]
        attr_accessor :apply_to_property
      
        # Required. Unordered list. Filter clauses that define the
        # SubpropertyEventFilter. All clauses are AND'ed together to determine what data
        # is sent to the subproperty.
        # Corresponds to the JSON property `filterClauses`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause>]
        attr_accessor :filter_clauses
      
        # Output only. Format: properties/`ordinary_property_id`/subpropertyEventFilters/
        # `sub_property_event_filter` Example: properties/1234/subpropertyEventFilters/
        # 5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_to_property = args[:apply_to_property] if args.key?(:apply_to_property)
          @filter_clauses = args[:filter_clauses] if args.key?(:filter_clauses)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A clause for defining a filter. A filter may be inclusive (events satisfying
      # the filter clause are included in the subproperty's data) or exclusive (events
      # satisfying the filter clause are excluded from the subproperty's data).
      class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause
        include Google::Apis::Core::Hashable
      
        # Required. The type for the filter clause.
        # Corresponds to the JSON property `filterClauseType`
        # @return [String]
        attr_accessor :filter_clause_type
      
        # A logical expression of Subproperty event filters.
        # Corresponds to the JSON property `filterExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression]
        attr_accessor :filter_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_clause_type = args[:filter_clause_type] if args.key?(:filter_clause_type)
          @filter_expression = args[:filter_expression] if args.key?(:filter_expression)
        end
      end
      
      # A specific filter expression
      class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition
        include Google::Apis::Core::Hashable
      
        # Required. The field that is being filtered.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # A filter for null values.
        # Corresponds to the JSON property `nullFilter`
        # @return [Boolean]
        attr_accessor :null_filter
        alias_method :null_filter?, :null_filter
      
        # A filter for a string-type dimension that matches a particular pattern.
        # Corresponds to the JSON property `stringFilter`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter]
        attr_accessor :string_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @null_filter = args[:null_filter] if args.key?(:null_filter)
          @string_filter = args[:string_filter] if args.key?(:string_filter)
        end
      end
      
      # A filter for a string-type dimension that matches a particular pattern.
      class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the string value is case sensitive. If false, the match is
        # case-insensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Required. The match type for the string filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # Required. The string value used for the matching.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @match_type = args[:match_type] if args.key?(:match_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A logical expression of Subproperty event filters.
      class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression
        include Google::Apis::Core::Hashable
      
        # A specific filter expression
        # Corresponds to the JSON property `filterCondition`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition]
        attr_accessor :filter_condition
      
        # A logical expression of Subproperty event filters.
        # Corresponds to the JSON property `notExpression`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression]
        attr_accessor :not_expression
      
        # A list of Subproperty event filter expressions.
        # Corresponds to the JSON property `orGroup`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList]
        attr_accessor :or_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_condition = args[:filter_condition] if args.key?(:filter_condition)
          @not_expression = args[:not_expression] if args.key?(:not_expression)
          @or_group = args[:or_group] if args.key?(:or_group)
        end
      end
      
      # A list of Subproperty event filter expressions.
      class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList
        include Google::Apis::Core::Hashable
      
        # Required. Unordered list. A list of Subproperty event filter expressions
        # Corresponds to the JSON property `filterExpressions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression>]
        attr_accessor :filter_expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_expressions = args[:filter_expressions] if args.key?(:filter_expressions)
        end
      end
      
      # Request message for UpdateAccessBinding RPC.
      class GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest
        include Google::Apis::Core::Hashable
      
        # A binding of a user to a set of roles.
        # Corresponds to the JSON property `accessBinding`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        attr_accessor :access_binding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_binding = args[:access_binding] if args.key?(:access_binding)
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
    end
  end
end
