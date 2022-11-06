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
      
        # Required. Immutable. The dimension name or metric name to filter.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # Optional. If set, specifies the time window for which to evaluate data in
        # number of days. If not set, then audience data is evaluated against lifetime
        # data (i.e., infinite time window). For example, if set to 1 day, only the
        # current day's data is evaluated. The reference point is the current day when
        # at_any_point_in_time is unset or false. It can only be set when Audience scope
        # is ACROSS_ALL_SESSIONS and cannot be greater than 60 days.
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
      # inclusive (i.e., users satisfying the filter clause are included in the
      # Audience) or exclusive (i.e., users satisfying the filter clause are excluded
      # from the Audience).
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
        # of the previous step (i.e., t[i] - t[i-1] <= constraint_duration). If not set,
        # there is no duration requirement (the duration is effectively unlimited). It
        # is ignored for the first step.
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
      
      # Read-only resource used to summarize a principal's effective roles.
      class GoogleAnalyticsAdminV1alphaAuditUserLink
        include Google::Apis::Core::Hashable
      
        # Roles directly assigned to this user for this entity. Format: predefinedRoles/
        # viewer Excludes roles that are inherited from an account (if this is for a
        # property), group, or organization admin role.
        # Corresponds to the JSON property `directRoles`
        # @return [Array<String>]
        attr_accessor :direct_roles
      
        # Union of all permissions a user has at this account or property (includes
        # direct permissions, group-inherited permissions, etc.). Format:
        # predefinedRoles/viewer
        # Corresponds to the JSON property `effectiveRoles`
        # @return [Array<String>]
        attr_accessor :effective_roles
      
        # Email address of the linked user
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Example format: properties/1234/userLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_roles = args[:direct_roles] if args.key?(:direct_roles)
          @effective_roles = args[:effective_roles] if args.key?(:effective_roles)
          @email_address = args[:email_address] if args.key?(:email_address)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for AuditUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of user links to return. The service may return fewer than
        # this value. If unspecified, at most 1000 user links will be returned. The
        # maximum value is 5000; values above 5000 will be coerced to 5000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous `AuditUserLinks` call. Provide this to
        # retrieve the subsequent page. When paginating, all other parameters provided
        # to `AuditUserLinks` must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response message for AuditUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of AuditUserLinks. These will be ordered stably, but in an arbitrary
        # order.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for BatchCreateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, then email the new users notifying them that they've been
        # granted permissions to the resource. Regardless of whether this is set or not,
        # notify_new_user field inside each individual request is ignored.
        # Corresponds to the JSON property `notifyNewUsers`
        # @return [Boolean]
        attr_accessor :notify_new_users
        alias_method :notify_new_users?, :notify_new_users
      
        # Required. The requests specifying the user links to create. A maximum of 1000
        # user links can be created in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notify_new_users = args[:notify_new_users] if args.key?(:notify_new_users)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchCreateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # The user links created.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for BatchDeleteUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the user links to update. A maximum of 1000
        # user links can be updated in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchGetUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # The requested user links.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for BatchUpdateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the user links to update. A maximum of 1000
        # user links can be updated in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchUpdateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # The user links updated.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_links = args[:user_links] if args.key?(:user_links)
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
      
        # The attribution settings used for a given property. This is a singleton
        # resource.
        # Corresponds to the JSON property `attributionSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings]
        attr_accessor :attribution_settings
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribution_settings = args[:attribution_settings] if args.key?(:attribution_settings)
          @conversion_event = args[:conversion_event] if args.key?(:conversion_event)
          @custom_dimension = args[:custom_dimension] if args.key?(:custom_dimension)
          @custom_metric = args[:custom_metric] if args.key?(:custom_metric)
          @data_retention_settings = args[:data_retention_settings] if args.key?(:data_retention_settings)
          @data_stream = args[:data_stream] if args.key?(:data_stream)
          @display_video360_advertiser_link = args[:display_video360_advertiser_link] if args.key?(:display_video360_advertiser_link)
          @display_video360_advertiser_link_proposal = args[:display_video360_advertiser_link_proposal] if args.key?(:display_video360_advertiser_link_proposal)
          @expanded_data_set = args[:expanded_data_set] if args.key?(:expanded_data_set)
          @firebase_link = args[:firebase_link] if args.key?(:firebase_link)
          @google_ads_link = args[:google_ads_link] if args.key?(:google_ads_link)
          @google_signals_settings = args[:google_signals_settings] if args.key?(:google_signals_settings)
          @measurement_protocol_secret = args[:measurement_protocol_secret] if args.key?(:measurement_protocol_secret)
          @property = args[:property] if args.key?(:property)
          @search_ads360_link = args[:search_ads360_link] if args.key?(:search_ads360_link)
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
      
      # A conversion event in a Google Analytics property.
      class GoogleAnalyticsAdminV1alphaConversionEvent
        include Google::Apis::Core::Hashable
      
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
      
        # Output only. If set, this event can currently be deleted via
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom = args[:custom] if args.key?(:custom)
          @deletable = args[:deletable] if args.key?(:deletable)
          @event_name = args[:event_name] if args.key?(:event_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for CreateUserLink RPC. Users can have multiple email
      # addresses associated with their Google account, and one of these email
      # addresses is the "primary" email address. Any of the email addresses
      # associated with a Google account may be used for a new UserLink, but the
      # returned UserLink will always contain the "primary" email address. As a result,
      # the input and output email address for this request may differ.
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, then email the new user notifying them that they've been
        # granted permissions to the resource.
        # Corresponds to the JSON property `notifyNewUser`
        # @return [Boolean]
        attr_accessor :notify_new_user
        alias_method :notify_new_user?, :notify_new_user
      
        # Required. Example format: accounts/1234
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A resource message representing a user's permissions on an Account or Property
        # resource.
        # Corresponds to the JSON property `userLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        attr_accessor :user_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notify_new_user = args[:notify_new_user] if args.key?(:notify_new_user)
          @parent = args[:parent] if args.key?(:parent)
          @user_link = args[:user_link] if args.key?(:user_link)
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
        # event-scoped dimension, then this is the event parameter name. May only
        # contain alphanumeric and underscore characters, starting with a letter. Max
        # length of 24 characters for user-scoped dimensions, 40 characters for event-
        # scoped dimensions.
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
      
        # Immutable. Domain name of the web app being measured, or empty. Example: "http:
        # //www.google.com", "https://www.google.com"
        # Corresponds to the JSON property `defaultUri`
        # @return [String]
        attr_accessor :default_uri
      
        # Output only. ID of the corresponding web app in Firebase, if any. This ID can
        # change if the web app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Output only. Analytics "Measurement ID", without the "G-" prefix. Example: "G-
        # 1A2BCD345E" would just be "1A2BCD345E"
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
      
      # Request message for DeleteUserLink RPC.
      class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
        include Google::Apis::Core::Hashable
      
        # Required. Example format: accounts/1234/userLinks/5678
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
      
      # Response message for ListUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaListUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of UserLinks. These will be ordered stably, but in an arbitrary order.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_links = args[:user_links] if args.key?(:user_links)
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
        # will be implied. "SUBPROPERTY" and "ROLLUP_PROPERTY" types cannot yet be
        # created via Google Analytics Admin API.
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
        # Must be configured in Developers Console as a Redirect URI
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
        # Quota is returned in [AccessQuota](#AccessQuota).
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
      
      # Request message for UpdateUserLink RPC.
      class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
        include Google::Apis::Core::Hashable
      
        # A resource message representing a user's permissions on an Account or Property
        # resource.
        # Corresponds to the JSON property `userLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        attr_accessor :user_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_link = args[:user_link] if args.key?(:user_link)
        end
      end
      
      # A resource message representing a user's permissions on an Account or Property
      # resource.
      class GoogleAnalyticsAdminV1alphaUserLink
        include Google::Apis::Core::Hashable
      
        # Roles directly assigned to this user for this account or property. Valid
        # values: predefinedRoles/viewer predefinedRoles/analyst predefinedRoles/editor
        # predefinedRoles/admin predefinedRoles/no-cost-data predefinedRoles/no-revenue-
        # data Excludes roles that are inherited from a higher-level entity, group, or
        # organization admin role. A UserLink that is updated to have an empty list of
        # direct_roles will be deleted.
        # Corresponds to the JSON property `directRoles`
        # @return [Array<String>]
        attr_accessor :direct_roles
      
        # Immutable. Email address of the user to link
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Output only. Example format: properties/1234/userLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_roles = args[:direct_roles] if args.key?(:direct_roles)
          @email_address = args[:email_address] if args.key?(:email_address)
          @name = args[:name] if args.key?(:name)
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
