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
    module DisplayvideoV3
      
      class ActiveViewVideoViewabilityMetricConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdGroupAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdGroupAssignedTargetingOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Adloox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Advertiser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserAdServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserBillingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserCreativeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserDataAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserGeneralConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserSdfConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserTargetingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgeRangeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgeRangeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesComparisonValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesRuleCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesRuleset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesSignal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesSignalComparison
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlgorithmRulesSignalValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppCategoryAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppCategoryTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignedInventorySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignedTargetingOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignedUserRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudienceGroupAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioContentTypeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioContentTypeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioVideoOffset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditAdvertiserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizedSellerStatusAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizedSellerStatusTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiddingStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BrowserAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BrowserTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BudgetSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAdvertiserAssignedTargetingOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAdvertiserAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedInventorySourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedInventorySourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedTargetingOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedUserRolesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditAssignedUserRolesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditNegativeKeywordsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditNegativeKeywordsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditPartnerAssignedTargetingOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditPartnerAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkEditSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkListAdGroupAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkListAdvertiserAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkListAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkListCampaignAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkListInsertionOrderAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkUpdateLineItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkUpdateLineItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BumperAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessChainAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessChainSearchTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessChainTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Campaign
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignBudget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignFlight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignGoal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CarrierAndIspAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CarrierAndIspTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CategoryAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CategoryTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CmHybridConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CmTrackingAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CombinedAudience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CombinedAudienceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CombinedAudienceTargetingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonInStreamAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Consent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactInfoList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentDurationAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentDurationTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentGenreAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentGenreTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentInstreamPositionAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentInstreamPositionTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentOutstreamPositionAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentOutstreamPositionTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentStreamTypeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentStreamTypeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversionCountingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAssetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAssetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAssignedTargetingOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSdfDownloadTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingAlgorithm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingAlgorithmRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingAlgorithmRulesError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingAlgorithmRulesRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingModelDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingScript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomBiddingScriptRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomListGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomListTargetingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DayAndTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DayAndTimeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteAssignedTargetingOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceMakeModelAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceMakeModelTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceTypeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceTypeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DigitalContentLabelAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DigitalContentLabelTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dimensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayVideoSourceAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleVerify
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleVerifyAppStarRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleVerifyBrandSafetyCategories
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleVerifyDisplayViewability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleVerifyFraudInvalidTraffic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleVerifyVideoViewability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DuplicateLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DuplicateLineItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditCustomerMatchMembersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditCustomerMatchMembersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditGuaranteedOrderReadAccessorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditGuaranteedOrderReadAccessorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditInventorySourceReadWriteAccessorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeConfigEnabledExchange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExitEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstAndThirdPartyAudience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstAndThirdPartyAudienceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstAndThirdPartyAudienceTargetingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedBidStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloodlightActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloodlightGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FrequencyCap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenderAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenderTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateDefaultLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoRegionAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoRegionSearchTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoRegionTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAudience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAudienceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAudienceTargetingSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBytestreamMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuaranteedOrder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuaranteedOrderStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HouseholdIncomeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HouseholdIncomeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageAsset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InStreamAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertionOrder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertionOrderBudget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertionOrderBudgetSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegralAdScience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegrationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceAccessors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceAccessorsAdvertiserAccessors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceAccessorsPartnerAccessor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceDisplayCreativeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceGroupAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceVideoCreativeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Invoice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeywordAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Kpi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LineItemAssignedTargetingOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LineItemBudget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LineItemFlight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdGroupAdsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdGroupAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdvertiserAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdvertisersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssignedInventorySourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssignedLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCampaignAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCampaignsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCombinedAudiencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomBiddingAlgorithmRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomBiddingAlgorithmsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomBiddingScriptsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFirstAndThirdPartyAudiencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFloodlightActivitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoogleAudiencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuaranteedOrdersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInsertionOrderAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInsertionOrdersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInventorySourceGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInventorySourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInvoicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLineItemAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLineItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNegativeKeywordListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNegativeKeywordsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPartnerAssignedTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPartnersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookbackWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupInvoiceCurrencyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MastheadAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaximizeSpendBidStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeasurementConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileDeviceIdList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeContentPositionAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeContentPositionTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NegativeKeyword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NegativeKeywordList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NegativeKeywordListAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonSkippableAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObaIcon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmidAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmidTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnScreenPositionAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnScreenPositionTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperatingSystemAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperatingSystemTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pacing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParentEntityFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParentalStatusAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParentalStatusTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Partner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerAdServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerBillingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerCost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerDataAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerGeneralConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerRevenueModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceGoal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceGoalBidStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoiAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoiSearchTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoiTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrismaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrismaCpeCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductFeedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductMatchDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProximityLocationListAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublisherReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RateDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalLocationListAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemarketingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceNegativeKeywordsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceNegativeKeywordsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReviewStatusInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScriptError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SdfConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SdfDownloadTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SdfDownloadTaskMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchTargetingOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchTargetingOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SensitiveCategoryAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SensitiveCategoryTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionPositionAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Site
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubExchangeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubExchangeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetingExpansionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetingOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThirdPartyMeasurementConfigs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThirdPartyOnlyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThirdPartyUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThirdPartyVendorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThirdPartyVerifierAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimerEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrackingFloodlightActivityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Transcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UniversalAdId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserRewardedContentAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserRewardedContentTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoAdSequenceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoAdSequenceStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoDiscoveryAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoPerformanceAd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoPlayerSizeAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoPlayerSizeTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewabilityAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewabilityTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeAndPartnersBiddingStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeAndPartnersInventorySourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeAndPartnersSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeChannelAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeVideoAssignedTargetingOptionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeVideoDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveViewVideoViewabilityMetricConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :minimum_duration, as: 'minimumDuration'
          property :minimum_quartile, as: 'minimumQuartile'
          property :minimum_viewability, as: 'minimumViewability'
          property :minimum_volume, as: 'minimumVolume'
        end
      end
      
      class AdGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_format, as: 'adGroupFormat'
          property :ad_group_id, :numeric_string => true, as: 'adGroupId'
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :bid_strategy, as: 'bidStrategy', class: Google::Apis::DisplayvideoV3::BiddingStrategy, decorator: Google::Apis::DisplayvideoV3::BiddingStrategy::Representation
      
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          property :line_item_id, :numeric_string => true, as: 'lineItemId'
          property :name, as: 'name'
          property :product_feed_data, as: 'productFeedData', class: Google::Apis::DisplayvideoV3::ProductFeedData, decorator: Google::Apis::DisplayvideoV3::ProductFeedData::Representation
      
          property :targeting_expansion, as: 'targetingExpansion', class: Google::Apis::DisplayvideoV3::TargetingExpansionConfig, decorator: Google::Apis::DisplayvideoV3::TargetingExpansionConfig::Representation
      
        end
      end
      
      class AdGroupAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_ad_id, :numeric_string => true, as: 'adGroupAdId'
          property :ad_group_id, :numeric_string => true, as: 'adGroupId'
          collection :ad_urls, as: 'adUrls', class: Google::Apis::DisplayvideoV3::AdUrl, decorator: Google::Apis::DisplayvideoV3::AdUrl::Representation
      
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :audio_ad, as: 'audioAd', class: Google::Apis::DisplayvideoV3::AudioAd, decorator: Google::Apis::DisplayvideoV3::AudioAd::Representation
      
          property :bumper_ad, as: 'bumperAd', class: Google::Apis::DisplayvideoV3::BumperAd, decorator: Google::Apis::DisplayvideoV3::BumperAd::Representation
      
          property :display_name, as: 'displayName'
          property :display_video_source_ad, as: 'displayVideoSourceAd', class: Google::Apis::DisplayvideoV3::DisplayVideoSourceAd, decorator: Google::Apis::DisplayvideoV3::DisplayVideoSourceAd::Representation
      
          property :entity_status, as: 'entityStatus'
          property :in_stream_ad, as: 'inStreamAd', class: Google::Apis::DisplayvideoV3::InStreamAd, decorator: Google::Apis::DisplayvideoV3::InStreamAd::Representation
      
          property :masthead_ad, as: 'mastheadAd', class: Google::Apis::DisplayvideoV3::MastheadAd, decorator: Google::Apis::DisplayvideoV3::MastheadAd::Representation
      
          property :name, as: 'name'
          property :non_skippable_ad, as: 'nonSkippableAd', class: Google::Apis::DisplayvideoV3::NonSkippableAd, decorator: Google::Apis::DisplayvideoV3::NonSkippableAd::Representation
      
          property :video_discover_ad, as: 'videoDiscoverAd', class: Google::Apis::DisplayvideoV3::VideoDiscoveryAd, decorator: Google::Apis::DisplayvideoV3::VideoDiscoveryAd::Representation
      
          property :video_performance_ad, as: 'videoPerformanceAd', class: Google::Apis::DisplayvideoV3::VideoPerformanceAd, decorator: Google::Apis::DisplayvideoV3::VideoPerformanceAd::Representation
      
        end
      end
      
      class AdGroupAssignedTargetingOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_id, :numeric_string => true, as: 'adGroupId'
          property :assigned_targeting_option, as: 'assignedTargetingOption', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
        end
      end
      
      class AdUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class Adloox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_adloox_categories, as: 'excludedAdlooxCategories'
        end
      end
      
      class Advertiser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_server_config, as: 'adServerConfig', class: Google::Apis::DisplayvideoV3::AdvertiserAdServerConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserAdServerConfig::Representation
      
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :billing_config, as: 'billingConfig', class: Google::Apis::DisplayvideoV3::AdvertiserBillingConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserBillingConfig::Representation
      
          property :creative_config, as: 'creativeConfig', class: Google::Apis::DisplayvideoV3::AdvertiserCreativeConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserCreativeConfig::Representation
      
          property :data_access_config, as: 'dataAccessConfig', class: Google::Apis::DisplayvideoV3::AdvertiserDataAccessConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserDataAccessConfig::Representation
      
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          property :general_config, as: 'generalConfig', class: Google::Apis::DisplayvideoV3::AdvertiserGeneralConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserGeneralConfig::Representation
      
          property :integration_details, as: 'integrationDetails', class: Google::Apis::DisplayvideoV3::IntegrationDetails, decorator: Google::Apis::DisplayvideoV3::IntegrationDetails::Representation
      
          property :name, as: 'name'
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :prisma_enabled, as: 'prismaEnabled'
          property :serving_config, as: 'servingConfig', class: Google::Apis::DisplayvideoV3::AdvertiserTargetingConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserTargetingConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AdvertiserAdServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cm_hybrid_config, as: 'cmHybridConfig', class: Google::Apis::DisplayvideoV3::CmHybridConfig, decorator: Google::Apis::DisplayvideoV3::CmHybridConfig::Representation
      
          property :third_party_only_config, as: 'thirdPartyOnlyConfig', class: Google::Apis::DisplayvideoV3::ThirdPartyOnlyConfig, decorator: Google::Apis::DisplayvideoV3::ThirdPartyOnlyConfig::Representation
      
        end
      end
      
      class AdvertiserBillingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_profile_id, :numeric_string => true, as: 'billingProfileId'
        end
      end
      
      class AdvertiserCreativeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_creative_enabled, as: 'dynamicCreativeEnabled'
          property :ias_client_id, :numeric_string => true, as: 'iasClientId'
          property :oba_compliance_disabled, as: 'obaComplianceDisabled'
          property :video_creative_data_sharing_authorized, as: 'videoCreativeDataSharingAuthorized'
        end
      end
      
      class AdvertiserDataAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdf_config, as: 'sdfConfig', class: Google::Apis::DisplayvideoV3::AdvertiserSdfConfig, decorator: Google::Apis::DisplayvideoV3::AdvertiserSdfConfig::Representation
      
        end
      end
      
      class AdvertiserGeneralConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :domain_url, as: 'domainUrl'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class AdvertiserSdfConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :override_partner_sdf_config, as: 'overridePartnerSdfConfig'
          property :sdf_config, as: 'sdfConfig', class: Google::Apis::DisplayvideoV3::SdfConfig, decorator: Google::Apis::DisplayvideoV3::SdfConfig::Representation
      
        end
      end
      
      class AdvertiserTargetingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exempt_tv_from_viewability_targeting, as: 'exemptTvFromViewabilityTargeting'
        end
      end
      
      class AgeRangeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age_range, as: 'ageRange'
        end
      end
      
      class AgeRangeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age_range, as: 'ageRange'
        end
      end
      
      class AlgorithmRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impression_signal_ruleset, as: 'impressionSignalRuleset', class: Google::Apis::DisplayvideoV3::AlgorithmRulesRuleset, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesRuleset::Representation
      
        end
      end
      
      class AlgorithmRulesComparisonValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :creative_dimension_value, as: 'creativeDimensionValue', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
          property :day_and_time_value, as: 'dayAndTimeValue', class: Google::Apis::DisplayvideoV3::DayAndTime, decorator: Google::Apis::DisplayvideoV3::DayAndTime::Representation
      
          property :device_type_value, as: 'deviceTypeValue'
          property :double_value, as: 'doubleValue'
          property :environment_value, as: 'environmentValue'
          property :exchange_value, as: 'exchangeValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :on_screen_position_value, as: 'onScreenPositionValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class AlgorithmRulesRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::DisplayvideoV3::AlgorithmRulesRuleCondition, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesRuleCondition::Representation
      
          property :default_return_value, as: 'defaultReturnValue', class: Google::Apis::DisplayvideoV3::AlgorithmRulesSignalValue, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesSignalValue::Representation
      
        end
      end
      
      class AlgorithmRulesRuleCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_value, as: 'returnValue', class: Google::Apis::DisplayvideoV3::AlgorithmRulesSignalValue, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesSignalValue::Representation
      
          collection :signal_comparisons, as: 'signalComparisons', class: Google::Apis::DisplayvideoV3::AlgorithmRulesSignalComparison, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesSignalComparison::Representation
      
        end
      end
      
      class AlgorithmRulesRuleset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_type, as: 'aggregationType'
          property :max_value, as: 'maxValue'
          collection :rules, as: 'rules', class: Google::Apis::DisplayvideoV3::AlgorithmRulesRule, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesRule::Representation
      
        end
      end
      
      class AlgorithmRulesSignal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impression_signal, as: 'impressionSignal'
        end
      end
      
      class AlgorithmRulesSignalComparison
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comparison_operator, as: 'comparisonOperator'
          property :comparison_value, as: 'comparisonValue', class: Google::Apis::DisplayvideoV3::AlgorithmRulesComparisonValue, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesComparisonValue::Representation
      
          property :signal, as: 'signal', class: Google::Apis::DisplayvideoV3::AlgorithmRulesSignal, decorator: Google::Apis::DisplayvideoV3::AlgorithmRulesSignal::Representation
      
        end
      end
      
      class AlgorithmRulesSignalValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number, as: 'number'
        end
      end
      
      class AppAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :app_platform, as: 'appPlatform'
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
        end
      end
      
      class AppCategoryAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class AppCategoryTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :media_id, :numeric_string => true, as: 'mediaId'
        end
      end
      
      class AssetAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::DisplayvideoV3::Asset, decorator: Google::Apis::DisplayvideoV3::Asset::Representation
      
          property :role, as: 'role'
        end
      end
      
      class AssignedInventorySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assigned_inventory_source_id, :numeric_string => true, as: 'assignedInventorySourceId'
          property :inventory_source_id, as: 'inventorySourceId'
          property :name, as: 'name'
        end
      end
      
      class AssignedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assigned_location_id, :numeric_string => true, as: 'assignedLocationId'
          property :name, as: 'name'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class AssignedTargetingOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age_range_details, as: 'ageRangeDetails', class: Google::Apis::DisplayvideoV3::AgeRangeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AgeRangeAssignedTargetingOptionDetails::Representation
      
          property :app_category_details, as: 'appCategoryDetails', class: Google::Apis::DisplayvideoV3::AppCategoryAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AppCategoryAssignedTargetingOptionDetails::Representation
      
          property :app_details, as: 'appDetails', class: Google::Apis::DisplayvideoV3::AppAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AppAssignedTargetingOptionDetails::Representation
      
          property :assigned_targeting_option_id, as: 'assignedTargetingOptionId'
          property :assigned_targeting_option_id_alias, as: 'assignedTargetingOptionIdAlias'
          property :audience_group_details, as: 'audienceGroupDetails', class: Google::Apis::DisplayvideoV3::AudienceGroupAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AudienceGroupAssignedTargetingOptionDetails::Representation
      
          property :audio_content_type_details, as: 'audioContentTypeDetails', class: Google::Apis::DisplayvideoV3::AudioContentTypeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AudioContentTypeAssignedTargetingOptionDetails::Representation
      
          property :authorized_seller_status_details, as: 'authorizedSellerStatusDetails', class: Google::Apis::DisplayvideoV3::AuthorizedSellerStatusAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AuthorizedSellerStatusAssignedTargetingOptionDetails::Representation
      
          property :browser_details, as: 'browserDetails', class: Google::Apis::DisplayvideoV3::BrowserAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::BrowserAssignedTargetingOptionDetails::Representation
      
          property :business_chain_details, as: 'businessChainDetails', class: Google::Apis::DisplayvideoV3::BusinessChainAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::BusinessChainAssignedTargetingOptionDetails::Representation
      
          property :carrier_and_isp_details, as: 'carrierAndIspDetails', class: Google::Apis::DisplayvideoV3::CarrierAndIspAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::CarrierAndIspAssignedTargetingOptionDetails::Representation
      
          property :category_details, as: 'categoryDetails', class: Google::Apis::DisplayvideoV3::CategoryAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::CategoryAssignedTargetingOptionDetails::Representation
      
          property :channel_details, as: 'channelDetails', class: Google::Apis::DisplayvideoV3::ChannelAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ChannelAssignedTargetingOptionDetails::Representation
      
          property :content_duration_details, as: 'contentDurationDetails', class: Google::Apis::DisplayvideoV3::ContentDurationAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentDurationAssignedTargetingOptionDetails::Representation
      
          property :content_genre_details, as: 'contentGenreDetails', class: Google::Apis::DisplayvideoV3::ContentGenreAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentGenreAssignedTargetingOptionDetails::Representation
      
          property :content_instream_position_details, as: 'contentInstreamPositionDetails', class: Google::Apis::DisplayvideoV3::ContentInstreamPositionAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentInstreamPositionAssignedTargetingOptionDetails::Representation
      
          property :content_outstream_position_details, as: 'contentOutstreamPositionDetails', class: Google::Apis::DisplayvideoV3::ContentOutstreamPositionAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentOutstreamPositionAssignedTargetingOptionDetails::Representation
      
          property :content_stream_type_details, as: 'contentStreamTypeDetails', class: Google::Apis::DisplayvideoV3::ContentStreamTypeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentStreamTypeAssignedTargetingOptionDetails::Representation
      
          property :day_and_time_details, as: 'dayAndTimeDetails', class: Google::Apis::DisplayvideoV3::DayAndTimeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DayAndTimeAssignedTargetingOptionDetails::Representation
      
          property :device_make_model_details, as: 'deviceMakeModelDetails', class: Google::Apis::DisplayvideoV3::DeviceMakeModelAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DeviceMakeModelAssignedTargetingOptionDetails::Representation
      
          property :device_type_details, as: 'deviceTypeDetails', class: Google::Apis::DisplayvideoV3::DeviceTypeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DeviceTypeAssignedTargetingOptionDetails::Representation
      
          property :digital_content_label_exclusion_details, as: 'digitalContentLabelExclusionDetails', class: Google::Apis::DisplayvideoV3::DigitalContentLabelAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DigitalContentLabelAssignedTargetingOptionDetails::Representation
      
          property :environment_details, as: 'environmentDetails', class: Google::Apis::DisplayvideoV3::EnvironmentAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::EnvironmentAssignedTargetingOptionDetails::Representation
      
          property :exchange_details, as: 'exchangeDetails', class: Google::Apis::DisplayvideoV3::ExchangeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ExchangeAssignedTargetingOptionDetails::Representation
      
          property :gender_details, as: 'genderDetails', class: Google::Apis::DisplayvideoV3::GenderAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::GenderAssignedTargetingOptionDetails::Representation
      
          property :geo_region_details, as: 'geoRegionDetails', class: Google::Apis::DisplayvideoV3::GeoRegionAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::GeoRegionAssignedTargetingOptionDetails::Representation
      
          property :household_income_details, as: 'householdIncomeDetails', class: Google::Apis::DisplayvideoV3::HouseholdIncomeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::HouseholdIncomeAssignedTargetingOptionDetails::Representation
      
          property :inheritance, as: 'inheritance'
          property :inventory_source_details, as: 'inventorySourceDetails', class: Google::Apis::DisplayvideoV3::InventorySourceAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::InventorySourceAssignedTargetingOptionDetails::Representation
      
          property :inventory_source_group_details, as: 'inventorySourceGroupDetails', class: Google::Apis::DisplayvideoV3::InventorySourceGroupAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::InventorySourceGroupAssignedTargetingOptionDetails::Representation
      
          property :keyword_details, as: 'keywordDetails', class: Google::Apis::DisplayvideoV3::KeywordAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::KeywordAssignedTargetingOptionDetails::Representation
      
          property :language_details, as: 'languageDetails', class: Google::Apis::DisplayvideoV3::LanguageAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::LanguageAssignedTargetingOptionDetails::Representation
      
          property :name, as: 'name'
          property :native_content_position_details, as: 'nativeContentPositionDetails', class: Google::Apis::DisplayvideoV3::NativeContentPositionAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::NativeContentPositionAssignedTargetingOptionDetails::Representation
      
          property :negative_keyword_list_details, as: 'negativeKeywordListDetails', class: Google::Apis::DisplayvideoV3::NegativeKeywordListAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::NegativeKeywordListAssignedTargetingOptionDetails::Representation
      
          property :omid_details, as: 'omidDetails', class: Google::Apis::DisplayvideoV3::OmidAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::OmidAssignedTargetingOptionDetails::Representation
      
          property :on_screen_position_details, as: 'onScreenPositionDetails', class: Google::Apis::DisplayvideoV3::OnScreenPositionAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::OnScreenPositionAssignedTargetingOptionDetails::Representation
      
          property :operating_system_details, as: 'operatingSystemDetails', class: Google::Apis::DisplayvideoV3::OperatingSystemAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::OperatingSystemAssignedTargetingOptionDetails::Representation
      
          property :parental_status_details, as: 'parentalStatusDetails', class: Google::Apis::DisplayvideoV3::ParentalStatusAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ParentalStatusAssignedTargetingOptionDetails::Representation
      
          property :poi_details, as: 'poiDetails', class: Google::Apis::DisplayvideoV3::PoiAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::PoiAssignedTargetingOptionDetails::Representation
      
          property :proximity_location_list_details, as: 'proximityLocationListDetails', class: Google::Apis::DisplayvideoV3::ProximityLocationListAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ProximityLocationListAssignedTargetingOptionDetails::Representation
      
          property :regional_location_list_details, as: 'regionalLocationListDetails', class: Google::Apis::DisplayvideoV3::RegionalLocationListAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::RegionalLocationListAssignedTargetingOptionDetails::Representation
      
          property :sensitive_category_exclusion_details, as: 'sensitiveCategoryExclusionDetails', class: Google::Apis::DisplayvideoV3::SensitiveCategoryAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::SensitiveCategoryAssignedTargetingOptionDetails::Representation
      
          property :session_position_details, as: 'sessionPositionDetails', class: Google::Apis::DisplayvideoV3::SessionPositionAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::SessionPositionAssignedTargetingOptionDetails::Representation
      
          property :sub_exchange_details, as: 'subExchangeDetails', class: Google::Apis::DisplayvideoV3::SubExchangeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::SubExchangeAssignedTargetingOptionDetails::Representation
      
          property :targeting_type, as: 'targetingType'
          property :third_party_verifier_details, as: 'thirdPartyVerifierDetails', class: Google::Apis::DisplayvideoV3::ThirdPartyVerifierAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ThirdPartyVerifierAssignedTargetingOptionDetails::Representation
      
          property :url_details, as: 'urlDetails', class: Google::Apis::DisplayvideoV3::UrlAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::UrlAssignedTargetingOptionDetails::Representation
      
          property :user_rewarded_content_details, as: 'userRewardedContentDetails', class: Google::Apis::DisplayvideoV3::UserRewardedContentAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::UserRewardedContentAssignedTargetingOptionDetails::Representation
      
          property :video_player_size_details, as: 'videoPlayerSizeDetails', class: Google::Apis::DisplayvideoV3::VideoPlayerSizeAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::VideoPlayerSizeAssignedTargetingOptionDetails::Representation
      
          property :viewability_details, as: 'viewabilityDetails', class: Google::Apis::DisplayvideoV3::ViewabilityAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ViewabilityAssignedTargetingOptionDetails::Representation
      
          property :youtube_channel_details, as: 'youtubeChannelDetails', class: Google::Apis::DisplayvideoV3::YoutubeChannelAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeChannelAssignedTargetingOptionDetails::Representation
      
          property :youtube_video_details, as: 'youtubeVideoDetails', class: Google::Apis::DisplayvideoV3::YoutubeVideoAssignedTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoAssignedTargetingOptionDetails::Representation
      
        end
      end
      
      class AssignedUserRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :assigned_user_role_id, as: 'assignedUserRoleId'
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :user_role, as: 'userRole'
        end
      end
      
      class AudienceGroupAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :excluded_first_and_third_party_audience_group, as: 'excludedFirstAndThirdPartyAudienceGroup', class: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceGroup, decorator: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceGroup::Representation
      
          property :excluded_google_audience_group, as: 'excludedGoogleAudienceGroup', class: Google::Apis::DisplayvideoV3::GoogleAudienceGroup, decorator: Google::Apis::DisplayvideoV3::GoogleAudienceGroup::Representation
      
          property :included_combined_audience_group, as: 'includedCombinedAudienceGroup', class: Google::Apis::DisplayvideoV3::CombinedAudienceGroup, decorator: Google::Apis::DisplayvideoV3::CombinedAudienceGroup::Representation
      
          property :included_custom_list_group, as: 'includedCustomListGroup', class: Google::Apis::DisplayvideoV3::CustomListGroup, decorator: Google::Apis::DisplayvideoV3::CustomListGroup::Representation
      
          collection :included_first_and_third_party_audience_groups, as: 'includedFirstAndThirdPartyAudienceGroups', class: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceGroup, decorator: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceGroup::Representation
      
          property :included_google_audience_group, as: 'includedGoogleAudienceGroup', class: Google::Apis::DisplayvideoV3::GoogleAudienceGroup, decorator: Google::Apis::DisplayvideoV3::GoogleAudienceGroup::Representation
      
        end
      end
      
      class AudioAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_url, as: 'displayUrl'
          property :final_url, as: 'finalUrl'
          property :tracking_url, as: 'trackingUrl'
          property :video, as: 'video', class: Google::Apis::DisplayvideoV3::YoutubeVideoDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoDetails::Representation
      
        end
      end
      
      class AudioContentTypeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_content_type, as: 'audioContentType'
        end
      end
      
      class AudioContentTypeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_content_type, as: 'audioContentType'
        end
      end
      
      class AudioVideoOffset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage, :numeric_string => true, as: 'percentage'
          property :seconds, :numeric_string => true, as: 'seconds'
        end
      end
      
      class AuditAdvertiserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_criteria_count, :numeric_string => true, as: 'adGroupCriteriaCount'
          property :campaign_criteria_count, :numeric_string => true, as: 'campaignCriteriaCount'
          property :channels_count, :numeric_string => true, as: 'channelsCount'
          property :negative_keyword_lists_count, :numeric_string => true, as: 'negativeKeywordListsCount'
          property :negatively_targeted_channels_count, :numeric_string => true, as: 'negativelyTargetedChannelsCount'
          property :used_campaigns_count, :numeric_string => true, as: 'usedCampaignsCount'
          property :used_insertion_orders_count, :numeric_string => true, as: 'usedInsertionOrdersCount'
          property :used_line_items_count, :numeric_string => true, as: 'usedLineItemsCount'
        end
      end
      
      class AuthorizedSellerStatusAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_seller_status, as: 'authorizedSellerStatus'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class AuthorizedSellerStatusTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_seller_status, as: 'authorizedSellerStatus'
        end
      end
      
      class BiddingStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_bid, as: 'fixedBid', class: Google::Apis::DisplayvideoV3::FixedBidStrategy, decorator: Google::Apis::DisplayvideoV3::FixedBidStrategy::Representation
      
          property :maximize_spend_auto_bid, as: 'maximizeSpendAutoBid', class: Google::Apis::DisplayvideoV3::MaximizeSpendBidStrategy, decorator: Google::Apis::DisplayvideoV3::MaximizeSpendBidStrategy::Representation
      
          property :performance_goal_auto_bid, as: 'performanceGoalAutoBid', class: Google::Apis::DisplayvideoV3::PerformanceGoalBidStrategy, decorator: Google::Apis::DisplayvideoV3::PerformanceGoalBidStrategy::Representation
      
          property :youtube_and_partners_bid, as: 'youtubeAndPartnersBid', class: Google::Apis::DisplayvideoV3::YoutubeAndPartnersBiddingStrategy, decorator: Google::Apis::DisplayvideoV3::YoutubeAndPartnersBiddingStrategy::Representation
      
        end
      end
      
      class BrowserAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class BrowserTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class BudgetSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_budget_id, as: 'externalBudgetId'
          property :pre_tax_amount_micros, :numeric_string => true, as: 'preTaxAmountMicros'
          property :prisma_cpe_code, as: 'prismaCpeCode', class: Google::Apis::DisplayvideoV3::PrismaCpeCode, decorator: Google::Apis::DisplayvideoV3::PrismaCpeCode::Representation
      
          property :tax_amount_micros, :numeric_string => true, as: 'taxAmountMicros'
          property :total_amount_micros, :numeric_string => true, as: 'totalAmountMicros'
        end
      end
      
      class BulkEditAdvertiserAssignedTargetingOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :create_requests, as: 'createRequests', class: Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest, decorator: Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest::Representation
      
          collection :delete_requests, as: 'deleteRequests', class: Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest, decorator: Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest::Representation
      
        end
      end
      
      class BulkEditAdvertiserAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :created_assigned_targeting_options, as: 'createdAssignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
        end
      end
      
      class BulkEditAssignedInventorySourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          collection :created_assigned_inventory_sources, as: 'createdAssignedInventorySources', class: Google::Apis::DisplayvideoV3::AssignedInventorySource, decorator: Google::Apis::DisplayvideoV3::AssignedInventorySource::Representation
      
          collection :deleted_assigned_inventory_sources, as: 'deletedAssignedInventorySources'
          property :partner_id, :numeric_string => true, as: 'partnerId'
        end
      end
      
      class BulkEditAssignedInventorySourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_inventory_sources, as: 'assignedInventorySources', class: Google::Apis::DisplayvideoV3::AssignedInventorySource, decorator: Google::Apis::DisplayvideoV3::AssignedInventorySource::Representation
      
        end
      end
      
      class BulkEditAssignedLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :created_assigned_locations, as: 'createdAssignedLocations', class: Google::Apis::DisplayvideoV3::AssignedLocation, decorator: Google::Apis::DisplayvideoV3::AssignedLocation::Representation
      
          collection :deleted_assigned_locations, as: 'deletedAssignedLocations'
        end
      end
      
      class BulkEditAssignedLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_locations, as: 'assignedLocations', class: Google::Apis::DisplayvideoV3::AssignedLocation, decorator: Google::Apis::DisplayvideoV3::AssignedLocation::Representation
      
        end
      end
      
      class BulkEditAssignedTargetingOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :create_requests, as: 'createRequests', class: Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest, decorator: Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest::Representation
      
          collection :delete_requests, as: 'deleteRequests', class: Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest, decorator: Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest::Representation
      
          collection :line_item_ids, as: 'lineItemIds'
        end
      end
      
      class BulkEditAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DisplayvideoV3::Status, decorator: Google::Apis::DisplayvideoV3::Status::Representation
      
          collection :failed_line_item_ids, as: 'failedLineItemIds'
          collection :updated_line_item_ids, as: 'updatedLineItemIds'
        end
      end
      
      class BulkEditAssignedUserRolesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :created_assigned_user_roles, as: 'createdAssignedUserRoles', class: Google::Apis::DisplayvideoV3::AssignedUserRole, decorator: Google::Apis::DisplayvideoV3::AssignedUserRole::Representation
      
          collection :deleted_assigned_user_roles, as: 'deletedAssignedUserRoles'
        end
      end
      
      class BulkEditAssignedUserRolesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :created_assigned_user_roles, as: 'createdAssignedUserRoles', class: Google::Apis::DisplayvideoV3::AssignedUserRole, decorator: Google::Apis::DisplayvideoV3::AssignedUserRole::Representation
      
        end
      end
      
      class BulkEditNegativeKeywordsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :created_negative_keywords, as: 'createdNegativeKeywords', class: Google::Apis::DisplayvideoV3::NegativeKeyword, decorator: Google::Apis::DisplayvideoV3::NegativeKeyword::Representation
      
          collection :deleted_negative_keywords, as: 'deletedNegativeKeywords'
        end
      end
      
      class BulkEditNegativeKeywordsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :negative_keywords, as: 'negativeKeywords', class: Google::Apis::DisplayvideoV3::NegativeKeyword, decorator: Google::Apis::DisplayvideoV3::NegativeKeyword::Representation
      
        end
      end
      
      class BulkEditPartnerAssignedTargetingOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :create_requests, as: 'createRequests', class: Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest, decorator: Google::Apis::DisplayvideoV3::CreateAssignedTargetingOptionsRequest::Representation
      
          collection :delete_requests, as: 'deleteRequests', class: Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest, decorator: Google::Apis::DisplayvideoV3::DeleteAssignedTargetingOptionsRequest::Representation
      
        end
      end
      
      class BulkEditPartnerAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :created_assigned_targeting_options, as: 'createdAssignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
        end
      end
      
      class BulkEditSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          collection :created_sites, as: 'createdSites', class: Google::Apis::DisplayvideoV3::Site, decorator: Google::Apis::DisplayvideoV3::Site::Representation
      
          collection :deleted_sites, as: 'deletedSites'
          property :partner_id, :numeric_string => true, as: 'partnerId'
        end
      end
      
      class BulkEditSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sites, as: 'sites', class: Google::Apis::DisplayvideoV3::Site, decorator: Google::Apis::DisplayvideoV3::Site::Representation
      
        end
      end
      
      class BulkListAdGroupAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_group_assigned_targeting_options, as: 'adGroupAssignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AdGroupAssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AdGroupAssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BulkListAdvertiserAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BulkListAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :line_item_assigned_targeting_options, as: 'lineItemAssignedTargetingOptions', class: Google::Apis::DisplayvideoV3::LineItemAssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::LineItemAssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BulkListCampaignAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BulkListInsertionOrderAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BulkUpdateLineItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :line_item_ids, as: 'lineItemIds'
          property :target_line_item, as: 'targetLineItem', class: Google::Apis::DisplayvideoV3::LineItem, decorator: Google::Apis::DisplayvideoV3::LineItem::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class BulkUpdateLineItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DisplayvideoV3::Status, decorator: Google::Apis::DisplayvideoV3::Status::Representation
      
          collection :failed_line_item_ids, as: 'failedLineItemIds'
          collection :skipped_line_item_ids, as: 'skippedLineItemIds'
          collection :updated_line_item_ids, as: 'updatedLineItemIds'
        end
      end
      
      class BumperAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_in_stream_attribute, as: 'commonInStreamAttribute', class: Google::Apis::DisplayvideoV3::CommonInStreamAttribute, decorator: Google::Apis::DisplayvideoV3::CommonInStreamAttribute::Representation
      
        end
      end
      
      class BusinessChainAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :proximity_radius_amount, as: 'proximityRadiusAmount'
          property :proximity_radius_unit, as: 'proximityRadiusUnit'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class BusinessChainSearchTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_chain_query, as: 'businessChainQuery'
          property :region_query, as: 'regionQuery'
        end
      end
      
      class BusinessChainTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_chain, as: 'businessChain'
          property :geo_region, as: 'geoRegion'
          property :geo_region_type, as: 'geoRegionType'
        end
      end
      
      class Campaign
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          collection :campaign_budgets, as: 'campaignBudgets', class: Google::Apis::DisplayvideoV3::CampaignBudget, decorator: Google::Apis::DisplayvideoV3::CampaignBudget::Representation
      
          property :campaign_flight, as: 'campaignFlight', class: Google::Apis::DisplayvideoV3::CampaignFlight, decorator: Google::Apis::DisplayvideoV3::CampaignFlight::Representation
      
          property :campaign_goal, as: 'campaignGoal', class: Google::Apis::DisplayvideoV3::CampaignGoal, decorator: Google::Apis::DisplayvideoV3::CampaignGoal::Representation
      
          property :campaign_id, :numeric_string => true, as: 'campaignId'
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          property :frequency_cap, as: 'frequencyCap', class: Google::Apis::DisplayvideoV3::FrequencyCap, decorator: Google::Apis::DisplayvideoV3::FrequencyCap::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CampaignBudget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget_amount_micros, :numeric_string => true, as: 'budgetAmountMicros'
          property :budget_id, :numeric_string => true, as: 'budgetId'
          property :budget_unit, as: 'budgetUnit'
          property :date_range, as: 'dateRange', class: Google::Apis::DisplayvideoV3::DateRange, decorator: Google::Apis::DisplayvideoV3::DateRange::Representation
      
          property :display_name, as: 'displayName'
          property :external_budget_id, as: 'externalBudgetId'
          property :external_budget_source, as: 'externalBudgetSource'
          property :invoice_grouping_id, as: 'invoiceGroupingId'
          property :prisma_config, as: 'prismaConfig', class: Google::Apis::DisplayvideoV3::PrismaConfig, decorator: Google::Apis::DisplayvideoV3::PrismaConfig::Representation
      
        end
      end
      
      class CampaignFlight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :planned_dates, as: 'plannedDates', class: Google::Apis::DisplayvideoV3::DateRange, decorator: Google::Apis::DisplayvideoV3::DateRange::Representation
      
          property :planned_spend_amount_micros, :numeric_string => true, as: 'plannedSpendAmountMicros'
        end
      end
      
      class CampaignGoal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :campaign_goal_type, as: 'campaignGoalType'
          property :performance_goal, as: 'performanceGoal', class: Google::Apis::DisplayvideoV3::PerformanceGoal, decorator: Google::Apis::DisplayvideoV3::PerformanceGoal::Representation
      
        end
      end
      
      class CarrierAndIspAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class CarrierAndIspTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :type, as: 'type'
        end
      end
      
      class CategoryAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class CategoryTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :channel_id, :numeric_string => true, as: 'channelId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :negatively_targeted_line_item_count, :numeric_string => true, as: 'negativelyTargetedLineItemCount'
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :positively_targeted_line_item_count, :numeric_string => true, as: 'positivelyTargetedLineItemCount'
        end
      end
      
      class ChannelAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, :numeric_string => true, as: 'channelId'
          property :negative, as: 'negative'
        end
      end
      
      class CmHybridConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cm_account_id, :numeric_string => true, as: 'cmAccountId'
          collection :cm_advertiser_ids, as: 'cmAdvertiserIds'
          property :cm_floodlight_config_id, :numeric_string => true, as: 'cmFloodlightConfigId'
          property :cm_floodlight_linking_authorized, as: 'cmFloodlightLinkingAuthorized'
          collection :cm_syncable_site_ids, as: 'cmSyncableSiteIds'
          property :dv360_to_cm_cost_reporting_enabled, as: 'dv360ToCmCostReportingEnabled'
          property :dv360_to_cm_data_sharing_enabled, as: 'dv360ToCmDataSharingEnabled'
        end
      end
      
      class CmTrackingAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cm_ad_id, :numeric_string => true, as: 'cmAdId'
          property :cm_creative_id, :numeric_string => true, as: 'cmCreativeId'
          property :cm_placement_id, :numeric_string => true, as: 'cmPlacementId'
        end
      end
      
      class CombinedAudience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combined_audience_id, :numeric_string => true, as: 'combinedAudienceId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class CombinedAudienceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :settings, as: 'settings', class: Google::Apis::DisplayvideoV3::CombinedAudienceTargetingSetting, decorator: Google::Apis::DisplayvideoV3::CombinedAudienceTargetingSetting::Representation
      
        end
      end
      
      class CombinedAudienceTargetingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combined_audience_id, :numeric_string => true, as: 'combinedAudienceId'
        end
      end
      
      class CommonInStreamAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_button_label, as: 'actionButtonLabel'
          property :action_headline, as: 'actionHeadline'
          property :companion_banner, as: 'companionBanner', class: Google::Apis::DisplayvideoV3::ImageAsset, decorator: Google::Apis::DisplayvideoV3::ImageAsset::Representation
      
          property :display_url, as: 'displayUrl'
          property :final_url, as: 'finalUrl'
          property :tracking_url, as: 'trackingUrl'
          property :video, as: 'video', class: Google::Apis::DisplayvideoV3::YoutubeVideoDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoDetails::Representation
      
        end
      end
      
      class Consent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_personalization, as: 'adPersonalization'
          property :ad_user_data, as: 'adUserData'
        end
      end
      
      class ContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          collection :hashed_emails, as: 'hashedEmails'
          property :hashed_first_name, as: 'hashedFirstName'
          property :hashed_last_name, as: 'hashedLastName'
          collection :hashed_phone_numbers, as: 'hashedPhoneNumbers'
          collection :zip_codes, as: 'zipCodes'
        end
      end
      
      class ContactInfoList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent, as: 'consent', class: Google::Apis::DisplayvideoV3::Consent, decorator: Google::Apis::DisplayvideoV3::Consent::Representation
      
          collection :contact_infos, as: 'contactInfos', class: Google::Apis::DisplayvideoV3::ContactInfo, decorator: Google::Apis::DisplayvideoV3::ContactInfo::Representation
      
        end
      end
      
      class ContentDurationAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_duration, as: 'contentDuration'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class ContentDurationTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_duration, as: 'contentDuration'
        end
      end
      
      class ContentGenreAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class ContentGenreTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class ContentInstreamPositionAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_type, as: 'adType'
          property :content_instream_position, as: 'contentInstreamPosition'
        end
      end
      
      class ContentInstreamPositionTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_instream_position, as: 'contentInstreamPosition'
        end
      end
      
      class ContentOutstreamPositionAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_type, as: 'adType'
          property :content_outstream_position, as: 'contentOutstreamPosition'
        end
      end
      
      class ContentOutstreamPositionTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_outstream_position, as: 'contentOutstreamPosition'
        end
      end
      
      class ContentStreamTypeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_stream_type, as: 'contentStreamType'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class ContentStreamTypeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_stream_type, as: 'contentStreamType'
        end
      end
      
      class ConversionCountingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :floodlight_activity_configs, as: 'floodlightActivityConfigs', class: Google::Apis::DisplayvideoV3::TrackingFloodlightActivityConfig, decorator: Google::Apis::DisplayvideoV3::TrackingFloodlightActivityConfig::Representation
      
          property :post_view_count_percentage_millis, :numeric_string => true, as: 'postViewCountPercentageMillis'
        end
      end
      
      class CounterEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reporting_name, as: 'reportingName'
        end
      end
      
      class CreateAssetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filename, as: 'filename'
        end
      end
      
      class CreateAssetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::DisplayvideoV3::Asset, decorator: Google::Apis::DisplayvideoV3::Asset::Representation
      
        end
      end
      
      class CreateAssignedTargetingOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :targeting_type, as: 'targetingType'
        end
      end
      
      class CreateSdfDownloadTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :id_filter, as: 'idFilter', class: Google::Apis::DisplayvideoV3::IdFilter, decorator: Google::Apis::DisplayvideoV3::IdFilter::Representation
      
          property :inventory_source_filter, as: 'inventorySourceFilter', class: Google::Apis::DisplayvideoV3::InventorySourceFilter, decorator: Google::Apis::DisplayvideoV3::InventorySourceFilter::Representation
      
          property :parent_entity_filter, as: 'parentEntityFilter', class: Google::Apis::DisplayvideoV3::ParentEntityFilter, decorator: Google::Apis::DisplayvideoV3::ParentEntityFilter::Representation
      
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :version, as: 'version'
        end
      end
      
      class Creative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_dimensions, as: 'additionalDimensions', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :appended_tag, as: 'appendedTag'
          collection :assets, as: 'assets', class: Google::Apis::DisplayvideoV3::AssetAssociation, decorator: Google::Apis::DisplayvideoV3::AssetAssociation::Representation
      
          property :cm_placement_id, :numeric_string => true, as: 'cmPlacementId'
          property :cm_tracking_ad, as: 'cmTrackingAd', class: Google::Apis::DisplayvideoV3::CmTrackingAd, decorator: Google::Apis::DisplayvideoV3::CmTrackingAd::Representation
      
          collection :companion_creative_ids, as: 'companionCreativeIds'
          collection :counter_events, as: 'counterEvents', class: Google::Apis::DisplayvideoV3::CounterEvent, decorator: Google::Apis::DisplayvideoV3::CounterEvent::Representation
      
          property :create_time, as: 'createTime'
          collection :creative_attributes, as: 'creativeAttributes'
          property :creative_id, :numeric_string => true, as: 'creativeId'
          property :creative_type, as: 'creativeType'
          property :dimensions, as: 'dimensions', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
          property :display_name, as: 'displayName'
          property :dynamic, as: 'dynamic'
          property :entity_status, as: 'entityStatus'
          collection :exit_events, as: 'exitEvents', class: Google::Apis::DisplayvideoV3::ExitEvent, decorator: Google::Apis::DisplayvideoV3::ExitEvent::Representation
      
          property :expand_on_hover, as: 'expandOnHover'
          property :expanding_direction, as: 'expandingDirection'
          property :hosting_source, as: 'hostingSource'
          property :html5_video, as: 'html5Video'
          property :ias_campaign_monitoring, as: 'iasCampaignMonitoring'
          property :integration_code, as: 'integrationCode'
          property :js_tracker_url, as: 'jsTrackerUrl'
          collection :line_item_ids, as: 'lineItemIds'
          property :media_duration, as: 'mediaDuration'
          property :mp3_audio, as: 'mp3Audio'
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :oba_icon, as: 'obaIcon', class: Google::Apis::DisplayvideoV3::ObaIcon, decorator: Google::Apis::DisplayvideoV3::ObaIcon::Representation
      
          property :ogg_audio, as: 'oggAudio'
          property :progress_offset, as: 'progressOffset', class: Google::Apis::DisplayvideoV3::AudioVideoOffset, decorator: Google::Apis::DisplayvideoV3::AudioVideoOffset::Representation
      
          property :require_html5, as: 'requireHtml5'
          property :require_mraid, as: 'requireMraid'
          property :require_ping_for_attribution, as: 'requirePingForAttribution'
          property :review_status, as: 'reviewStatus', class: Google::Apis::DisplayvideoV3::ReviewStatusInfo, decorator: Google::Apis::DisplayvideoV3::ReviewStatusInfo::Representation
      
          property :skip_offset, as: 'skipOffset', class: Google::Apis::DisplayvideoV3::AudioVideoOffset, decorator: Google::Apis::DisplayvideoV3::AudioVideoOffset::Representation
      
          property :skippable, as: 'skippable'
          property :third_party_tag, as: 'thirdPartyTag'
          collection :third_party_urls, as: 'thirdPartyUrls', class: Google::Apis::DisplayvideoV3::ThirdPartyUrl, decorator: Google::Apis::DisplayvideoV3::ThirdPartyUrl::Representation
      
          collection :timer_events, as: 'timerEvents', class: Google::Apis::DisplayvideoV3::TimerEvent, decorator: Google::Apis::DisplayvideoV3::TimerEvent::Representation
      
          collection :tracker_urls, as: 'trackerUrls'
          collection :transcodes, as: 'transcodes', class: Google::Apis::DisplayvideoV3::Transcode, decorator: Google::Apis::DisplayvideoV3::Transcode::Representation
      
          property :universal_ad_id, as: 'universalAdId', class: Google::Apis::DisplayvideoV3::UniversalAdId, decorator: Google::Apis::DisplayvideoV3::UniversalAdId::Representation
      
          property :update_time, as: 'updateTime'
          property :vast_tag_url, as: 'vastTagUrl'
          property :vpaid, as: 'vpaid'
        end
      end
      
      class CreativeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_type, as: 'creativeType'
          property :display_creative_config, as: 'displayCreativeConfig', class: Google::Apis::DisplayvideoV3::InventorySourceDisplayCreativeConfig, decorator: Google::Apis::DisplayvideoV3::InventorySourceDisplayCreativeConfig::Representation
      
          property :video_creative_config, as: 'videoCreativeConfig', class: Google::Apis::DisplayvideoV3::InventorySourceVideoCreativeConfig, decorator: Google::Apis::DisplayvideoV3::InventorySourceVideoCreativeConfig::Representation
      
        end
      end
      
      class CustomBiddingAlgorithm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :custom_bidding_algorithm_id, :numeric_string => true, as: 'customBiddingAlgorithmId'
          property :custom_bidding_algorithm_type, as: 'customBiddingAlgorithmType'
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          collection :model_details, as: 'modelDetails', class: Google::Apis::DisplayvideoV3::CustomBiddingModelDetails, decorator: Google::Apis::DisplayvideoV3::CustomBiddingModelDetails::Representation
      
          property :name, as: 'name'
          property :partner_id, :numeric_string => true, as: 'partnerId'
          collection :shared_advertiser_ids, as: 'sharedAdvertiserIds'
        end
      end
      
      class CustomBiddingAlgorithmRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :create_time, as: 'createTime'
          property :custom_bidding_algorithm_id, :numeric_string => true, as: 'customBiddingAlgorithmId'
          property :custom_bidding_algorithm_rules_id, :numeric_string => true, as: 'customBiddingAlgorithmRulesId'
          property :error, as: 'error', class: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRulesError, decorator: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRulesError::Representation
      
          property :name, as: 'name'
          property :rules, as: 'rules', class: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRulesRef, decorator: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRulesRef::Representation
      
          property :state, as: 'state'
        end
      end
      
      class CustomBiddingAlgorithmRulesError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
        end
      end
      
      class CustomBiddingAlgorithmRulesRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class CustomBiddingModelDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :readiness_state, as: 'readinessState'
          property :suspension_state, as: 'suspensionState'
        end
      end
      
      class CustomBiddingScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :create_time, as: 'createTime'
          property :custom_bidding_algorithm_id, :numeric_string => true, as: 'customBiddingAlgorithmId'
          property :custom_bidding_script_id, :numeric_string => true, as: 'customBiddingScriptId'
          collection :errors, as: 'errors', class: Google::Apis::DisplayvideoV3::ScriptError, decorator: Google::Apis::DisplayvideoV3::ScriptError::Representation
      
          property :name, as: 'name'
          property :script, as: 'script', class: Google::Apis::DisplayvideoV3::CustomBiddingScriptRef, decorator: Google::Apis::DisplayvideoV3::CustomBiddingScriptRef::Representation
      
          property :state, as: 'state'
        end
      end
      
      class CustomBiddingScriptRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class CustomLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class CustomList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_list_id, :numeric_string => true, as: 'customListId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class CustomListGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :settings, as: 'settings', class: Google::Apis::DisplayvideoV3::CustomListTargetingSetting, decorator: Google::Apis::DisplayvideoV3::CustomListTargetingSetting::Representation
      
        end
      end
      
      class CustomListTargetingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_list_id, :numeric_string => true, as: 'customListId'
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
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::DisplayvideoV3::Date, decorator: Google::Apis::DisplayvideoV3::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::DisplayvideoV3::Date, decorator: Google::Apis::DisplayvideoV3::Date::Representation
      
        end
      end
      
      class DayAndTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :hour_of_day, as: 'hourOfDay'
          property :time_zone_resolution, as: 'timeZoneResolution'
        end
      end
      
      class DayAndTimeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :end_hour, as: 'endHour'
          property :start_hour, as: 'startHour'
          property :time_zone_resolution, as: 'timeZoneResolution'
        end
      end
      
      class DeleteAssignedTargetingOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_option_ids, as: 'assignedTargetingOptionIds'
          property :targeting_type, as: 'targetingType'
        end
      end
      
      class DeviceMakeModelAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class DeviceMakeModelTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class DeviceTypeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_type, as: 'deviceType'
          property :youtube_and_partners_bid_multiplier, as: 'youtubeAndPartnersBidMultiplier'
        end
      end
      
      class DeviceTypeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_type, as: 'deviceType'
        end
      end
      
      class DigitalContentLabelAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :excluded_content_rating_tier, as: 'excludedContentRatingTier'
        end
      end
      
      class DigitalContentLabelTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_rating_tier, as: 'contentRatingTier'
        end
      end
      
      class Dimensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height_pixels, as: 'heightPixels'
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      class DisplayVideoSourceAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_id, :numeric_string => true, as: 'creativeId'
        end
      end
      
      class DoubleVerify
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_star_rating, as: 'appStarRating', class: Google::Apis::DisplayvideoV3::DoubleVerifyAppStarRating, decorator: Google::Apis::DisplayvideoV3::DoubleVerifyAppStarRating::Representation
      
          collection :avoided_age_ratings, as: 'avoidedAgeRatings'
          property :brand_safety_categories, as: 'brandSafetyCategories', class: Google::Apis::DisplayvideoV3::DoubleVerifyBrandSafetyCategories, decorator: Google::Apis::DisplayvideoV3::DoubleVerifyBrandSafetyCategories::Representation
      
          property :custom_segment_id, :numeric_string => true, as: 'customSegmentId'
          property :display_viewability, as: 'displayViewability', class: Google::Apis::DisplayvideoV3::DoubleVerifyDisplayViewability, decorator: Google::Apis::DisplayvideoV3::DoubleVerifyDisplayViewability::Representation
      
          property :fraud_invalid_traffic, as: 'fraudInvalidTraffic', class: Google::Apis::DisplayvideoV3::DoubleVerifyFraudInvalidTraffic, decorator: Google::Apis::DisplayvideoV3::DoubleVerifyFraudInvalidTraffic::Representation
      
          property :video_viewability, as: 'videoViewability', class: Google::Apis::DisplayvideoV3::DoubleVerifyVideoViewability, decorator: Google::Apis::DisplayvideoV3::DoubleVerifyVideoViewability::Representation
      
        end
      end
      
      class DoubleVerifyAppStarRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avoid_insufficient_star_rating, as: 'avoidInsufficientStarRating'
          property :avoided_star_rating, as: 'avoidedStarRating'
        end
      end
      
      class DoubleVerifyBrandSafetyCategories
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avoid_unknown_brand_safety_category, as: 'avoidUnknownBrandSafetyCategory'
          collection :avoided_high_severity_categories, as: 'avoidedHighSeverityCategories'
          collection :avoided_medium_severity_categories, as: 'avoidedMediumSeverityCategories'
        end
      end
      
      class DoubleVerifyDisplayViewability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iab, as: 'iab'
          property :viewable_during, as: 'viewableDuring'
        end
      end
      
      class DoubleVerifyFraudInvalidTraffic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avoid_insufficient_option, as: 'avoidInsufficientOption'
          property :avoided_fraud_option, as: 'avoidedFraudOption'
        end
      end
      
      class DoubleVerifyVideoViewability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :player_impression_rate, as: 'playerImpressionRate'
          property :video_iab, as: 'videoIab'
          property :video_viewable_rate, as: 'videoViewableRate'
        end
      end
      
      class DuplicateLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_display_name, as: 'targetDisplayName'
        end
      end
      
      class DuplicateLineItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicate_line_item_id, :numeric_string => true, as: 'duplicateLineItemId'
        end
      end
      
      class EditCustomerMatchMembersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :added_contact_info_list, as: 'addedContactInfoList', class: Google::Apis::DisplayvideoV3::ContactInfoList, decorator: Google::Apis::DisplayvideoV3::ContactInfoList::Representation
      
          property :added_mobile_device_id_list, as: 'addedMobileDeviceIdList', class: Google::Apis::DisplayvideoV3::MobileDeviceIdList, decorator: Google::Apis::DisplayvideoV3::MobileDeviceIdList::Representation
      
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :removed_contact_info_list, as: 'removedContactInfoList', class: Google::Apis::DisplayvideoV3::ContactInfoList, decorator: Google::Apis::DisplayvideoV3::ContactInfoList::Representation
      
          property :removed_mobile_device_id_list, as: 'removedMobileDeviceIdList', class: Google::Apis::DisplayvideoV3::MobileDeviceIdList, decorator: Google::Apis::DisplayvideoV3::MobileDeviceIdList::Representation
      
        end
      end
      
      class EditCustomerMatchMembersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_and_third_party_audience_id, :numeric_string => true, as: 'firstAndThirdPartyAudienceId'
        end
      end
      
      class EditGuaranteedOrderReadAccessorsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :added_advertisers, as: 'addedAdvertisers'
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :read_access_inherited, as: 'readAccessInherited'
          collection :removed_advertisers, as: 'removedAdvertisers'
        end
      end
      
      class EditGuaranteedOrderReadAccessorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_access_inherited, as: 'readAccessInherited'
          collection :read_advertiser_ids, as: 'readAdvertiserIds'
        end
      end
      
      class EditInventorySourceReadWriteAccessorsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertisers_update, as: 'advertisersUpdate', class: Google::Apis::DisplayvideoV3::EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate, decorator: Google::Apis::DisplayvideoV3::EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate::Representation
      
          property :assign_partner, as: 'assignPartner'
          property :partner_id, :numeric_string => true, as: 'partnerId'
        end
      end
      
      class EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :added_advertisers, as: 'addedAdvertisers'
          collection :removed_advertisers, as: 'removedAdvertisers'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnvironmentAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class EnvironmentTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class ExchangeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exchange, as: 'exchange'
        end
      end
      
      class ExchangeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_exchanges, as: 'enabledExchanges', class: Google::Apis::DisplayvideoV3::ExchangeConfigEnabledExchange, decorator: Google::Apis::DisplayvideoV3::ExchangeConfigEnabledExchange::Representation
      
        end
      end
      
      class ExchangeConfigEnabledExchange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exchange, as: 'exchange'
          property :google_ad_manager_agency_id, as: 'googleAdManagerAgencyId'
          property :google_ad_manager_buyer_network_id, as: 'googleAdManagerBuyerNetworkId'
          property :seat_id, as: 'seatId'
        end
      end
      
      class ExchangeReviewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exchange, as: 'exchange'
          property :status, as: 'status'
        end
      end
      
      class ExchangeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exchange, as: 'exchange'
        end
      end
      
      class ExitEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reporting_name, as: 'reportingName'
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class FirstAndThirdPartyAudience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_display_audience_size, :numeric_string => true, as: 'activeDisplayAudienceSize'
          property :app_id, as: 'appId'
          property :audience_source, as: 'audienceSource'
          property :audience_type, as: 'audienceType'
          property :contact_info_list, as: 'contactInfoList', class: Google::Apis::DisplayvideoV3::ContactInfoList, decorator: Google::Apis::DisplayvideoV3::ContactInfoList::Representation
      
          property :description, as: 'description'
          property :display_audience_size, :numeric_string => true, as: 'displayAudienceSize'
          property :display_desktop_audience_size, :numeric_string => true, as: 'displayDesktopAudienceSize'
          property :display_mobile_app_audience_size, :numeric_string => true, as: 'displayMobileAppAudienceSize'
          property :display_mobile_web_audience_size, :numeric_string => true, as: 'displayMobileWebAudienceSize'
          property :display_name, as: 'displayName'
          property :first_and_third_party_audience_id, :numeric_string => true, as: 'firstAndThirdPartyAudienceId'
          property :first_and_third_party_audience_type, as: 'firstAndThirdPartyAudienceType'
          property :gmail_audience_size, :numeric_string => true, as: 'gmailAudienceSize'
          property :membership_duration_days, :numeric_string => true, as: 'membershipDurationDays'
          property :mobile_device_id_list, as: 'mobileDeviceIdList', class: Google::Apis::DisplayvideoV3::MobileDeviceIdList, decorator: Google::Apis::DisplayvideoV3::MobileDeviceIdList::Representation
      
          property :name, as: 'name'
          property :youtube_audience_size, :numeric_string => true, as: 'youtubeAudienceSize'
        end
      end
      
      class FirstAndThirdPartyAudienceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :settings, as: 'settings', class: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceTargetingSetting, decorator: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudienceTargetingSetting::Representation
      
        end
      end
      
      class FirstAndThirdPartyAudienceTargetingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_and_third_party_audience_id, :numeric_string => true, as: 'firstAndThirdPartyAudienceId'
          property :recency, as: 'recency'
        end
      end
      
      class FixedBidStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_amount_micros, :numeric_string => true, as: 'bidAmountMicros'
        end
      end
      
      class FloodlightActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertiser_ids, as: 'advertiserIds'
          property :display_name, as: 'displayName'
          property :floodlight_activity_id, :numeric_string => true, as: 'floodlightActivityId'
          property :floodlight_group_id, :numeric_string => true, as: 'floodlightGroupId'
          property :name, as: 'name'
          collection :remarketing_configs, as: 'remarketingConfigs', class: Google::Apis::DisplayvideoV3::RemarketingConfig, decorator: Google::Apis::DisplayvideoV3::RemarketingConfig::Representation
      
          property :serving_status, as: 'servingStatus'
          property :ssl_required, as: 'sslRequired'
        end
      end
      
      class FloodlightGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_view_config, as: 'activeViewConfig', class: Google::Apis::DisplayvideoV3::ActiveViewVideoViewabilityMetricConfig, decorator: Google::Apis::DisplayvideoV3::ActiveViewVideoViewabilityMetricConfig::Representation
      
          hash :custom_variables, as: 'customVariables'
          property :display_name, as: 'displayName'
          property :floodlight_group_id, :numeric_string => true, as: 'floodlightGroupId'
          property :lookback_window, as: 'lookbackWindow', class: Google::Apis::DisplayvideoV3::LookbackWindow, decorator: Google::Apis::DisplayvideoV3::LookbackWindow::Representation
      
          property :name, as: 'name'
          property :web_tag_type, as: 'webTagType'
        end
      end
      
      class FrequencyCap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_impressions, as: 'maxImpressions'
          property :max_views, as: 'maxViews'
          property :time_unit, as: 'timeUnit'
          property :time_unit_count, as: 'timeUnitCount'
          property :unlimited, as: 'unlimited'
        end
      end
      
      class GenderAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gender, as: 'gender'
        end
      end
      
      class GenderTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gender, as: 'gender'
        end
      end
      
      class GenerateDefaultLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :insertion_order_id, :numeric_string => true, as: 'insertionOrderId'
          property :line_item_type, as: 'lineItemType'
          property :mobile_app, as: 'mobileApp', class: Google::Apis::DisplayvideoV3::MobileApp, decorator: Google::Apis::DisplayvideoV3::MobileApp::Representation
      
        end
      end
      
      class GeoRegionAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :geo_region_type, as: 'geoRegionType'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class GeoRegionSearchTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geo_region_query, as: 'geoRegionQuery'
        end
      end
      
      class GeoRegionTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :geo_region_type, as: 'geoRegionType'
        end
      end
      
      class GoogleAudience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :google_audience_id, :numeric_string => true, as: 'googleAudienceId'
          property :google_audience_type, as: 'googleAudienceType'
          property :name, as: 'name'
        end
      end
      
      class GoogleAudienceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :settings, as: 'settings', class: Google::Apis::DisplayvideoV3::GoogleAudienceTargetingSetting, decorator: Google::Apis::DisplayvideoV3::GoogleAudienceTargetingSetting::Representation
      
        end
      end
      
      class GoogleAudienceTargetingSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_audience_id, :numeric_string => true, as: 'googleAudienceId'
        end
      end
      
      class GoogleBytestreamMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GuaranteedOrder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_advertiser_id, :numeric_string => true, as: 'defaultAdvertiserId'
          property :default_campaign_id, :numeric_string => true, as: 'defaultCampaignId'
          property :display_name, as: 'displayName'
          property :exchange, as: 'exchange'
          property :guaranteed_order_id, as: 'guaranteedOrderId'
          property :legacy_guaranteed_order_id, as: 'legacyGuaranteedOrderId'
          property :name, as: 'name'
          property :publisher_name, as: 'publisherName'
          property :read_access_inherited, as: 'readAccessInherited'
          collection :read_advertiser_ids, as: 'readAdvertiserIds'
          property :read_write_advertiser_id, :numeric_string => true, as: 'readWriteAdvertiserId'
          property :read_write_partner_id, :numeric_string => true, as: 'readWritePartnerId'
          property :status, as: 'status', class: Google::Apis::DisplayvideoV3::GuaranteedOrderStatus, decorator: Google::Apis::DisplayvideoV3::GuaranteedOrderStatus::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GuaranteedOrderStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_status, as: 'configStatus'
          property :entity_pause_reason, as: 'entityPauseReason'
          property :entity_status, as: 'entityStatus'
        end
      end
      
      class HouseholdIncomeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :household_income, as: 'householdIncome'
        end
      end
      
      class HouseholdIncomeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :household_income, as: 'householdIncome'
        end
      end
      
      class IdFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_group_ad_ids, as: 'adGroupAdIds'
          collection :ad_group_ids, as: 'adGroupIds'
          collection :campaign_ids, as: 'campaignIds'
          collection :insertion_order_ids, as: 'insertionOrderIds'
          collection :line_item_ids, as: 'lineItemIds'
          collection :media_product_ids, as: 'mediaProductIds'
        end
      end
      
      class ImageAsset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_size, :numeric_string => true, as: 'fileSize'
          property :full_size, as: 'fullSize', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class InStreamAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_in_stream_attribute, as: 'commonInStreamAttribute', class: Google::Apis::DisplayvideoV3::CommonInStreamAttribute, decorator: Google::Apis::DisplayvideoV3::CommonInStreamAttribute::Representation
      
          hash :custom_parameters, as: 'customParameters'
        end
      end
      
      class InsertionOrder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :bid_strategy, as: 'bidStrategy', class: Google::Apis::DisplayvideoV3::BiddingStrategy, decorator: Google::Apis::DisplayvideoV3::BiddingStrategy::Representation
      
          property :budget, as: 'budget', class: Google::Apis::DisplayvideoV3::InsertionOrderBudget, decorator: Google::Apis::DisplayvideoV3::InsertionOrderBudget::Representation
      
          property :campaign_id, :numeric_string => true, as: 'campaignId'
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          property :frequency_cap, as: 'frequencyCap', class: Google::Apis::DisplayvideoV3::FrequencyCap, decorator: Google::Apis::DisplayvideoV3::FrequencyCap::Representation
      
          property :insertion_order_id, :numeric_string => true, as: 'insertionOrderId'
          property :insertion_order_type, as: 'insertionOrderType'
          property :integration_details, as: 'integrationDetails', class: Google::Apis::DisplayvideoV3::IntegrationDetails, decorator: Google::Apis::DisplayvideoV3::IntegrationDetails::Representation
      
          property :kpi, as: 'kpi', class: Google::Apis::DisplayvideoV3::Kpi, decorator: Google::Apis::DisplayvideoV3::Kpi::Representation
      
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :pacing, as: 'pacing', class: Google::Apis::DisplayvideoV3::Pacing, decorator: Google::Apis::DisplayvideoV3::Pacing::Representation
      
          collection :partner_costs, as: 'partnerCosts', class: Google::Apis::DisplayvideoV3::PartnerCost, decorator: Google::Apis::DisplayvideoV3::PartnerCost::Representation
      
          property :reservation_type, as: 'reservationType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InsertionOrderBudget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automation_type, as: 'automationType'
          collection :budget_segments, as: 'budgetSegments', class: Google::Apis::DisplayvideoV3::InsertionOrderBudgetSegment, decorator: Google::Apis::DisplayvideoV3::InsertionOrderBudgetSegment::Representation
      
          property :budget_unit, as: 'budgetUnit'
        end
      end
      
      class InsertionOrderBudgetSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget_amount_micros, :numeric_string => true, as: 'budgetAmountMicros'
          property :campaign_budget_id, :numeric_string => true, as: 'campaignBudgetId'
          property :date_range, as: 'dateRange', class: Google::Apis::DisplayvideoV3::DateRange, decorator: Google::Apis::DisplayvideoV3::DateRange::Representation
      
          property :description, as: 'description'
        end
      end
      
      class IntegralAdScience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_segment_id, as: 'customSegmentId'
          property :display_viewability, as: 'displayViewability'
          property :exclude_unrateable, as: 'excludeUnrateable'
          property :excluded_ad_fraud_risk, as: 'excludedAdFraudRisk'
          property :excluded_adult_risk, as: 'excludedAdultRisk'
          property :excluded_alcohol_risk, as: 'excludedAlcoholRisk'
          property :excluded_drugs_risk, as: 'excludedDrugsRisk'
          property :excluded_gambling_risk, as: 'excludedGamblingRisk'
          property :excluded_hate_speech_risk, as: 'excludedHateSpeechRisk'
          property :excluded_illegal_downloads_risk, as: 'excludedIllegalDownloadsRisk'
          property :excluded_offensive_language_risk, as: 'excludedOffensiveLanguageRisk'
          property :excluded_violence_risk, as: 'excludedViolenceRisk'
          property :traq_score_option, as: 'traqScoreOption'
          property :video_viewability, as: 'videoViewability'
        end
      end
      
      class IntegrationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :integration_code, as: 'integrationCode'
        end
      end
      
      class InventorySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment, as: 'commitment'
          collection :creative_configs, as: 'creativeConfigs', class: Google::Apis::DisplayvideoV3::CreativeConfig, decorator: Google::Apis::DisplayvideoV3::CreativeConfig::Representation
      
          property :deal_id, as: 'dealId'
          property :delivery_method, as: 'deliveryMethod'
          property :display_name, as: 'displayName'
          property :exchange, as: 'exchange'
          property :guaranteed_order_id, as: 'guaranteedOrderId'
          property :inventory_source_id, :numeric_string => true, as: 'inventorySourceId'
          property :inventory_source_product_type, as: 'inventorySourceProductType'
          property :inventory_source_type, as: 'inventorySourceType'
          property :name, as: 'name'
          property :publisher_name, as: 'publisherName'
          property :rate_details, as: 'rateDetails', class: Google::Apis::DisplayvideoV3::RateDetails, decorator: Google::Apis::DisplayvideoV3::RateDetails::Representation
      
          collection :read_advertiser_ids, as: 'readAdvertiserIds'
          collection :read_partner_ids, as: 'readPartnerIds'
          property :read_write_accessors, as: 'readWriteAccessors', class: Google::Apis::DisplayvideoV3::InventorySourceAccessors, decorator: Google::Apis::DisplayvideoV3::InventorySourceAccessors::Representation
      
          property :status, as: 'status', class: Google::Apis::DisplayvideoV3::InventorySourceStatus, decorator: Google::Apis::DisplayvideoV3::InventorySourceStatus::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::DisplayvideoV3::TimeRange, decorator: Google::Apis::DisplayvideoV3::TimeRange::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class InventorySourceAccessors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertisers, as: 'advertisers', class: Google::Apis::DisplayvideoV3::InventorySourceAccessorsAdvertiserAccessors, decorator: Google::Apis::DisplayvideoV3::InventorySourceAccessorsAdvertiserAccessors::Representation
      
          property :partner, as: 'partner', class: Google::Apis::DisplayvideoV3::InventorySourceAccessorsPartnerAccessor, decorator: Google::Apis::DisplayvideoV3::InventorySourceAccessorsPartnerAccessor::Representation
      
        end
      end
      
      class InventorySourceAccessorsAdvertiserAccessors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertiser_ids, as: 'advertiserIds'
        end
      end
      
      class InventorySourceAccessorsPartnerAccessor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partner_id, :numeric_string => true, as: 'partnerId'
        end
      end
      
      class InventorySourceAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inventory_source_id, :numeric_string => true, as: 'inventorySourceId'
        end
      end
      
      class InventorySourceDisplayCreativeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_size, as: 'creativeSize', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
        end
      end
      
      class InventorySourceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_source_ids, as: 'inventorySourceIds'
        end
      end
      
      class InventorySourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :inventory_source_group_id, :numeric_string => true, as: 'inventorySourceGroupId'
          property :name, as: 'name'
        end
      end
      
      class InventorySourceGroupAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inventory_source_group_id, :numeric_string => true, as: 'inventorySourceGroupId'
        end
      end
      
      class InventorySourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_status, as: 'configStatus'
          property :entity_pause_reason, as: 'entityPauseReason'
          property :entity_status, as: 'entityStatus'
          property :seller_pause_reason, as: 'sellerPauseReason'
          property :seller_status, as: 'sellerStatus'
        end
      end
      
      class InventorySourceVideoCreativeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
        end
      end
      
      class Invoice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget_invoice_grouping_id, as: 'budgetInvoiceGroupingId'
          collection :budget_summaries, as: 'budgetSummaries', class: Google::Apis::DisplayvideoV3::BudgetSummary, decorator: Google::Apis::DisplayvideoV3::BudgetSummary::Representation
      
          property :corrected_invoice_id, as: 'correctedInvoiceId'
          property :currency_code, as: 'currencyCode'
          property :display_name, as: 'displayName'
          property :due_date, as: 'dueDate', class: Google::Apis::DisplayvideoV3::Date, decorator: Google::Apis::DisplayvideoV3::Date::Representation
      
          property :invoice_id, as: 'invoiceId'
          property :invoice_type, as: 'invoiceType'
          property :issue_date, as: 'issueDate', class: Google::Apis::DisplayvideoV3::Date, decorator: Google::Apis::DisplayvideoV3::Date::Representation
      
          property :name, as: 'name'
          property :non_budget_micros, :numeric_string => true, as: 'nonBudgetMicros'
          property :payments_account_id, as: 'paymentsAccountId'
          property :payments_profile_id, as: 'paymentsProfileId'
          property :pdf_url, as: 'pdfUrl'
          property :purchase_order_number, as: 'purchaseOrderNumber'
          collection :replaced_invoice_ids, as: 'replacedInvoiceIds'
          property :service_date_range, as: 'serviceDateRange', class: Google::Apis::DisplayvideoV3::DateRange, decorator: Google::Apis::DisplayvideoV3::DateRange::Representation
      
          property :subtotal_amount_micros, :numeric_string => true, as: 'subtotalAmountMicros'
          property :total_amount_micros, :numeric_string => true, as: 'totalAmountMicros'
          property :total_tax_amount_micros, :numeric_string => true, as: 'totalTaxAmountMicros'
        end
      end
      
      class KeywordAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyword, as: 'keyword'
          property :negative, as: 'negative'
        end
      end
      
      class Kpi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kpi_algorithm_id, :numeric_string => true, as: 'kpiAlgorithmId'
          property :kpi_amount_micros, :numeric_string => true, as: 'kpiAmountMicros'
          property :kpi_percentage_micros, :numeric_string => true, as: 'kpiPercentageMicros'
          property :kpi_string, as: 'kpiString'
          property :kpi_type, as: 'kpiType'
        end
      end
      
      class LanguageAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class LanguageTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class LineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :bid_strategy, as: 'bidStrategy', class: Google::Apis::DisplayvideoV3::BiddingStrategy, decorator: Google::Apis::DisplayvideoV3::BiddingStrategy::Representation
      
          property :budget, as: 'budget', class: Google::Apis::DisplayvideoV3::LineItemBudget, decorator: Google::Apis::DisplayvideoV3::LineItemBudget::Representation
      
          property :campaign_id, :numeric_string => true, as: 'campaignId'
          property :conversion_counting, as: 'conversionCounting', class: Google::Apis::DisplayvideoV3::ConversionCountingConfig, decorator: Google::Apis::DisplayvideoV3::ConversionCountingConfig::Representation
      
          collection :creative_ids, as: 'creativeIds'
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          property :exclude_new_exchanges, as: 'excludeNewExchanges'
          property :flight, as: 'flight', class: Google::Apis::DisplayvideoV3::LineItemFlight, decorator: Google::Apis::DisplayvideoV3::LineItemFlight::Representation
      
          property :frequency_cap, as: 'frequencyCap', class: Google::Apis::DisplayvideoV3::FrequencyCap, decorator: Google::Apis::DisplayvideoV3::FrequencyCap::Representation
      
          property :insertion_order_id, :numeric_string => true, as: 'insertionOrderId'
          property :integration_details, as: 'integrationDetails', class: Google::Apis::DisplayvideoV3::IntegrationDetails, decorator: Google::Apis::DisplayvideoV3::IntegrationDetails::Representation
      
          property :line_item_id, :numeric_string => true, as: 'lineItemId'
          property :line_item_type, as: 'lineItemType'
          property :mobile_app, as: 'mobileApp', class: Google::Apis::DisplayvideoV3::MobileApp, decorator: Google::Apis::DisplayvideoV3::MobileApp::Representation
      
          property :name, as: 'name'
          property :pacing, as: 'pacing', class: Google::Apis::DisplayvideoV3::Pacing, decorator: Google::Apis::DisplayvideoV3::Pacing::Representation
      
          collection :partner_costs, as: 'partnerCosts', class: Google::Apis::DisplayvideoV3::PartnerCost, decorator: Google::Apis::DisplayvideoV3::PartnerCost::Representation
      
          property :partner_revenue_model, as: 'partnerRevenueModel', class: Google::Apis::DisplayvideoV3::PartnerRevenueModel, decorator: Google::Apis::DisplayvideoV3::PartnerRevenueModel::Representation
      
          property :reservation_type, as: 'reservationType'
          property :targeting_expansion, as: 'targetingExpansion', class: Google::Apis::DisplayvideoV3::TargetingExpansionConfig, decorator: Google::Apis::DisplayvideoV3::TargetingExpansionConfig::Representation
      
          property :update_time, as: 'updateTime'
          collection :warning_messages, as: 'warningMessages'
          property :youtube_and_partners_settings, as: 'youtubeAndPartnersSettings', class: Google::Apis::DisplayvideoV3::YoutubeAndPartnersSettings, decorator: Google::Apis::DisplayvideoV3::YoutubeAndPartnersSettings::Representation
      
        end
      end
      
      class LineItemAssignedTargetingOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assigned_targeting_option, as: 'assignedTargetingOption', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :line_item_id, :numeric_string => true, as: 'lineItemId'
        end
      end
      
      class LineItemBudget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget_allocation_type, as: 'budgetAllocationType'
          property :budget_unit, as: 'budgetUnit'
          property :max_amount, :numeric_string => true, as: 'maxAmount'
        end
      end
      
      class LineItemFlight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::DisplayvideoV3::DateRange, decorator: Google::Apis::DisplayvideoV3::DateRange::Representation
      
          property :flight_date_type, as: 'flightDateType'
        end
      end
      
      class ListAdGroupAdsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_group_ads, as: 'adGroupAds', class: Google::Apis::DisplayvideoV3::AdGroupAd, decorator: Google::Apis::DisplayvideoV3::AdGroupAd::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAdGroupAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAdGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_groups, as: 'adGroups', class: Google::Apis::DisplayvideoV3::AdGroup, decorator: Google::Apis::DisplayvideoV3::AdGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAdvertiserAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAdvertisersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertisers, as: 'advertisers', class: Google::Apis::DisplayvideoV3::Advertiser, decorator: Google::Apis::DisplayvideoV3::Advertiser::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAssignedInventorySourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_inventory_sources, as: 'assignedInventorySources', class: Google::Apis::DisplayvideoV3::AssignedInventorySource, decorator: Google::Apis::DisplayvideoV3::AssignedInventorySource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAssignedLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_locations, as: 'assignedLocations', class: Google::Apis::DisplayvideoV3::AssignedLocation, decorator: Google::Apis::DisplayvideoV3::AssignedLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCampaignAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCampaignsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :campaigns, as: 'campaigns', class: Google::Apis::DisplayvideoV3::Campaign, decorator: Google::Apis::DisplayvideoV3::Campaign::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::DisplayvideoV3::Channel, decorator: Google::Apis::DisplayvideoV3::Channel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCombinedAudiencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :combined_audiences, as: 'combinedAudiences', class: Google::Apis::DisplayvideoV3::CombinedAudience, decorator: Google::Apis::DisplayvideoV3::CombinedAudience::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCreativesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creatives, as: 'creatives', class: Google::Apis::DisplayvideoV3::Creative, decorator: Google::Apis::DisplayvideoV3::Creative::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCustomBiddingAlgorithmRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_bidding_rules, as: 'customBiddingRules', class: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRules, decorator: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithmRules::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCustomBiddingAlgorithmsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_bidding_algorithms, as: 'customBiddingAlgorithms', class: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithm, decorator: Google::Apis::DisplayvideoV3::CustomBiddingAlgorithm::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCustomBiddingScriptsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_bidding_scripts, as: 'customBiddingScripts', class: Google::Apis::DisplayvideoV3::CustomBiddingScript, decorator: Google::Apis::DisplayvideoV3::CustomBiddingScript::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCustomListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_lists, as: 'customLists', class: Google::Apis::DisplayvideoV3::CustomList, decorator: Google::Apis::DisplayvideoV3::CustomList::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFirstAndThirdPartyAudiencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :first_and_third_party_audiences, as: 'firstAndThirdPartyAudiences', class: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudience, decorator: Google::Apis::DisplayvideoV3::FirstAndThirdPartyAudience::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFloodlightActivitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :floodlight_activities, as: 'floodlightActivities', class: Google::Apis::DisplayvideoV3::FloodlightActivity, decorator: Google::Apis::DisplayvideoV3::FloodlightActivity::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGoogleAudiencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_audiences, as: 'googleAudiences', class: Google::Apis::DisplayvideoV3::GoogleAudience, decorator: Google::Apis::DisplayvideoV3::GoogleAudience::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGuaranteedOrdersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guaranteed_orders, as: 'guaranteedOrders', class: Google::Apis::DisplayvideoV3::GuaranteedOrder, decorator: Google::Apis::DisplayvideoV3::GuaranteedOrder::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInsertionOrderAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInsertionOrdersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insertion_orders, as: 'insertionOrders', class: Google::Apis::DisplayvideoV3::InsertionOrder, decorator: Google::Apis::DisplayvideoV3::InsertionOrder::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInventorySourceGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_source_groups, as: 'inventorySourceGroups', class: Google::Apis::DisplayvideoV3::InventorySourceGroup, decorator: Google::Apis::DisplayvideoV3::InventorySourceGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInventorySourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_sources, as: 'inventorySources', class: Google::Apis::DisplayvideoV3::InventorySource, decorator: Google::Apis::DisplayvideoV3::InventorySource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInvoicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invoices, as: 'invoices', class: Google::Apis::DisplayvideoV3::Invoice, decorator: Google::Apis::DisplayvideoV3::Invoice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLineItemAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLineItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :line_items, as: 'lineItems', class: Google::Apis::DisplayvideoV3::LineItem, decorator: Google::Apis::DisplayvideoV3::LineItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_lists, as: 'locationLists', class: Google::Apis::DisplayvideoV3::LocationList, decorator: Google::Apis::DisplayvideoV3::LocationList::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNegativeKeywordListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :negative_keyword_lists, as: 'negativeKeywordLists', class: Google::Apis::DisplayvideoV3::NegativeKeywordList, decorator: Google::Apis::DisplayvideoV3::NegativeKeywordList::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNegativeKeywordsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :negative_keywords, as: 'negativeKeywords', class: Google::Apis::DisplayvideoV3::NegativeKeyword, decorator: Google::Apis::DisplayvideoV3::NegativeKeyword::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPartnerAssignedTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_targeting_options, as: 'assignedTargetingOptions', class: Google::Apis::DisplayvideoV3::AssignedTargetingOption, decorator: Google::Apis::DisplayvideoV3::AssignedTargetingOption::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPartnersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partners, as: 'partners', class: Google::Apis::DisplayvideoV3::Partner, decorator: Google::Apis::DisplayvideoV3::Partner::Representation
      
        end
      end
      
      class ListSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sites, as: 'sites', class: Google::Apis::DisplayvideoV3::Site, decorator: Google::Apis::DisplayvideoV3::Site::Representation
      
        end
      end
      
      class ListTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :targeting_options, as: 'targetingOptions', class: Google::Apis::DisplayvideoV3::TargetingOption, decorator: Google::Apis::DisplayvideoV3::TargetingOption::Representation
      
        end
      end
      
      class ListUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :users, as: 'users', class: Google::Apis::DisplayvideoV3::User, decorator: Google::Apis::DisplayvideoV3::User::Representation
      
        end
      end
      
      class LocationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :display_name, as: 'displayName'
          property :location_list_id, :numeric_string => true, as: 'locationListId'
          property :location_type, as: 'locationType'
          property :name, as: 'name'
        end
      end
      
      class LookbackWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_days, as: 'clickDays'
          property :impression_days, as: 'impressionDays'
        end
      end
      
      class LookupInvoiceCurrencyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class MastheadAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoplay_video_duration, as: 'autoplayVideoDuration'
          property :autoplay_video_start_millisecond, :numeric_string => true, as: 'autoplayVideoStartMillisecond'
          property :call_to_action_button_label, as: 'callToActionButtonLabel'
          property :call_to_action_final_url, as: 'callToActionFinalUrl'
          property :call_to_action_tracking_url, as: 'callToActionTrackingUrl'
          collection :companion_youtube_videos, as: 'companionYoutubeVideos', class: Google::Apis::DisplayvideoV3::YoutubeVideoDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoDetails::Representation
      
          property :description, as: 'description'
          property :headline, as: 'headline'
          property :show_channel_art, as: 'showChannelArt'
          property :video, as: 'video', class: Google::Apis::DisplayvideoV3::YoutubeVideoDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoDetails::Representation
      
          property :video_aspect_ratio, as: 'videoAspectRatio'
        end
      end
      
      class MaximizeSpendBidStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_bidding_algorithm_id, :numeric_string => true, as: 'customBiddingAlgorithmId'
          property :max_average_cpm_bid_amount_micros, :numeric_string => true, as: 'maxAverageCpmBidAmountMicros'
          property :performance_goal_type, as: 'performanceGoalType'
          property :raise_bid_for_deals, as: 'raiseBidForDeals'
        end
      end
      
      class MeasurementConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dv360_to_cm_cost_reporting_enabled, as: 'dv360ToCmCostReportingEnabled'
          property :dv360_to_cm_data_sharing_enabled, as: 'dv360ToCmDataSharingEnabled'
        end
      end
      
      class MobileApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :display_name, as: 'displayName'
          property :platform, as: 'platform'
          property :publisher, as: 'publisher'
        end
      end
      
      class MobileDeviceIdList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent, as: 'consent', class: Google::Apis::DisplayvideoV3::Consent, decorator: Google::Apis::DisplayvideoV3::Consent::Representation
      
          collection :mobile_device_ids, as: 'mobileDeviceIds'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class NativeContentPositionAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_position, as: 'contentPosition'
        end
      end
      
      class NativeContentPositionTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_position, as: 'contentPosition'
        end
      end
      
      class NegativeKeyword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyword_value, as: 'keywordValue'
          property :name, as: 'name'
        end
      end
      
      class NegativeKeywordList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :negative_keyword_list_id, :numeric_string => true, as: 'negativeKeywordListId'
          property :targeted_line_item_count, :numeric_string => true, as: 'targetedLineItemCount'
        end
      end
      
      class NegativeKeywordListAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negative_keyword_list_id, :numeric_string => true, as: 'negativeKeywordListId'
        end
      end
      
      class NonSkippableAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_in_stream_attribute, as: 'commonInStreamAttribute', class: Google::Apis::DisplayvideoV3::CommonInStreamAttribute, decorator: Google::Apis::DisplayvideoV3::CommonInStreamAttribute::Representation
      
          hash :custom_parameters, as: 'customParameters'
        end
      end
      
      class ObaIcon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :dimensions, as: 'dimensions', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
          property :landing_page_url, as: 'landingPageUrl'
          property :position, as: 'position'
          property :program, as: 'program'
          property :resource_mime_type, as: 'resourceMimeType'
          property :resource_url, as: 'resourceUrl'
          property :view_tracking_url, as: 'viewTrackingUrl'
        end
      end
      
      class OmidAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :omid, as: 'omid'
        end
      end
      
      class OmidTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :omid, as: 'omid'
        end
      end
      
      class OnScreenPositionAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_type, as: 'adType'
          property :on_screen_position, as: 'onScreenPosition'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class OnScreenPositionTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_screen_position, as: 'onScreenPosition'
        end
      end
      
      class OperatingSystemAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :negative, as: 'negative'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class OperatingSystemTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DisplayvideoV3::Status, decorator: Google::Apis::DisplayvideoV3::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Pacing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_max_impressions, :numeric_string => true, as: 'dailyMaxImpressions'
          property :daily_max_micros, :numeric_string => true, as: 'dailyMaxMicros'
          property :pacing_period, as: 'pacingPeriod'
          property :pacing_type, as: 'pacingType'
        end
      end
      
      class ParentEntityFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_type, as: 'fileType'
          collection :filter_ids, as: 'filterIds'
          property :filter_type, as: 'filterType'
        end
      end
      
      class ParentalStatusAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parental_status, as: 'parentalStatus'
        end
      end
      
      class ParentalStatusTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parental_status, as: 'parentalStatus'
        end
      end
      
      class Partner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_server_config, as: 'adServerConfig', class: Google::Apis::DisplayvideoV3::PartnerAdServerConfig, decorator: Google::Apis::DisplayvideoV3::PartnerAdServerConfig::Representation
      
          property :billing_config, as: 'billingConfig', class: Google::Apis::DisplayvideoV3::PartnerBillingConfig, decorator: Google::Apis::DisplayvideoV3::PartnerBillingConfig::Representation
      
          property :data_access_config, as: 'dataAccessConfig', class: Google::Apis::DisplayvideoV3::PartnerDataAccessConfig, decorator: Google::Apis::DisplayvideoV3::PartnerDataAccessConfig::Representation
      
          property :display_name, as: 'displayName'
          property :entity_status, as: 'entityStatus'
          property :exchange_config, as: 'exchangeConfig', class: Google::Apis::DisplayvideoV3::ExchangeConfig, decorator: Google::Apis::DisplayvideoV3::ExchangeConfig::Representation
      
          property :general_config, as: 'generalConfig', class: Google::Apis::DisplayvideoV3::PartnerGeneralConfig, decorator: Google::Apis::DisplayvideoV3::PartnerGeneralConfig::Representation
      
          property :name, as: 'name'
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PartnerAdServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :measurement_config, as: 'measurementConfig', class: Google::Apis::DisplayvideoV3::MeasurementConfig, decorator: Google::Apis::DisplayvideoV3::MeasurementConfig::Representation
      
        end
      end
      
      class PartnerBillingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_profile_id, :numeric_string => true, as: 'billingProfileId'
        end
      end
      
      class PartnerCost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_type, as: 'costType'
          property :fee_amount, :numeric_string => true, as: 'feeAmount'
          property :fee_percentage_millis, :numeric_string => true, as: 'feePercentageMillis'
          property :fee_type, as: 'feeType'
          property :invoice_type, as: 'invoiceType'
        end
      end
      
      class PartnerDataAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdf_config, as: 'sdfConfig', class: Google::Apis::DisplayvideoV3::SdfConfig, decorator: Google::Apis::DisplayvideoV3::SdfConfig::Representation
      
        end
      end
      
      class PartnerGeneralConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class PartnerRevenueModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :markup_amount, :numeric_string => true, as: 'markupAmount'
          property :markup_type, as: 'markupType'
        end
      end
      
      class PerformanceGoal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :performance_goal_amount_micros, :numeric_string => true, as: 'performanceGoalAmountMicros'
          property :performance_goal_percentage_micros, :numeric_string => true, as: 'performanceGoalPercentageMicros'
          property :performance_goal_string, as: 'performanceGoalString'
          property :performance_goal_type, as: 'performanceGoalType'
        end
      end
      
      class PerformanceGoalBidStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_bidding_algorithm_id, :numeric_string => true, as: 'customBiddingAlgorithmId'
          property :max_average_cpm_bid_amount_micros, :numeric_string => true, as: 'maxAverageCpmBidAmountMicros'
          property :performance_goal_amount_micros, :numeric_string => true, as: 'performanceGoalAmountMicros'
          property :performance_goal_type, as: 'performanceGoalType'
        end
      end
      
      class PoiAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :proximity_radius_amount, as: 'proximityRadiusAmount'
          property :proximity_radius_unit, as: 'proximityRadiusUnit'
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class PoiSearchTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :poi_query, as: 'poiQuery'
        end
      end
      
      class PoiTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class PrismaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prisma_cpe_code, as: 'prismaCpeCode', class: Google::Apis::DisplayvideoV3::PrismaCpeCode, decorator: Google::Apis::DisplayvideoV3::PrismaCpeCode::Representation
      
          property :prisma_type, as: 'prismaType'
          property :supplier, as: 'supplier'
        end
      end
      
      class PrismaCpeCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prisma_client_code, as: 'prismaClientCode'
          property :prisma_estimate_code, as: 'prismaEstimateCode'
          property :prisma_product_code, as: 'prismaProductCode'
        end
      end
      
      class ProductFeedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_feed_disabled, as: 'isFeedDisabled'
          collection :product_match_dimensions, as: 'productMatchDimensions', class: Google::Apis::DisplayvideoV3::ProductMatchDimension, decorator: Google::Apis::DisplayvideoV3::ProductMatchDimension::Representation
      
          property :product_match_type, as: 'productMatchType'
        end
      end
      
      class ProductMatchDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_label, as: 'customLabel', class: Google::Apis::DisplayvideoV3::CustomLabel, decorator: Google::Apis::DisplayvideoV3::CustomLabel::Representation
      
          property :product_offer_id, as: 'productOfferId'
        end
      end
      
      class ProximityLocationListAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proximity_location_list_id, :numeric_string => true, as: 'proximityLocationListId'
          property :proximity_radius, as: 'proximityRadius'
          property :proximity_radius_unit, as: 'proximityRadiusUnit'
        end
      end
      
      class PublisherReviewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :publisher_name, as: 'publisherName'
          property :status, as: 'status'
        end
      end
      
      class RateDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inventory_source_rate_type, as: 'inventorySourceRateType'
          property :minimum_spend, as: 'minimumSpend', class: Google::Apis::DisplayvideoV3::Money, decorator: Google::Apis::DisplayvideoV3::Money::Representation
      
          property :rate, as: 'rate', class: Google::Apis::DisplayvideoV3::Money, decorator: Google::Apis::DisplayvideoV3::Money::Representation
      
          property :units_purchased, :numeric_string => true, as: 'unitsPurchased'
        end
      end
      
      class RegionalLocationListAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negative, as: 'negative'
          property :regional_location_list_id, :numeric_string => true, as: 'regionalLocationListId'
        end
      end
      
      class RemarketingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :remarketing_enabled, as: 'remarketingEnabled'
        end
      end
      
      class ReplaceNegativeKeywordsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :new_negative_keywords, as: 'newNegativeKeywords', class: Google::Apis::DisplayvideoV3::NegativeKeyword, decorator: Google::Apis::DisplayvideoV3::NegativeKeyword::Representation
      
        end
      end
      
      class ReplaceNegativeKeywordsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :negative_keywords, as: 'negativeKeywords', class: Google::Apis::DisplayvideoV3::NegativeKeyword, decorator: Google::Apis::DisplayvideoV3::NegativeKeyword::Representation
      
        end
      end
      
      class ReplaceSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          collection :new_sites, as: 'newSites', class: Google::Apis::DisplayvideoV3::Site, decorator: Google::Apis::DisplayvideoV3::Site::Representation
      
          property :partner_id, :numeric_string => true, as: 'partnerId'
        end
      end
      
      class ReplaceSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sites, as: 'sites', class: Google::Apis::DisplayvideoV3::Site, decorator: Google::Apis::DisplayvideoV3::Site::Representation
      
        end
      end
      
      class ReviewStatusInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_status, as: 'approvalStatus'
          property :content_and_policy_review_status, as: 'contentAndPolicyReviewStatus'
          property :creative_and_landing_page_review_status, as: 'creativeAndLandingPageReviewStatus'
          collection :exchange_review_statuses, as: 'exchangeReviewStatuses', class: Google::Apis::DisplayvideoV3::ExchangeReviewStatus, decorator: Google::Apis::DisplayvideoV3::ExchangeReviewStatus::Representation
      
          collection :publisher_review_statuses, as: 'publisherReviewStatuses', class: Google::Apis::DisplayvideoV3::PublisherReviewStatus, decorator: Google::Apis::DisplayvideoV3::PublisherReviewStatus::Representation
      
        end
      end
      
      class ScriptError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, :numeric_string => true, as: 'column'
          property :error_code, as: 'errorCode'
          property :error_message, as: 'errorMessage'
          property :line, :numeric_string => true, as: 'line'
        end
      end
      
      class SdfConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_email, as: 'adminEmail'
          property :version, as: 'version'
        end
      end
      
      class SdfDownloadTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class SdfDownloadTaskMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :version, as: 'version'
        end
      end
      
      class SearchTargetingOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :business_chain_search_terms, as: 'businessChainSearchTerms', class: Google::Apis::DisplayvideoV3::BusinessChainSearchTerms, decorator: Google::Apis::DisplayvideoV3::BusinessChainSearchTerms::Representation
      
          property :geo_region_search_terms, as: 'geoRegionSearchTerms', class: Google::Apis::DisplayvideoV3::GeoRegionSearchTerms, decorator: Google::Apis::DisplayvideoV3::GeoRegionSearchTerms::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :poi_search_terms, as: 'poiSearchTerms', class: Google::Apis::DisplayvideoV3::PoiSearchTerms, decorator: Google::Apis::DisplayvideoV3::PoiSearchTerms::Representation
      
        end
      end
      
      class SearchTargetingOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :targeting_options, as: 'targetingOptions', class: Google::Apis::DisplayvideoV3::TargetingOption, decorator: Google::Apis::DisplayvideoV3::TargetingOption::Representation
      
        end
      end
      
      class SensitiveCategoryAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :excluded_sensitive_category, as: 'excludedSensitiveCategory'
        end
      end
      
      class SensitiveCategoryTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sensitive_category, as: 'sensitiveCategory'
        end
      end
      
      class SessionPositionAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_position, as: 'sessionPosition'
        end
      end
      
      class Site
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url_or_app_id, as: 'urlOrAppId'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SubExchangeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :targeting_option_id, as: 'targetingOptionId'
        end
      end
      
      class SubExchangeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class TargetFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_count, :numeric_string => true, as: 'targetCount'
          property :time_unit, as: 'timeUnit'
          property :time_unit_count, as: 'timeUnitCount'
        end
      end
      
      class TargetingExpansionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience_expansion_level, as: 'audienceExpansionLevel'
          property :audience_expansion_seed_list_excluded, as: 'audienceExpansionSeedListExcluded'
          property :enable_optimized_targeting, as: 'enableOptimizedTargeting'
        end
      end
      
      class TargetingOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age_range_details, as: 'ageRangeDetails', class: Google::Apis::DisplayvideoV3::AgeRangeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AgeRangeTargetingOptionDetails::Representation
      
          property :app_category_details, as: 'appCategoryDetails', class: Google::Apis::DisplayvideoV3::AppCategoryTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AppCategoryTargetingOptionDetails::Representation
      
          property :audio_content_type_details, as: 'audioContentTypeDetails', class: Google::Apis::DisplayvideoV3::AudioContentTypeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AudioContentTypeTargetingOptionDetails::Representation
      
          property :authorized_seller_status_details, as: 'authorizedSellerStatusDetails', class: Google::Apis::DisplayvideoV3::AuthorizedSellerStatusTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::AuthorizedSellerStatusTargetingOptionDetails::Representation
      
          property :browser_details, as: 'browserDetails', class: Google::Apis::DisplayvideoV3::BrowserTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::BrowserTargetingOptionDetails::Representation
      
          property :business_chain_details, as: 'businessChainDetails', class: Google::Apis::DisplayvideoV3::BusinessChainTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::BusinessChainTargetingOptionDetails::Representation
      
          property :carrier_and_isp_details, as: 'carrierAndIspDetails', class: Google::Apis::DisplayvideoV3::CarrierAndIspTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::CarrierAndIspTargetingOptionDetails::Representation
      
          property :category_details, as: 'categoryDetails', class: Google::Apis::DisplayvideoV3::CategoryTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::CategoryTargetingOptionDetails::Representation
      
          property :content_duration_details, as: 'contentDurationDetails', class: Google::Apis::DisplayvideoV3::ContentDurationTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentDurationTargetingOptionDetails::Representation
      
          property :content_genre_details, as: 'contentGenreDetails', class: Google::Apis::DisplayvideoV3::ContentGenreTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentGenreTargetingOptionDetails::Representation
      
          property :content_instream_position_details, as: 'contentInstreamPositionDetails', class: Google::Apis::DisplayvideoV3::ContentInstreamPositionTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentInstreamPositionTargetingOptionDetails::Representation
      
          property :content_outstream_position_details, as: 'contentOutstreamPositionDetails', class: Google::Apis::DisplayvideoV3::ContentOutstreamPositionTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentOutstreamPositionTargetingOptionDetails::Representation
      
          property :content_stream_type_details, as: 'contentStreamTypeDetails', class: Google::Apis::DisplayvideoV3::ContentStreamTypeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ContentStreamTypeTargetingOptionDetails::Representation
      
          property :device_make_model_details, as: 'deviceMakeModelDetails', class: Google::Apis::DisplayvideoV3::DeviceMakeModelTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DeviceMakeModelTargetingOptionDetails::Representation
      
          property :device_type_details, as: 'deviceTypeDetails', class: Google::Apis::DisplayvideoV3::DeviceTypeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DeviceTypeTargetingOptionDetails::Representation
      
          property :digital_content_label_details, as: 'digitalContentLabelDetails', class: Google::Apis::DisplayvideoV3::DigitalContentLabelTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::DigitalContentLabelTargetingOptionDetails::Representation
      
          property :environment_details, as: 'environmentDetails', class: Google::Apis::DisplayvideoV3::EnvironmentTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::EnvironmentTargetingOptionDetails::Representation
      
          property :exchange_details, as: 'exchangeDetails', class: Google::Apis::DisplayvideoV3::ExchangeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ExchangeTargetingOptionDetails::Representation
      
          property :gender_details, as: 'genderDetails', class: Google::Apis::DisplayvideoV3::GenderTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::GenderTargetingOptionDetails::Representation
      
          property :geo_region_details, as: 'geoRegionDetails', class: Google::Apis::DisplayvideoV3::GeoRegionTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::GeoRegionTargetingOptionDetails::Representation
      
          property :household_income_details, as: 'householdIncomeDetails', class: Google::Apis::DisplayvideoV3::HouseholdIncomeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::HouseholdIncomeTargetingOptionDetails::Representation
      
          property :language_details, as: 'languageDetails', class: Google::Apis::DisplayvideoV3::LanguageTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::LanguageTargetingOptionDetails::Representation
      
          property :name, as: 'name'
          property :native_content_position_details, as: 'nativeContentPositionDetails', class: Google::Apis::DisplayvideoV3::NativeContentPositionTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::NativeContentPositionTargetingOptionDetails::Representation
      
          property :omid_details, as: 'omidDetails', class: Google::Apis::DisplayvideoV3::OmidTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::OmidTargetingOptionDetails::Representation
      
          property :on_screen_position_details, as: 'onScreenPositionDetails', class: Google::Apis::DisplayvideoV3::OnScreenPositionTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::OnScreenPositionTargetingOptionDetails::Representation
      
          property :operating_system_details, as: 'operatingSystemDetails', class: Google::Apis::DisplayvideoV3::OperatingSystemTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::OperatingSystemTargetingOptionDetails::Representation
      
          property :parental_status_details, as: 'parentalStatusDetails', class: Google::Apis::DisplayvideoV3::ParentalStatusTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ParentalStatusTargetingOptionDetails::Representation
      
          property :poi_details, as: 'poiDetails', class: Google::Apis::DisplayvideoV3::PoiTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::PoiTargetingOptionDetails::Representation
      
          property :sensitive_category_details, as: 'sensitiveCategoryDetails', class: Google::Apis::DisplayvideoV3::SensitiveCategoryTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::SensitiveCategoryTargetingOptionDetails::Representation
      
          property :sub_exchange_details, as: 'subExchangeDetails', class: Google::Apis::DisplayvideoV3::SubExchangeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::SubExchangeTargetingOptionDetails::Representation
      
          property :targeting_option_id, as: 'targetingOptionId'
          property :targeting_type, as: 'targetingType'
          property :user_rewarded_content_details, as: 'userRewardedContentDetails', class: Google::Apis::DisplayvideoV3::UserRewardedContentTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::UserRewardedContentTargetingOptionDetails::Representation
      
          property :video_player_size_details, as: 'videoPlayerSizeDetails', class: Google::Apis::DisplayvideoV3::VideoPlayerSizeTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::VideoPlayerSizeTargetingOptionDetails::Representation
      
          property :viewability_details, as: 'viewabilityDetails', class: Google::Apis::DisplayvideoV3::ViewabilityTargetingOptionDetails, decorator: Google::Apis::DisplayvideoV3::ViewabilityTargetingOptionDetails::Representation
      
        end
      end
      
      class ThirdPartyMeasurementConfigs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :brand_lift_vendor_configs, as: 'brandLiftVendorConfigs', class: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig, decorator: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig::Representation
      
          collection :brand_safety_vendor_configs, as: 'brandSafetyVendorConfigs', class: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig, decorator: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig::Representation
      
          collection :reach_vendor_configs, as: 'reachVendorConfigs', class: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig, decorator: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig::Representation
      
          collection :viewability_vendor_configs, as: 'viewabilityVendorConfigs', class: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig, decorator: Google::Apis::DisplayvideoV3::ThirdPartyVendorConfig::Representation
      
        end
      end
      
      class ThirdPartyOnlyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pixel_order_id_reporting_enabled, as: 'pixelOrderIdReportingEnabled'
        end
      end
      
      class ThirdPartyUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class ThirdPartyVendorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :placement_id, as: 'placementId'
          property :vendor, as: 'vendor'
        end
      end
      
      class ThirdPartyVerifierAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adloox, as: 'adloox', class: Google::Apis::DisplayvideoV3::Adloox, decorator: Google::Apis::DisplayvideoV3::Adloox::Representation
      
          property :double_verify, as: 'doubleVerify', class: Google::Apis::DisplayvideoV3::DoubleVerify, decorator: Google::Apis::DisplayvideoV3::DoubleVerify::Representation
      
          property :integral_ad_science, as: 'integralAdScience', class: Google::Apis::DisplayvideoV3::IntegralAdScience, decorator: Google::Apis::DisplayvideoV3::IntegralAdScience::Representation
      
        end
      end
      
      class TimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TimerEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reporting_name, as: 'reportingName'
        end
      end
      
      class TrackingFloodlightActivityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :floodlight_activity_id, :numeric_string => true, as: 'floodlightActivityId'
          property :post_click_lookback_window_days, as: 'postClickLookbackWindowDays'
          property :post_view_lookback_window_days, as: 'postViewLookbackWindowDays'
        end
      end
      
      class Transcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_bit_rate_kbps, :numeric_string => true, as: 'audioBitRateKbps'
          property :audio_sample_rate_hz, :numeric_string => true, as: 'audioSampleRateHz'
          property :bit_rate_kbps, :numeric_string => true, as: 'bitRateKbps'
          property :dimensions, as: 'dimensions', class: Google::Apis::DisplayvideoV3::Dimensions, decorator: Google::Apis::DisplayvideoV3::Dimensions::Representation
      
          property :file_size_bytes, :numeric_string => true, as: 'fileSizeBytes'
          property :frame_rate, as: 'frameRate'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
          property :transcoded, as: 'transcoded'
        end
      end
      
      class UniversalAdId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :registry, as: 'registry'
        end
      end
      
      class UrlAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negative, as: 'negative'
          property :url, as: 'url'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_user_roles, as: 'assignedUserRoles', class: Google::Apis::DisplayvideoV3::AssignedUserRole, decorator: Google::Apis::DisplayvideoV3::AssignedUserRole::Representation
      
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :last_login_time, as: 'lastLoginTime'
          property :name, as: 'name'
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class UserRewardedContentAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :targeting_option_id, as: 'targetingOptionId'
          property :user_rewarded_content, as: 'userRewardedContent'
        end
      end
      
      class UserRewardedContentTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_rewarded_content, as: 'userRewardedContent'
        end
      end
      
      class VideoAdSequenceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minimum_duration, as: 'minimumDuration'
          collection :steps, as: 'steps', class: Google::Apis::DisplayvideoV3::VideoAdSequenceStep, decorator: Google::Apis::DisplayvideoV3::VideoAdSequenceStep::Representation
      
        end
      end
      
      class VideoAdSequenceStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_id, :numeric_string => true, as: 'adGroupId'
          property :interaction_type, as: 'interactionType'
          property :previous_step_id, :numeric_string => true, as: 'previousStepId'
          property :step_id, :numeric_string => true, as: 'stepId'
        end
      end
      
      class VideoDiscoveryAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description1, as: 'description1'
          property :description2, as: 'description2'
          property :headline, as: 'headline'
          property :thumbnail, as: 'thumbnail'
          property :video, as: 'video', class: Google::Apis::DisplayvideoV3::YoutubeVideoDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoDetails::Representation
      
        end
      end
      
      class VideoPerformanceAd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action_button_labels, as: 'actionButtonLabels'
          collection :companion_banners, as: 'companionBanners', class: Google::Apis::DisplayvideoV3::ImageAsset, decorator: Google::Apis::DisplayvideoV3::ImageAsset::Representation
      
          hash :custom_parameters, as: 'customParameters'
          collection :descriptions, as: 'descriptions'
          property :display_url_breadcrumb1, as: 'displayUrlBreadcrumb1'
          property :display_url_breadcrumb2, as: 'displayUrlBreadcrumb2'
          property :domain, as: 'domain'
          property :final_url, as: 'finalUrl'
          collection :headlines, as: 'headlines'
          collection :long_headlines, as: 'longHeadlines'
          property :tracking_url, as: 'trackingUrl'
          collection :videos, as: 'videos', class: Google::Apis::DisplayvideoV3::YoutubeVideoDetails, decorator: Google::Apis::DisplayvideoV3::YoutubeVideoDetails::Representation
      
        end
      end
      
      class VideoPlayerSizeAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_player_size, as: 'videoPlayerSize'
        end
      end
      
      class VideoPlayerSizeTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_player_size, as: 'videoPlayerSize'
        end
      end
      
      class ViewabilityAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :viewability, as: 'viewability'
        end
      end
      
      class ViewabilityTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :viewability, as: 'viewability'
        end
      end
      
      class YoutubeAndPartnersBiddingStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_group_effective_target_cpa_source, as: 'adGroupEffectiveTargetCpaSource'
          property :ad_group_effective_target_cpa_value, :numeric_string => true, as: 'adGroupEffectiveTargetCpaValue'
          property :type, as: 'type'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class YoutubeAndPartnersInventorySourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_google_tv, as: 'includeGoogleTv'
          property :include_youtube, as: 'includeYoutube'
          property :include_youtube_video_partners, as: 'includeYoutubeVideoPartners'
        end
      end
      
      class YoutubeAndPartnersSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_category, as: 'contentCategory'
          property :effective_content_category, as: 'effectiveContentCategory'
          property :inventory_source_settings, as: 'inventorySourceSettings', class: Google::Apis::DisplayvideoV3::YoutubeAndPartnersInventorySourceConfig, decorator: Google::Apis::DisplayvideoV3::YoutubeAndPartnersInventorySourceConfig::Representation
      
          property :lead_form_id, :numeric_string => true, as: 'leadFormId'
          property :linked_merchant_id, :numeric_string => true, as: 'linkedMerchantId'
          collection :related_video_ids, as: 'relatedVideoIds'
          property :target_frequency, as: 'targetFrequency', class: Google::Apis::DisplayvideoV3::TargetFrequency, decorator: Google::Apis::DisplayvideoV3::TargetFrequency::Representation
      
          property :third_party_measurement_configs, as: 'thirdPartyMeasurementConfigs', class: Google::Apis::DisplayvideoV3::ThirdPartyMeasurementConfigs, decorator: Google::Apis::DisplayvideoV3::ThirdPartyMeasurementConfigs::Representation
      
          property :video_ad_sequence_settings, as: 'videoAdSequenceSettings', class: Google::Apis::DisplayvideoV3::VideoAdSequenceSettings, decorator: Google::Apis::DisplayvideoV3::VideoAdSequenceSettings::Representation
      
          property :view_frequency_cap, as: 'viewFrequencyCap', class: Google::Apis::DisplayvideoV3::FrequencyCap, decorator: Google::Apis::DisplayvideoV3::FrequencyCap::Representation
      
        end
      end
      
      class YoutubeChannelAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :negative, as: 'negative'
        end
      end
      
      class YoutubeVideoAssignedTargetingOptionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negative, as: 'negative'
          property :video_id, as: 'videoId'
        end
      end
      
      class YoutubeVideoDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :unavailable_reason, as: 'unavailableReason'
        end
      end
    end
  end
end
