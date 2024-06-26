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
      
      class BestSellersBrandView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BestSellersProductClusterView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompetitiveVisibilityBenchmarkView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompetitiveVisibilityCompetitorView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompetitiveVisibilityTopMerchantView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueSeverityPerReportingContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemIssueSeverity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemIssueType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonProductPerformanceView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceCompetitivenessProductView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceInsightsProductView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductPerformanceView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BestSellersBrandView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :previous_rank, :numeric_string => true, as: 'previousRank'
          property :previous_relative_demand, as: 'previousRelativeDemand'
          property :rank, :numeric_string => true, as: 'rank'
          property :relative_demand, as: 'relativeDemand'
          property :relative_demand_change, as: 'relativeDemandChange'
          property :report_category_id, :numeric_string => true, as: 'reportCategoryId'
          property :report_country_code, as: 'reportCountryCode'
          property :report_date, as: 'reportDate', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :report_granularity, as: 'reportGranularity'
        end
      end
      
      class BestSellersProductClusterView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :brand_inventory_status, as: 'brandInventoryStatus'
          property :category_l1, as: 'categoryL1'
          property :category_l2, as: 'categoryL2'
          property :category_l3, as: 'categoryL3'
          property :category_l4, as: 'categoryL4'
          property :category_l5, as: 'categoryL5'
          property :inventory_status, as: 'inventoryStatus'
          property :previous_rank, :numeric_string => true, as: 'previousRank'
          property :previous_relative_demand, as: 'previousRelativeDemand'
          property :rank, :numeric_string => true, as: 'rank'
          property :relative_demand, as: 'relativeDemand'
          property :relative_demand_change, as: 'relativeDemandChange'
          property :report_category_id, :numeric_string => true, as: 'reportCategoryId'
          property :report_country_code, as: 'reportCountryCode'
          property :report_date, as: 'reportDate', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :report_granularity, as: 'reportGranularity'
          property :title, as: 'title'
          collection :variant_gtins, as: 'variantGtins'
        end
      end
      
      class CompetitiveVisibilityBenchmarkView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_benchmark_visibility_trend, as: 'categoryBenchmarkVisibilityTrend'
          property :date, as: 'date', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :report_category_id, :numeric_string => true, as: 'reportCategoryId'
          property :report_country_code, as: 'reportCountryCode'
          property :traffic_source, as: 'trafficSource'
          property :your_domain_visibility_trend, as: 'yourDomainVisibilityTrend'
        end
      end
      
      class CompetitiveVisibilityCompetitorView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_organic_ratio, as: 'adsOrganicRatio'
          property :date, as: 'date', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :domain, as: 'domain'
          property :higher_position_rate, as: 'higherPositionRate'
          property :is_your_domain, as: 'isYourDomain'
          property :page_overlap_rate, as: 'pageOverlapRate'
          property :rank, :numeric_string => true, as: 'rank'
          property :relative_visibility, as: 'relativeVisibility'
          property :report_category_id, :numeric_string => true, as: 'reportCategoryId'
          property :report_country_code, as: 'reportCountryCode'
          property :traffic_source, as: 'trafficSource'
        end
      end
      
      class CompetitiveVisibilityTopMerchantView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_organic_ratio, as: 'adsOrganicRatio'
          property :date, as: 'date', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :domain, as: 'domain'
          property :higher_position_rate, as: 'higherPositionRate'
          property :is_your_domain, as: 'isYourDomain'
          property :page_overlap_rate, as: 'pageOverlapRate'
          property :rank, :numeric_string => true, as: 'rank'
          property :report_category_id, :numeric_string => true, as: 'reportCategoryId'
          property :report_country_code, as: 'reportCountryCode'
          property :traffic_source, as: 'trafficSource'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class IssueSeverityPerReportingContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :demoted_countries, as: 'demotedCountries'
          collection :disapproved_countries, as: 'disapprovedCountries'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ItemIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resolution, as: 'resolution'
          property :severity, as: 'severity', class: Google::Apis::MerchantapiReportsV1beta::ItemIssueSeverity, decorator: Google::Apis::MerchantapiReportsV1beta::ItemIssueSeverity::Representation
      
          property :type, as: 'type', class: Google::Apis::MerchantapiReportsV1beta::ItemIssueType, decorator: Google::Apis::MerchantapiReportsV1beta::ItemIssueType::Representation
      
        end
      end
      
      class ItemIssueSeverity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_severity, as: 'aggregatedSeverity'
          collection :severity_per_reporting_context, as: 'severityPerReportingContext', class: Google::Apis::MerchantapiReportsV1beta::IssueSeverityPerReportingContext, decorator: Google::Apis::MerchantapiReportsV1beta::IssueSeverityPerReportingContext::Representation
      
        end
      end
      
      class ItemIssueType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_attribute, as: 'canonicalAttribute'
          property :code, as: 'code'
        end
      end
      
      class NonProductPerformanceView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_through_rate, as: 'clickThroughRate'
          property :clicks, :numeric_string => true, as: 'clicks'
          property :date, as: 'date', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :impressions, :numeric_string => true, as: 'impressions'
          property :week, as: 'week', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class PriceCompetitivenessProductView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :benchmark_price, as: 'benchmarkPrice', class: Google::Apis::MerchantapiReportsV1beta::Price, decorator: Google::Apis::MerchantapiReportsV1beta::Price::Representation
      
          property :brand, as: 'brand'
          property :category_l1, as: 'categoryL1'
          property :category_l2, as: 'categoryL2'
          property :category_l3, as: 'categoryL3'
          property :category_l4, as: 'categoryL4'
          property :category_l5, as: 'categoryL5'
          property :id, as: 'id'
          property :offer_id, as: 'offerId'
          property :price, as: 'price', class: Google::Apis::MerchantapiReportsV1beta::Price, decorator: Google::Apis::MerchantapiReportsV1beta::Price::Representation
      
          property :product_type_l1, as: 'productTypeL1'
          property :product_type_l2, as: 'productTypeL2'
          property :product_type_l3, as: 'productTypeL3'
          property :product_type_l4, as: 'productTypeL4'
          property :product_type_l5, as: 'productTypeL5'
          property :report_country_code, as: 'reportCountryCode'
          property :title, as: 'title'
        end
      end
      
      class PriceInsightsProductView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :category_l1, as: 'categoryL1'
          property :category_l2, as: 'categoryL2'
          property :category_l3, as: 'categoryL3'
          property :category_l4, as: 'categoryL4'
          property :category_l5, as: 'categoryL5'
          property :effectiveness, as: 'effectiveness'
          property :id, as: 'id'
          property :offer_id, as: 'offerId'
          property :predicted_clicks_change_fraction, as: 'predictedClicksChangeFraction'
          property :predicted_conversions_change_fraction, as: 'predictedConversionsChangeFraction'
          property :predicted_impressions_change_fraction, as: 'predictedImpressionsChangeFraction'
          property :price, as: 'price', class: Google::Apis::MerchantapiReportsV1beta::Price, decorator: Google::Apis::MerchantapiReportsV1beta::Price::Representation
      
          property :product_type_l1, as: 'productTypeL1'
          property :product_type_l2, as: 'productTypeL2'
          property :product_type_l3, as: 'productTypeL3'
          property :product_type_l4, as: 'productTypeL4'
          property :product_type_l5, as: 'productTypeL5'
          property :suggested_price, as: 'suggestedPrice', class: Google::Apis::MerchantapiReportsV1beta::Price, decorator: Google::Apis::MerchantapiReportsV1beta::Price::Representation
      
          property :title, as: 'title'
        end
      end
      
      class ProductChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :region_code, as: 'regionCode'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductPerformanceView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :category_l1, as: 'categoryL1'
          property :category_l2, as: 'categoryL2'
          property :category_l3, as: 'categoryL3'
          property :category_l4, as: 'categoryL4'
          property :category_l5, as: 'categoryL5'
          property :click_through_rate, as: 'clickThroughRate'
          property :clicks, :numeric_string => true, as: 'clicks'
          property :conversion_rate, as: 'conversionRate'
          property :conversion_value, as: 'conversionValue', class: Google::Apis::MerchantapiReportsV1beta::Price, decorator: Google::Apis::MerchantapiReportsV1beta::Price::Representation
      
          property :conversions, as: 'conversions'
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          property :customer_country_code, as: 'customerCountryCode'
          property :date, as: 'date', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :impressions, :numeric_string => true, as: 'impressions'
          property :marketing_method, as: 'marketingMethod'
          property :offer_id, as: 'offerId'
          property :product_type_l1, as: 'productTypeL1'
          property :product_type_l2, as: 'productTypeL2'
          property :product_type_l3, as: 'productTypeL3'
          property :product_type_l4, as: 'productTypeL4'
          property :product_type_l5, as: 'productTypeL5'
          property :title, as: 'title'
          property :week, as: 'week', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiReportsV1beta::ProductChange, decorator: Google::Apis::MerchantapiReportsV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class ProductView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_reporting_context_status, as: 'aggregatedReportingContextStatus'
          property :availability, as: 'availability'
          property :brand, as: 'brand'
          property :category_l1, as: 'categoryL1'
          property :category_l2, as: 'categoryL2'
          property :category_l3, as: 'categoryL3'
          property :category_l4, as: 'categoryL4'
          property :category_l5, as: 'categoryL5'
          property :channel, as: 'channel'
          property :click_potential, as: 'clickPotential'
          property :click_potential_rank, :numeric_string => true, as: 'clickPotentialRank'
          property :condition, as: 'condition'
          property :creation_time, as: 'creationTime'
          property :expiration_date, as: 'expirationDate', class: Google::Apis::MerchantapiReportsV1beta::Date, decorator: Google::Apis::MerchantapiReportsV1beta::Date::Representation
      
          property :feed_label, as: 'feedLabel'
          collection :gtin, as: 'gtin'
          property :id, as: 'id'
          property :item_group_id, as: 'itemGroupId'
          collection :item_issues, as: 'itemIssues', class: Google::Apis::MerchantapiReportsV1beta::ItemIssue, decorator: Google::Apis::MerchantapiReportsV1beta::ItemIssue::Representation
      
          property :language_code, as: 'languageCode'
          property :offer_id, as: 'offerId'
          property :price, as: 'price', class: Google::Apis::MerchantapiReportsV1beta::Price, decorator: Google::Apis::MerchantapiReportsV1beta::Price::Representation
      
          property :product_type_l1, as: 'productTypeL1'
          property :product_type_l2, as: 'productTypeL2'
          property :product_type_l3, as: 'productTypeL3'
          property :product_type_l4, as: 'productTypeL4'
          property :product_type_l5, as: 'productTypeL5'
          property :shipping_label, as: 'shippingLabel'
          property :thumbnail_link, as: 'thumbnailLink'
          property :title, as: 'title'
        end
      end
      
      class ReportRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_sellers_brand_view, as: 'bestSellersBrandView', class: Google::Apis::MerchantapiReportsV1beta::BestSellersBrandView, decorator: Google::Apis::MerchantapiReportsV1beta::BestSellersBrandView::Representation
      
          property :best_sellers_product_cluster_view, as: 'bestSellersProductClusterView', class: Google::Apis::MerchantapiReportsV1beta::BestSellersProductClusterView, decorator: Google::Apis::MerchantapiReportsV1beta::BestSellersProductClusterView::Representation
      
          property :competitive_visibility_benchmark_view, as: 'competitiveVisibilityBenchmarkView', class: Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityBenchmarkView, decorator: Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityBenchmarkView::Representation
      
          property :competitive_visibility_competitor_view, as: 'competitiveVisibilityCompetitorView', class: Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityCompetitorView, decorator: Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityCompetitorView::Representation
      
          property :competitive_visibility_top_merchant_view, as: 'competitiveVisibilityTopMerchantView', class: Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityTopMerchantView, decorator: Google::Apis::MerchantapiReportsV1beta::CompetitiveVisibilityTopMerchantView::Representation
      
          property :non_product_performance_view, as: 'nonProductPerformanceView', class: Google::Apis::MerchantapiReportsV1beta::NonProductPerformanceView, decorator: Google::Apis::MerchantapiReportsV1beta::NonProductPerformanceView::Representation
      
          property :price_competitiveness_product_view, as: 'priceCompetitivenessProductView', class: Google::Apis::MerchantapiReportsV1beta::PriceCompetitivenessProductView, decorator: Google::Apis::MerchantapiReportsV1beta::PriceCompetitivenessProductView::Representation
      
          property :price_insights_product_view, as: 'priceInsightsProductView', class: Google::Apis::MerchantapiReportsV1beta::PriceInsightsProductView, decorator: Google::Apis::MerchantapiReportsV1beta::PriceInsightsProductView::Representation
      
          property :product_performance_view, as: 'productPerformanceView', class: Google::Apis::MerchantapiReportsV1beta::ProductPerformanceView, decorator: Google::Apis::MerchantapiReportsV1beta::ProductPerformanceView::Representation
      
          property :product_view, as: 'productView', class: Google::Apis::MerchantapiReportsV1beta::ProductView, decorator: Google::Apis::MerchantapiReportsV1beta::ProductView::Representation
      
        end
      end
      
      class SearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
        end
      end
      
      class SearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::MerchantapiReportsV1beta::ReportRow, decorator: Google::Apis::MerchantapiReportsV1beta::ReportRow::Representation
      
        end
      end
    end
  end
end
