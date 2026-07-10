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
    module CloudbillingV1beta
      
      # A local representation of the query used to fetch the data. This is used
      # instead of the raw QueryBillingDataRequest to avoid pulling in Cloud Policy
      # Enforcement (CPE) resource_type annotations into the response payload, which
      # causes ESF validation failures.
      class AgenticQueryInfo
        include Google::Apis::Core::Hashable
      
        # The columns queried.
        # Corresponds to the JSON property `columns`
        # @return [String]
        attr_accessor :columns
      
        # The filter applied to the query.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The group-by clause applied to the query.
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # The row limit applied to the query.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # The order-by clause applied to the query.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # The parents (e.g. projects, billing accounts) queried.
        # Corresponds to the JSON property `parents`
        # @return [Array<String>]
        attr_accessor :parents
      
        # The view queried.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @limit = args[:limit] if args.key?(:limit)
          @order_by = args[:order_by] if args.key?(:order_by)
          @parents = args[:parents] if args.key?(:parents)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # An ordered collection of elements of arbitrary count.
      class Array
        include Google::Apis::Core::Hashable
      
        # The elements of the array.
        # Corresponds to the JSON property `element`
        # @return [Array<Google::Apis::CloudbillingV1beta::ValueProto>]
        attr_accessor :element
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @element = args[:element] if args.key?(:element)
        end
      end
      
      # Encapsulates billing data.
      class BillingData
        include Google::Apis::Core::Hashable
      
        # Information about columns.
        # Corresponds to the JSON property `columnInfo`
        # @return [Array<Google::Apis::CloudbillingV1beta::ColumnInfo>]
        attr_accessor :column_info
      
        # Rows.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::CloudbillingV1beta::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_info = args[:column_info] if args.key?(:column_info)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Specifies a Billing data resource that can be used for authorization to access
      # billing data.
      class BillingDataResource
        include Google::Apis::Core::Hashable
      
        # Optional. If not provided the billing account currently associated with the
        # resource will be used.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Required. Resource name for an entitity that can be used for authorization to
        # access billing data such as `projects/`project`` or `billingAccounts/`
        # billing_account``
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Represents a column header.
      class ColumnInfo
        include Google::Apis::Core::Hashable
      
        # Name of the column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
        end
      end
      
      # A dataset used to support an insight, suitable for UI rendering (tables/charts)
      # .
      class DataSet
        include Google::Apis::Core::Hashable
      
        # Encapsulates billing data.
        # Corresponds to the JSON property `billingData`
        # @return [Google::Apis::CloudbillingV1beta::BillingData]
        attr_accessor :billing_data
      
        # A local representation of the query used to fetch the data. This is used
        # instead of the raw QueryBillingDataRequest to avoid pulling in Cloud Policy
        # Enforcement (CPE) resource_type annotations into the response payload, which
        # causes ESF validation failures.
        # Corresponds to the JSON property `queryInfo`
        # @return [Google::Apis::CloudbillingV1beta::AgenticQueryInfo]
        attr_accessor :query_info
      
        # A suggested chart for the data set, used for UI rendering.
        # Corresponds to the JSON property `suggestedChart`
        # @return [Google::Apis::CloudbillingV1beta::SuggestedChart]
        attr_accessor :suggested_chart
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_data = args[:billing_data] if args.key?(:billing_data)
          @query_info = args[:query_info] if args.key?(:query_info)
          @suggested_chart = args[:suggested_chart] if args.key?(:suggested_chart)
        end
      end
      
      # A datetime value.
      class Datetime
        include Google::Apis::Core::Hashable
      
        # Represents bit field encoding of year/month/day/hour/minute/second. See class
        # DatetimeValue in civil_time.h for details of encoding.
        # Corresponds to the JSON property `bitFieldDatetimeSeconds`
        # @return [Fixnum]
        attr_accessor :bit_field_datetime_seconds
      
        # Non-negative fractions of a second at nanosecond resolution.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bit_field_datetime_seconds = args[:bit_field_datetime_seconds] if args.key?(:bit_field_datetime_seconds)
          @nanos = args[:nanos] if args.key?(:nanos)
        end
      end
      
      # A representation of a decimal value, such as 2.5. Clients may convert values
      # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
      # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
      # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
      class Decimal
        include Google::Apis::Core::Hashable
      
        # The decimal value, as a string. The string representation consists of an
        # optional sign, `+` (`U+002B`) or `-` (`U+002D`), followed by a sequence of
        # zero or more decimal digits ("the integer"), optionally followed by a fraction,
        # optionally followed by an exponent. An empty string **should** be interpreted
        # as `0`. The fraction consists of a decimal point followed by zero or more
        # decimal digits. The string must contain at least one digit in either the
        # integer or the fraction. The number formed by the sign, the integer and the
        # fraction is referred to as the significand. The exponent consists of the
        # character `e` (`U+0065`) or `E` (`U+0045`) followed by one or more decimal
        # digits. Services **should** normalize decimal values before storing them by: -
        # Removing an explicitly-provided `+` sign (`+2.5` -> `2.5`). - Replacing a zero-
        # length integer value with `0` (`.5` -> `0.5`). - Coercing the exponent
        # character to upper-case, with explicit sign (`2.5e8` -> `2.5E+8`). - Removing
        # an explicitly-provided zero exponent (`2.5E0` -> `2.5`). Services **may**
        # perform additional normalization based on its own needs and the internal
        # decimal implementation selected, such as shifting the decimal point and
        # exponent value together (example: `2.5E-1` <-> `0.25`). Additionally, services
        # **may** preserve trailing zeroes in the fraction to indicate increased
        # precision, but are not required to do so. Note that only the `.` character is
        # supported to divide the integer and the fraction; `,` **should not** be
        # supported regardless of locale. Additionally, thousand separators **should not*
        # * be supported. If a service does support them, values **must** be normalized.
        # The ENBF grammar is: DecimalString = '' | [Sign] Significand [Exponent]; Sign =
        # '+' | '-'; Significand = Digits '.' | [Digits] '.' Digits; Exponent = ('e' | '
        # E') [Sign] Digits; Digits = ` '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '
        # 8' | '9' `; Services **should** clearly document the range of supported values,
        # the maximum supported precision (total number of digits), and, if applicable,
        # the scale (number of digits after the decimal point), as well as how it
        # behaves when receiving out-of-bounds values. Services **may** choose to accept
        # values passed as input even when the value has a higher precision or scale
        # than the service supports, and **should** round the value to fit the supported
        # scale. Alternatively, the service **may** error with `400 Bad Request` (`
        # INVALID_ARGUMENT` in gRPC) if precision would be lost. Services **should**
        # error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC) if the service
        # receives a value outside of the supported range.
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
      
      # Encapsulates all structured data and the completed summary.
      class FinalResult
        include Google::Apis::Core::Hashable
      
        # Output only. Data sets used to support the insights, suitable for UI rendering
        # (tables/charts).
        # Corresponds to the JSON property `dataSets`
        # @return [Array<Google::Apis::CloudbillingV1beta::DataSet>]
        attr_accessor :data_sets
      
        # Output only. Contains the full natural language analysis, including thoughts,
        # reasoning, and references.
        # Corresponds to the JSON property `fullAnalysis`
        # @return [String]
        attr_accessor :full_analysis
      
        # Output only. A list of discrete insights gleaned from the data.
        # Corresponds to the JSON property `insights`
        # @return [Array<Google::Apis::CloudbillingV1beta::Insight>]
        attr_accessor :insights
      
        # Output only. Links to interoperable tools (e.g., pre-filtered Cost Reports or
        # BQE queries).
        # Corresponds to the JSON property `interopLinks`
        # @return [Array<Google::Apis::CloudbillingV1beta::InteropLink>]
        attr_accessor :interop_links
      
        # Output only. A list of suggested follow-up queries for the user.
        # Corresponds to the JSON property `suggestedQueries`
        # @return [Array<Google::Apis::CloudbillingV1beta::SuggestedQuery>]
        attr_accessor :suggested_queries
      
        # Output only. The full natural language summary (re-sent for consistency).
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_sets = args[:data_sets] if args.key?(:data_sets)
          @full_analysis = args[:full_analysis] if args.key?(:full_analysis)
          @insights = args[:insights] if args.key?(:insights)
          @interop_links = args[:interop_links] if args.key?(:interop_links)
          @suggested_queries = args[:suggested_queries] if args.key?(:suggested_queries)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Request for GenerateInsights.
      class GenerateInsightsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Filters cost data by service id. Follows https://google.aip.dev/160
        # for the filter syntax. eg. filter: "service = 'C7E2-9256-1C43'"
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. Overrides the maximum iterations for any selected strategy.
        # Corresponds to the JSON property `overriddenMaxIterationCounts`
        # @return [Fixnum]
        attr_accessor :overridden_max_iteration_counts
      
        # Optional. The billing account or projects to analyze.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::CloudbillingV1beta::BillingDataResource>]
        attr_accessor :parents
      
        # Required. The natural language prompt from the user.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        # Additional context for personalization (e.g., user persona, role).
        # Corresponds to the JSON property `userContext`
        # @return [Google::Apis::CloudbillingV1beta::UserContext]
        attr_accessor :user_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @overridden_max_iteration_counts = args[:overridden_max_iteration_counts] if args.key?(:overridden_max_iteration_counts)
          @parents = args[:parents] if args.key?(:parents)
          @prompt = args[:prompt] if args.key?(:prompt)
          @user_context = args[:user_context] if args.key?(:user_context)
        end
      end
      
      # Response for GenerateInsights.
      class GenerateInsightsResponse
        include Google::Apis::Core::Hashable
      
        # Encapsulates all structured data and the completed summary.
        # Corresponds to the JSON property `finalResult`
        # @return [Google::Apis::CloudbillingV1beta::FinalResult]
        attr_accessor :final_result
      
        # Encapsulates details about why a request was rejected.
        # Corresponds to the JSON property `rejection`
        # @return [Google::Apis::CloudbillingV1beta::Rejection]
        attr_accessor :rejection
      
        # Output only. A chunk of the natural language summary (customer-facing). The UI
        # can append these chunks to provide a real-time "typing" effect.
        # Corresponds to the JSON property `summaryChunk`
        # @return [String]
        attr_accessor :summary_chunk
      
        # Output only. A chunk of the agent's internal reasoning process. The UI can use
        # this to render a "Thinking..." log or status.
        # Corresponds to the JSON property `thoughtChunk`
        # @return [String]
        attr_accessor :thought_chunk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @final_result = args[:final_result] if args.key?(:final_result)
          @rejection = args[:rejection] if args.key?(:rejection)
          @summary_chunk = args[:summary_chunk] if args.key?(:summary_chunk)
          @thought_chunk = args[:thought_chunk] if args.key?(:thought_chunk)
        end
      end
      
      # Encapsulates the aggregation information such as aggregation level and
      # interval for a billing account price.
      class GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo
        include Google::Apis::Core::Hashable
      
        # Interval at which usage is aggregated to compute cost. Example: "MONTHLY"
        # interval indicates that usage is aggregated every month.
        # Corresponds to the JSON property `interval`
        # @return [String]
        attr_accessor :interval
      
        # Level at which usage is aggregated to compute cost. Example: "ACCOUNT" level
        # indicates that usage is aggregated across all projects in a single account.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Encapsulates the latest price for a billing account SKU.
      class GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice
        include Google::Apis::Core::Hashable
      
        # ISO-4217 currency code for the price.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Resource name for the latest billing account price.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates a price reason which contains background information about the
        # origin of the price.
        # Corresponds to the JSON property `priceReason`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaPriceReason]
        attr_accessor :price_reason
      
        # Encapsulates a `Rate` price. Billing account SKUs with `Rate` price are
        # offered by pricing tiers. The price have 1 or more rate pricing tiers.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRate]
        attr_accessor :rate
      
        # Type of the price. The possible values are: ["unspecified", "rate"].
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @price_reason = args[:price_reason] if args.key?(:price_reason)
          @rate = args[:rate] if args.key?(:rate)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Encapsulates a default price which is the current list price.
      class GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a discount off the list price, anchored to the list price as of a
      # fixed time.
      class GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `discountPercent`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :discount_percent
      
        # Type of the fixed discount scope which indicates the source of the discount.
        # It can have values such as 'unspecified' and 'sku-group'.
        # Corresponds to the JSON property `discountScopeType`
        # @return [String]
        attr_accessor :discount_scope_type
      
        # Time that the fixed discount is anchored to.
        # Corresponds to the JSON property `fixTime`
        # @return [String]
        attr_accessor :fix_time
      
        # SKU group where the fixed discount comes from.
        # Corresponds to the JSON property `skuGroup`
        # @return [String]
        attr_accessor :sku_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount_percent = args[:discount_percent] if args.key?(:discount_percent)
          @discount_scope_type = args[:discount_scope_type] if args.key?(:discount_scope_type)
          @fix_time = args[:fix_time] if args.key?(:fix_time)
          @sku_group = args[:sku_group] if args.key?(:sku_group)
        end
      end
      
      # Encapsulates a set fixed price applicable during the terms of a contract
      # agreement.
      class GoogleCloudBillingBillingaccountpricesV1betaFixedPrice
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a discount off the current list price, not anchored to any list
      # price as of a fixed time.
      class GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `discountPercent`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :discount_percent
      
        # Type of the floating discount scope which indicates the source of the discount.
        # It can have values such as 'unspecified' and 'sku-group'.
        # Corresponds to the JSON property `discountScopeType`
        # @return [String]
        attr_accessor :discount_scope_type
      
        # SKU group where the floating discount comes from.
        # Corresponds to the JSON property `skuGroup`
        # @return [String]
        attr_accessor :sku_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount_percent = args[:discount_percent] if args.key?(:discount_percent)
          @discount_scope_type = args[:discount_scope_type] if args.key?(:discount_scope_type)
          @sku_group = args[:sku_group] if args.key?(:sku_group)
        end
      end
      
      # Response message for ListBillingAccountPrices.
      class GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account prices.
        # Corresponds to the JSON property `billingAccountPrices`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice>]
        attr_accessor :billing_account_prices
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_prices = args[:billing_account_prices] if args.key?(:billing_account_prices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates a contract feature that the list price (DefaultPrice) will be
      # used for the price if the current list price drops lower than the custom fixed
      # price. Available to new contracts after March 21, 2022. Applies to all fixed
      # price SKUs in the contract, including FixedPrice, FixedDiscount, MigratedPrice,
      # and MergedPrice.
      class GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a price after merging from multiple sources. With merged tiers,
      # each individual tier can be from a different source with different discount
      # types.
      class GoogleCloudBillingBillingaccountpricesV1betaMergedPrice
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a price migrated from other SKUs.
      class GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice
        include Google::Apis::Core::Hashable
      
        # Source SKU where the discount is migrated from. Format: billingAccounts/`
        # billing_account`/skus/`sku`
        # Corresponds to the JSON property `sourceSku`
        # @return [String]
        attr_accessor :source_sku
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_sku = args[:source_sku] if args.key?(:source_sku)
        end
      end
      
      # Encapsulates a price reason which contains background information about the
      # origin of the price.
      class GoogleCloudBillingBillingaccountpricesV1betaPriceReason
        include Google::Apis::Core::Hashable
      
        # Encapsulates a default price which is the current list price.
        # Corresponds to the JSON property `defaultPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice]
        attr_accessor :default_price
      
        # Encapsulates a discount off the list price, anchored to the list price as of a
        # fixed time.
        # Corresponds to the JSON property `fixedDiscount`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount]
        attr_accessor :fixed_discount
      
        # Encapsulates a set fixed price applicable during the terms of a contract
        # agreement.
        # Corresponds to the JSON property `fixedPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedPrice]
        attr_accessor :fixed_price
      
        # Encapsulates a discount off the current list price, not anchored to any list
        # price as of a fixed time.
        # Corresponds to the JSON property `floatingDiscount`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount]
        attr_accessor :floating_discount
      
        # Encapsulates a contract feature that the list price (DefaultPrice) will be
        # used for the price if the current list price drops lower than the custom fixed
        # price. Available to new contracts after March 21, 2022. Applies to all fixed
        # price SKUs in the contract, including FixedPrice, FixedDiscount, MigratedPrice,
        # and MergedPrice.
        # Corresponds to the JSON property `listPriceAsCeiling`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling]
        attr_accessor :list_price_as_ceiling
      
        # Encapsulates a price after merging from multiple sources. With merged tiers,
        # each individual tier can be from a different source with different discount
        # types.
        # Corresponds to the JSON property `mergedPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMergedPrice]
        attr_accessor :merged_price
      
        # Encapsulates a price migrated from other SKUs.
        # Corresponds to the JSON property `migratedPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice]
        attr_accessor :migrated_price
      
        # Type of the price reason. It can have values such as 'unspecified', 'default-
        # price', 'fixed-price', 'fixed-discount', 'floating-discount', 'migrated-price',
        # 'merged-price', 'list-price-as-ceiling'.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_price = args[:default_price] if args.key?(:default_price)
          @fixed_discount = args[:fixed_discount] if args.key?(:fixed_discount)
          @fixed_price = args[:fixed_price] if args.key?(:fixed_price)
          @floating_discount = args[:floating_discount] if args.key?(:floating_discount)
          @list_price_as_ceiling = args[:list_price_as_ceiling] if args.key?(:list_price_as_ceiling)
          @merged_price = args[:merged_price] if args.key?(:merged_price)
          @migrated_price = args[:migrated_price] if args.key?(:migrated_price)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a `Rate` price. Billing account SKUs with `Rate` price are
      # offered by pricing tiers. The price have 1 or more rate pricing tiers.
      class GoogleCloudBillingBillingaccountpricesV1betaRate
        include Google::Apis::Core::Hashable
      
        # Encapsulates the aggregation information such as aggregation level and
        # interval for a billing account price.
        # Corresponds to the JSON property `aggregationInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo]
        attr_accessor :aggregation_info
      
        # All tiers associated with the `Rate` price.
        # Corresponds to the JSON property `tiers`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRateTier>]
        attr_accessor :tiers
      
        # Encapsulates the unit information for a Rate
        # Corresponds to the JSON property `unitInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaUnitInfo]
        attr_accessor :unit_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_info = args[:aggregation_info] if args.key?(:aggregation_info)
          @tiers = args[:tiers] if args.key?(:tiers)
          @unit_info = args[:unit_info] if args.key?(:unit_info)
        end
      end
      
      # Encapsulates a rate price tier.
      class GoogleCloudBillingBillingaccountpricesV1betaRateTier
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `contractPrice`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :contract_price
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `effectiveDiscountPercent`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :effective_discount_percent
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `listPrice`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :list_price
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `startAmount`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :start_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contract_price = args[:contract_price] if args.key?(:contract_price)
          @effective_discount_percent = args[:effective_discount_percent] if args.key?(:effective_discount_percent)
          @list_price = args[:list_price] if args.key?(:list_price)
          @start_amount = args[:start_amount] if args.key?(:start_amount)
        end
      end
      
      # Encapsulates the unit information for a Rate
      class GoogleCloudBillingBillingaccountpricesV1betaUnitInfo
        include Google::Apis::Core::Hashable
      
        # Shorthand for the unit. Example: GiBy.mo.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Human-readable description of the unit. Example: gibibyte month.
        # Corresponds to the JSON property `unitDescription`
        # @return [String]
        attr_accessor :unit_description
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `unitQuantity`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :unit_quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @unit_description = args[:unit_description] if args.key?(:unit_description)
          @unit_quantity = args[:unit_quantity] if args.key?(:unit_quantity)
        end
      end
      
      # Encapsulates a Google Cloud service visible to a billing account.
      class GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
        include Google::Apis::Core::Hashable
      
        # Description of the BillingAccountService. Example: "BigQuery", "Compute Engine"
        # .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for the BillingAccountService. Example: "billingAccounts/012345-
        # 567890-ABCDEF/services/DA34-426B-A397".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifier for the service. It is the string after the collection identifier "
        # services/". Example: "DA34-426B-A397".
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @service_id = args[:service_id] if args.key?(:service_id)
        end
      end
      
      # Response message for ListBillingAccountServices.
      class GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account services.
        # Corresponds to the JSON property `billingAccountServices`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService>]
        attr_accessor :billing_account_services
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_services = args[:billing_account_services] if args.key?(:billing_account_services)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates a stock keeping (SKU) group visible to a billing account. A SKU
      # group represents a collection of SKUs that are related to each other. For
      # example, the `AI Platform APIs` SKU group includes SKUs from the Cloud
      # Dialogflow API, the Cloud Text-to-Speech API, and additional related APIs.
      class GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
        include Google::Apis::Core::Hashable
      
        # Description of the BillingAccountSkuGroup. Example: "A2 VMs (1 Year CUD)".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for the BillingAccountSkuGroup. Example: "billingAccounts/012345-
        # 567890-ABCDEF/skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for ListBillingAccountSkuGroups.
      class GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The returned publicly listed billing account SKU groups.
        # Corresponds to the JSON property `billingAccountSkuGroups`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup>]
        attr_accessor :billing_account_sku_groups
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_sku_groups = args[:billing_account_sku_groups] if args.key?(:billing_account_sku_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates a SKU that is part of a billing account SKU group.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
        include Google::Apis::Core::Hashable
      
        # BillingAccountService that the BillingAccountSkuGroupSku belongs to.
        # Corresponds to the JSON property `billingAccountService`
        # @return [String]
        attr_accessor :billing_account_service
      
        # Description of the BillingAccountSkuGroupSku. Example: "A2 Instance Core
        # running in Hong Kong".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Encapsulates geographic metadata, such as regions and multi-regions like `us-
        # east4` or `European Union`.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # Resource name for the BillingAccountSkuGroupSku. Example: "billingAccounts/
        # 012345-567890-ABCDEF/skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301/skus/AA95-
        # CD31-42FE".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
        # , and others.
        # Corresponds to the JSON property `productTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy]
        attr_accessor :product_taxonomy
      
        # Unique identifier for the SKU. It is the string after the collection
        # identifier "skus/" Example: "AA95-CD31-42FE".
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_service = args[:billing_account_service] if args.key?(:billing_account_service)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @product_taxonomy = args[:product_taxonomy] if args.key?(:product_taxonomy)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Encapsulates geographic metadata, such as regions and multi-regions like `us-
      # east4` or `European Union`.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # Encapsulates a global geographic taxonomy.
        # Corresponds to the JSON property `globalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal]
        attr_accessor :global_metadata
      
        # Encapsulates a multi-regional geographic taxonomy.
        # Corresponds to the JSON property `multiRegionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional]
        attr_accessor :multi_regional_metadata
      
        # Encapsulates a regional geographic taxonomy.
        # Corresponds to the JSON property `regionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional]
        attr_accessor :regional_metadata
      
        # Type of geographic taxonomy associated with the billing account SKU group SKU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_metadata = args[:global_metadata] if args.key?(:global_metadata)
          @multi_regional_metadata = args[:multi_regional_metadata] if args.key?(:multi_regional_metadata)
          @regional_metadata = args[:regional_metadata] if args.key?(:regional_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a global geographic taxonomy.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a multi-regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional
        include Google::Apis::Core::Hashable
      
        # Google Cloud regions associated with the multi-regional geographic taxonomy.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Encapsulates a Google Cloud region.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
        include Google::Apis::Core::Hashable
      
        # Description of a Google Cloud region. Example: "us-west2".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Encapsulates a regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional
        include Google::Apis::Core::Hashable
      
        # Encapsulates a Google Cloud region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Response message for ListBillingAccountSkuGroupSkus.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account SKU group SKUs.
        # Corresponds to the JSON property `billingAccountSkuGroupSkus`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku>]
        attr_accessor :billing_account_sku_group_skus
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_sku_group_skus = args[:billing_account_sku_group_skus] if args.key?(:billing_account_sku_group_skus)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
      # , and others.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy
        include Google::Apis::Core::Hashable
      
        # All product categories that the billing account SKU group SKU belong to.
        # Corresponds to the JSON property `taxonomyCategories`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory>]
        attr_accessor :taxonomy_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy_categories = args[:taxonomy_categories] if args.key?(:taxonomy_categories)
        end
      end
      
      # Encapsulates a product category.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
        include Google::Apis::Core::Hashable
      
        # Name of the product category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
        end
      end
      
      # Encapsulates a stock keeping unit (SKU) visible to a billing account. A SKU
      # distinctly identifies a resource that you can purchase. For a list of
      # available SKUs, see [SKUs](https://cloud.google.com/skus).
      class GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku
        include Google::Apis::Core::Hashable
      
        # BillingAccountService that the BillingAccountSku belongs to.
        # Corresponds to the JSON property `billingAccountService`
        # @return [String]
        attr_accessor :billing_account_service
      
        # Description of the BillingAccountSku. Example: "A2 Instance Core running in
        # Hong Kong".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Encapsulates geographic metadata, such as regions and multi-regions like `us-
        # east4` or `European Union`.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # Resource name for the BillingAccountSku. Example: "billingAccounts/012345-
        # 567890-ABCDEF/skus/AA95-CD31-42FE".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
        # , and others.
        # Corresponds to the JSON property `productTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy]
        attr_accessor :product_taxonomy
      
        # Unique identifier for the SKU. It is the string after the collection
        # identifier "skus/" Example: "AA95-CD31-42FE".
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_service = args[:billing_account_service] if args.key?(:billing_account_service)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @product_taxonomy = args[:product_taxonomy] if args.key?(:product_taxonomy)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Encapsulates geographic metadata, such as regions and multi-regions like `us-
      # east4` or `European Union`.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # Encapsulates a global geographic taxonomy.
        # Corresponds to the JSON property `globalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal]
        attr_accessor :global_metadata
      
        # Encapsulates a multi-regional geographic taxonomy.
        # Corresponds to the JSON property `multiRegionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional]
        attr_accessor :multi_regional_metadata
      
        # Encapsulates a regional geographic taxonomy.
        # Corresponds to the JSON property `regionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional]
        attr_accessor :regional_metadata
      
        # Type of geographic taxonomy associated with the billing account SKU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_metadata = args[:global_metadata] if args.key?(:global_metadata)
          @multi_regional_metadata = args[:multi_regional_metadata] if args.key?(:multi_regional_metadata)
          @regional_metadata = args[:regional_metadata] if args.key?(:regional_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a global geographic taxonomy.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a multi-regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional
        include Google::Apis::Core::Hashable
      
        # Google Cloud regions associated with the multi-regional geographic taxonomy.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Encapsulates a Google Cloud region.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion
        include Google::Apis::Core::Hashable
      
        # Description of a Google Cloud region. Example: "us-west2".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Encapsulates a regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional
        include Google::Apis::Core::Hashable
      
        # Encapsulates a Google Cloud region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Response message for ListBillingAccountSkus.
      class GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account SKUs.
        # Corresponds to the JSON property `billingAccountSkus`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku>]
        attr_accessor :billing_account_skus
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_skus = args[:billing_account_skus] if args.key?(:billing_account_skus)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
      # , and others.
      class GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy
        include Google::Apis::Core::Hashable
      
        # All product categories that the billing account SKU belong to.
        # Corresponds to the JSON property `taxonomyCategories`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory>]
        attr_accessor :taxonomy_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy_categories = args[:taxonomy_categories] if args.key?(:taxonomy_categories)
        end
      end
      
      # Encapsulates a product category.
      class GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory
        include Google::Apis::Core::Hashable
      
        # Name of the product category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
        end
      end
      
      # Encapsulates the aggregation information such as aggregation level and
      # interval for a price.
      class GoogleCloudBillingPricesV1betaAggregationInfo
        include Google::Apis::Core::Hashable
      
        # Interval at which usage is aggregated to compute cost. Example: "MONTHLY"
        # interval indicates that usage is aggregated every month.
        # Corresponds to the JSON property `interval`
        # @return [String]
        attr_accessor :interval
      
        # Level at which usage is aggregated to compute cost. Example: "ACCOUNT" level
        # indicates that usage is aggregated across all projects in a single account.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Response message for ListPrices.
      class GoogleCloudBillingPricesV1betaListPricesResponse
        include Google::Apis::Core::Hashable
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned publicly listed prices.
        # Corresponds to the JSON property `prices`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice>]
        attr_accessor :prices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @prices = args[:prices] if args.key?(:prices)
        end
      end
      
      # Encapsulates the latest price for a SKU.
      class GoogleCloudBillingPricesV1betaPrice
        include Google::Apis::Core::Hashable
      
        # ISO-4217 currency code for the price.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Resource name for the latest price.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates a `Rate` price. SKUs with `Rate` price are offered by pricing
        # tiers. The price have 1 or more rate pricing tiers.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRate]
        attr_accessor :rate
      
        # Type of the price. It can have values: ["unspecified", "rate"].
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @rate = args[:rate] if args.key?(:rate)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Encapsulates a `Rate` price. SKUs with `Rate` price are offered by pricing
      # tiers. The price have 1 or more rate pricing tiers.
      class GoogleCloudBillingPricesV1betaRate
        include Google::Apis::Core::Hashable
      
        # Encapsulates the aggregation information such as aggregation level and
        # interval for a price.
        # Corresponds to the JSON property `aggregationInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaAggregationInfo]
        attr_accessor :aggregation_info
      
        # All tiers associated with the `Rate` price.
        # Corresponds to the JSON property `tiers`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRateTier>]
        attr_accessor :tiers
      
        # Encapsulates the unit information for a Rate
        # Corresponds to the JSON property `unitInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaUnitInfo]
        attr_accessor :unit_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_info = args[:aggregation_info] if args.key?(:aggregation_info)
          @tiers = args[:tiers] if args.key?(:tiers)
          @unit_info = args[:unit_info] if args.key?(:unit_info)
        end
      end
      
      # Encapsulates a rate price tier.
      class GoogleCloudBillingPricesV1betaRateTier
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `listPrice`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :list_price
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `startAmount`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :start_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_price = args[:list_price] if args.key?(:list_price)
          @start_amount = args[:start_amount] if args.key?(:start_amount)
        end
      end
      
      # Encapsulates the unit information for a Rate
      class GoogleCloudBillingPricesV1betaUnitInfo
        include Google::Apis::Core::Hashable
      
        # Shorthand for the unit. Example: GiBy.mo.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Human-readable description of the unit. Example: gibibyte month.
        # Corresponds to the JSON property `unitDescription`
        # @return [String]
        attr_accessor :unit_description
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `unitQuantity`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :unit_quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @unit_description = args[:unit_description] if args.key?(:unit_description)
          @unit_quantity = args[:unit_quantity] if args.key?(:unit_quantity)
        end
      end
      
      # Response message for ListSkuGroups.
      class GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned publicly listed SKU groups.
        # Corresponds to the JSON property `skuGroups`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup>]
        attr_accessor :sku_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sku_groups = args[:sku_groups] if args.key?(:sku_groups)
        end
      end
      
      # Encapsulates a publicly listed stock keeping unit (SKU) group. A SKU group
      # represents a collection of SKUs that are related to each other. For example,
      # the `AI Platform APIs` SKU group includes SKUs from the Cloud Dialogflow API,
      # the Cloud Text-to-Speech API, and additional related APIs.
      class GoogleCloudBillingSkugroupsV1betaSkuGroup
        include Google::Apis::Core::Hashable
      
        # Description of the SKU group. Example: "A2 VMs (1 Year CUD)".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for the SKU group. Example: "skuGroups/0e6403d1-4694-44d2-a696-
        # 7a78b1a69301".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Encapsulates geographic metadata, such as regions and multi-regions like `us-
      # east4` or `European Union`.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # Encapsulates a global geographic taxonomy.
        # Corresponds to the JSON property `globalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal]
        attr_accessor :global_metadata
      
        # Encapsulates a multi-regional geographic taxonomy.
        # Corresponds to the JSON property `multiRegionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional]
        attr_accessor :multi_regional_metadata
      
        # Encapsulates a regional geographic taxonomy.
        # Corresponds to the JSON property `regionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional]
        attr_accessor :regional_metadata
      
        # Type of geographic taxonomy associated with the SKU group SKU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_metadata = args[:global_metadata] if args.key?(:global_metadata)
          @multi_regional_metadata = args[:multi_regional_metadata] if args.key?(:multi_regional_metadata)
          @regional_metadata = args[:regional_metadata] if args.key?(:regional_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a global geographic taxonomy.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a multi-regional geographic taxonomy.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional
        include Google::Apis::Core::Hashable
      
        # Google Cloud regions associated with the multi-regional geographic taxonomy.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Encapsulates a Google Cloud region.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion
        include Google::Apis::Core::Hashable
      
        # Description of a Google Cloud region. Example: "us-west2".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Encapsulates a regional geographic taxonomy.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional
        include Google::Apis::Core::Hashable
      
        # Encapsulates a Google Cloud region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Response message for ListSkuGroupSkus.
      class GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse
        include Google::Apis::Core::Hashable
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned SKU group SKUs.
        # Corresponds to the JSON property `skuGroupSkus`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku>]
        attr_accessor :sku_group_skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sku_group_skus = args[:sku_group_skus] if args.key?(:sku_group_skus)
        end
      end
      
      # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
      # , and others.
      class GoogleCloudBillingSkugroupskusV1betaProductTaxonomy
        include Google::Apis::Core::Hashable
      
        # All product categories that the SKU group SKU belongs to.
        # Corresponds to the JSON property `taxonomyCategories`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory>]
        attr_accessor :taxonomy_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy_categories = args[:taxonomy_categories] if args.key?(:taxonomy_categories)
        end
      end
      
      # Encapsulates a publicly listed stock keeping unit (SKU) that is part of a
      # publicly listed SKU group. A SKU group represents a collection of SKUs that
      # are related to each other. For example, the `AI Platform APIs` SKU group
      # includes SKUs from the Cloud Dialogflow API, the Cloud Text-to-Speech API, and
      # additional related APIs.
      class GoogleCloudBillingSkugroupskusV1betaSkuGroupSku
        include Google::Apis::Core::Hashable
      
        # Description of the SkuGroupSku. Example: "A2 Instance Core running in Hong
        # Kong".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Encapsulates geographic metadata, such as regions and multi-regions like `us-
        # east4` or `European Union`.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # Resource name for the SkuGroupSku. Example: "skuGroups/0e6403d1-4694-44d2-a696-
        # 7a78b1a69301/skus/AA95-CD31-42FE".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
        # , and others.
        # Corresponds to the JSON property `productTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaProductTaxonomy]
        attr_accessor :product_taxonomy
      
        # Service that the SkuGroupSku belongs to.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Unique identifier for the SKU. It is the string after the collection
        # identifier "skus/" Example: "AA95-CD31-42FE".
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @product_taxonomy = args[:product_taxonomy] if args.key?(:product_taxonomy)
          @service = args[:service] if args.key?(:service)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Encapsulates a product category.
      class GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory
        include Google::Apis::Core::Hashable
      
        # Name of the product category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
        end
      end
      
      # e.g. insight: title: "Cost Increase (The Explanation)" description: "Your cost
      # increase was driven by Vertex AI Online Prediction in us-central1..." severity:
      # INFO
      class Insight
        include Google::Apis::Core::Hashable
      
        # Output only. The description of the insight.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The severity of the insight, used for UI rendering (e.g., color-
        # coding).
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. The title of the insight.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @severity = args[:severity] if args.key?(:severity)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A link to interoperable tools (e.g., pre-filtered Cost Reports, BQE queries).
      class InteropLink
        include Google::Apis::Core::Hashable
      
        # Output only. The label of the link, suitable for UI rendering.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Output only. The type of the interop link, e.g., "COST_REPORT", "BQE_QUERY",
        # etc.
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # Output only. The URL of the link.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @link_type = args[:link_type] if args.key?(:link_type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # An unordered mapping from key to value, represented as a collection of map
      # entries.
      class Map
        include Google::Apis::Core::Hashable
      
        # Represents the map entries in the map.
        # Corresponds to the JSON property `entry`
        # @return [Array<Google::Apis::CloudbillingV1beta::MapEntry>]
        attr_accessor :entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entry = args[:entry] if args.key?(:entry)
        end
      end
      
      # A single entry in a Map, representing the mapping between `key` and `value`.
      class MapEntry
        include Google::Apis::Core::Hashable
      
        # This is a copy of storage/googlesql/public/value.proto. ValueProto represents
        # the serialized form of the googlesql::Value. The intention is to support
        # multiple languages including Java and C++, so we must be sensitive to the
        # distinction between Java Strings and byte arrays or ByteStrings. We also want
        # to support use-cases which do not want to serialize a copy of the GoogleSQL
        # type for every instance (which might be very repetitive). Therefore, unlike
        # googlesql::Value, ValueProto does not carry full type information with every
        # instance, and can only be fully interpreted with an associated TypeProto.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::CloudbillingV1beta::ValueProto]
        attr_accessor :key
      
        # This is a copy of storage/googlesql/public/value.proto. ValueProto represents
        # the serialized form of the googlesql::Value. The intention is to support
        # multiple languages including Java and C++, so we must be sensitive to the
        # distinction between Java Strings and byte arrays or ByteStrings. We also want
        # to support use-cases which do not want to serialize a copy of the GoogleSQL
        # type for every instance (which might be very repetitive). Therefore, unlike
        # googlesql::Value, ValueProto does not carry full type information with every
        # instance, and can only be fully interpreted with an associated TypeProto.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudbillingV1beta::ValueProto]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
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
      
      # A range of values, bounded by the values 'start' (inclusive) and 'end' (
      # exclusive). A range has an element type, and values must be of this element
      # type. A range is contiguous, ie it contains all values of the given element
      # type starting at 'start' and ending before 'end'. A "null" value on start or
      # end represents an unbounded start or end value respectively. Start and end
      # values must always be present.
      class Range
        include Google::Apis::Core::Hashable
      
        # This is a copy of storage/googlesql/public/value.proto. ValueProto represents
        # the serialized form of the googlesql::Value. The intention is to support
        # multiple languages including Java and C++, so we must be sensitive to the
        # distinction between Java Strings and byte arrays or ByteStrings. We also want
        # to support use-cases which do not want to serialize a copy of the GoogleSQL
        # type for every instance (which might be very repetitive). Therefore, unlike
        # googlesql::Value, ValueProto does not carry full type information with every
        # instance, and can only be fully interpreted with an associated TypeProto.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::CloudbillingV1beta::ValueProto]
        attr_accessor :end
      
        # This is a copy of storage/googlesql/public/value.proto. ValueProto represents
        # the serialized form of the googlesql::Value. The intention is to support
        # multiple languages including Java and C++, so we must be sensitive to the
        # distinction between Java Strings and byte arrays or ByteStrings. We also want
        # to support use-cases which do not want to serialize a copy of the GoogleSQL
        # type for every instance (which might be very repetitive). Therefore, unlike
        # googlesql::Value, ValueProto does not carry full type information with every
        # instance, and can only be fully interpreted with an associated TypeProto.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::CloudbillingV1beta::ValueProto]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Encapsulates details about why a request was rejected.
      class Rejection
        include Google::Apis::Core::Hashable
      
        # Output only. A user-facing message explaining the rejection.
        # Corresponds to the JSON property `displayMessage`
        # @return [String]
        attr_accessor :display_message
      
        # Output only. The reason for the rejection.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_message = args[:display_message] if args.key?(:display_message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Represents a row in the query result.
      class Row
        include Google::Apis::Core::Hashable
      
        # Values for a row in the column order.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudbillingV1beta::ValueProto>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A collection of fields. The count, order, and type of the fields is determined
      # by the type associated with this value.
      class Struct
        include Google::Apis::Core::Hashable
      
        # The fields in the struct
        # Corresponds to the JSON property `field`
        # @return [Array<Google::Apis::CloudbillingV1beta::ValueProto>]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # A suggested chart for the data set, used for UI rendering.
      class SuggestedChart
        include Google::Apis::Core::Hashable
      
        # The title of the chart.
        # Corresponds to the JSON property `chartTitle`
        # @return [String]
        attr_accessor :chart_title
      
        # The type of the chart.
        # Corresponds to the JSON property `chartType`
        # @return [String]
        attr_accessor :chart_type
      
        # The field used for the series (e.g., color-coding). Optional, but recommended
        # for time-series data.
        # Corresponds to the JSON property `seriesField`
        # @return [String]
        attr_accessor :series_field
      
        # The field used for the x-axis.
        # Corresponds to the JSON property `xAxisField`
        # @return [String]
        attr_accessor :x_axis_field
      
        # The label of the x-axis.
        # Corresponds to the JSON property `xAxisLabel`
        # @return [String]
        attr_accessor :x_axis_label
      
        # The field used for the y-axis.
        # Corresponds to the JSON property `yAxisField`
        # @return [String]
        attr_accessor :y_axis_field
      
        # The label of the y-axis.
        # Corresponds to the JSON property `yAxisLabel`
        # @return [String]
        attr_accessor :y_axis_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_title = args[:chart_title] if args.key?(:chart_title)
          @chart_type = args[:chart_type] if args.key?(:chart_type)
          @series_field = args[:series_field] if args.key?(:series_field)
          @x_axis_field = args[:x_axis_field] if args.key?(:x_axis_field)
          @x_axis_label = args[:x_axis_label] if args.key?(:x_axis_label)
          @y_axis_field = args[:y_axis_field] if args.key?(:y_axis_field)
          @y_axis_label = args[:y_axis_label] if args.key?(:y_axis_label)
        end
      end
      
      # A suggested follow-up query for the user.
      class SuggestedQuery
        include Google::Apis::Core::Hashable
      
        # The natural language query.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Additional context for personalization (e.g., user persona, role).
      class UserContext
        include Google::Apis::Core::Hashable
      
        # Optional. The user's persona (e.g., FinOps Manager, Developer).
        # Corresponds to the JSON property `persona`
        # @return [String]
        attr_accessor :persona
      
        # Optional. The user's role (e.g., Billing Admin, Project Owner, etc.).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @persona = args[:persona] if args.key?(:persona)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # This is a copy of storage/googlesql/public/value.proto. ValueProto represents
      # the serialized form of the googlesql::Value. The intention is to support
      # multiple languages including Java and C++, so we must be sensitive to the
      # distinction between Java Strings and byte arrays or ByteStrings. We also want
      # to support use-cases which do not want to serialize a copy of the GoogleSQL
      # type for every instance (which might be very repetitive). Therefore, unlike
      # googlesql::Value, ValueProto does not carry full type information with every
      # instance, and can only be fully interpreted with an associated TypeProto.
      class ValueProto
        include Google::Apis::Core::Hashable
      
        # User code that switches on this oneoff enum must have a default case so builds
        # won't break when new fields are added.
        # Corresponds to the JSON property `ValueProtoSwitchMustHaveADefault`
        # @return [Boolean]
        attr_accessor :value_proto_switch_must_have_a_default
        alias_method :value_proto_switch_must_have_a_default?, :value_proto_switch_must_have_a_default
      
        # An ordered collection of elements of arbitrary count.
        # Corresponds to the JSON property `arrayValue`
        # @return [Google::Apis::CloudbillingV1beta::Array]
        attr_accessor :array_value
      
        # Encoded bignumeric value. For the encoding format see documentation for
        # BigNumericValue::SerializeAsProtoBytes().
        # Corresponds to the JSON property `bignumericValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bignumeric_value
      
        # Primitive for bool.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Primitive for bytes.
        # Corresponds to the JSON property `bytesValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_value
      
        # Primitive for date.
        # Corresponds to the JSON property `dateValue`
        # @return [Fixnum]
        attr_accessor :date_value
      
        # A datetime value.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::CloudbillingV1beta::Datetime]
        attr_accessor :datetime_value
      
        # Primitive for double.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Tag 11 was used for specifying micros timestamps as int64, now obsolete.
        # Corresponds to the JSON property `enumValue`
        # @return [Fixnum]
        attr_accessor :enum_value
      
        # Primitive for float.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Geography encoded using ::stlib::STGeographyEncoder
        # Corresponds to the JSON property `geographyValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :geography_value
      
        # Primitive value for int32.
        # Corresponds to the JSON property `int32Value`
        # @return [Fixnum]
        attr_accessor :int32_value
      
        # Primitive for int64.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # Encoded interval value. For the encoding format see documentation for
        # IntervalValue::SerializeAsBytes().
        # Corresponds to the JSON property `intervalValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :interval_value
      
        # Tag 22 was used for json value as bytes, now obsolete. Json value represented
        # as a string document.
        # Corresponds to the JSON property `jsonValue`
        # @return [String]
        attr_accessor :json_value
      
        # An unordered mapping from key to value, represented as a collection of map
        # entries.
        # Corresponds to the JSON property `mapValue`
        # @return [Google::Apis::CloudbillingV1beta::Map]
        attr_accessor :map_value
      
        # Encoded numeric value. For the encoding format see documentation for
        # NumericValue::SerializeAsProtoBytes().
        # Corresponds to the JSON property `numericValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :numeric_value
      
        # Stores a serialized protocol message.
        # Corresponds to the JSON property `protoValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :proto_value
      
        # A range of values, bounded by the values 'start' (inclusive) and 'end' (
        # exclusive). A range has an element type, and values must be of this element
        # type. A range is contiguous, ie it contains all values of the given element
        # type starting at 'start' and ending before 'end'. A "null" value on start or
        # end represents an unbounded start or end value respectively. Start and end
        # values must always be present.
        # Corresponds to the JSON property `rangeValue`
        # @return [Google::Apis::CloudbillingV1beta::Range]
        attr_accessor :range_value
      
        # Primitive for string.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # A collection of fields. The count, order, and type of the fields is determined
        # by the type associated with this value.
        # Corresponds to the JSON property `structValue`
        # @return [Google::Apis::CloudbillingV1beta::Struct]
        attr_accessor :struct_value
      
        # Bit field encoding of hour/minute/second/nanos. See TimeValue class for
        # details.
        # Corresponds to the JSON property `timeValue`
        # @return [Fixnum]
        attr_accessor :time_value
      
        # Encoded timestamp_pico value. For the encoding format see documentation for
        # googlesql::TimestampPico::SerializeAsBytes().
        # Corresponds to the JSON property `timestampPicoValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :timestamp_pico_value
      
        # primitive for timestamp
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        # Encoded tokenlist value. copybara:strip_begin(internal-comment) See //search/
        # tokens:token_list. copybara:strip_end
        # Corresponds to the JSON property `tokenlistValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :tokenlist_value
      
        # Primitive for uint32.
        # Corresponds to the JSON property `uint32Value`
        # @return [Fixnum]
        attr_accessor :uint32_value
      
        # Primitive for uint64.
        # Corresponds to the JSON property `uint64Value`
        # @return [Fixnum]
        attr_accessor :uint64_value
      
        # Encoded uuid value. For the encoding format see documentation for UuidValue::
        # SerializeAsBytes().
        # Corresponds to the JSON property `uuidValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :uuid_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_proto_switch_must_have_a_default = args[:value_proto_switch_must_have_a_default] if args.key?(:value_proto_switch_must_have_a_default)
          @array_value = args[:array_value] if args.key?(:array_value)
          @bignumeric_value = args[:bignumeric_value] if args.key?(:bignumeric_value)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @bytes_value = args[:bytes_value] if args.key?(:bytes_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @geography_value = args[:geography_value] if args.key?(:geography_value)
          @int32_value = args[:int32_value] if args.key?(:int32_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @interval_value = args[:interval_value] if args.key?(:interval_value)
          @json_value = args[:json_value] if args.key?(:json_value)
          @map_value = args[:map_value] if args.key?(:map_value)
          @numeric_value = args[:numeric_value] if args.key?(:numeric_value)
          @proto_value = args[:proto_value] if args.key?(:proto_value)
          @range_value = args[:range_value] if args.key?(:range_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @struct_value = args[:struct_value] if args.key?(:struct_value)
          @time_value = args[:time_value] if args.key?(:time_value)
          @timestamp_pico_value = args[:timestamp_pico_value] if args.key?(:timestamp_pico_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
          @tokenlist_value = args[:tokenlist_value] if args.key?(:tokenlist_value)
          @uint32_value = args[:uint32_value] if args.key?(:uint32_value)
          @uint64_value = args[:uint64_value] if args.key?(:uint64_value)
          @uuid_value = args[:uuid_value] if args.key?(:uuid_value)
        end
      end
    end
  end
end
