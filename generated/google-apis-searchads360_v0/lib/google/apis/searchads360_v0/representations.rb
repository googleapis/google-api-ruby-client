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
    module Searchads360V0
      
      class GoogleAdsSearchads360V0CommonAgeRangeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonCustomParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonDeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonEnhancedCpc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonFrequencyCapEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonGenderInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonKeywordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonListingGroupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonLocationGroupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonLocationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonManualCpa
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonManualCpc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonManualCpm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonMaximizeConversionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonMaximizeConversions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonPercentCpc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonRealTimeBiddingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonSegments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetCpa
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetCpm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetImpressionShare
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetOutrankShare
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetRoas
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetSpend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTargetingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonTextLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonUserListInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonWebpageConditionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonWebpageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorLocationFieldPathElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsQuotaErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsSearchAds360Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ErrorsSearchAds360Failure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionActionValueSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupAdLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupAudienceView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupBidModifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesAgeRangeView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesBiddingStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaign
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignAudienceView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignBudget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignCriterion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionTrackingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomerClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomerManagerLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesGenderView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesKeywordView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesLocationView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesProductGroupView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesSearchAds360Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesUserList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ResourcesWebpageView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesCustomColumnHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesListCustomColumnsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesSearchAds360Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360Request
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360Response
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsSearchads360V0CommonAgeRangeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0CommonCustomParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class GoogleAdsSearchads360V0CommonDeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0CommonEnhancedCpc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAdsSearchads360V0CommonFrequencyCapEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAdsSearchads360V0CommonGenderInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0CommonKeywordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_type, as: 'matchType'
          property :text, as: 'text'
        end
      end
      
      class GoogleAdsSearchads360V0CommonLanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_constant, as: 'languageConstant'
        end
      end
      
      class GoogleAdsSearchads360V0CommonListingGroupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0CommonLocationGroupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feed_item_sets, as: 'feedItemSets'
          collection :geo_target_constants, as: 'geoTargetConstants'
          property :radius, :numeric_string => true, as: 'radius'
          property :radius_units, as: 'radiusUnits'
        end
      end
      
      class GoogleAdsSearchads360V0CommonLocationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geo_target_constant, as: 'geoTargetConstant'
        end
      end
      
      class GoogleAdsSearchads360V0CommonManualCpa
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAdsSearchads360V0CommonManualCpc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enhanced_cpc_enabled, as: 'enhancedCpcEnabled'
        end
      end
      
      class GoogleAdsSearchads360V0CommonManualCpm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAdsSearchads360V0CommonMaximizeConversionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :cpc_bid_floor_micros, :numeric_string => true, as: 'cpcBidFloorMicros'
          property :target_roas, as: 'targetRoas'
        end
      end
      
      class GoogleAdsSearchads360V0CommonMaximizeConversions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :cpc_bid_floor_micros, :numeric_string => true, as: 'cpcBidFloorMicros'
          property :target_cpa_micros, :numeric_string => true, as: 'targetCpaMicros'
        end
      end
      
      class GoogleAdsSearchads360V0CommonMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :absolute_top_impression_percentage, as: 'absoluteTopImpressionPercentage'
          property :all_conversions, as: 'allConversions'
          property :all_conversions_by_conversion_date, as: 'allConversionsByConversionDate'
          property :all_conversions_from_click_to_call, as: 'allConversionsFromClickToCall'
          property :all_conversions_from_directions, as: 'allConversionsFromDirections'
          property :all_conversions_from_interactions_rate, as: 'allConversionsFromInteractionsRate'
          property :all_conversions_from_interactions_value_per_interaction, as: 'allConversionsFromInteractionsValuePerInteraction'
          property :all_conversions_from_menu, as: 'allConversionsFromMenu'
          property :all_conversions_from_order, as: 'allConversionsFromOrder'
          property :all_conversions_from_other_engagement, as: 'allConversionsFromOtherEngagement'
          property :all_conversions_from_store_visit, as: 'allConversionsFromStoreVisit'
          property :all_conversions_from_store_website, as: 'allConversionsFromStoreWebsite'
          property :all_conversions_value, as: 'allConversionsValue'
          property :all_conversions_value_by_conversion_date, as: 'allConversionsValueByConversionDate'
          property :all_conversions_value_per_cost, as: 'allConversionsValuePerCost'
          property :average_cost, as: 'averageCost'
          property :average_cpc, as: 'averageCpc'
          property :average_cpm, as: 'averageCpm'
          property :clicks, :numeric_string => true, as: 'clicks'
          property :client_account_conversions, as: 'clientAccountConversions'
          property :client_account_conversions_value, as: 'clientAccountConversionsValue'
          property :client_account_view_through_conversions, :numeric_string => true, as: 'clientAccountViewThroughConversions'
          property :content_budget_lost_impression_share, as: 'contentBudgetLostImpressionShare'
          property :content_impression_share, as: 'contentImpressionShare'
          property :content_rank_lost_impression_share, as: 'contentRankLostImpressionShare'
          property :conversions, as: 'conversions'
          property :conversions_by_conversion_date, as: 'conversionsByConversionDate'
          property :conversions_from_interactions_rate, as: 'conversionsFromInteractionsRate'
          property :conversions_from_interactions_value_per_interaction, as: 'conversionsFromInteractionsValuePerInteraction'
          property :conversions_value, as: 'conversionsValue'
          property :conversions_value_by_conversion_date, as: 'conversionsValueByConversionDate'
          property :conversions_value_per_cost, as: 'conversionsValuePerCost'
          property :cost_micros, :numeric_string => true, as: 'costMicros'
          property :cost_per_all_conversions, as: 'costPerAllConversions'
          property :cost_per_conversion, as: 'costPerConversion'
          property :cost_per_current_model_attributed_conversion, as: 'costPerCurrentModelAttributedConversion'
          property :cross_device_conversions, as: 'crossDeviceConversions'
          property :cross_device_conversions_value, as: 'crossDeviceConversionsValue'
          property :ctr, as: 'ctr'
          property :historical_creative_quality_score, as: 'historicalCreativeQualityScore'
          property :historical_landing_page_quality_score, as: 'historicalLandingPageQualityScore'
          property :historical_quality_score, :numeric_string => true, as: 'historicalQualityScore'
          property :historical_search_predicted_ctr, as: 'historicalSearchPredictedCtr'
          property :impressions, :numeric_string => true, as: 'impressions'
          collection :interaction_event_types, as: 'interactionEventTypes'
          property :interaction_rate, as: 'interactionRate'
          property :interactions, :numeric_string => true, as: 'interactions'
          property :invalid_click_rate, as: 'invalidClickRate'
          property :invalid_clicks, :numeric_string => true, as: 'invalidClicks'
          property :mobile_friendly_clicks_percentage, as: 'mobileFriendlyClicksPercentage'
          property :search_absolute_top_impression_share, as: 'searchAbsoluteTopImpressionShare'
          property :search_budget_lost_absolute_top_impression_share, as: 'searchBudgetLostAbsoluteTopImpressionShare'
          property :search_budget_lost_impression_share, as: 'searchBudgetLostImpressionShare'
          property :search_budget_lost_top_impression_share, as: 'searchBudgetLostTopImpressionShare'
          property :search_click_share, as: 'searchClickShare'
          property :search_exact_match_impression_share, as: 'searchExactMatchImpressionShare'
          property :search_impression_share, as: 'searchImpressionShare'
          property :search_rank_lost_absolute_top_impression_share, as: 'searchRankLostAbsoluteTopImpressionShare'
          property :search_rank_lost_impression_share, as: 'searchRankLostImpressionShare'
          property :search_rank_lost_top_impression_share, as: 'searchRankLostTopImpressionShare'
          property :search_top_impression_share, as: 'searchTopImpressionShare'
          property :top_impression_percentage, as: 'topImpressionPercentage'
          property :value_per_all_conversions, as: 'valuePerAllConversions'
          property :value_per_all_conversions_by_conversion_date, as: 'valuePerAllConversionsByConversionDate'
          property :value_per_conversion, as: 'valuePerConversion'
          property :value_per_conversions_by_conversion_date, as: 'valuePerConversionsByConversionDate'
          property :visits, as: 'visits'
        end
      end
      
      class GoogleAdsSearchads360V0CommonPercentCpc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :enhanced_cpc_enabled, as: 'enhancedCpcEnabled'
        end
      end
      
      class GoogleAdsSearchads360V0CommonRealTimeBiddingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :opt_in, as: 'optIn'
        end
      end
      
      class GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_track_id, :numeric_string => true, as: 'adTrackId'
          property :description1, as: 'description1'
          property :description2, as: 'description2'
          property :display_mobile_url, as: 'displayMobileUrl'
          property :display_url, as: 'displayUrl'
          property :headline, as: 'headline'
        end
      end
      
      class GoogleAdsSearchads360V0CommonSegments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversion_action, as: 'conversionAction'
          property :conversion_action_category, as: 'conversionActionCategory'
          property :conversion_action_name, as: 'conversionActionName'
          property :date, as: 'date'
          property :day_of_week, as: 'dayOfWeek'
          property :device, as: 'device'
          property :month, as: 'month'
          property :quarter, as: 'quarter'
          property :week, as: 'week'
          property :year, as: 'year'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetCpa
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :cpc_bid_floor_micros, :numeric_string => true, as: 'cpcBidFloorMicros'
          property :target_cpa_micros, :numeric_string => true, as: 'targetCpaMicros'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetCpm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetImpressionShare
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :location, as: 'location'
          property :location_fraction_micros, :numeric_string => true, as: 'locationFractionMicros'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetOutrankShare
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_only, as: 'bidOnly'
          property :targeting_dimension, as: 'targetingDimension'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetRoas
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :cpc_bid_floor_micros, :numeric_string => true, as: 'cpcBidFloorMicros'
          property :target_roas, as: 'targetRoas'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetSpend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpc_bid_ceiling_micros, :numeric_string => true, as: 'cpcBidCeilingMicros'
          property :target_spend_micros, :numeric_string => true, as: 'targetSpendMicros'
        end
      end
      
      class GoogleAdsSearchads360V0CommonTargetingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_restrictions, as: 'targetRestrictions', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRestriction, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRestriction::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0CommonTextLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor'
          property :description, as: 'description'
        end
      end
      
      class GoogleAdsSearchads360V0CommonUserListInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_list, as: 'userList'
        end
      end
      
      class GoogleAdsSearchads360V0CommonValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :double_value, as: 'doubleValue'
          property :float_value, as: 'floatValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleAdsSearchads360V0CommonWebpageConditionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argument, as: 'argument'
          property :operand, as: 'operand'
          property :operator, as: 'operator'
        end
      end
      
      class GoogleAdsSearchads360V0CommonWebpageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageConditionInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageConditionInfo::Representation
      
          property :coverage_percentage, as: 'coveragePercentage'
          property :criterion_name, as: 'criterionName'
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorLocationFieldPathElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :index, as: 'index'
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_error, as: 'authenticationError'
          property :authorization_error, as: 'authorizationError'
          property :date_error, as: 'dateError'
          property :date_range_error, as: 'dateRangeError'
          property :distinct_error, as: 'distinctError'
          property :header_error, as: 'headerError'
          property :internal_error, as: 'internalError'
          property :query_error, as: 'queryError'
          property :quota_error, as: 'quotaError'
          property :request_error, as: 'requestError'
          property :size_limit_error, as: 'sizeLimitError'
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_error_details, as: 'quotaErrorDetails', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsQuotaErrorDetails, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsQuotaErrorDetails::Representation
      
          property :unpublished_error_code, as: 'unpublishedErrorCode'
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsErrorLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_path_elements, as: 'fieldPathElements', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorLocationFieldPathElement, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorLocationFieldPathElement::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsQuotaErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rate_name, as: 'rateName'
          property :rate_scope, as: 'rateScope'
          property :retry_delay, as: 'retryDelay'
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsSearchAds360Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorDetails, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorDetails::Representation
      
          property :error_code, as: 'errorCode', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorCode, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorCode::Representation
      
          property :location, as: 'location', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorLocation, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorLocation::Representation
      
          property :message, as: 'message'
          property :trigger, as: 'trigger', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonValue, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonValue::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ErrorsSearchAds360Failure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsSearchAds360Error, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsSearchAds360Error::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quality_score, as: 'qualityScore'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :language_code, as: 'languageCode'
          property :use_supplied_urls_only, as: 'useSuppliedUrlsOnly'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negative_geo_target_type, as: 'negativeGeoTargetType'
          property :positive_geo_target_type, as: 'positiveGeoTargetType'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_content_network, as: 'targetContentNetwork'
          property :target_google_search, as: 'targetGoogleSearch'
          property :target_partner_search_network, as: 'targetPartnerSearchNetwork'
          property :target_search_network, as: 'targetSearchNetwork'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :optimization_goal_types, as: 'optimizationGoalTypes'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_actions, as: 'conversionActions'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :campaign_priority, as: 'campaignPriority'
          property :enable_local, as: 'enableLocal'
          property :feed_label, as: 'feedLabel'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :sales_country, as: 'salesCountry'
          property :use_vehicle_inventory, as: 'useVehicleInventory'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tracking_url, as: 'trackingUrl'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_model, as: 'attributionModel'
          property :data_driven_model_status, as: 'dataDrivenModelStatus'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_group_tag, as: 'activityGroupTag'
          property :activity_id, :numeric_string => true, as: 'activityId'
          property :activity_tag, as: 'activityTag'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionActionValueSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :always_use_default_value, as: 'alwaysUseDefaultValue'
          property :default_currency_code, as: 'defaultCurrencyCode'
          property :default_value, as: 'defaultValue'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_url, as: 'displayUrl'
          collection :final_urls, as: 'finalUrls'
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
          property :text_ad, as: 'textAd', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_rotation_mode, as: 'adRotationMode'
          property :cpc_bid_micros, :numeric_string => true, as: 'cpcBidMicros'
          property :creation_time, as: 'creationTime'
          property :end_date, as: 'endDate'
          property :engine_id, as: 'engineId'
          property :engine_status, as: 'engineStatus'
          property :id, :numeric_string => true, as: 'id'
          collection :labels, as: 'labels'
          property :language_code, as: 'languageCode'
          property :last_modified_time, as: 'lastModifiedTime'
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
          property :start_date, as: 'startDate'
          property :status, as: 'status'
          property :targeting_setting, as: 'targetingSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetingSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetingSetting::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad, as: 'ad', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAd, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAd::Representation
      
          property :creation_time, as: 'creationTime'
          property :engine_id, as: 'engineId'
          property :engine_status, as: 'engineStatus'
          collection :labels, as: 'labels'
          property :last_modified_time, as: 'lastModifiedTime'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupAdLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_ad, as: 'adGroupAd'
          property :label, as: 'label'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupAudienceView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupBidModifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_modifier, as: 'bidModifier'
          property :device, as: 'device', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonDeviceInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonDeviceInfo::Representation
      
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group, as: 'adGroup'
          property :age_range, as: 'ageRange', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAgeRangeInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAgeRangeInfo::Representation
      
          property :bid_modifier, as: 'bidModifier'
          property :cpc_bid_micros, :numeric_string => true, as: 'cpcBidMicros'
          property :creation_time, as: 'creationTime'
          property :criterion_id, :numeric_string => true, as: 'criterionId'
          property :effective_cpc_bid_micros, :numeric_string => true, as: 'effectiveCpcBidMicros'
          property :engine_id, as: 'engineId'
          property :engine_status, as: 'engineStatus'
          property :final_url_suffix, as: 'finalUrlSuffix'
          collection :final_urls, as: 'finalUrls'
          property :gender, as: 'gender', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonGenderInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonGenderInfo::Representation
      
          property :keyword, as: 'keyword', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo::Representation
      
          collection :labels, as: 'labels'
          property :last_modified_time, as: 'lastModifiedTime'
          property :listing_group, as: 'listingGroup', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonListingGroupInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonListingGroupInfo::Representation
      
          property :location, as: 'location', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationInfo::Representation
      
          property :negative, as: 'negative'
          property :quality_info, as: 'qualityInfo', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo::Representation
      
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :tracking_url_template, as: 'trackingUrlTemplate'
          property :type, as: 'type'
          property :user_list, as: 'userList', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUserListInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUserListInfo::Representation
      
          property :webpage, as: 'webpage', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageInfo::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_criterion, as: 'adGroupCriterion'
          property :label, as: 'label'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAdGroupLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group, as: 'adGroup'
          property :label, as: 'label'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesAgeRangeView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesBiddingStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :campaign_count, :numeric_string => true, as: 'campaignCount'
          property :currency_code, as: 'currencyCode'
          property :effective_currency_code, as: 'effectiveCurrencyCode'
          property :enhanced_cpc, as: 'enhancedCpc', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonEnhancedCpc, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonEnhancedCpc::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :maximize_conversion_value, as: 'maximizeConversionValue', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversionValue, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversionValue::Representation
      
          property :maximize_conversions, as: 'maximizeConversions', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversions, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversions::Representation
      
          property :name, as: 'name'
          property :non_removed_campaign_count, :numeric_string => true, as: 'nonRemovedCampaignCount'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :target_cpa, as: 'targetCpa', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpa, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpa::Representation
      
          property :target_impression_share, as: 'targetImpressionShare', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetImpressionShare, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetImpressionShare::Representation
      
          property :target_outrank_share, as: 'targetOutrankShare', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetOutrankShare, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetOutrankShare::Representation
      
          property :target_roas, as: 'targetRoas', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRoas, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRoas::Representation
      
          property :target_spend, as: 'targetSpend', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetSpend, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetSpend::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaign
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_serving_optimization_status, as: 'adServingOptimizationStatus'
          property :advertising_channel_sub_type, as: 'advertisingChannelSubType'
          property :advertising_channel_type, as: 'advertisingChannelType'
          property :bidding_strategy, as: 'biddingStrategy'
          property :bidding_strategy_system_status, as: 'biddingStrategySystemStatus'
          property :bidding_strategy_type, as: 'biddingStrategyType'
          property :campaign_budget, as: 'campaignBudget'
          property :create_time, as: 'createTime'
          property :creation_time, as: 'creationTime'
          property :dynamic_search_ads_setting, as: 'dynamicSearchAdsSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting::Representation
      
          property :end_date, as: 'endDate'
          property :engine_id, as: 'engineId'
          collection :excluded_parent_asset_field_types, as: 'excludedParentAssetFieldTypes'
          property :final_url_suffix, as: 'finalUrlSuffix'
          collection :frequency_caps, as: 'frequencyCaps', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonFrequencyCapEntry, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonFrequencyCapEntry::Representation
      
          property :geo_target_type_setting, as: 'geoTargetTypeSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting::Representation
      
          property :id, :numeric_string => true, as: 'id'
          collection :labels, as: 'labels'
          property :last_modified_time, as: 'lastModifiedTime'
          property :manual_cpa, as: 'manualCpa', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpa, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpa::Representation
      
          property :manual_cpc, as: 'manualCpc', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpc, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpc::Representation
      
          property :manual_cpm, as: 'manualCpm', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpm, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpm::Representation
      
          property :maximize_conversion_value, as: 'maximizeConversionValue', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversionValue, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversionValue::Representation
      
          property :maximize_conversions, as: 'maximizeConversions', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversions, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversions::Representation
      
          property :name, as: 'name'
          property :network_settings, as: 'networkSettings', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings::Representation
      
          property :optimization_goal_setting, as: 'optimizationGoalSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting::Representation
      
          property :percent_cpc, as: 'percentCpc', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonPercentCpc, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonPercentCpc::Representation
      
          property :real_time_bidding_setting, as: 'realTimeBiddingSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonRealTimeBiddingSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonRealTimeBiddingSetting::Representation
      
          property :resource_name, as: 'resourceName'
          property :selective_optimization, as: 'selectiveOptimization', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization::Representation
      
          property :serving_status, as: 'servingStatus'
          property :shopping_setting, as: 'shoppingSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting::Representation
      
          property :start_date, as: 'startDate'
          property :status, as: 'status'
          property :target_cpa, as: 'targetCpa', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpa, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpa::Representation
      
          property :target_cpm, as: 'targetCpm', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpm, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpm::Representation
      
          property :target_impression_share, as: 'targetImpressionShare', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetImpressionShare, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetImpressionShare::Representation
      
          property :target_roas, as: 'targetRoas', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRoas, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRoas::Representation
      
          property :target_spend, as: 'targetSpend', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetSpend, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetSpend::Representation
      
          property :tracking_setting, as: 'trackingSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting::Representation
      
          property :tracking_url_template, as: 'trackingUrlTemplate'
          collection :url_custom_parameters, as: 'urlCustomParameters', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonCustomParameter, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonCustomParameter::Representation
      
          property :url_expansion_opt_out, as: 'urlExpansionOptOut'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignAudienceView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignBudget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :delivery_method, as: 'deliveryMethod'
          property :period, as: 'period'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignCriterion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age_range, as: 'ageRange', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAgeRangeInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAgeRangeInfo::Representation
      
          property :bid_modifier, as: 'bidModifier'
          property :criterion_id, :numeric_string => true, as: 'criterionId'
          property :device, as: 'device', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonDeviceInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonDeviceInfo::Representation
      
          property :display_name, as: 'displayName'
          property :gender, as: 'gender', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonGenderInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonGenderInfo::Representation
      
          property :keyword, as: 'keyword', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo::Representation
      
          property :language, as: 'language', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLanguageInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLanguageInfo::Representation
      
          property :last_modified_time, as: 'lastModifiedTime'
          property :location, as: 'location', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationInfo::Representation
      
          property :location_group, as: 'locationGroup', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationGroupInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationGroupInfo::Representation
      
          property :negative, as: 'negative'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :type, as: 'type'
          property :user_list, as: 'userList', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUserListInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUserListInfo::Representation
      
          property :webpage, as: 'webpage', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageInfo, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageInfo::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCampaignLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :campaign, as: 'campaign'
          property :label, as: 'label'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :attribution_model_settings, as: 'attributionModelSettings', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings::Representation
      
          property :category, as: 'category'
          property :click_through_lookback_window_days, :numeric_string => true, as: 'clickThroughLookbackWindowDays'
          property :creation_time, as: 'creationTime'
          property :floodlight_settings, as: 'floodlightSettings', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :include_in_client_account_conversions_metric, as: 'includeInClientAccountConversionsMetric'
          property :include_in_conversions_metric, as: 'includeInConversionsMetric'
          property :name, as: 'name'
          property :owner_customer, as: 'ownerCustomer'
          property :primary_for_goal, as: 'primaryForGoal'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :type, as: 'type'
          property :value_settings, as: 'valueSettings', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionValueSettings, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionValueSettings::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesConversionTrackingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepted_customer_data_terms, as: 'acceptedCustomerDataTerms'
          property :conversion_tracking_id, :numeric_string => true, as: 'conversionTrackingId'
          property :conversion_tracking_status, as: 'conversionTrackingStatus'
          property :cross_account_conversion_tracking_id, :numeric_string => true, as: 'crossAccountConversionTrackingId'
          property :enhanced_conversions_for_leads_enabled, as: 'enhancedConversionsForLeadsEnabled'
          property :google_ads_conversion_customer, as: 'googleAdsConversionCustomer'
          property :google_ads_cross_account_conversion_tracking_id, :numeric_string => true, as: 'googleAdsCrossAccountConversionTrackingId'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :queryable, as: 'queryable'
          collection :referenced_system_columns, as: 'referencedSystemColumns'
          property :references_attributes, as: 'referencesAttributes'
          property :references_metrics, as: 'referencesMetrics'
          property :resource_name, as: 'resourceName'
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_status, as: 'accountStatus'
          property :account_type, as: 'accountType'
          property :auto_tagging_enabled, as: 'autoTaggingEnabled'
          property :conversion_tracking_setting, as: 'conversionTrackingSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionTrackingSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionTrackingSetting::Representation
      
          property :creation_time, as: 'creationTime'
          property :currency_code, as: 'currencyCode'
          property :descriptive_name, as: 'descriptiveName'
          property :double_click_campaign_manager_setting, as: 'doubleClickCampaignManagerSetting', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting::Representation
      
          property :engine_id, as: 'engineId'
          property :final_url_suffix, as: 'finalUrlSuffix'
          property :id, :numeric_string => true, as: 'id'
          property :last_modified_time, as: 'lastModifiedTime'
          property :manager, as: 'manager'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :time_zone, as: 'timeZone'
          property :tracking_url_template, as: 'trackingUrlTemplate'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomerClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_labels, as: 'appliedLabels'
          property :client_customer, as: 'clientCustomer'
          property :currency_code, as: 'currencyCode'
          property :descriptive_name, as: 'descriptiveName'
          property :hidden, as: 'hidden'
          property :id, :numeric_string => true, as: 'id'
          property :level, :numeric_string => true, as: 'level'
          property :manager, as: 'manager'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :test_account, as: 'testAccount'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesCustomerManagerLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manager_customer, as: 'managerCustomer'
          property :manager_link_id, :numeric_string => true, as: 'managerLinkId'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :network_id, :numeric_string => true, as: 'networkId'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :landing_page, as: 'landingPage'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesGenderView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesKeywordView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
          property :status, as: 'status'
          property :text_label, as: 'textLabel', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTextLabel, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTextLabel::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesLocationView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesProductGroupView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesSearchAds360Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_resources, as: 'attributeResources'
          property :category, as: 'category'
          property :data_type, as: 'dataType'
          collection :enum_values, as: 'enumValues'
          property :filterable, as: 'filterable'
          property :is_repeated, as: 'isRepeated'
          collection :metrics, as: 'metrics'
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
          collection :segments, as: 'segments'
          property :selectable, as: 'selectable'
          collection :selectable_with, as: 'selectableWith'
          property :sortable, as: 'sortable'
          property :type_url, as: 'typeUrl'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesUserList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
          property :type, as: 'type'
        end
      end
      
      class GoogleAdsSearchads360V0ResourcesWebpageView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAdsSearchads360V0ServicesCustomColumnHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :references_metrics, as: 'referencesMetrics'
        end
      end
      
      class GoogleAdsSearchads360V0ServicesListCustomColumnsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_columns, as: 'customColumns', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ServicesSearchAds360Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group, as: 'adGroup', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroup, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroup::Representation
      
          property :ad_group_ad, as: 'adGroupAd', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAd, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAd::Representation
      
          property :ad_group_ad_label, as: 'adGroupAdLabel', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAdLabel, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAdLabel::Representation
      
          property :ad_group_audience_view, as: 'adGroupAudienceView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAudienceView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAudienceView::Representation
      
          property :ad_group_bid_modifier, as: 'adGroupBidModifier', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupBidModifier, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupBidModifier::Representation
      
          property :ad_group_criterion, as: 'adGroupCriterion', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterion, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterion::Representation
      
          property :ad_group_criterion_label, as: 'adGroupCriterionLabel', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel::Representation
      
          property :ad_group_label, as: 'adGroupLabel', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupLabel, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupLabel::Representation
      
          property :age_range_view, as: 'ageRangeView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAgeRangeView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAgeRangeView::Representation
      
          property :bidding_strategy, as: 'biddingStrategy', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesBiddingStrategy, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesBiddingStrategy::Representation
      
          property :campaign, as: 'campaign', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaign, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaign::Representation
      
          property :campaign_audience_view, as: 'campaignAudienceView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignAudienceView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignAudienceView::Representation
      
          property :campaign_budget, as: 'campaignBudget', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignBudget, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignBudget::Representation
      
          property :campaign_criterion, as: 'campaignCriterion', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignCriterion, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignCriterion::Representation
      
          property :campaign_label, as: 'campaignLabel', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignLabel, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignLabel::Representation
      
          property :conversion_action, as: 'conversionAction', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionAction, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionAction::Representation
      
          collection :custom_columns, as: 'customColumns', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonValue, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonValue::Representation
      
          property :customer, as: 'customer', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomer, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomer::Representation
      
          property :customer_client, as: 'customerClient', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerClient, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerClient::Representation
      
          property :customer_manager_link, as: 'customerManagerLink', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerManagerLink, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerManagerLink::Representation
      
          property :dynamic_search_ads_search_term_view, as: 'dynamicSearchAdsSearchTermView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView::Representation
      
          property :gender_view, as: 'genderView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesGenderView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesGenderView::Representation
      
          property :keyword_view, as: 'keywordView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesKeywordView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesKeywordView::Representation
      
          property :label, as: 'label', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLabel, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLabel::Representation
      
          property :location_view, as: 'locationView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLocationView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLocationView::Representation
      
          property :metrics, as: 'metrics', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMetrics, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMetrics::Representation
      
          property :product_group_view, as: 'productGroupView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesProductGroupView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesProductGroupView::Representation
      
          property :segments, as: 'segments', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSegments, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSegments::Representation
      
          property :user_list, as: 'userList', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesUserList, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesUserList::Representation
      
          property :webpage_view, as: 'webpageView', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesWebpageView, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesWebpageView::Representation
      
        end
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
        end
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field::Representation
      
          property :total_results_count, :numeric_string => true, as: 'totalResultsCount'
        end
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360Request
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
          property :return_total_results_count, as: 'returnTotalResultsCount'
          property :summary_row_setting, as: 'summaryRowSetting'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360Response
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_column_headers, as: 'customColumnHeaders', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesCustomColumnHeader, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesCustomColumnHeader::Representation
      
          property :field_mask, as: 'fieldMask'
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchAds360Row, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchAds360Row::Representation
      
          property :summary_row, as: 'summaryRow', class: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchAds360Row, decorator: Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchAds360Row::Representation
      
          property :total_results_count, :numeric_string => true, as: 'totalResultsCount'
        end
      end
    end
  end
end
