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
    module AdexchangebuyerV1_3
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountsListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BillingInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BillingInfoListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BudgetRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativesListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectDealRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectDealsListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PerformanceReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PerformanceReportListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PretargetingConfigRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PretargetingConfigListRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bidder_location, as: 'bidderLocation', class: Google::Apis::AdexchangebuyerV1_3::Account::BidderLocation do
          property :maximum_qps, as: 'maximumQps'
          property :region, as: 'region'
          property :url, as: 'url'
        end
        
        
        property :cookie_matching_nid, as: 'cookieMatchingNid'
        property :cookie_matching_url, as: 'cookieMatchingUrl'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :maximum_active_creatives, as: 'maximumActiveCreatives'
        property :maximum_total_qps, as: 'maximumTotalQps'
        property :number_active_creatives, as: 'numberActiveCreatives'
      end

      # @private
      class AccountsListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangebuyerV1_3::Account, decorator: Google::Apis::AdexchangebuyerV1_3::AccountRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class BillingInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :account_name, as: 'accountName'
        collection :billing_id, as: 'billingId'
        
        property :kind, as: 'kind'
      end

      # @private
      class BillingInfoListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangebuyerV1_3::BillingInfo, decorator: Google::Apis::AdexchangebuyerV1_3::BillingInfoRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class BudgetRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :billing_id, as: 'billingId'
        property :budget_amount, as: 'budgetAmount'
        property :currency_code, as: 'currencyCode'
        property :id, as: 'id'
        property :kind, as: 'kind'
      end

      # @private
      class CreativeRepresentation < Google::Apis::Core::JsonRepresentation
        property :html_snippet, as: 'HTMLSnippet'
        property :account_id, as: 'accountId'
        collection :advertiser_id, as: 'advertiserId'
        
        property :advertiser_name, as: 'advertiserName'
        property :agency_id, as: 'agencyId'
        collection :attribute, as: 'attribute'
        
        property :buyer_creative_id, as: 'buyerCreativeId'
        collection :click_through_url, as: 'clickThroughUrl'
        
        collection :corrections, as: 'corrections', class: Google::Apis::AdexchangebuyerV1_3::Creative::Correction do
          collection :details, as: 'details'
          
          property :reason, as: 'reason'
        end
        
        
        collection :disapproval_reasons, as: 'disapprovalReasons', class: Google::Apis::AdexchangebuyerV1_3::Creative::DisapprovalReason do
          collection :details, as: 'details'
          
          property :reason, as: 'reason'
        end
        
        
        property :filtering_reasons, as: 'filteringReasons', class: Google::Apis::AdexchangebuyerV1_3::Creative::FilteringReasons do
          property :date, as: 'date'
          collection :reasons, as: 'reasons', class: Google::Apis::AdexchangebuyerV1_3::Creative::FilteringReasons::Reason do
            property :filtering_count, as: 'filteringCount'
            property :filtering_status, as: 'filteringStatus'
          end
        end
        
        property :height, as: 'height'
        property :kind, as: 'kind'
        collection :product_categories, as: 'productCategories'
        
        collection :restricted_categories, as: 'restrictedCategories'
        
        collection :sensitive_categories, as: 'sensitiveCategories'
        
        property :status, as: 'status'
        collection :vendor_type, as: 'vendorType'
        
        property :video_url, as: 'videoURL'
        property :width, as: 'width'
      end

      # @private
      class CreativesListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangebuyerV1_3::Creative, decorator: Google::Apis::AdexchangebuyerV1_3::CreativeRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class DirectDealRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser, as: 'advertiser'
        property :currency_code, as: 'currencyCode'
        property :end_time, as: 'endTime'
        property :fixed_cpm, as: 'fixedCpm'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :private_exchange_min_cpm, as: 'privateExchangeMinCpm'
        property :publisher_blocks_overriden, as: 'publisherBlocksOverriden'
        property :seller_network, as: 'sellerNetwork'
        property :start_time, as: 'startTime'
      end

      # @private
      class DirectDealsListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :direct_deals, as: 'directDeals', class: Google::Apis::AdexchangebuyerV1_3::DirectDeal, decorator: Google::Apis::AdexchangebuyerV1_3::DirectDealRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class PerformanceReportRepresentation < Google::Apis::Core::JsonRepresentation
        collection :callout_status_rate, as: 'calloutStatusRate'
        
        collection :cookie_matcher_status_rate, as: 'cookieMatcherStatusRate'
        
        collection :creative_status_rate, as: 'creativeStatusRate'
        
        collection :hosted_match_status_rate, as: 'hostedMatchStatusRate'
        
        property :kind, as: 'kind'
        property :latency50th_percentile, as: 'latency50thPercentile'
        property :latency85th_percentile, as: 'latency85thPercentile'
        property :latency95th_percentile, as: 'latency95thPercentile'
        property :no_quota_in_region, as: 'noQuotaInRegion'
        property :out_of_quota, as: 'outOfQuota'
        property :pixel_match_requests, as: 'pixelMatchRequests'
        property :pixel_match_responses, as: 'pixelMatchResponses'
        property :quota_configured_limit, as: 'quotaConfiguredLimit'
        property :quota_throttled_limit, as: 'quotaThrottledLimit'
        property :region, as: 'region'
        property :timestamp, as: 'timestamp'
      end

      # @private
      class PerformanceReportListRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :performance_report, as: 'performanceReport', class: Google::Apis::AdexchangebuyerV1_3::PerformanceReport, decorator: Google::Apis::AdexchangebuyerV1_3::PerformanceReportRepresentation
      end

      # @private
      class PretargetingConfigRepresentation < Google::Apis::Core::JsonRepresentation
        property :billing_id, as: 'billingId'
        property :config_id, as: 'configId'
        property :config_name, as: 'configName'
        collection :creative_type, as: 'creativeType'
        
        collection :dimensions, as: 'dimensions', class: Google::Apis::AdexchangebuyerV1_3::PretargetingConfig::Dimension do
          property :height, as: 'height'
          property :width, as: 'width'
        end
        
        
        collection :excluded_content_labels, as: 'excludedContentLabels'
        
        collection :excluded_geo_criteria_ids, as: 'excludedGeoCriteriaIds'
        
        collection :excluded_placements, as: 'excludedPlacements', class: Google::Apis::AdexchangebuyerV1_3::PretargetingConfig::ExcludedPlacement do
          property :token, as: 'token'
          property :type, as: 'type'
        end
        
        
        collection :excluded_user_lists, as: 'excludedUserLists'
        
        collection :excluded_verticals, as: 'excludedVerticals'
        
        collection :geo_criteria_ids, as: 'geoCriteriaIds'
        
        property :is_active, as: 'isActive'
        property :kind, as: 'kind'
        collection :languages, as: 'languages'
        
        collection :mobile_carriers, as: 'mobileCarriers'
        
        collection :mobile_devices, as: 'mobileDevices'
        
        collection :mobile_operating_system_versions, as: 'mobileOperatingSystemVersions'
        
        collection :placements, as: 'placements', class: Google::Apis::AdexchangebuyerV1_3::PretargetingConfig::Placement do
          property :token, as: 'token'
          property :type, as: 'type'
        end
        
        
        collection :platforms, as: 'platforms'
        
        collection :supported_creative_attributes, as: 'supportedCreativeAttributes'
        
        collection :user_lists, as: 'userLists'
        
        collection :vendor_types, as: 'vendorTypes'
        
        collection :verticals, as: 'verticals'
      end

      # @private
      class PretargetingConfigListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangebuyerV1_3::PretargetingConfig, decorator: Google::Apis::AdexchangebuyerV1_3::PretargetingConfigRepresentation
        
        
        property :kind, as: 'kind'
      end
    end
  end
end
