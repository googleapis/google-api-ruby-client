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
    module MerchantapiReportsV1beta
      
      # Fields available for query in `best_sellers_brand_view` table. [Best sellers](
      # https://support.google.com/merchants/answer/9488679) report with top brands.
      # Values are only set for fields requested explicitly in the request's search
      # query.
      class BestSellersBrandView
        include Google::Apis::Core::Hashable
      
        # Name of the brand.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Popularity rank in the previous week or month.
        # Corresponds to the JSON property `previousRank`
        # @return [Fixnum]
        attr_accessor :previous_rank
      
        # Estimated demand in relation to the brand with the highest popularity rank in
        # the same category and country in the previous week or month.
        # Corresponds to the JSON property `previousRelativeDemand`
        # @return [String]
        attr_accessor :previous_relative_demand
      
        # Popularity of the brand on Ads and organic surfaces, in the selected category
        # and country, based on the estimated number of units sold.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Estimated demand in relation to the brand with the highest popularity rank in
        # the same category and country.
        # Corresponds to the JSON property `relativeDemand`
        # @return [String]
        attr_accessor :relative_demand
      
        # Change in the estimated demand. Whether it rose, sank or remained flat.
        # Corresponds to the JSON property `relativeDemandChange`
        # @return [String]
        attr_accessor :relative_demand_change
      
        # Google product category ID to calculate the ranking for, represented in [
        # Google's product taxonomy](https://support.google.com/merchants/answer/6324436)
        # . Required in the `SELECT` clause. If a `WHERE` condition on `
        # report_category_id` is not specified in the query, rankings for all top-level
        # categories are returned.
        # Corresponds to the JSON property `reportCategoryId`
        # @return [Fixnum]
        attr_accessor :report_category_id
      
        # Country where the ranking is calculated. Represented in the ISO 3166 format.
        # Required in the `SELECT` clause. Condition on `report_country_code` is
        # required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCountryCode`
        # @return [String]
        attr_accessor :report_country_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `reportDate`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :report_date
      
        # Granularity of the report. The ranking can be done over a week or a month
        # timeframe. Required in the `SELECT` clause. Condition on `report_granularity`
        # is required in the `WHERE` clause.
        # Corresponds to the JSON property `reportGranularity`
        # @return [String]
        attr_accessor :report_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @previous_rank = args[:previous_rank] if args.key?(:previous_rank)
          @previous_relative_demand = args[:previous_relative_demand] if args.key?(:previous_relative_demand)
          @rank = args[:rank] if args.key?(:rank)
          @relative_demand = args[:relative_demand] if args.key?(:relative_demand)
          @relative_demand_change = args[:relative_demand_change] if args.key?(:relative_demand_change)
          @report_category_id = args[:report_category_id] if args.key?(:report_category_id)
          @report_country_code = args[:report_country_code] if args.key?(:report_country_code)
          @report_date = args[:report_date] if args.key?(:report_date)
          @report_granularity = args[:report_granularity] if args.key?(:report_granularity)
        end
      end
      
      # Fields available for query in `best_sellers_product_cluster_view` table. [Best
      # sellers](https://support.google.com/merchants/answer/9488679) report with top
      # product clusters. A product cluster is a grouping for different offers and
      # variants that represent the same product, for example, Google Pixel 7. Values
      # are only set for fields requested explicitly in the request's search query.
      class BestSellersProductClusterView
        include Google::Apis::Core::Hashable
      
        # Brand of the product cluster.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Whether there is at least one product of the brand currently `IN_STOCK` in
        # your product data source in at least one of the countries, all products are `
        # OUT_OF_STOCK` in your product data source in all countries, or `
        # NOT_IN_INVENTORY`. The field doesn't take the Best sellers report country
        # filter into account.
        # Corresponds to the JSON property `brandInventoryStatus`
        # @return [String]
        attr_accessor :brand_inventory_status
      
        # Product category (1st level) of the product cluster, represented in [Google's
        # product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # Product category (2nd level) of the product cluster, represented in [Google's
        # product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # Product category (3rd level) of the product cluster, represented in [Google's
        # product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # Product category (4th level) of the product cluster, represented in [Google's
        # product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # Product category (5th level) of the product cluster, represented in [Google's
        # product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # Whether the product cluster is `IN_STOCK` in your product data source in at
        # least one of the countries, `OUT_OF_STOCK` in your product data source in all
        # countries, or `NOT_IN_INVENTORY` at all. The field doesn't take the Best
        # sellers report country filter into account.
        # Corresponds to the JSON property `inventoryStatus`
        # @return [String]
        attr_accessor :inventory_status
      
        # Popularity rank in the previous week or month.
        # Corresponds to the JSON property `previousRank`
        # @return [Fixnum]
        attr_accessor :previous_rank
      
        # Estimated demand in relation to the product cluster with the highest
        # popularity rank in the same category and country in the previous week or month.
        # Corresponds to the JSON property `previousRelativeDemand`
        # @return [String]
        attr_accessor :previous_relative_demand
      
        # Popularity of the product cluster on Ads and organic surfaces, in the selected
        # category and country, based on the estimated number of units sold.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Estimated demand in relation to the product cluster with the highest
        # popularity rank in the same category and country.
        # Corresponds to the JSON property `relativeDemand`
        # @return [String]
        attr_accessor :relative_demand
      
        # Change in the estimated demand. Whether it rose, sank or remained flat.
        # Corresponds to the JSON property `relativeDemandChange`
        # @return [String]
        attr_accessor :relative_demand_change
      
        # Google product category ID to calculate the ranking for, represented in [
        # Google's product taxonomy](https://support.google.com/merchants/answer/6324436)
        # . Required in the `SELECT` clause. If a `WHERE` condition on `
        # report_category_id` is not specified in the query, rankings for all top-level
        # categories are returned.
        # Corresponds to the JSON property `reportCategoryId`
        # @return [Fixnum]
        attr_accessor :report_category_id
      
        # Country where the ranking is calculated. Represented in the ISO 3166 format.
        # Required in the `SELECT` clause. Condition on `report_country_code` is
        # required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCountryCode`
        # @return [String]
        attr_accessor :report_country_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `reportDate`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :report_date
      
        # Granularity of the report. The ranking can be done over a week or a month
        # timeframe. Required in the `SELECT` clause. Condition on `report_granularity`
        # is required in the `WHERE` clause.
        # Corresponds to the JSON property `reportGranularity`
        # @return [String]
        attr_accessor :report_granularity
      
        # Title of the product cluster.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # GTINs of example variants of the product cluster.
        # Corresponds to the JSON property `variantGtins`
        # @return [Array<String>]
        attr_accessor :variant_gtins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @brand_inventory_status = args[:brand_inventory_status] if args.key?(:brand_inventory_status)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @inventory_status = args[:inventory_status] if args.key?(:inventory_status)
          @previous_rank = args[:previous_rank] if args.key?(:previous_rank)
          @previous_relative_demand = args[:previous_relative_demand] if args.key?(:previous_relative_demand)
          @rank = args[:rank] if args.key?(:rank)
          @relative_demand = args[:relative_demand] if args.key?(:relative_demand)
          @relative_demand_change = args[:relative_demand_change] if args.key?(:relative_demand_change)
          @report_category_id = args[:report_category_id] if args.key?(:report_category_id)
          @report_country_code = args[:report_country_code] if args.key?(:report_country_code)
          @report_date = args[:report_date] if args.key?(:report_date)
          @report_granularity = args[:report_granularity] if args.key?(:report_granularity)
          @title = args[:title] if args.key?(:title)
          @variant_gtins = args[:variant_gtins] if args.key?(:variant_gtins)
        end
      end
      
      # Fields available for query in `competitive_visibility_benchmark_view` table. [
      # Competitive visibility](https://support.google.com/merchants/answer/11366442)
      # report with the category benchmark. Values are only set for fields requested
      # explicitly in the request's search query.
      class CompetitiveVisibilityBenchmarkView
        include Google::Apis::Core::Hashable
      
        # Change in visibility based on impressions with respect to the start of the
        # selected time range (or first day with non-zero impressions) for a combined
        # set of merchants with highest visibility approximating the market. Cannot be
        # filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `categoryBenchmarkVisibilityTrend`
        # @return [Float]
        attr_accessor :category_benchmark_visibility_trend
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :date
      
        # Google product category ID to calculate the report for, represented in [Google'
        # s product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Required in the `SELECT` clause. A condition on `report_category_id` is
        # required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCategoryId`
        # @return [Fixnum]
        attr_accessor :report_category_id
      
        # Country where impressions appeared. Required in the `SELECT` clause. A
        # condition on `report_country_code` is required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCountryCode`
        # @return [String]
        attr_accessor :report_country_code
      
        # Traffic source of impressions. Required in the `SELECT` clause.
        # Corresponds to the JSON property `trafficSource`
        # @return [String]
        attr_accessor :traffic_source
      
        # Change in visibility based on impressions for your domain with respect to the
        # start of the selected time range (or first day with non-zero impressions).
        # Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `yourDomainVisibilityTrend`
        # @return [Float]
        attr_accessor :your_domain_visibility_trend
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_benchmark_visibility_trend = args[:category_benchmark_visibility_trend] if args.key?(:category_benchmark_visibility_trend)
          @date = args[:date] if args.key?(:date)
          @report_category_id = args[:report_category_id] if args.key?(:report_category_id)
          @report_country_code = args[:report_country_code] if args.key?(:report_country_code)
          @traffic_source = args[:traffic_source] if args.key?(:traffic_source)
          @your_domain_visibility_trend = args[:your_domain_visibility_trend] if args.key?(:your_domain_visibility_trend)
        end
      end
      
      # Fields available for query in `competitive_visibility_competitor_view` table. [
      # Competitive visibility](https://support.google.com/merchants/answer/11366442)
      # report with businesses with similar visibility. Values are only set for fields
      # requested explicitly in the request's search query.
      class CompetitiveVisibilityCompetitorView
        include Google::Apis::Core::Hashable
      
        # [Ads / organic ratio] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Cads-free-ratio) shows how often the domain receives impressions from
        # Shopping ads compared to organic traffic. The number is rounded and bucketed.
        # Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `adsOrganicRatio`
        # @return [Float]
        attr_accessor :ads_organic_ratio
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :date
      
        # Domain of your competitor or your domain, if 'is_your_domain' is true.
        # Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # [Higher position rate] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Chigher-position-rate) shows how often a competitor’s offer got placed
        # in a higher position on the page than your offer. Cannot be filtered on in the
        # 'WHERE' clause.
        # Corresponds to the JSON property `higherPositionRate`
        # @return [Float]
        attr_accessor :higher_position_rate
      
        # True if this row contains data for your domain. Cannot be filtered on in the '
        # WHERE' clause.
        # Corresponds to the JSON property `isYourDomain`
        # @return [Boolean]
        attr_accessor :is_your_domain
        alias_method :is_your_domain?, :is_your_domain
      
        # [Page overlap rate] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Cpage-overlap-rate) shows how frequently competing retailers’ offers
        # are shown together with your offers on the same page. Cannot be filtered on in
        # the 'WHERE' clause.
        # Corresponds to the JSON property `pageOverlapRate`
        # @return [Float]
        attr_accessor :page_overlap_rate
      
        # Position of the domain in the similar businesses ranking for the selected keys
        # (`date`, `report_category_id`, `report_country_code`, `traffic_source`) based
        # on impressions. 1 is the highest. Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # [Relative visibility] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Crelative-visibility) shows how often your competitors’ offers are
        # shown compared to your offers. In other words, this is the number of displayed
        # impressions of a competitor retailer divided by the number of your displayed
        # impressions during a selected time range for a selected product category and
        # country. Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `relativeVisibility`
        # @return [Float]
        attr_accessor :relative_visibility
      
        # Google product category ID to calculate the report for, represented in [Google'
        # s product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Required in the `SELECT` clause. A condition on `report_category_id` is
        # required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCategoryId`
        # @return [Fixnum]
        attr_accessor :report_category_id
      
        # Country where impressions appeared. Required in the `SELECT` clause. A
        # condition on `report_country_code` is required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCountryCode`
        # @return [String]
        attr_accessor :report_country_code
      
        # Traffic source of impressions. Required in the `SELECT` clause.
        # Corresponds to the JSON property `trafficSource`
        # @return [String]
        attr_accessor :traffic_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_organic_ratio = args[:ads_organic_ratio] if args.key?(:ads_organic_ratio)
          @date = args[:date] if args.key?(:date)
          @domain = args[:domain] if args.key?(:domain)
          @higher_position_rate = args[:higher_position_rate] if args.key?(:higher_position_rate)
          @is_your_domain = args[:is_your_domain] if args.key?(:is_your_domain)
          @page_overlap_rate = args[:page_overlap_rate] if args.key?(:page_overlap_rate)
          @rank = args[:rank] if args.key?(:rank)
          @relative_visibility = args[:relative_visibility] if args.key?(:relative_visibility)
          @report_category_id = args[:report_category_id] if args.key?(:report_category_id)
          @report_country_code = args[:report_country_code] if args.key?(:report_country_code)
          @traffic_source = args[:traffic_source] if args.key?(:traffic_source)
        end
      end
      
      # Fields available for query in `competitive_visibility_top_merchant_view` table.
      # [Competitive visibility](https://support.google.com/merchants/answer/11366442)
      # report with business with highest visibility. Values are only set for fields
      # requested explicitly in the request's search query.
      class CompetitiveVisibilityTopMerchantView
        include Google::Apis::Core::Hashable
      
        # [Ads / organic ratio] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Cads-free-ratio) shows how often the domain receives impressions from
        # Shopping ads compared to organic traffic. The number is rounded and bucketed.
        # Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `adsOrganicRatio`
        # @return [Float]
        attr_accessor :ads_organic_ratio
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :date
      
        # Domain of your competitor or your domain, if 'is_your_domain' is true.
        # Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # [Higher position rate] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Chigher-position-rate) shows how often a competitor’s offer got placed
        # in a higher position on the page than your offer. Cannot be filtered on in the
        # 'WHERE' clause.
        # Corresponds to the JSON property `higherPositionRate`
        # @return [Float]
        attr_accessor :higher_position_rate
      
        # True if this row contains data for your domain. Cannot be filtered on in the '
        # WHERE' clause.
        # Corresponds to the JSON property `isYourDomain`
        # @return [Boolean]
        attr_accessor :is_your_domain
        alias_method :is_your_domain?, :is_your_domain
      
        # [Page overlap rate] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Cpage-overlap-rate) shows how frequently competing retailers’ offers
        # are shown together with your offers on the same page. Cannot be filtered on in
        # the 'WHERE' clause.
        # Corresponds to the JSON property `pageOverlapRate`
        # @return [Float]
        attr_accessor :page_overlap_rate
      
        # Position of the domain in the top merchants ranking for the selected keys (`
        # date`, `report_category_id`, `report_country_code`, `traffic_source`) based on
        # impressions. 1 is the highest. Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Google product category ID to calculate the report for, represented in [Google'
        # s product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Required in the `SELECT` clause. A condition on `report_category_id` is
        # required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCategoryId`
        # @return [Fixnum]
        attr_accessor :report_category_id
      
        # Country where impressions appeared. Required in the `SELECT` clause. A
        # condition on `report_country_code` is required in the `WHERE` clause.
        # Corresponds to the JSON property `reportCountryCode`
        # @return [String]
        attr_accessor :report_country_code
      
        # Traffic source of impressions. Required in the `SELECT` clause.
        # Corresponds to the JSON property `trafficSource`
        # @return [String]
        attr_accessor :traffic_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_organic_ratio = args[:ads_organic_ratio] if args.key?(:ads_organic_ratio)
          @date = args[:date] if args.key?(:date)
          @domain = args[:domain] if args.key?(:domain)
          @higher_position_rate = args[:higher_position_rate] if args.key?(:higher_position_rate)
          @is_your_domain = args[:is_your_domain] if args.key?(:is_your_domain)
          @page_overlap_rate = args[:page_overlap_rate] if args.key?(:page_overlap_rate)
          @rank = args[:rank] if args.key?(:rank)
          @report_category_id = args[:report_category_id] if args.key?(:report_category_id)
          @report_country_code = args[:report_country_code] if args.key?(:report_country_code)
          @traffic_source = args[:traffic_source] if args.key?(:traffic_source)
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
      class Date
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
      
      # Issue severity per reporting context.
      class IssueSeverityPerReportingContext
        include Google::Apis::Core::Hashable
      
        # List of demoted countries in the reporting context, represented in ISO 3166
        # format.
        # Corresponds to the JSON property `demotedCountries`
        # @return [Array<String>]
        attr_accessor :demoted_countries
      
        # List of disapproved countries in the reporting context, represented in ISO
        # 3166 format.
        # Corresponds to the JSON property `disapprovedCountries`
        # @return [Array<String>]
        attr_accessor :disapproved_countries
      
        # Reporting context the issue applies to.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @demoted_countries = args[:demoted_countries] if args.key?(:demoted_countries)
          @disapproved_countries = args[:disapproved_countries] if args.key?(:disapproved_countries)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # Item issue associated with the product.
      class ItemIssue
        include Google::Apis::Core::Hashable
      
        # Item issue resolution.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How the issue affects the serving of the product.
        # Corresponds to the JSON property `severity`
        # @return [Google::Apis::MerchantapiReportsV1beta::ItemIssueSeverity]
        attr_accessor :severity
      
        # Issue type.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::MerchantapiReportsV1beta::ItemIssueType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resolution = args[:resolution] if args.key?(:resolution)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # How the issue affects the serving of the product.
      class ItemIssueSeverity
        include Google::Apis::Core::Hashable
      
        # Aggregated severity of the issue for all reporting contexts it affects. **This
        # field can be used for filtering the results.**
        # Corresponds to the JSON property `aggregatedSeverity`
        # @return [String]
        attr_accessor :aggregated_severity
      
        # Issue severity per reporting context.
        # Corresponds to the JSON property `severityPerReportingContext`
        # @return [Array<Google::Apis::MerchantapiReportsV1beta::IssueSeverityPerReportingContext>]
        attr_accessor :severity_per_reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_severity = args[:aggregated_severity] if args.key?(:aggregated_severity)
          @severity_per_reporting_context = args[:severity_per_reporting_context] if args.key?(:severity_per_reporting_context)
        end
      end
      
      # Issue type.
      class ItemIssueType
        include Google::Apis::Core::Hashable
      
        # Canonical attribute name for attribute-specific issues.
        # Corresponds to the JSON property `canonicalAttribute`
        # @return [String]
        attr_accessor :canonical_attribute
      
        # Error code of the issue, equivalent to the `code` of [Product issues](https://
        # developers.google.com/shopping-content/guides/product-issues).
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_attribute = args[:canonical_attribute] if args.key?(:canonical_attribute)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # Fields available for query in `non_product_performance_view` table.
      # Performance data on images and online store links leading to your non-product
      # pages. This includes performance metrics (for example, `clicks`) and
      # dimensions according to which performance metrics are segmented (for example, `
      # date`). Segment fields cannot be selected in queries without also selecting at
      # least one metric field. Values are only set for fields requested explicitly in
      # the request's search query.
      class NonProductPerformanceView
        include Google::Apis::Core::Hashable
      
        # Click-through rate - the number of clicks (`clicks`) divided by the number of
        # impressions (`impressions`) of images and online store links leading to your
        # non-product pages. Metric.
        # Corresponds to the JSON property `clickThroughRate`
        # @return [Float]
        attr_accessor :click_through_rate
      
        # Number of clicks on images and online store links leading to your non-product
        # pages. Metric.
        # Corresponds to the JSON property `clicks`
        # @return [Fixnum]
        attr_accessor :clicks
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :date
      
        # Number of times images and online store links leading to your non-product
        # pages were shown. Metric.
        # Corresponds to the JSON property `impressions`
        # @return [Fixnum]
        attr_accessor :impressions
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `week`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :week
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_through_rate = args[:click_through_rate] if args.key?(:click_through_rate)
          @clicks = args[:clicks] if args.key?(:clicks)
          @date = args[:date] if args.key?(:date)
          @impressions = args[:impressions] if args.key?(:impressions)
          @week = args[:week] if args.key?(:week)
        end
      end
      
      # The price represented as a number and currency.
      class Price
        include Google::Apis::Core::Hashable
      
        # The price represented as a number in micros (1 million micros is an equivalent
        # to one's currency standard unit, for example, 1 USD = 1000000 micros).
        # Corresponds to the JSON property `amountMicros`
        # @return [Fixnum]
        attr_accessor :amount_micros
      
        # The currency of the price using three-letter acronyms according to [ISO 4217](
        # http://en.wikipedia.org/wiki/ISO_4217).
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_micros = args[:amount_micros] if args.key?(:amount_micros)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
        end
      end
      
      # Fields available for query in `price_competitiveness_product_view` table. [
      # Price competitiveness](https://support.google.com/merchants/answer/9626903)
      # report. Values are only set for fields requested explicitly in the request's
      # search query.
      class PriceCompetitivenessProductView
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `benchmarkPrice`
        # @return [Google::Apis::MerchantapiReportsV1beta::Price]
        attr_accessor :benchmark_price
      
        # Brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Product category (1st level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # Product category (2nd level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # Product category (3rd level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # Product category (4th level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # Product category (5th level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # REST ID of the product, in the form of `channel~languageCode~feedLabel~offerId`
        # . Can be used to join data with the `product_view` table. Required in the `
        # SELECT` clause.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Merchant-provided id of the product.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiReportsV1beta::Price]
        attr_accessor :price
      
        # Product type (1st level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # Product type (2nd level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # Product type (3rd level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # Product type (4th level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # Product type (5th level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # Country of the price benchmark. Represented in the ISO 3166 format. Required
        # in the `SELECT` clause.
        # Corresponds to the JSON property `reportCountryCode`
        # @return [String]
        attr_accessor :report_country_code
      
        # Title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @benchmark_price = args[:benchmark_price] if args.key?(:benchmark_price)
          @brand = args[:brand] if args.key?(:brand)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @id = args[:id] if args.key?(:id)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @report_country_code = args[:report_country_code] if args.key?(:report_country_code)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Fields available for query in `price_insights_product_view` table. [Price
      # insights](https://support.google.com/merchants/answer/11916926) report. Values
      # are only set for fields requested explicitly in the request's search query.
      class PriceInsightsProductView
        include Google::Apis::Core::Hashable
      
        # Brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Product category (1st level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # Product category (2nd level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # Product category (3rd level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # Product category (4th level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # Product category (5th level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # The predicted effectiveness of applying the price suggestion, bucketed.
        # Corresponds to the JSON property `effectiveness`
        # @return [String]
        attr_accessor :effectiveness
      
        # REST ID of the product, in the form of `channel~languageCode~feedLabel~offerId`
        # . Can be used to join data with the `product_view` table. Required in the `
        # SELECT` clause.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Merchant-provided id of the product.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Predicted change in clicks as a fraction after introducing the suggested price
        # compared to current active price. For example, 0.05 is a 5% predicted increase
        # in clicks.
        # Corresponds to the JSON property `predictedClicksChangeFraction`
        # @return [Float]
        attr_accessor :predicted_clicks_change_fraction
      
        # Predicted change in conversions as a fraction after introducing the suggested
        # price compared to current active price. For example, 0.05 is a 5% predicted
        # increase in conversions).
        # Corresponds to the JSON property `predictedConversionsChangeFraction`
        # @return [Float]
        attr_accessor :predicted_conversions_change_fraction
      
        # Predicted change in impressions as a fraction after introducing the suggested
        # price compared to current active price. For example, 0.05 is a 5% predicted
        # increase in impressions.
        # Corresponds to the JSON property `predictedImpressionsChangeFraction`
        # @return [Float]
        attr_accessor :predicted_impressions_change_fraction
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiReportsV1beta::Price]
        attr_accessor :price
      
        # Product type (1st level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # Product type (2nd level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # Product type (3rd level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # Product type (4th level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # Product type (5th level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `suggestedPrice`
        # @return [Google::Apis::MerchantapiReportsV1beta::Price]
        attr_accessor :suggested_price
      
        # Title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @effectiveness = args[:effectiveness] if args.key?(:effectiveness)
          @id = args[:id] if args.key?(:id)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @predicted_clicks_change_fraction = args[:predicted_clicks_change_fraction] if args.key?(:predicted_clicks_change_fraction)
          @predicted_conversions_change_fraction = args[:predicted_conversions_change_fraction] if args.key?(:predicted_conversions_change_fraction)
          @predicted_impressions_change_fraction = args[:predicted_impressions_change_fraction] if args.key?(:predicted_impressions_change_fraction)
          @price = args[:price] if args.key?(:price)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @suggested_price = args[:suggested_price] if args.key?(:suggested_price)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The change that happened to the product including old value, new value,
      # country code as the region code and reporting context.
      class ProductChange
        include Google::Apis::Core::Hashable
      
        # The new value of the changed resource or attribute.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable)
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable)
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @region_code = args[:region_code] if args.key?(:region_code)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # Fields available for query in `product_performance_view` table. Product
      # performance data for your account, including performance metrics (for example,
      # `clicks`) and dimensions according to which performance metrics are segmented (
      # for example, `offer_id`). Values of product dimensions, such as `offer_id`,
      # reflect the state of a product at the time of the impression. Segment fields
      # cannot be selected in queries without also selecting at least one metric field.
      # Values are only set for fields requested explicitly in the request's search
      # query.
      class ProductPerformanceView
        include Google::Apis::Core::Hashable
      
        # Brand of the product. Segment.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # [Product category (1st level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy. Segment.
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # [Product category (2nd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy. Segment.
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # [Product category (3rd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy. Segment.
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # [Product category (4th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy. Segment.
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # [Product category (5th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy. Segment.
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # Click-through rate - the number of clicks merchant's products receive (clicks)
        # divided by the number of times the products are shown (impressions). Metric.
        # Corresponds to the JSON property `clickThroughRate`
        # @return [Float]
        attr_accessor :click_through_rate
      
        # Number of clicks. Metric.
        # Corresponds to the JSON property `clicks`
        # @return [Fixnum]
        attr_accessor :clicks
      
        # Number of conversions divided by the number of clicks, reported on the
        # impression date. Metric. Available only for the `FREE` traffic source.
        # Corresponds to the JSON property `conversionRate`
        # @return [Float]
        attr_accessor :conversion_rate
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `conversionValue`
        # @return [Google::Apis::MerchantapiReportsV1beta::Price]
        attr_accessor :conversion_value
      
        # Number of conversions attributed to the product, reported on the conversion
        # date. Depending on the attribution model, a conversion might be distributed
        # across multiple clicks, where each click gets its own credit assigned. This
        # metric is a sum of all such credits. Metric. Available only for the `FREE`
        # traffic source.
        # Corresponds to the JSON property `conversions`
        # @return [Float]
        attr_accessor :conversions
      
        # Custom label 0 for custom grouping of products. Segment.
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Custom label 1 for custom grouping of products. Segment.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Custom label 2 for custom grouping of products. Segment.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Custom label 3 for custom grouping of products. Segment.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Custom label 4 for custom grouping of products. Segment.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # Code of the country where the customer is located at the time of the event.
        # Represented in the ISO 3166 format. Segment. If the customer country cannot be
        # determined, a special 'ZZ' code is returned.
        # Corresponds to the JSON property `customerCountryCode`
        # @return [String]
        attr_accessor :customer_country_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :date
      
        # Number of times merchant's products are shown. Metric.
        # Corresponds to the JSON property `impressions`
        # @return [Fixnum]
        attr_accessor :impressions
      
        # Marketing method to which metrics apply. Segment.
        # Corresponds to the JSON property `marketingMethod`
        # @return [String]
        attr_accessor :marketing_method
      
        # Merchant-provided id of the product. Segment.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # [Product type (1st level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy. Segment.
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # [Product type (2nd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy. Segment.
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # [Product type (3rd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy. Segment.
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # [Product type (4th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy. Segment.
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # [Product type (5th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy. Segment.
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # Title of the product. Segment.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `week`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :week
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @click_through_rate = args[:click_through_rate] if args.key?(:click_through_rate)
          @clicks = args[:clicks] if args.key?(:clicks)
          @conversion_rate = args[:conversion_rate] if args.key?(:conversion_rate)
          @conversion_value = args[:conversion_value] if args.key?(:conversion_value)
          @conversions = args[:conversions] if args.key?(:conversions)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @customer_country_code = args[:customer_country_code] if args.key?(:customer_country_code)
          @date = args[:date] if args.key?(:date)
          @impressions = args[:impressions] if args.key?(:impressions)
          @marketing_method = args[:marketing_method] if args.key?(:marketing_method)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @title = args[:title] if args.key?(:title)
          @week = args[:week] if args.key?(:week)
        end
      end
      
      # The message that the merchant will receive to notify about product status
      # change event
      class ProductStatusChangeMessage
        include Google::Apis::Core::Hashable
      
        # The target account that owns the entity that changed. Format : `accounts/`
        # merchant_id``
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # The attribute in the resource that changed, in this case it will be always `
        # Status`.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # A message to describe the change that happened to the product
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::MerchantapiReportsV1beta::ProductChange>]
        attr_accessor :changes
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: ``product.name=accounts/`account`/products/`product``
        # `
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The product id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The resource that changed, in this case it will always be `Product`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribute = args[:attribute] if args.key?(:attribute)
          @changes = args[:changes] if args.key?(:changes)
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Fields available for query in `product_view` table. Products in the current
      # inventory. Products in this table are the same as in Products sub-API but not
      # all product attributes from Products sub-API are available for query in this
      # table. In contrast to Products sub-API, this table allows to filter the
      # returned list of products by product attributes. To retrieve a single product
      # by `id` or list all products, Products sub-API should be used. Values are only
      # set for fields requested explicitly in the request's search query.
      class ProductView
        include Google::Apis::Core::Hashable
      
        # Aggregated status.
        # Corresponds to the JSON property `aggregatedReportingContextStatus`
        # @return [String]
        attr_accessor :aggregated_reporting_context_status
      
        # [Availability](https://support.google.com/merchants/answer/6324448) of the
        # product.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Product category (1st level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # Product category (2nd level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # Product category (3rd level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # Product category (4th level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # Product category (5th level) in [Google's product taxonomy](https://support.
        # google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # Channel of the product. Can be `ONLINE` or `LOCAL`.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Estimated performance potential compared to highest performing products of the
        # merchant.
        # Corresponds to the JSON property `clickPotential`
        # @return [String]
        attr_accessor :click_potential
      
        # Rank of the product based on its click potential. A product with `
        # click_potential_rank` 1 has the highest click potential among the merchant's
        # products that fulfill the search query conditions.
        # Corresponds to the JSON property `clickPotentialRank`
        # @return [Fixnum]
        attr_accessor :click_potential_rank
      
        # [Condition](https://support.google.com/merchants/answer/6324469) of the
        # product.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The time the merchant created the product in timestamp seconds.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `expirationDate`
        # @return [Google::Apis::MerchantapiReportsV1beta::Date]
        attr_accessor :expiration_date
      
        # Feed label of the product.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # List of Global Trade Item Numbers (GTINs) of the product.
        # Corresponds to the JSON property `gtin`
        # @return [Array<String>]
        attr_accessor :gtin
      
        # REST ID of the product, in the form of `channel~languageCode~feedLabel~offerId`
        # . Merchant API methods that operate on products take this as their `name`
        # parameter. Required in the `SELECT` clause.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Item group id provided by the merchant for grouping variants together.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # List of item issues for the product. **This field cannot be used for sorting
        # the results.** **Only selected attributes of this field (for example, `
        # item_issues.severity.aggregated_severity`) can be used for filtering the
        # results.**
        # Corresponds to the JSON property `itemIssues`
        # @return [Array<Google::Apis::MerchantapiReportsV1beta::ItemIssue>]
        attr_accessor :item_issues
      
        # Language code of the product in BCP 47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Merchant-provided id of the product.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiReportsV1beta::Price]
        attr_accessor :price
      
        # Product type (1st level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # Product type (2nd level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # Product type (3rd level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # Product type (4th level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # Product type (5th level) in merchant's own [product taxonomy](https://support.
        # google.com/merchants/answer/6324406).
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # Normalized [shipping label](https://support.google.com/merchants/answer/
        # 6324504) specified in the data source.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Link to the processed image of the product, hosted on the Google
        # infrastructure.
        # Corresponds to the JSON property `thumbnailLink`
        # @return [String]
        attr_accessor :thumbnail_link
      
        # Title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_reporting_context_status = args[:aggregated_reporting_context_status] if args.key?(:aggregated_reporting_context_status)
          @availability = args[:availability] if args.key?(:availability)
          @brand = args[:brand] if args.key?(:brand)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @channel = args[:channel] if args.key?(:channel)
          @click_potential = args[:click_potential] if args.key?(:click_potential)
          @click_potential_rank = args[:click_potential_rank] if args.key?(:click_potential_rank)
          @condition = args[:condition] if args.key?(:condition)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @item_issues = args[:item_issues] if args.key?(:item_issues)
          @language_code = args[:language_code] if args.key?(:language_code)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @shipping_label = args[:shipping_label] if args.key?(:shipping_label)
          @thumbnail_link = args[:thumbnail_link] if args.key?(:thumbnail_link)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Result row returned from the search query. Only the message corresponding to
      # the queried table is populated in the response. Within the populated message,
      # only the fields requested explicitly in the query are populated.
      class ReportRow
        include Google::Apis::Core::Hashable
      
        # Fields available for query in `best_sellers_brand_view` table. [Best sellers](
        # https://support.google.com/merchants/answer/9488679) report with top brands.
        # Values are only set for fields requested explicitly in the request's search
        # query.
        # Corresponds to the JSON property `bestSellersBrandView`
        # @return [Google::Apis::MerchantapiReportsV1beta::BestSellersBrandView]
        attr_accessor :best_sellers_brand_view
      
        # Fields available for query in `best_sellers_product_cluster_view` table. [Best
        # sellers](https://support.google.com/merchants/answer/9488679) report with top
        # product clusters. A product cluster is a grouping for different offers and
        # variants that represent the same product, for example, Google Pixel 7. Values
        # are only set for fields requested explicitly in the request's search query.
        # Corresponds to the JSON property `bestSellersProductClusterView`
        # @return [Google::Apis::MerchantapiReportsV1beta::BestSellersProductClusterView]
        attr_accessor :best_sellers_product_cluster_view
      
        # Fields available for query in `competitive_visibility_benchmark_view` table. [
        # Competitive visibility](https://support.google.com/merchants/answer/11366442)
        # report with the category benchmark. Values are only set for fields requested
        # explicitly in the request's search query.
        # Corresponds to the JSON property `competitiveVisibilityBenchmarkView`
        # @return [Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityBenchmarkView]
        attr_accessor :competitive_visibility_benchmark_view
      
        # Fields available for query in `competitive_visibility_competitor_view` table. [
        # Competitive visibility](https://support.google.com/merchants/answer/11366442)
        # report with businesses with similar visibility. Values are only set for fields
        # requested explicitly in the request's search query.
        # Corresponds to the JSON property `competitiveVisibilityCompetitorView`
        # @return [Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityCompetitorView]
        attr_accessor :competitive_visibility_competitor_view
      
        # Fields available for query in `competitive_visibility_top_merchant_view` table.
        # [Competitive visibility](https://support.google.com/merchants/answer/11366442)
        # report with business with highest visibility. Values are only set for fields
        # requested explicitly in the request's search query.
        # Corresponds to the JSON property `competitiveVisibilityTopMerchantView`
        # @return [Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityTopMerchantView]
        attr_accessor :competitive_visibility_top_merchant_view
      
        # Fields available for query in `non_product_performance_view` table.
        # Performance data on images and online store links leading to your non-product
        # pages. This includes performance metrics (for example, `clicks`) and
        # dimensions according to which performance metrics are segmented (for example, `
        # date`). Segment fields cannot be selected in queries without also selecting at
        # least one metric field. Values are only set for fields requested explicitly in
        # the request's search query.
        # Corresponds to the JSON property `nonProductPerformanceView`
        # @return [Google::Apis::MerchantapiReportsV1beta::NonProductPerformanceView]
        attr_accessor :non_product_performance_view
      
        # Fields available for query in `price_competitiveness_product_view` table. [
        # Price competitiveness](https://support.google.com/merchants/answer/9626903)
        # report. Values are only set for fields requested explicitly in the request's
        # search query.
        # Corresponds to the JSON property `priceCompetitivenessProductView`
        # @return [Google::Apis::MerchantapiReportsV1beta::PriceCompetitivenessProductView]
        attr_accessor :price_competitiveness_product_view
      
        # Fields available for query in `price_insights_product_view` table. [Price
        # insights](https://support.google.com/merchants/answer/11916926) report. Values
        # are only set for fields requested explicitly in the request's search query.
        # Corresponds to the JSON property `priceInsightsProductView`
        # @return [Google::Apis::MerchantapiReportsV1beta::PriceInsightsProductView]
        attr_accessor :price_insights_product_view
      
        # Fields available for query in `product_performance_view` table. Product
        # performance data for your account, including performance metrics (for example,
        # `clicks`) and dimensions according to which performance metrics are segmented (
        # for example, `offer_id`). Values of product dimensions, such as `offer_id`,
        # reflect the state of a product at the time of the impression. Segment fields
        # cannot be selected in queries without also selecting at least one metric field.
        # Values are only set for fields requested explicitly in the request's search
        # query.
        # Corresponds to the JSON property `productPerformanceView`
        # @return [Google::Apis::MerchantapiReportsV1beta::ProductPerformanceView]
        attr_accessor :product_performance_view
      
        # Fields available for query in `product_view` table. Products in the current
        # inventory. Products in this table are the same as in Products sub-API but not
        # all product attributes from Products sub-API are available for query in this
        # table. In contrast to Products sub-API, this table allows to filter the
        # returned list of products by product attributes. To retrieve a single product
        # by `id` or list all products, Products sub-API should be used. Values are only
        # set for fields requested explicitly in the request's search query.
        # Corresponds to the JSON property `productView`
        # @return [Google::Apis::MerchantapiReportsV1beta::ProductView]
        attr_accessor :product_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_sellers_brand_view = args[:best_sellers_brand_view] if args.key?(:best_sellers_brand_view)
          @best_sellers_product_cluster_view = args[:best_sellers_product_cluster_view] if args.key?(:best_sellers_product_cluster_view)
          @competitive_visibility_benchmark_view = args[:competitive_visibility_benchmark_view] if args.key?(:competitive_visibility_benchmark_view)
          @competitive_visibility_competitor_view = args[:competitive_visibility_competitor_view] if args.key?(:competitive_visibility_competitor_view)
          @competitive_visibility_top_merchant_view = args[:competitive_visibility_top_merchant_view] if args.key?(:competitive_visibility_top_merchant_view)
          @non_product_performance_view = args[:non_product_performance_view] if args.key?(:non_product_performance_view)
          @price_competitiveness_product_view = args[:price_competitiveness_product_view] if args.key?(:price_competitiveness_product_view)
          @price_insights_product_view = args[:price_insights_product_view] if args.key?(:price_insights_product_view)
          @product_performance_view = args[:product_performance_view] if args.key?(:product_performance_view)
          @product_view = args[:product_view] if args.key?(:product_view)
        end
      end
      
      # Request message for the `ReportService.Search` method.
      class SearchRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Number of `ReportRows` to retrieve in a single page. Defaults to
        # 1000. Values above 5000 are coerced to 5000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. Token of the page to retrieve. If not specified, the first page of
        # results is returned. In order to request the next page of results, the value
        # obtained from `next_page_token` in the previous response should be used.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Query that defines a report to be retrieved. For details on how to
        # construct your query, see the Query Language guide. For the full list of
        # available tables and fields, see the Available fields.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response message for the `ReportService.Search` method.
      class SearchResponse
        include Google::Apis::Core::Hashable
      
        # Token which can be sent as `page_token` to retrieve the next page. If omitted,
        # there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Rows that matched the search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::MerchantapiReportsV1beta::ReportRow>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
    end
  end
end
