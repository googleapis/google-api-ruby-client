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
    module ContentV2_1
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountAdsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountAutomaticImprovements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountBusinessIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountBusinessInformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountConversionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountCustomerService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountGoogleMyBusinessLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountIdentityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountImageImprovements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountImageImprovementsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountIssueImpact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountItemUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountItemUpdatesSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountReturnCarrier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountShippingImprovements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountStatusAccountLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountStatusItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountStatusProducts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountStatusStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountTax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountTaxTaxRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountYouTubeChannelLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsAuthInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsClaimWebsiteResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsCustomBatchRequestEntryLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsLinkResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsListLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsUpdateLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountsUpdateLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccounttaxCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccounttaxCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccounttaxCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccounttaxCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccounttaxListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlternateDisputeResolution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributionSettingsConversionType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BestSellers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Brand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Breakdown
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BreakdownRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltInSimpleAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltInSimpleActionAdditionalContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuiltInUserInputAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessDayConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Callout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CarrierRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CarriersCarrier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckoutSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudExportAdditionalProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Collection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectionFeaturedProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectionStatusDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectionStatusItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompetitiveVisibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversionSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Css
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoffTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Datafeed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedFetchSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedStatusError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedStatusExample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedsFetchNowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatafeedstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryAreaPostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ECommercePlatformLinkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Errors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreeListingsProgramStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreeListingsProgramStatusRegionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreeListingsProgramStatusReviewIneligibilityReasonDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreeShippingThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateRecommendationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GmbAccounts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GmbAccountsGmbAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Headers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HolidayCutoff
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HolidaysHoliday
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputFieldCheckboxInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputFieldChoiceInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputFieldChoiceInputChoiceInputOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputFieldTextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputValueCheckboxInputValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputValueChoiceInputValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputValueTextInputValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertCheckoutSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Installment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelIds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaAboutPageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaCountrySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaInventorySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaOmnichannelExperience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaOnDisplayToOrderSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaPosDataProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiaSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsGetAccessibleGmbAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsListPosDataProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsRequestGmbAccessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsRequestInventoryVerificationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsSetInventoryVerificationContactResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiasettingsSetPosDataProviderResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountReturnCarrierResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCollectionStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCollectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConversionSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCssesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMethodQuotasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPromotionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRegionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReturnPolicyOnlineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalinventoryCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalinventoryCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalinventoryCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalinventoryCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationIdSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyProgram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantCenterDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinimumOrderValueTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinimumOrderValueTableStoreCodeSetWithMov
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderTrackingSignal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderTrackingSignalLineItemDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderTrackingSignalShipmentLineItemMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderTrackingSignalShippingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentServiceProviderLinkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PickupCarrierService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PickupServicesPickupService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosDataProviders
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosDataProvidersPosDataProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosInventoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosSale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosSaleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosSaleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalCodeGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceAmount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceCompetitiveness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceInsights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductCertification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDeliveryTimeAreaDeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductIssueImpact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductShipping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductShippingDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductShippingWeight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStructuredDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStructuredTitle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductSubscriptionCost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductSustainabilityIncentive
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductTax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductUnitPricingBaseMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductUnitPricingMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductViewItemIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductViewItemIssueIssueSeverityPerDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductViewItemIssueItemIssueSeverity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductViewItemIssueItemIssueType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductWeight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Promotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionPromotionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionPromotionStatusDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionPromotionStatusPromotionIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubNotificationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RateGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Recommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecommendationCallToAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecommendationCreative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecommendationDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionGeoTargetArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionPostalCodeArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionPostalCodeAreaPostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalinventoryCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalinventoryCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalinventoryCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalinventoryCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenderAccountIssuesRequestPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenderAccountIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenderProductIssuesRequestPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenderProductIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportInteractionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestPhoneVerificationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestPhoneVerificationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestReviewFreeListingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestReviewShoppingAdsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnPolicyOnline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnPolicyOnlinePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnPolicyOnlineRestockingFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnPolicyOnlineReturnReasonCategoryInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnPolicyOnlineReturnShippingFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
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
      
      class Segments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceStoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceStoreConfigCutoffConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceStoreConfigCutoffConfigLocalCutoffTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsGetSupportedCarriersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsGetSupportedHolidaysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsGetSupportedPickupServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingsettingsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShoppingAdsProgramStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShoppingAdsProgramStatusRegionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextWithTooltip
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopicTrends
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitTableTransitTimeRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitTableTransitTimeRowTransitTimeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerActionPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerActionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteConversionSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyPhoneNumberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyPhoneNumberResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Warehouse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WarehouseBasedDeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WarehouseCutoffTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Weight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_management, as: 'accountManagement'
          collection :ads_links, as: 'adsLinks', class: Google::Apis::ContentV2_1::AccountAdsLink, decorator: Google::Apis::ContentV2_1::AccountAdsLink::Representation
      
          property :adult_content, as: 'adultContent'
          property :automatic_improvements, as: 'automaticImprovements', class: Google::Apis::ContentV2_1::AccountAutomaticImprovements, decorator: Google::Apis::ContentV2_1::AccountAutomaticImprovements::Representation
      
          collection :automatic_label_ids, as: 'automaticLabelIds'
          property :business_identity, as: 'businessIdentity', class: Google::Apis::ContentV2_1::AccountBusinessIdentity, decorator: Google::Apis::ContentV2_1::AccountBusinessIdentity::Representation
      
          property :business_information, as: 'businessInformation', class: Google::Apis::ContentV2_1::AccountBusinessInformation, decorator: Google::Apis::ContentV2_1::AccountBusinessInformation::Representation
      
          property :conversion_settings, as: 'conversionSettings', class: Google::Apis::ContentV2_1::AccountConversionSettings, decorator: Google::Apis::ContentV2_1::AccountConversionSettings::Representation
      
          property :css_id, :numeric_string => true, as: 'cssId'
          property :google_my_business_link, as: 'googleMyBusinessLink', class: Google::Apis::ContentV2_1::AccountGoogleMyBusinessLink, decorator: Google::Apis::ContentV2_1::AccountGoogleMyBusinessLink::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          collection :label_ids, as: 'labelIds'
          property :name, as: 'name'
          property :seller_id, as: 'sellerId'
          collection :users, as: 'users', class: Google::Apis::ContentV2_1::AccountUser, decorator: Google::Apis::ContentV2_1::AccountUser::Representation
      
          property :website_url, as: 'websiteUrl'
          collection :youtube_channel_links, as: 'youtubeChannelLinks', class: Google::Apis::ContentV2_1::AccountYouTubeChannelLink, decorator: Google::Apis::ContentV2_1::AccountYouTubeChannelLink::Representation
      
        end
      end
      
      class AccountAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :locality, as: 'locality'
          property :postal_code, as: 'postalCode'
          property :region, as: 'region'
          property :street_address, as: 'streetAddress'
        end
      end
      
      class AccountAdsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_id, :numeric_string => true, as: 'adsId'
          property :status, as: 'status'
        end
      end
      
      class AccountAutomaticImprovements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_improvements, as: 'imageImprovements', class: Google::Apis::ContentV2_1::AccountImageImprovements, decorator: Google::Apis::ContentV2_1::AccountImageImprovements::Representation
      
          property :item_updates, as: 'itemUpdates', class: Google::Apis::ContentV2_1::AccountItemUpdates, decorator: Google::Apis::ContentV2_1::AccountItemUpdates::Representation
      
          property :shipping_improvements, as: 'shippingImprovements', class: Google::Apis::ContentV2_1::AccountShippingImprovements, decorator: Google::Apis::ContentV2_1::AccountShippingImprovements::Representation
      
        end
      end
      
      class AccountBusinessIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :black_owned, as: 'blackOwned', class: Google::Apis::ContentV2_1::AccountIdentityType, decorator: Google::Apis::ContentV2_1::AccountIdentityType::Representation
      
          property :include_for_promotions, as: 'includeForPromotions'
          property :latino_owned, as: 'latinoOwned', class: Google::Apis::ContentV2_1::AccountIdentityType, decorator: Google::Apis::ContentV2_1::AccountIdentityType::Representation
      
          property :small_business, as: 'smallBusiness', class: Google::Apis::ContentV2_1::AccountIdentityType, decorator: Google::Apis::ContentV2_1::AccountIdentityType::Representation
      
          property :veteran_owned, as: 'veteranOwned', class: Google::Apis::ContentV2_1::AccountIdentityType, decorator: Google::Apis::ContentV2_1::AccountIdentityType::Representation
      
          property :women_owned, as: 'womenOwned', class: Google::Apis::ContentV2_1::AccountIdentityType, decorator: Google::Apis::ContentV2_1::AccountIdentityType::Representation
      
        end
      end
      
      class AccountBusinessInformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::ContentV2_1::AccountAddress, decorator: Google::Apis::ContentV2_1::AccountAddress::Representation
      
          property :customer_service, as: 'customerService', class: Google::Apis::ContentV2_1::AccountCustomerService, decorator: Google::Apis::ContentV2_1::AccountCustomerService::Representation
      
          property :korean_business_registration_number, as: 'koreanBusinessRegistrationNumber'
          property :phone_number, as: 'phoneNumber'
          property :phone_verification_status, as: 'phoneVerificationStatus'
        end
      end
      
      class AccountConversionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_listings_auto_tagging_enabled, as: 'freeListingsAutoTaggingEnabled'
        end
      end
      
      class AccountCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :purpose, as: 'purpose'
        end
      end
      
      class AccountCustomerService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :phone_number, as: 'phoneNumber'
          property :url, as: 'url'
        end
      end
      
      class AccountGoogleMyBusinessLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gmb_account_id, as: 'gmbAccountId'
          property :gmb_email, as: 'gmbEmail'
          property :status, as: 'status'
        end
      end
      
      class AccountIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregator_id, :numeric_string => true, as: 'aggregatorId'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
        end
      end
      
      class AccountIdentityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :self_identified, as: 'selfIdentified'
        end
      end
      
      class AccountImageImprovements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_image_improvements_settings, as: 'accountImageImprovementsSettings', class: Google::Apis::ContentV2_1::AccountImageImprovementsSettings, decorator: Google::Apis::ContentV2_1::AccountImageImprovementsSettings::Representation
      
          property :effective_allow_automatic_image_improvements, as: 'effectiveAllowAutomaticImageImprovements'
        end
      end
      
      class AccountImageImprovementsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_automatic_image_improvements, as: 'allowAutomaticImageImprovements'
        end
      end
      
      class AccountIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ContentV2_1::Action, decorator: Google::Apis::ContentV2_1::Action::Representation
      
          property :impact, as: 'impact', class: Google::Apis::ContentV2_1::AccountIssueImpact, decorator: Google::Apis::ContentV2_1::AccountIssueImpact::Representation
      
          property :prerendered_content, as: 'prerenderedContent'
          property :prerendered_out_of_court_dispute_settlement, as: 'prerenderedOutOfCourtDisputeSettlement'
          property :title, as: 'title'
        end
      end
      
      class AccountIssueImpact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :breakdowns, as: 'breakdowns', class: Google::Apis::ContentV2_1::Breakdown, decorator: Google::Apis::ContentV2_1::Breakdown::Representation
      
          property :message, as: 'message'
          property :severity, as: 'severity'
        end
      end
      
      class AccountItemUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_item_updates_settings, as: 'accountItemUpdatesSettings', class: Google::Apis::ContentV2_1::AccountItemUpdatesSettings, decorator: Google::Apis::ContentV2_1::AccountItemUpdatesSettings::Representation
      
          property :effective_allow_availability_updates, as: 'effectiveAllowAvailabilityUpdates'
          property :effective_allow_condition_updates, as: 'effectiveAllowConditionUpdates'
          property :effective_allow_price_updates, as: 'effectiveAllowPriceUpdates'
          property :effective_allow_strict_availability_updates, as: 'effectiveAllowStrictAvailabilityUpdates'
        end
      end
      
      class AccountItemUpdatesSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_availability_updates, as: 'allowAvailabilityUpdates'
          property :allow_condition_updates, as: 'allowConditionUpdates'
          property :allow_price_updates, as: 'allowPriceUpdates'
          property :allow_strict_availability_updates, as: 'allowStrictAvailabilityUpdates'
        end
      end
      
      class AccountLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :description, as: 'description'
          property :label_id, :numeric_string => true, as: 'labelId'
          property :label_type, as: 'labelType'
          property :name, as: 'name'
        end
      end
      
      class AccountReturnCarrier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_account_id, :numeric_string => true, as: 'carrierAccountId'
          property :carrier_account_name, as: 'carrierAccountName'
          property :carrier_account_number, as: 'carrierAccountNumber'
          property :carrier_code, as: 'carrierCode'
        end
      end
      
      class AccountShippingImprovements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_shipping_improvements, as: 'allowShippingImprovements'
        end
      end
      
      class AccountStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :account_level_issues, as: 'accountLevelIssues', class: Google::Apis::ContentV2_1::AccountStatusAccountLevelIssue, decorator: Google::Apis::ContentV2_1::AccountStatusAccountLevelIssue::Representation
      
          property :account_management, as: 'accountManagement'
          property :kind, as: 'kind'
          collection :products, as: 'products', class: Google::Apis::ContentV2_1::AccountStatusProducts, decorator: Google::Apis::ContentV2_1::AccountStatusProducts::Representation
      
          property :website_claimed, as: 'websiteClaimed'
        end
      end
      
      class AccountStatusAccountLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :destination, as: 'destination'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :id, as: 'id'
          property :severity, as: 'severity'
          property :title, as: 'title'
        end
      end
      
      class AccountStatusItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_name, as: 'attributeName'
          property :code, as: 'code'
          property :description, as: 'description'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :num_items, :numeric_string => true, as: 'numItems'
          property :resolution, as: 'resolution'
          property :servability, as: 'servability'
        end
      end
      
      class AccountStatusProducts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :country, as: 'country'
          property :destination, as: 'destination'
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::ContentV2_1::AccountStatusItemLevelIssue, decorator: Google::Apis::ContentV2_1::AccountStatusItemLevelIssue::Representation
      
          property :statistics, as: 'statistics', class: Google::Apis::ContentV2_1::AccountStatusStatistics, decorator: Google::Apis::ContentV2_1::AccountStatusStatistics::Representation
      
        end
      end
      
      class AccountStatusStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, :numeric_string => true, as: 'active'
          property :disapproved, :numeric_string => true, as: 'disapproved'
          property :expiring, :numeric_string => true, as: 'expiring'
          property :pending, :numeric_string => true, as: 'pending'
        end
      end
      
      class AccountTax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :kind, as: 'kind'
          collection :rules, as: 'rules', class: Google::Apis::ContentV2_1::AccountTaxTaxRule, decorator: Google::Apis::ContentV2_1::AccountTaxTaxRule::Representation
      
        end
      end
      
      class AccountTaxTaxRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, :numeric_string => true, as: 'locationId'
          property :rate_percent, as: 'ratePercent'
          property :shipping_taxed, as: 'shippingTaxed'
          property :use_global_rate, as: 'useGlobalRate'
        end
      end
      
      class AccountUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin, as: 'admin'
          property :email_address, as: 'emailAddress'
          property :order_manager, as: 'orderManager'
          property :payments_analyst, as: 'paymentsAnalyst'
          property :payments_manager, as: 'paymentsManager'
          property :read_only, as: 'readOnly'
          property :reporting_manager, as: 'reportingManager'
        end
      end
      
      class AccountYouTubeChannelLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :status, as: 'status'
        end
      end
      
      class AccountsAuthInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_identifiers, as: 'accountIdentifiers', class: Google::Apis::ContentV2_1::AccountIdentifier, decorator: Google::Apis::ContentV2_1::AccountIdentifier::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountsClaimWebsiteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class AccountsCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntry::Representation
      
        end
      end
      
      class AccountsCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ContentV2_1::Account, decorator: Google::Apis::ContentV2_1::Account::Representation
      
          property :account_id, :numeric_string => true, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :force, as: 'force'
          collection :label_ids, as: 'labelIds'
          property :link_request, as: 'linkRequest', class: Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntryLinkRequest, decorator: Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntryLinkRequest::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :overwrite, as: 'overwrite'
          property :view, as: 'view'
        end
      end
      
      class AccountsCustomBatchRequestEntryLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :link_type, as: 'linkType'
          property :linked_account_id, as: 'linkedAccountId'
          collection :services, as: 'services'
        end
      end
      
      class AccountsCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::AccountsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::AccountsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountsCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ContentV2_1::Account, decorator: Google::Apis::ContentV2_1::Account::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountsLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :e_commerce_platform_link_info, as: 'eCommercePlatformLinkInfo', class: Google::Apis::ContentV2_1::ECommercePlatformLinkInfo, decorator: Google::Apis::ContentV2_1::ECommercePlatformLinkInfo::Representation
      
          property :link_type, as: 'linkType'
          property :linked_account_id, as: 'linkedAccountId'
          property :payment_service_provider_link_info, as: 'paymentServiceProviderLinkInfo', class: Google::Apis::ContentV2_1::PaymentServiceProviderLinkInfo, decorator: Google::Apis::ContentV2_1::PaymentServiceProviderLinkInfo::Representation
      
          collection :services, as: 'services'
        end
      end
      
      class AccountsLinkResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class AccountsListLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :links, as: 'links', class: Google::Apis::ContentV2_1::LinkedAccount, decorator: Google::Apis::ContentV2_1::LinkedAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class AccountsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::Account, decorator: Google::Apis::ContentV2_1::Account::Representation
      
        end
      end
      
      class AccountsUpdateLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_ids, as: 'labelIds'
        end
      end
      
      class AccountsUpdateLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class AccountstatusesCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequestEntry::Representation
      
        end
      end
      
      class AccountstatusesCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :batch_id, as: 'batchId'
          collection :destinations, as: 'destinations'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      class AccountstatusesCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountstatusesCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_status, as: 'accountStatus', class: Google::Apis::ContentV2_1::AccountStatus, decorator: Google::Apis::ContentV2_1::AccountStatus::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
        end
      end
      
      class AccountstatusesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::AccountStatus, decorator: Google::Apis::ContentV2_1::AccountStatus::Representation
      
        end
      end
      
      class AccounttaxCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::AccounttaxCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::AccounttaxCustomBatchRequestEntry::Representation
      
        end
      end
      
      class AccounttaxCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :account_tax, as: 'accountTax', class: Google::Apis::ContentV2_1::AccountTax, decorator: Google::Apis::ContentV2_1::AccountTax::Representation
      
          property :batch_id, as: 'batchId'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      class AccounttaxCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::AccounttaxCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::AccounttaxCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccounttaxCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_tax, as: 'accountTax', class: Google::Apis::ContentV2_1::AccountTax, decorator: Google::Apis::ContentV2_1::AccountTax::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccounttaxListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::AccountTax, decorator: Google::Apis::ContentV2_1::AccountTax::Representation
      
        end
      end
      
      class Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builtin_simple_action, as: 'builtinSimpleAction', class: Google::Apis::ContentV2_1::BuiltInSimpleAction, decorator: Google::Apis::ContentV2_1::BuiltInSimpleAction::Representation
      
          property :builtin_user_input_action, as: 'builtinUserInputAction', class: Google::Apis::ContentV2_1::BuiltInUserInputAction, decorator: Google::Apis::ContentV2_1::BuiltInUserInputAction::Representation
      
          property :button_label, as: 'buttonLabel'
          property :external_action, as: 'externalAction', class: Google::Apis::ContentV2_1::ExternalAction, decorator: Google::Apis::ContentV2_1::ExternalAction::Representation
      
          property :is_available, as: 'isAvailable'
          collection :reasons, as: 'reasons', class: Google::Apis::ContentV2_1::ActionReason, decorator: Google::Apis::ContentV2_1::ActionReason::Representation
      
        end
      end
      
      class ActionFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialog_button_label, as: 'dialogButtonLabel'
          property :dialog_callout, as: 'dialogCallout', class: Google::Apis::ContentV2_1::Callout, decorator: Google::Apis::ContentV2_1::Callout::Representation
      
          property :dialog_message, as: 'dialogMessage', class: Google::Apis::ContentV2_1::TextWithTooltip, decorator: Google::Apis::ContentV2_1::TextWithTooltip::Representation
      
          property :dialog_title, as: 'dialogTitle'
          property :id, as: 'id'
          collection :inputs, as: 'inputs', class: Google::Apis::ContentV2_1::InputField, decorator: Google::Apis::ContentV2_1::InputField::Representation
      
          property :label, as: 'label'
        end
      end
      
      class ActionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_flow_id, as: 'actionFlowId'
          collection :input_values, as: 'inputValues', class: Google::Apis::ContentV2_1::InputValue, decorator: Google::Apis::ContentV2_1::InputValue::Representation
      
        end
      end
      
      class ActionReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ContentV2_1::Action, decorator: Google::Apis::ContentV2_1::Action::Representation
      
          property :detail, as: 'detail'
          property :message, as: 'message'
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :administrative_area, as: 'administrativeArea'
          property :city, as: 'city'
          property :country, as: 'country'
          property :postal_code, as: 'postalCode'
          property :street_address, as: 'streetAddress'
        end
      end
      
      class AlternateDisputeResolution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :uri, as: 'uri'
        end
      end
      
      class AttributionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_lookback_window_in_days, as: 'attributionLookbackWindowInDays'
          property :attribution_model, as: 'attributionModel'
          collection :conversion_type, as: 'conversionType', class: Google::Apis::ContentV2_1::AttributionSettingsConversionType, decorator: Google::Apis::ContentV2_1::AttributionSettingsConversionType::Representation
      
        end
      end
      
      class AttributionSettingsConversionType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_in_reporting, as: 'includeInReporting'
          property :name, as: 'name'
        end
      end
      
      class BestSellers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, :numeric_string => true, as: 'categoryId'
          property :country_code, as: 'countryCode'
          property :previous_rank, :numeric_string => true, as: 'previousRank'
          property :previous_relative_demand, as: 'previousRelativeDemand'
          property :rank, :numeric_string => true, as: 'rank'
          property :relative_demand, as: 'relativeDemand'
          property :relative_demand_change, as: 'relativeDemandChange'
          property :report_date, as: 'reportDate', class: Google::Apis::ContentV2_1::Date, decorator: Google::Apis::ContentV2_1::Date::Representation
      
          property :report_granularity, as: 'reportGranularity'
        end
      end
      
      class Brand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Breakdown
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          collection :regions, as: 'regions', class: Google::Apis::ContentV2_1::BreakdownRegion, decorator: Google::Apis::ContentV2_1::BreakdownRegion::Representation
      
        end
      end
      
      class BreakdownRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :name, as: 'name'
        end
      end
      
      class BuiltInSimpleAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_content, as: 'additionalContent', class: Google::Apis::ContentV2_1::BuiltInSimpleActionAdditionalContent, decorator: Google::Apis::ContentV2_1::BuiltInSimpleActionAdditionalContent::Representation
      
          property :attribute_code, as: 'attributeCode'
          property :type, as: 'type'
        end
      end
      
      class BuiltInSimpleActionAdditionalContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paragraphs, as: 'paragraphs'
          property :title, as: 'title'
        end
      end
      
      class BuiltInUserInputAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_context, as: 'actionContext'
          collection :flows, as: 'flows', class: Google::Apis::ContentV2_1::ActionFlow, decorator: Google::Apis::ContentV2_1::ActionFlow::Representation
      
        end
      end
      
      class BusinessDayConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_days, as: 'businessDays'
        end
      end
      
      class Callout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_message, as: 'fullMessage', class: Google::Apis::ContentV2_1::TextWithTooltip, decorator: Google::Apis::ContentV2_1::TextWithTooltip::Representation
      
          property :style_hint, as: 'styleHint'
        end
      end
      
      class CarrierRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_name, as: 'carrierName'
          property :carrier_service, as: 'carrierService'
          property :flat_adjustment, as: 'flatAdjustment', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :name, as: 'name'
          property :origin_postal_code, as: 'originPostalCode'
          property :percentage_adjustment, as: 'percentageAdjustment'
        end
      end
      
      class CarriersCarrier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          collection :edd_services, as: 'eddServices'
          property :name, as: 'name'
          collection :services, as: 'services'
        end
      end
      
      class CheckoutSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_enrollment_state, as: 'effectiveEnrollmentState'
          property :effective_review_state, as: 'effectiveReviewState'
          property :effective_uri_settings, as: 'effectiveUriSettings', class: Google::Apis::ContentV2_1::UrlSettings, decorator: Google::Apis::ContentV2_1::UrlSettings::Representation
      
          property :enrollment_state, as: 'enrollmentState'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :review_state, as: 'reviewState'
          property :uri_settings, as: 'uriSettings', class: Google::Apis::ContentV2_1::UrlSettings, decorator: Google::Apis::ContentV2_1::UrlSettings::Representation
      
        end
      end
      
      class CloudExportAdditionalProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          collection :float_value, as: 'floatValue'
          collection :int_value, as: 'intValue'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :property_name, as: 'propertyName'
          collection :text_value, as: 'textValue'
          property :unit_code, as: 'unitCode'
        end
      end
      
      class Collection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          collection :featured_product, as: 'featuredProduct', class: Google::Apis::ContentV2_1::CollectionFeaturedProduct, decorator: Google::Apis::ContentV2_1::CollectionFeaturedProduct::Representation
      
          collection :headline, as: 'headline'
          property :id, as: 'id'
          collection :image_link, as: 'imageLink'
          property :language, as: 'language'
          property :link, as: 'link'
          property :mobile_link, as: 'mobileLink'
          property :product_country, as: 'productCountry'
        end
      end
      
      class CollectionFeaturedProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offer_id, as: 'offerId'
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class CollectionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_level_issuses, as: 'collectionLevelIssuses', class: Google::Apis::ContentV2_1::CollectionStatusItemLevelIssue, decorator: Google::Apis::ContentV2_1::CollectionStatusItemLevelIssue::Representation
      
          property :creation_date, as: 'creationDate'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::ContentV2_1::CollectionStatusDestinationStatus, decorator: Google::Apis::ContentV2_1::CollectionStatusDestinationStatus::Representation
      
          property :id, as: 'id'
          property :last_update_date, as: 'lastUpdateDate'
        end
      end
      
      class CollectionStatusDestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :approved_countries, as: 'approvedCountries'
          property :destination, as: 'destination'
          collection :disapproved_countries, as: 'disapprovedCountries'
          collection :pending_countries, as: 'pendingCountries'
          property :status, as: 'status'
        end
      end
      
      class CollectionStatusItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_countries, as: 'applicableCountries'
          property :attribute_name, as: 'attributeName'
          property :code, as: 'code'
          property :description, as: 'description'
          property :destination, as: 'destination'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :resolution, as: 'resolution'
          property :servability, as: 'servability'
        end
      end
      
      class CompetitiveVisibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_organic_ratio, as: 'adsOrganicRatio'
          property :category_benchmark_visibility_trend, as: 'categoryBenchmarkVisibilityTrend'
          property :category_id, :numeric_string => true, as: 'categoryId'
          property :country_code, as: 'countryCode'
          property :date, as: 'date', class: Google::Apis::ContentV2_1::Date, decorator: Google::Apis::ContentV2_1::Date::Representation
      
          property :domain, as: 'domain'
          property :higher_position_rate, as: 'higherPositionRate'
          property :is_your_domain, as: 'isYourDomain'
          property :page_overlap_rate, as: 'pageOverlapRate'
          property :rank, :numeric_string => true, as: 'rank'
          property :relative_visibility, as: 'relativeVisibility'
          property :traffic_source, as: 'trafficSource'
          property :your_domain_visibility_trend, as: 'yourDomainVisibilityTrend'
        end
      end
      
      class ConversionSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversion_source_id, as: 'conversionSourceId'
          property :expire_time, as: 'expireTime'
          property :google_analytics_link, as: 'googleAnalyticsLink', class: Google::Apis::ContentV2_1::GoogleAnalyticsLink, decorator: Google::Apis::ContentV2_1::GoogleAnalyticsLink::Representation
      
          property :merchant_center_destination, as: 'merchantCenterDestination', class: Google::Apis::ContentV2_1::MerchantCenterDestination, decorator: Google::Apis::ContentV2_1::MerchantCenterDestination::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Css
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :css_domain_id, :numeric_string => true, as: 'cssDomainId'
          property :css_group_id, :numeric_string => true, as: 'cssGroupId'
          property :display_name, as: 'displayName'
          property :full_name, as: 'fullName'
          property :homepage_uri, as: 'homepageUri'
          collection :label_ids, as: 'labelIds'
        end
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_values, as: 'groupValues', class: Google::Apis::ContentV2_1::CustomAttribute, decorator: Google::Apis::ContentV2_1::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class CutoffTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :timezone, as: 'timezone'
        end
      end
      
      class Datafeed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_language, as: 'attributeLanguage'
          property :content_type, as: 'contentType'
          property :fetch_schedule, as: 'fetchSchedule', class: Google::Apis::ContentV2_1::DatafeedFetchSchedule, decorator: Google::Apis::ContentV2_1::DatafeedFetchSchedule::Representation
      
          property :file_name, as: 'fileName'
          property :format, as: 'format', class: Google::Apis::ContentV2_1::DatafeedFormat, decorator: Google::Apis::ContentV2_1::DatafeedFormat::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :targets, as: 'targets', class: Google::Apis::ContentV2_1::DatafeedTarget, decorator: Google::Apis::ContentV2_1::DatafeedTarget::Representation
      
        end
      end
      
      class DatafeedFetchSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_month, as: 'dayOfMonth'
          property :fetch_url, as: 'fetchUrl'
          property :hour, as: 'hour'
          property :minute_of_hour, as: 'minuteOfHour'
          property :password, as: 'password'
          property :paused, as: 'paused'
          property :time_zone, as: 'timeZone'
          property :username, as: 'username'
          property :weekday, as: 'weekday'
        end
      end
      
      class DatafeedFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_delimiter, as: 'columnDelimiter'
          property :file_encoding, as: 'fileEncoding'
          property :quoting_mode, as: 'quotingMode'
        end
      end
      
      class DatafeedStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :datafeed_id, :numeric_string => true, as: 'datafeedId'
          collection :errors, as: 'errors', class: Google::Apis::ContentV2_1::DatafeedStatusError, decorator: Google::Apis::ContentV2_1::DatafeedStatusError::Representation
      
          property :feed_label, as: 'feedLabel'
          property :items_total, :numeric_string => true, as: 'itemsTotal'
          property :items_valid, :numeric_string => true, as: 'itemsValid'
          property :kind, as: 'kind'
          property :language, as: 'language'
          property :last_upload_date, as: 'lastUploadDate'
          property :processing_status, as: 'processingStatus'
          collection :warnings, as: 'warnings', class: Google::Apis::ContentV2_1::DatafeedStatusError, decorator: Google::Apis::ContentV2_1::DatafeedStatusError::Representation
      
        end
      end
      
      class DatafeedStatusError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :count, :numeric_string => true, as: 'count'
          collection :examples, as: 'examples', class: Google::Apis::ContentV2_1::DatafeedStatusExample, decorator: Google::Apis::ContentV2_1::DatafeedStatusExample::Representation
      
          property :message, as: 'message'
        end
      end
      
      class DatafeedStatusExample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :line_number, :numeric_string => true, as: 'lineNumber'
          property :value, as: 'value'
        end
      end
      
      class DatafeedTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          collection :excluded_destinations, as: 'excludedDestinations'
          property :feed_label, as: 'feedLabel'
          collection :included_destinations, as: 'includedDestinations'
          property :language, as: 'language'
          collection :target_countries, as: 'targetCountries'
        end
      end
      
      class DatafeedsCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::DatafeedsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::DatafeedsCustomBatchRequestEntry::Representation
      
        end
      end
      
      class DatafeedsCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed, as: 'datafeed', class: Google::Apis::ContentV2_1::Datafeed, decorator: Google::Apis::ContentV2_1::Datafeed::Representation
      
          property :datafeed_id, :numeric_string => true, as: 'datafeedId'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      class DatafeedsCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::DatafeedsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::DatafeedsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class DatafeedsCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed, as: 'datafeed', class: Google::Apis::ContentV2_1::Datafeed, decorator: Google::Apis::ContentV2_1::Datafeed::Representation
      
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
        end
      end
      
      class DatafeedsFetchNowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class DatafeedsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::Datafeed, decorator: Google::Apis::ContentV2_1::Datafeed::Representation
      
        end
      end
      
      class DatafeedstatusesCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequestEntry::Representation
      
        end
      end
      
      class DatafeedstatusesCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :country, as: 'country'
          property :datafeed_id, :numeric_string => true, as: 'datafeedId'
          property :feed_label, as: 'feedLabel'
          property :language, as: 'language'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      class DatafeedstatusesCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class DatafeedstatusesCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed_status, as: 'datafeedStatus', class: Google::Apis::ContentV2_1::DatafeedStatus, decorator: Google::Apis::ContentV2_1::DatafeedStatus::Representation
      
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
        end
      end
      
      class DatafeedstatusesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::DatafeedStatus, decorator: Google::Apis::ContentV2_1::DatafeedStatus::Representation
      
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
      
      class DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::ContentV2_1::TimeZone, decorator: Google::Apis::ContentV2_1::TimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class DeliveryArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :postal_code_range, as: 'postalCodeRange', class: Google::Apis::ContentV2_1::DeliveryAreaPostalCodeRange, decorator: Google::Apis::ContentV2_1::DeliveryAreaPostalCodeRange::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class DeliveryAreaPostalCodeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_postal_code, as: 'firstPostalCode'
          property :last_postal_code, as: 'lastPostalCode'
        end
      end
      
      class DeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cutoff_time, as: 'cutoffTime', class: Google::Apis::ContentV2_1::CutoffTime, decorator: Google::Apis::ContentV2_1::CutoffTime::Representation
      
          property :handling_business_day_config, as: 'handlingBusinessDayConfig', class: Google::Apis::ContentV2_1::BusinessDayConfig, decorator: Google::Apis::ContentV2_1::BusinessDayConfig::Representation
      
          collection :holiday_cutoffs, as: 'holidayCutoffs', class: Google::Apis::ContentV2_1::HolidayCutoff, decorator: Google::Apis::ContentV2_1::HolidayCutoff::Representation
      
          property :max_handling_time_in_days, as: 'maxHandlingTimeInDays'
          property :max_transit_time_in_days, as: 'maxTransitTimeInDays'
          property :min_handling_time_in_days, as: 'minHandlingTimeInDays'
          property :min_transit_time_in_days, as: 'minTransitTimeInDays'
          property :transit_business_day_config, as: 'transitBusinessDayConfig', class: Google::Apis::ContentV2_1::BusinessDayConfig, decorator: Google::Apis::ContentV2_1::BusinessDayConfig::Representation
      
          property :transit_time_table, as: 'transitTimeTable', class: Google::Apis::ContentV2_1::TransitTable, decorator: Google::Apis::ContentV2_1::TransitTable::Representation
      
          collection :warehouse_based_delivery_times, as: 'warehouseBasedDeliveryTimes', class: Google::Apis::ContentV2_1::WarehouseBasedDeliveryTime, decorator: Google::Apis::ContentV2_1::WarehouseBasedDeliveryTime::Representation
      
        end
      end
      
      class Distance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class ECommercePlatformLinkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_account_id, as: 'externalAccountId'
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class Errors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::ContentV2_1::Error, decorator: Google::Apis::ContentV2_1::Error::Representation
      
          property :message, as: 'message'
        end
      end
      
      class ExternalAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class FreeListingsProgramStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_state, as: 'globalState'
          collection :region_statuses, as: 'regionStatuses', class: Google::Apis::ContentV2_1::FreeListingsProgramStatusRegionStatus, decorator: Google::Apis::ContentV2_1::FreeListingsProgramStatusRegionStatus::Representation
      
        end
      end
      
      class FreeListingsProgramStatusRegionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disapproval_date, as: 'disapprovalDate'
          property :eligibility_status, as: 'eligibilityStatus'
          collection :onboarding_issues, as: 'onboardingIssues'
          collection :region_codes, as: 'regionCodes'
          property :review_eligibility_status, as: 'reviewEligibilityStatus'
          property :review_ineligibility_reason, as: 'reviewIneligibilityReason'
          property :review_ineligibility_reason_description, as: 'reviewIneligibilityReasonDescription'
          property :review_ineligibility_reason_details, as: 'reviewIneligibilityReasonDetails', class: Google::Apis::ContentV2_1::FreeListingsProgramStatusReviewIneligibilityReasonDetails, decorator: Google::Apis::ContentV2_1::FreeListingsProgramStatusReviewIneligibilityReasonDetails::Representation
      
          collection :review_issues, as: 'reviewIssues'
        end
      end
      
      class FreeListingsProgramStatusReviewIneligibilityReasonDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cooldown_time, as: 'cooldownTime'
        end
      end
      
      class FreeShippingThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :price_threshold, as: 'priceThreshold', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
        end
      end
      
      class GenerateRecommendationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :recommendations, as: 'recommendations', class: Google::Apis::ContentV2_1::Recommendation, decorator: Google::Apis::ContentV2_1::Recommendation::Representation
      
          property :response_token, as: 'responseToken'
        end
      end
      
      class GmbAccounts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          collection :gmb_accounts, as: 'gmbAccounts', class: Google::Apis::ContentV2_1::GmbAccountsGmbAccount, decorator: Google::Apis::ContentV2_1::GmbAccountsGmbAccount::Representation
      
        end
      end
      
      class GmbAccountsGmbAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :listing_count, :numeric_string => true, as: 'listingCount'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleAnalyticsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_settings, as: 'attributionSettings', class: Google::Apis::ContentV2_1::AttributionSettings, decorator: Google::Apis::ContentV2_1::AttributionSettings::Representation
      
          property :property_id, :numeric_string => true, as: 'propertyId'
          property :property_name, as: 'propertyName'
        end
      end
      
      class Headers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ContentV2_1::LocationIdSet, decorator: Google::Apis::ContentV2_1::LocationIdSet::Representation
      
          collection :number_of_items, as: 'numberOfItems'
          collection :postal_code_group_names, as: 'postalCodeGroupNames'
          collection :prices, as: 'prices', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          collection :weights, as: 'weights', class: Google::Apis::ContentV2_1::Weight, decorator: Google::Apis::ContentV2_1::Weight::Representation
      
        end
      end
      
      class HolidayCutoff
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deadline_date, as: 'deadlineDate'
          property :deadline_hour, as: 'deadlineHour'
          property :deadline_timezone, as: 'deadlineTimezone'
          property :holiday_id, as: 'holidayId'
          property :visible_from_date, as: 'visibleFromDate'
        end
      end
      
      class HolidaysHoliday
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :date, as: 'date'
          property :delivery_guarantee_date, as: 'deliveryGuaranteeDate'
          property :delivery_guarantee_hour, :numeric_string => true, as: 'deliveryGuaranteeHour'
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class InputField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkbox_input, as: 'checkboxInput', class: Google::Apis::ContentV2_1::InputFieldCheckboxInput, decorator: Google::Apis::ContentV2_1::InputFieldCheckboxInput::Representation
      
          property :choice_input, as: 'choiceInput', class: Google::Apis::ContentV2_1::InputFieldChoiceInput, decorator: Google::Apis::ContentV2_1::InputFieldChoiceInput::Representation
      
          property :id, as: 'id'
          property :label, as: 'label', class: Google::Apis::ContentV2_1::TextWithTooltip, decorator: Google::Apis::ContentV2_1::TextWithTooltip::Representation
      
          property :required, as: 'required'
          property :text_input, as: 'textInput', class: Google::Apis::ContentV2_1::InputFieldTextInput, decorator: Google::Apis::ContentV2_1::InputFieldTextInput::Representation
      
        end
      end
      
      class InputFieldCheckboxInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InputFieldChoiceInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :options, as: 'options', class: Google::Apis::ContentV2_1::InputFieldChoiceInputChoiceInputOption, decorator: Google::Apis::ContentV2_1::InputFieldChoiceInputChoiceInputOption::Representation
      
        end
      end
      
      class InputFieldChoiceInputChoiceInputOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_input, as: 'additionalInput', class: Google::Apis::ContentV2_1::InputField, decorator: Google::Apis::ContentV2_1::InputField::Representation
      
          property :id, as: 'id'
          property :label, as: 'label', class: Google::Apis::ContentV2_1::TextWithTooltip, decorator: Google::Apis::ContentV2_1::TextWithTooltip::Representation
      
        end
      end
      
      class InputFieldTextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_info, as: 'additionalInfo', class: Google::Apis::ContentV2_1::TextWithTooltip, decorator: Google::Apis::ContentV2_1::TextWithTooltip::Representation
      
          property :aria_label, as: 'ariaLabel'
          property :format_info, as: 'formatInfo'
          property :type, as: 'type'
        end
      end
      
      class InputValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkbox_input_value, as: 'checkboxInputValue', class: Google::Apis::ContentV2_1::InputValueCheckboxInputValue, decorator: Google::Apis::ContentV2_1::InputValueCheckboxInputValue::Representation
      
          property :choice_input_value, as: 'choiceInputValue', class: Google::Apis::ContentV2_1::InputValueChoiceInputValue, decorator: Google::Apis::ContentV2_1::InputValueChoiceInputValue::Representation
      
          property :input_field_id, as: 'inputFieldId'
          property :text_input_value, as: 'textInputValue', class: Google::Apis::ContentV2_1::InputValueTextInputValue, decorator: Google::Apis::ContentV2_1::InputValueTextInputValue::Representation
      
        end
      end
      
      class InputValueCheckboxInputValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class InputValueChoiceInputValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :choice_input_option_id, as: 'choiceInputOptionId'
        end
      end
      
      class InputValueTextInputValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class InsertCheckoutSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri_settings, as: 'uriSettings', class: Google::Apis::ContentV2_1::UrlSettings, decorator: Google::Apis::ContentV2_1::UrlSettings::Representation
      
        end
      end
      
      class Installment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :credit_type, as: 'creditType'
          property :downpayment, as: 'downpayment', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :months, :numeric_string => true, as: 'months'
        end
      end
      
      class LabelIds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_ids, as: 'labelIds'
        end
      end
      
      class LiaAboutPageSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          property :url, as: 'url'
        end
      end
      
      class LiaCountrySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :about, as: 'about', class: Google::Apis::ContentV2_1::LiaAboutPageSettings, decorator: Google::Apis::ContentV2_1::LiaAboutPageSettings::Representation
      
          property :country, as: 'country'
          property :hosted_local_storefront_active, as: 'hostedLocalStorefrontActive'
          property :inventory, as: 'inventory', class: Google::Apis::ContentV2_1::LiaInventorySettings, decorator: Google::Apis::ContentV2_1::LiaInventorySettings::Representation
      
          property :omnichannel_experience, as: 'omnichannelExperience', class: Google::Apis::ContentV2_1::LiaOmnichannelExperience, decorator: Google::Apis::ContentV2_1::LiaOmnichannelExperience::Representation
      
          property :on_display_to_order, as: 'onDisplayToOrder', class: Google::Apis::ContentV2_1::LiaOnDisplayToOrderSettings, decorator: Google::Apis::ContentV2_1::LiaOnDisplayToOrderSettings::Representation
      
          property :pos_data_provider, as: 'posDataProvider', class: Google::Apis::ContentV2_1::LiaPosDataProvider, decorator: Google::Apis::ContentV2_1::LiaPosDataProvider::Representation
      
          property :store_pickup_active, as: 'storePickupActive'
        end
      end
      
      class LiaInventorySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inventory_verification_contact_email, as: 'inventoryVerificationContactEmail'
          property :inventory_verification_contact_name, as: 'inventoryVerificationContactName'
          property :inventory_verification_contact_status, as: 'inventoryVerificationContactStatus'
          property :status, as: 'status'
        end
      end
      
      class LiaOmnichannelExperience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :lsf_type, as: 'lsfType'
          collection :pickup_types, as: 'pickupTypes'
        end
      end
      
      class LiaOnDisplayToOrderSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shipping_cost_policy_url, as: 'shippingCostPolicyUrl'
          property :status, as: 'status'
        end
      end
      
      class LiaPosDataProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pos_data_provider_id, :numeric_string => true, as: 'posDataProviderId'
          property :pos_external_account_id, as: 'posExternalAccountId'
        end
      end
      
      class LiaSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          collection :country_settings, as: 'countrySettings', class: Google::Apis::ContentV2_1::LiaCountrySettings, decorator: Google::Apis::ContentV2_1::LiaCountrySettings::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class LiasettingsCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::LiasettingsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::LiasettingsCustomBatchRequestEntry::Representation
      
        end
      end
      
      class LiasettingsCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :contact_email, as: 'contactEmail'
          property :contact_name, as: 'contactName'
          property :country, as: 'country'
          property :gmb_email, as: 'gmbEmail'
          property :lia_settings, as: 'liaSettings', class: Google::Apis::ContentV2_1::LiaSettings, decorator: Google::Apis::ContentV2_1::LiaSettings::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :omnichannel_experience, as: 'omnichannelExperience', class: Google::Apis::ContentV2_1::LiaOmnichannelExperience, decorator: Google::Apis::ContentV2_1::LiaOmnichannelExperience::Representation
      
          property :pos_data_provider_id, :numeric_string => true, as: 'posDataProviderId'
          property :pos_external_account_id, as: 'posExternalAccountId'
        end
      end
      
      class LiasettingsCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::LiasettingsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::LiasettingsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class LiasettingsCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :gmb_accounts, as: 'gmbAccounts', class: Google::Apis::ContentV2_1::GmbAccounts, decorator: Google::Apis::ContentV2_1::GmbAccounts::Representation
      
          property :kind, as: 'kind'
          property :lia_settings, as: 'liaSettings', class: Google::Apis::ContentV2_1::LiaSettings, decorator: Google::Apis::ContentV2_1::LiaSettings::Representation
      
          property :omnichannel_experience, as: 'omnichannelExperience', class: Google::Apis::ContentV2_1::LiaOmnichannelExperience, decorator: Google::Apis::ContentV2_1::LiaOmnichannelExperience::Representation
      
          collection :pos_data_providers, as: 'posDataProviders', class: Google::Apis::ContentV2_1::PosDataProviders, decorator: Google::Apis::ContentV2_1::PosDataProviders::Representation
      
        end
      end
      
      class LiasettingsGetAccessibleGmbAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          collection :gmb_accounts, as: 'gmbAccounts', class: Google::Apis::ContentV2_1::GmbAccountsGmbAccount, decorator: Google::Apis::ContentV2_1::GmbAccountsGmbAccount::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class LiasettingsListPosDataProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :pos_data_providers, as: 'posDataProviders', class: Google::Apis::ContentV2_1::PosDataProviders, decorator: Google::Apis::ContentV2_1::PosDataProviders::Representation
      
        end
      end
      
      class LiasettingsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::LiaSettings, decorator: Google::Apis::ContentV2_1::LiaSettings::Representation
      
        end
      end
      
      class LiasettingsRequestGmbAccessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class LiasettingsRequestInventoryVerificationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class LiasettingsSetInventoryVerificationContactResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class LiasettingsSetPosDataProviderResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class LinkService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
          property :status, as: 'status'
        end
      end
      
      class LinkedAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_account_id, as: 'linkedAccountId'
          collection :services, as: 'services', class: Google::Apis::ContentV2_1::LinkService, decorator: Google::Apis::ContentV2_1::LinkService::Representation
      
        end
      end
      
      class ListAccountLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_labels, as: 'accountLabels', class: Google::Apis::ContentV2_1::AccountLabel, decorator: Google::Apis::ContentV2_1::AccountLabel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAccountReturnCarrierResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_return_carriers, as: 'accountReturnCarriers', class: Google::Apis::ContentV2_1::AccountReturnCarrier, decorator: Google::Apis::ContentV2_1::AccountReturnCarrier::Representation
      
        end
      end
      
      class ListCollectionStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::CollectionStatus, decorator: Google::Apis::ContentV2_1::CollectionStatus::Representation
      
        end
      end
      
      class ListCollectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::Collection, decorator: Google::Apis::ContentV2_1::Collection::Representation
      
        end
      end
      
      class ListConversionSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_sources, as: 'conversionSources', class: Google::Apis::ContentV2_1::ConversionSource, decorator: Google::Apis::ContentV2_1::ConversionSource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCssesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :csses, as: 'csses', class: Google::Apis::ContentV2_1::Css, decorator: Google::Apis::ContentV2_1::Css::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMethodQuotasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :method_quotas, as: 'methodQuotas', class: Google::Apis::ContentV2_1::MethodQuota, decorator: Google::Apis::ContentV2_1::MethodQuota::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPromotionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :promotions, as: 'promotions', class: Google::Apis::ContentV2_1::Promotion, decorator: Google::Apis::ContentV2_1::Promotion::Representation
      
        end
      end
      
      class ListRegionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :regions, as: 'regions', class: Google::Apis::ContentV2_1::Region, decorator: Google::Apis::ContentV2_1::Region::Representation
      
        end
      end
      
      class ListReturnPolicyOnlineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :return_policies, as: 'returnPolicies', class: Google::Apis::ContentV2_1::ReturnPolicyOnline, decorator: Google::Apis::ContentV2_1::ReturnPolicyOnline::Representation
      
        end
      end
      
      class LocalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::ContentV2_1::CustomAttribute, decorator: Google::Apis::ContentV2_1::CustomAttribute::Representation
      
          property :instore_product_location, as: 'instoreProductLocation'
          property :kind, as: 'kind'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, as: 'quantity'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
          property :store_code, as: 'storeCode'
        end
      end
      
      class LocalinventoryCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequestEntry::Representation
      
        end
      end
      
      class LocalinventoryCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :local_inventory, as: 'localInventory', class: Google::Apis::ContentV2_1::LocalInventory, decorator: Google::Apis::ContentV2_1::LocalInventory::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :product_id, as: 'productId'
        end
      end
      
      class LocalinventoryCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class LocalinventoryCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class LocationIdSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_ids, as: 'locationIds'
        end
      end
      
      class LoyaltyProgram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cashback_for_future_use, as: 'cashbackForFutureUse', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :loyalty_points, :numeric_string => true, as: 'loyaltyPoints'
          property :member_price_effective_date, as: 'memberPriceEffectiveDate'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :program_label, as: 'programLabel'
          property :shipping_label, as: 'shippingLabel'
          property :tier_label, as: 'tierLabel'
        end
      end
      
      class MerchantCenterDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_settings, as: 'attributionSettings', class: Google::Apis::ContentV2_1::AttributionSettings, decorator: Google::Apis::ContentV2_1::AttributionSettings::Representation
      
          property :currency_code, as: 'currencyCode'
          property :destination_id, as: 'destinationId'
          property :display_name, as: 'displayName'
        end
      end
      
      class MethodQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_prop, as: 'method'
          property :quota_limit, :numeric_string => true, as: 'quotaLimit'
          property :quota_minute_limit, :numeric_string => true, as: 'quotaMinuteLimit'
          property :quota_usage, :numeric_string => true, as: 'quotaUsage'
        end
      end
      
      class Metrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aos, as: 'aos'
          property :aov_micros, as: 'aovMicros'
          property :clicks, :numeric_string => true, as: 'clicks'
          property :conversion_rate, as: 'conversionRate'
          property :conversion_value_micros, :numeric_string => true, as: 'conversionValueMicros'
          property :conversions, as: 'conversions'
          property :ctr, as: 'ctr'
          property :days_to_ship, as: 'daysToShip'
          property :impressions, :numeric_string => true, as: 'impressions'
          property :item_days_to_ship, as: 'itemDaysToShip'
          property :item_fill_rate, as: 'itemFillRate'
          property :ordered_item_sales_micros, :numeric_string => true, as: 'orderedItemSalesMicros'
          property :ordered_items, :numeric_string => true, as: 'orderedItems'
          property :orders, :numeric_string => true, as: 'orders'
          property :rejected_items, :numeric_string => true, as: 'rejectedItems'
          property :return_rate, as: 'returnRate'
          property :returned_items, :numeric_string => true, as: 'returnedItems'
          property :returns_micros, :numeric_string => true, as: 'returnsMicros'
          property :shipped_item_sales_micros, :numeric_string => true, as: 'shippedItemSalesMicros'
          property :shipped_items, :numeric_string => true, as: 'shippedItems'
          property :shipped_orders, :numeric_string => true, as: 'shippedOrders'
          property :unshipped_items, as: 'unshippedItems'
          property :unshipped_orders, as: 'unshippedOrders'
        end
      end
      
      class MinimumOrderValueTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :store_code_set_with_movs, as: 'storeCodeSetWithMovs', class: Google::Apis::ContentV2_1::MinimumOrderValueTableStoreCodeSetWithMov, decorator: Google::Apis::ContentV2_1::MinimumOrderValueTableStoreCodeSetWithMov::Representation
      
        end
      end
      
      class MinimumOrderValueTableStoreCodeSetWithMov
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :store_codes, as: 'storeCodes'
          property :value, as: 'value', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
        end
      end
      
      class OrderTrackingSignal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_shipping_fee, as: 'customerShippingFee', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :delivery_postal_code, as: 'deliveryPostalCode'
          property :delivery_region_code, as: 'deliveryRegionCode'
          collection :line_items, as: 'lineItems', class: Google::Apis::ContentV2_1::OrderTrackingSignalLineItemDetails, decorator: Google::Apis::ContentV2_1::OrderTrackingSignalLineItemDetails::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :order_created_time, as: 'orderCreatedTime', class: Google::Apis::ContentV2_1::DateTime, decorator: Google::Apis::ContentV2_1::DateTime::Representation
      
          property :order_id, as: 'orderId'
          property :order_tracking_signal_id, :numeric_string => true, as: 'orderTrackingSignalId'
          collection :shipment_line_item_mapping, as: 'shipmentLineItemMapping', class: Google::Apis::ContentV2_1::OrderTrackingSignalShipmentLineItemMapping, decorator: Google::Apis::ContentV2_1::OrderTrackingSignalShipmentLineItemMapping::Representation
      
          collection :shipping_info, as: 'shippingInfo', class: Google::Apis::ContentV2_1::OrderTrackingSignalShippingInfo, decorator: Google::Apis::ContentV2_1::OrderTrackingSignalShippingInfo::Representation
      
        end
      end
      
      class OrderTrackingSignalLineItemDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :gtin, as: 'gtin'
          property :line_item_id, as: 'lineItemId'
          property :mpn, as: 'mpn'
          property :product_description, as: 'productDescription'
          property :product_id, as: 'productId'
          property :product_title, as: 'productTitle'
          property :quantity, :numeric_string => true, as: 'quantity'
          property :sku, as: 'sku'
          property :upc, as: 'upc'
        end
      end
      
      class OrderTrackingSignalShipmentLineItemMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_id, as: 'lineItemId'
          property :quantity, :numeric_string => true, as: 'quantity'
          property :shipment_id, as: 'shipmentId'
        end
      end
      
      class OrderTrackingSignalShippingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_delivery_time, as: 'actualDeliveryTime', class: Google::Apis::ContentV2_1::DateTime, decorator: Google::Apis::ContentV2_1::DateTime::Representation
      
          property :carrier_name, as: 'carrierName'
          property :carrier_service_name, as: 'carrierServiceName'
          property :earliest_delivery_promise_time, as: 'earliestDeliveryPromiseTime', class: Google::Apis::ContentV2_1::DateTime, decorator: Google::Apis::ContentV2_1::DateTime::Representation
      
          property :latest_delivery_promise_time, as: 'latestDeliveryPromiseTime', class: Google::Apis::ContentV2_1::DateTime, decorator: Google::Apis::ContentV2_1::DateTime::Representation
      
          property :origin_postal_code, as: 'originPostalCode'
          property :origin_region_code, as: 'originRegionCode'
          property :shipment_id, as: 'shipmentId'
          property :shipped_time, as: 'shippedTime', class: Google::Apis::ContentV2_1::DateTime, decorator: Google::Apis::ContentV2_1::DateTime::Representation
      
          property :shipping_status, as: 'shippingStatus'
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class PaymentServiceProviderLinkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_account_business_country, as: 'externalAccountBusinessCountry'
          property :external_account_id, as: 'externalAccountId'
        end
      end
      
      class PickupCarrierService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_name, as: 'carrierName'
          property :service_name, as: 'serviceName'
        end
      end
      
      class PickupServicesPickupService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_name, as: 'carrierName'
          property :country, as: 'country'
          property :service_name, as: 'serviceName'
        end
      end
      
      class PosCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::PosCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::PosCustomBatchRequestEntry::Representation
      
        end
      end
      
      class PosCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :inventory, as: 'inventory', class: Google::Apis::ContentV2_1::PosInventory, decorator: Google::Apis::ContentV2_1::PosInventory::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :sale, as: 'sale', class: Google::Apis::ContentV2_1::PosSale, decorator: Google::Apis::ContentV2_1::PosSale::Representation
      
          property :store, as: 'store', class: Google::Apis::ContentV2_1::PosStore, decorator: Google::Apis::ContentV2_1::PosStore::Representation
      
          property :store_code, as: 'storeCode'
          property :target_merchant_id, :numeric_string => true, as: 'targetMerchantId'
        end
      end
      
      class PosCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::PosCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::PosCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class PosCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :inventory, as: 'inventory', class: Google::Apis::ContentV2_1::PosInventory, decorator: Google::Apis::ContentV2_1::PosInventory::Representation
      
          property :kind, as: 'kind'
          property :sale, as: 'sale', class: Google::Apis::ContentV2_1::PosSale, decorator: Google::Apis::ContentV2_1::PosSale::Representation
      
          property :store, as: 'store', class: Google::Apis::ContentV2_1::PosStore, decorator: Google::Apis::ContentV2_1::PosStore::Representation
      
        end
      end
      
      class PosDataProviders
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          collection :pos_data_providers, as: 'posDataProviders', class: Google::Apis::ContentV2_1::PosDataProvidersPosDataProvider, decorator: Google::Apis::ContentV2_1::PosDataProvidersPosDataProvider::Representation
      
        end
      end
      
      class PosDataProvidersPosDataProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :full_name, as: 'fullName'
          property :provider_id, :numeric_string => true, as: 'providerId'
        end
      end
      
      class PosInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :item_id, as: 'itemId'
          property :kind, as: 'kind'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :store_code, as: 'storeCode'
          property :target_country, as: 'targetCountry'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class PosInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :item_id, as: 'itemId'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :store_code, as: 'storeCode'
          property :target_country, as: 'targetCountry'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class PosInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :item_id, as: 'itemId'
          property :kind, as: 'kind'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :store_code, as: 'storeCode'
          property :target_country, as: 'targetCountry'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class PosListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::PosStore, decorator: Google::Apis::ContentV2_1::PosStore::Representation
      
        end
      end
      
      class PosSale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :item_id, as: 'itemId'
          property :kind, as: 'kind'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :sale_id, as: 'saleId'
          property :store_code, as: 'storeCode'
          property :target_country, as: 'targetCountry'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class PosSaleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :item_id, as: 'itemId'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :sale_id, as: 'saleId'
          property :store_code, as: 'storeCode'
          property :target_country, as: 'targetCountry'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class PosSaleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :item_id, as: 'itemId'
          property :kind, as: 'kind'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :sale_id, as: 'saleId'
          property :store_code, as: 'storeCode'
          property :target_country, as: 'targetCountry'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class PosStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gcid_category, as: 'gcidCategory'
          property :kind, as: 'kind'
          property :matching_status, as: 'matchingStatus'
          property :matching_status_hint, as: 'matchingStatusHint'
          property :phone_number, as: 'phoneNumber'
          property :place_id, as: 'placeId'
          property :store_address, as: 'storeAddress'
          property :store_code, as: 'storeCode'
          property :store_name, as: 'storeName'
          property :website_url, as: 'websiteUrl'
        end
      end
      
      class PostalCodeGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :name, as: 'name'
          collection :postal_code_ranges, as: 'postalCodeRanges', class: Google::Apis::ContentV2_1::PostalCodeRange, decorator: Google::Apis::ContentV2_1::PostalCodeRange::Representation
      
        end
      end
      
      class PostalCodeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postal_code_range_begin, as: 'postalCodeRangeBegin'
          property :postal_code_range_end, as: 'postalCodeRangeEnd'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :value, as: 'value'
        end
      end
      
      class PriceAmount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :value, as: 'value'
        end
      end
      
      class PriceCompetitiveness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :benchmark_price_currency_code, as: 'benchmarkPriceCurrencyCode'
          property :benchmark_price_micros, :numeric_string => true, as: 'benchmarkPriceMicros'
          property :country_code, as: 'countryCode'
        end
      end
      
      class PriceInsights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effectiveness, as: 'effectiveness'
          property :predicted_clicks_change_fraction, as: 'predictedClicksChangeFraction'
          property :predicted_conversions_change_fraction, as: 'predictedConversionsChangeFraction'
          property :predicted_gross_profit_change_fraction, as: 'predictedGrossProfitChangeFraction'
          property :predicted_impressions_change_fraction, as: 'predictedImpressionsChangeFraction'
          property :predicted_monthly_gross_profit_change_currency_code, as: 'predictedMonthlyGrossProfitChangeCurrencyCode'
          property :predicted_monthly_gross_profit_change_micros, :numeric_string => true, as: 'predictedMonthlyGrossProfitChangeMicros'
          property :suggested_price_currency_code, as: 'suggestedPriceCurrencyCode'
          property :suggested_price_micros, :numeric_string => true, as: 'suggestedPriceMicros'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_image_links, as: 'additionalImageLinks'
          property :additional_size_type, as: 'additionalSizeType'
          property :ads_grouping, as: 'adsGrouping'
          collection :ads_labels, as: 'adsLabels'
          property :ads_redirect, as: 'adsRedirect'
          property :adult, as: 'adult'
          property :age_group, as: 'ageGroup'
          property :auto_pricing_min_price, as: 'autoPricingMinPrice', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :availability, as: 'availability'
          property :availability_date, as: 'availabilityDate'
          property :brand, as: 'brand'
          property :canonical_link, as: 'canonicalLink'
          collection :certifications, as: 'certifications', class: Google::Apis::ContentV2_1::ProductCertification, decorator: Google::Apis::ContentV2_1::ProductCertification::Representation
      
          property :channel, as: 'channel'
          collection :cloud_export_additional_properties, as: 'cloudExportAdditionalProperties', class: Google::Apis::ContentV2_1::CloudExportAdditionalProperties, decorator: Google::Apis::ContentV2_1::CloudExportAdditionalProperties::Representation
      
          property :color, as: 'color'
          property :condition, as: 'condition'
          property :content_language, as: 'contentLanguage'
          property :cost_of_goods_sold, as: 'costOfGoodsSold', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::ContentV2_1::CustomAttribute, decorator: Google::Apis::ContentV2_1::CustomAttribute::Representation
      
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          property :description, as: 'description'
          property :disclosure_date, as: 'disclosureDate'
          property :display_ads_id, as: 'displayAdsId'
          property :display_ads_link, as: 'displayAdsLink'
          collection :display_ads_similar_ids, as: 'displayAdsSimilarIds'
          property :display_ads_title, as: 'displayAdsTitle'
          property :display_ads_value, as: 'displayAdsValue'
          property :energy_efficiency_class, as: 'energyEfficiencyClass'
          collection :excluded_destinations, as: 'excludedDestinations'
          property :expiration_date, as: 'expirationDate'
          property :external_seller_id, as: 'externalSellerId'
          property :feed_label, as: 'feedLabel'
          collection :free_shipping_threshold, as: 'freeShippingThreshold', class: Google::Apis::ContentV2_1::FreeShippingThreshold, decorator: Google::Apis::ContentV2_1::FreeShippingThreshold::Representation
      
          property :gender, as: 'gender'
          property :google_product_category, as: 'googleProductCategory'
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          property :identifier_exists, as: 'identifierExists'
          property :image_link, as: 'imageLink'
          collection :included_destinations, as: 'includedDestinations'
          property :installment, as: 'installment', class: Google::Apis::ContentV2_1::Installment, decorator: Google::Apis::ContentV2_1::Installment::Representation
      
          property :is_bundle, as: 'isBundle'
          property :item_group_id, as: 'itemGroupId'
          property :kind, as: 'kind'
          collection :lifestyle_image_links, as: 'lifestyleImageLinks'
          property :link, as: 'link'
          property :link_template, as: 'linkTemplate'
          property :loyalty_program, as: 'loyaltyProgram', class: Google::Apis::ContentV2_1::LoyaltyProgram, decorator: Google::Apis::ContentV2_1::LoyaltyProgram::Representation
      
          collection :loyalty_programs, as: 'loyaltyPrograms', class: Google::Apis::ContentV2_1::LoyaltyProgram, decorator: Google::Apis::ContentV2_1::LoyaltyProgram::Representation
      
          property :material, as: 'material'
          property :max_energy_efficiency_class, as: 'maxEnergyEfficiencyClass'
          property :max_handling_time, :numeric_string => true, as: 'maxHandlingTime'
          property :maximum_retail_price, as: 'maximumRetailPrice', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :min_energy_efficiency_class, as: 'minEnergyEfficiencyClass'
          property :min_handling_time, :numeric_string => true, as: 'minHandlingTime'
          property :mobile_link, as: 'mobileLink'
          property :mobile_link_template, as: 'mobileLinkTemplate'
          property :mpn, as: 'mpn'
          property :multipack, :numeric_string => true, as: 'multipack'
          property :offer_id, as: 'offerId'
          property :pattern, as: 'pattern'
          property :pause, as: 'pause'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          collection :product_details, as: 'productDetails', class: Google::Apis::ContentV2_1::ProductProductDetail, decorator: Google::Apis::ContentV2_1::ProductProductDetail::Representation
      
          property :product_height, as: 'productHeight', class: Google::Apis::ContentV2_1::ProductDimension, decorator: Google::Apis::ContentV2_1::ProductDimension::Representation
      
          collection :product_highlights, as: 'productHighlights'
          property :product_length, as: 'productLength', class: Google::Apis::ContentV2_1::ProductDimension, decorator: Google::Apis::ContentV2_1::ProductDimension::Representation
      
          collection :product_types, as: 'productTypes'
          property :product_weight, as: 'productWeight', class: Google::Apis::ContentV2_1::ProductWeight, decorator: Google::Apis::ContentV2_1::ProductWeight::Representation
      
          property :product_width, as: 'productWidth', class: Google::Apis::ContentV2_1::ProductDimension, decorator: Google::Apis::ContentV2_1::ProductDimension::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
          property :sell_on_google_quantity, :numeric_string => true, as: 'sellOnGoogleQuantity'
          collection :shipping, as: 'shipping', class: Google::Apis::ContentV2_1::ProductShipping, decorator: Google::Apis::ContentV2_1::ProductShipping::Representation
      
          property :shipping_height, as: 'shippingHeight', class: Google::Apis::ContentV2_1::ProductShippingDimension, decorator: Google::Apis::ContentV2_1::ProductShippingDimension::Representation
      
          property :shipping_label, as: 'shippingLabel'
          property :shipping_length, as: 'shippingLength', class: Google::Apis::ContentV2_1::ProductShippingDimension, decorator: Google::Apis::ContentV2_1::ProductShippingDimension::Representation
      
          property :shipping_weight, as: 'shippingWeight', class: Google::Apis::ContentV2_1::ProductShippingWeight, decorator: Google::Apis::ContentV2_1::ProductShippingWeight::Representation
      
          property :shipping_width, as: 'shippingWidth', class: Google::Apis::ContentV2_1::ProductShippingDimension, decorator: Google::Apis::ContentV2_1::ProductShippingDimension::Representation
      
          collection :shopping_ads_excluded_countries, as: 'shoppingAdsExcludedCountries'
          property :size_system, as: 'sizeSystem'
          property :size_type, as: 'sizeType'
          collection :sizes, as: 'sizes'
          property :source, as: 'source'
          property :structured_description, as: 'structuredDescription', class: Google::Apis::ContentV2_1::ProductStructuredDescription, decorator: Google::Apis::ContentV2_1::ProductStructuredDescription::Representation
      
          property :structured_title, as: 'structuredTitle', class: Google::Apis::ContentV2_1::ProductStructuredTitle, decorator: Google::Apis::ContentV2_1::ProductStructuredTitle::Representation
      
          property :subscription_cost, as: 'subscriptionCost', class: Google::Apis::ContentV2_1::ProductSubscriptionCost, decorator: Google::Apis::ContentV2_1::ProductSubscriptionCost::Representation
      
          collection :sustainability_incentives, as: 'sustainabilityIncentives', class: Google::Apis::ContentV2_1::ProductSustainabilityIncentive, decorator: Google::Apis::ContentV2_1::ProductSustainabilityIncentive::Representation
      
          property :target_country, as: 'targetCountry'
          property :tax_category, as: 'taxCategory'
          collection :taxes, as: 'taxes', class: Google::Apis::ContentV2_1::ProductTax, decorator: Google::Apis::ContentV2_1::ProductTax::Representation
      
          property :title, as: 'title'
          property :transit_time_label, as: 'transitTimeLabel'
          property :unit_pricing_base_measure, as: 'unitPricingBaseMeasure', class: Google::Apis::ContentV2_1::ProductUnitPricingBaseMeasure, decorator: Google::Apis::ContentV2_1::ProductUnitPricingBaseMeasure::Representation
      
          property :unit_pricing_measure, as: 'unitPricingMeasure', class: Google::Apis::ContentV2_1::ProductUnitPricingMeasure, decorator: Google::Apis::ContentV2_1::ProductUnitPricingMeasure::Representation
      
          property :virtual_model_link, as: 'virtualModelLink'
        end
      end
      
      class ProductCertification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certification_authority, as: 'certificationAuthority'
          property :certification_code, as: 'certificationCode'
          property :certification_name, as: 'certificationName'
          property :certification_value, as: 'certificationValue'
        end
      end
      
      class ProductCluster
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
          property :title, as: 'title'
          collection :variant_gtins, as: 'variantGtins'
        end
      end
      
      class ProductDeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :area_delivery_times, as: 'areaDeliveryTimes', class: Google::Apis::ContentV2_1::ProductDeliveryTimeAreaDeliveryTime, decorator: Google::Apis::ContentV2_1::ProductDeliveryTimeAreaDeliveryTime::Representation
      
          property :product_id, as: 'productId', class: Google::Apis::ContentV2_1::ProductId, decorator: Google::Apis::ContentV2_1::ProductId::Representation
      
        end
      end
      
      class ProductDeliveryTimeAreaDeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_area, as: 'deliveryArea', class: Google::Apis::ContentV2_1::DeliveryArea, decorator: Google::Apis::ContentV2_1::DeliveryArea::Representation
      
          property :delivery_time, as: 'deliveryTime', class: Google::Apis::ContentV2_1::ProductDeliveryTimeAreaDeliveryTimeDeliveryTime, decorator: Google::Apis::ContentV2_1::ProductDeliveryTimeAreaDeliveryTimeDeliveryTime::Representation
      
        end
      end
      
      class ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_handling_time_days, as: 'maxHandlingTimeDays'
          property :max_transit_time_days, as: 'maxTransitTimeDays'
          property :min_handling_time_days, as: 'minHandlingTimeDays'
          property :min_transit_time_days, as: 'minTransitTimeDays'
        end
      end
      
      class ProductDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_id, as: 'productId'
        end
      end
      
      class ProductIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ContentV2_1::Action, decorator: Google::Apis::ContentV2_1::Action::Representation
      
          property :impact, as: 'impact', class: Google::Apis::ContentV2_1::ProductIssueImpact, decorator: Google::Apis::ContentV2_1::ProductIssueImpact::Representation
      
          property :prerendered_content, as: 'prerenderedContent'
          property :prerendered_out_of_court_dispute_settlement, as: 'prerenderedOutOfCourtDisputeSettlement'
          property :title, as: 'title'
        end
      end
      
      class ProductIssueImpact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :breakdowns, as: 'breakdowns', class: Google::Apis::ContentV2_1::Breakdown, decorator: Google::Apis::ContentV2_1::Breakdown::Representation
      
          property :message, as: 'message'
          property :severity, as: 'severity'
        end
      end
      
      class ProductProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_name, as: 'attributeName'
          property :attribute_value, as: 'attributeValue'
          property :section_name, as: 'sectionName'
        end
      end
      
      class ProductShipping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_group_name, as: 'locationGroupName'
          property :location_id, :numeric_string => true, as: 'locationId'
          property :max_handling_time, :numeric_string => true, as: 'maxHandlingTime'
          property :max_transit_time, :numeric_string => true, as: 'maxTransitTime'
          property :min_handling_time, :numeric_string => true, as: 'minHandlingTime'
          property :min_transit_time, :numeric_string => true, as: 'minTransitTime'
          property :postal_code, as: 'postalCode'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :region, as: 'region'
          property :service, as: 'service'
        end
      end
      
      class ProductShippingDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductShippingWeight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_date, as: 'creationDate'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::ContentV2_1::ProductStatusDestinationStatus, decorator: Google::Apis::ContentV2_1::ProductStatusDestinationStatus::Representation
      
          property :google_expiration_date, as: 'googleExpirationDate'
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::ContentV2_1::ProductStatusItemLevelIssue, decorator: Google::Apis::ContentV2_1::ProductStatusItemLevelIssue::Representation
      
          property :kind, as: 'kind'
          property :last_update_date, as: 'lastUpdateDate'
          property :link, as: 'link'
          property :product_id, as: 'productId'
          property :title, as: 'title'
        end
      end
      
      class ProductStatusDestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :approved_countries, as: 'approvedCountries'
          property :destination, as: 'destination'
          collection :disapproved_countries, as: 'disapprovedCountries'
          collection :pending_countries, as: 'pendingCountries'
          property :status, as: 'status'
        end
      end
      
      class ProductStatusItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_countries, as: 'applicableCountries'
          property :attribute_name, as: 'attributeName'
          property :code, as: 'code'
          property :description, as: 'description'
          property :destination, as: 'destination'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :resolution, as: 'resolution'
          property :servability, as: 'servability'
        end
      end
      
      class ProductStructuredDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :digital_source_type, as: 'digitalSourceType'
        end
      end
      
      class ProductStructuredTitle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :digital_source_type, as: 'digitalSourceType'
        end
      end
      
      class ProductSubscriptionCost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :period, as: 'period'
          property :period_length, :numeric_string => true, as: 'periodLength'
        end
      end
      
      class ProductSustainabilityIncentive
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :percentage, as: 'percentage'
          property :type, as: 'type'
        end
      end
      
      class ProductTax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, :numeric_string => true, as: 'locationId'
          property :postal_code, as: 'postalCode'
          property :rate, as: 'rate'
          property :region, as: 'region'
          property :tax_ship, as: 'taxShip'
        end
      end
      
      class ProductUnitPricingBaseMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class ProductUnitPricingMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_destination_status, as: 'aggregatedDestinationStatus'
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
          property :currency_code, as: 'currencyCode'
          property :expiration_date, as: 'expirationDate', class: Google::Apis::ContentV2_1::Date, decorator: Google::Apis::ContentV2_1::Date::Representation
      
          collection :gtin, as: 'gtin'
          property :id, as: 'id'
          property :item_group_id, as: 'itemGroupId'
          collection :item_issues, as: 'itemIssues', class: Google::Apis::ContentV2_1::ProductViewItemIssue, decorator: Google::Apis::ContentV2_1::ProductViewItemIssue::Representation
      
          property :language_code, as: 'languageCode'
          property :offer_id, as: 'offerId'
          property :price_micros, :numeric_string => true, as: 'priceMicros'
          property :product_type_l1, as: 'productTypeL1'
          property :product_type_l2, as: 'productTypeL2'
          property :product_type_l3, as: 'productTypeL3'
          property :product_type_l4, as: 'productTypeL4'
          property :product_type_l5, as: 'productTypeL5'
          property :shipping_label, as: 'shippingLabel'
          property :title, as: 'title'
        end
      end
      
      class ProductViewItemIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_type, as: 'issueType', class: Google::Apis::ContentV2_1::ProductViewItemIssueItemIssueType, decorator: Google::Apis::ContentV2_1::ProductViewItemIssueItemIssueType::Representation
      
          property :resolution, as: 'resolution'
          property :severity, as: 'severity', class: Google::Apis::ContentV2_1::ProductViewItemIssueItemIssueSeverity, decorator: Google::Apis::ContentV2_1::ProductViewItemIssueItemIssueSeverity::Representation
      
        end
      end
      
      class ProductViewItemIssueIssueSeverityPerDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :demoted_countries, as: 'demotedCountries'
          property :destination, as: 'destination'
          collection :disapproved_countries, as: 'disapprovedCountries'
        end
      end
      
      class ProductViewItemIssueItemIssueSeverity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_severity, as: 'aggregatedSeverity'
          collection :severity_per_destination, as: 'severityPerDestination', class: Google::Apis::ContentV2_1::ProductViewItemIssueIssueSeverityPerDestination, decorator: Google::Apis::ContentV2_1::ProductViewItemIssueIssueSeverityPerDestination::Representation
      
        end
      end
      
      class ProductViewItemIssueItemIssueType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_attribute, as: 'canonicalAttribute'
          property :code, as: 'code'
        end
      end
      
      class ProductWeight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductsCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::ProductsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::ProductsCustomBatchRequestEntry::Representation
      
        end
      end
      
      class ProductsCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :feed_id, :numeric_string => true, as: 'feedId'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :product, as: 'product', class: Google::Apis::ContentV2_1::Product, decorator: Google::Apis::ContentV2_1::Product::Representation
      
          property :product_id, as: 'productId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ProductsCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::ProductsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::ProductsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ProductsCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
          property :product, as: 'product', class: Google::Apis::ContentV2_1::Product, decorator: Google::Apis::ContentV2_1::Product::Representation
      
        end
      end
      
      class ProductsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::Product, decorator: Google::Apis::ContentV2_1::Product::Representation
      
        end
      end
      
      class ProductstatusesCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequestEntry::Representation
      
        end
      end
      
      class ProductstatusesCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          collection :destinations, as: 'destinations'
          property :include_attributes, as: 'includeAttributes'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :product_id, as: 'productId'
        end
      end
      
      class ProductstatusesCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ProductstatusesCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
          property :product_status, as: 'productStatus', class: Google::Apis::ContentV2_1::ProductStatus, decorator: Google::Apis::ContentV2_1::ProductStatus::Representation
      
        end
      end
      
      class ProductstatusesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::ProductStatus, decorator: Google::Apis::ContentV2_1::ProductStatus::Representation
      
        end
      end
      
      class Promotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :brand, as: 'brand'
          collection :brand_exclusion, as: 'brandExclusion'
          property :content_language, as: 'contentLanguage'
          property :coupon_value_type, as: 'couponValueType'
          property :custom_redemption_restriction, as: 'customRedemptionRestriction'
          property :free_gift_description, as: 'freeGiftDescription'
          property :free_gift_item_id, as: 'freeGiftItemId'
          property :free_gift_value, as: 'freeGiftValue', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :generic_redemption_code, as: 'genericRedemptionCode'
          property :get_this_quantity_discounted, as: 'getThisQuantityDiscounted'
          property :id, as: 'id'
          collection :item_group_id, as: 'itemGroupId'
          collection :item_group_id_exclusion, as: 'itemGroupIdExclusion'
          collection :item_id, as: 'itemId'
          collection :item_id_exclusion, as: 'itemIdExclusion'
          property :limit_quantity, as: 'limitQuantity'
          property :limit_value, as: 'limitValue', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :long_title, as: 'longTitle'
          property :max_discount_amount, as: 'maxDiscountAmount', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :minimum_purchase_amount, as: 'minimumPurchaseAmount', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :minimum_purchase_quantity, as: 'minimumPurchaseQuantity'
          property :money_budget, as: 'moneyBudget', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :money_off_amount, as: 'moneyOffAmount', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :offer_type, as: 'offerType'
          property :order_limit, as: 'orderLimit'
          property :percent_off, as: 'percentOff'
          property :product_applicability, as: 'productApplicability'
          collection :product_type, as: 'productType'
          collection :product_type_exclusion, as: 'productTypeExclusion'
          collection :promotion_destination_ids, as: 'promotionDestinationIds'
          property :promotion_display_dates, as: 'promotionDisplayDates'
          property :promotion_display_time_period, as: 'promotionDisplayTimePeriod', class: Google::Apis::ContentV2_1::TimePeriod, decorator: Google::Apis::ContentV2_1::TimePeriod::Representation
      
          property :promotion_effective_dates, as: 'promotionEffectiveDates'
          property :promotion_effective_time_period, as: 'promotionEffectiveTimePeriod', class: Google::Apis::ContentV2_1::TimePeriod, decorator: Google::Apis::ContentV2_1::TimePeriod::Representation
      
          property :promotion_id, as: 'promotionId'
          property :promotion_status, as: 'promotionStatus', class: Google::Apis::ContentV2_1::PromotionPromotionStatus, decorator: Google::Apis::ContentV2_1::PromotionPromotionStatus::Representation
      
          property :promotion_url, as: 'promotionUrl'
          collection :redemption_channel, as: 'redemptionChannel'
          property :redemption_restriction, as: 'redemptionRestriction'
          collection :shipping_service_names, as: 'shippingServiceNames'
          property :store_applicability, as: 'storeApplicability'
          collection :store_code, as: 'storeCode'
          collection :store_code_exclusion, as: 'storeCodeExclusion'
          property :target_country, as: 'targetCountry'
        end
      end
      
      class PromotionPromotionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_date, as: 'creationDate'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::ContentV2_1::PromotionPromotionStatusDestinationStatus, decorator: Google::Apis::ContentV2_1::PromotionPromotionStatusDestinationStatus::Representation
      
          property :last_update_date, as: 'lastUpdateDate'
          collection :promotion_issue, as: 'promotionIssue', class: Google::Apis::ContentV2_1::PromotionPromotionStatusPromotionIssue, decorator: Google::Apis::ContentV2_1::PromotionPromotionStatusPromotionIssue::Representation
      
        end
      end
      
      class PromotionPromotionStatusDestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :status, as: 'status'
        end
      end
      
      class PromotionPromotionStatusPromotionIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :detail, as: 'detail'
        end
      end
      
      class PubsubNotificationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_topic_name, as: 'cloudTopicName'
          property :kind, as: 'kind'
          collection :registered_events, as: 'registeredEvents'
        end
      end
      
      class RateGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_shipping_labels, as: 'applicableShippingLabels'
          collection :carrier_rates, as: 'carrierRates', class: Google::Apis::ContentV2_1::CarrierRate, decorator: Google::Apis::ContentV2_1::CarrierRate::Representation
      
          property :main_table, as: 'mainTable', class: Google::Apis::ContentV2_1::Table, decorator: Google::Apis::ContentV2_1::Table::Representation
      
          property :name, as: 'name'
          property :single_value, as: 'singleValue', class: Google::Apis::ContentV2_1::Value, decorator: Google::Apis::ContentV2_1::Value::Representation
      
          collection :subtables, as: 'subtables', class: Google::Apis::ContentV2_1::Table, decorator: Google::Apis::ContentV2_1::Table::Representation
      
        end
      end
      
      class Recommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_call_to_action, as: 'additionalCallToAction', class: Google::Apis::ContentV2_1::RecommendationCallToAction, decorator: Google::Apis::ContentV2_1::RecommendationCallToAction::Representation
      
          collection :additional_descriptions, as: 'additionalDescriptions', class: Google::Apis::ContentV2_1::RecommendationDescription, decorator: Google::Apis::ContentV2_1::RecommendationDescription::Representation
      
          collection :creative, as: 'creative', class: Google::Apis::ContentV2_1::RecommendationCreative, decorator: Google::Apis::ContentV2_1::RecommendationCreative::Representation
      
          property :default_call_to_action, as: 'defaultCallToAction', class: Google::Apis::ContentV2_1::RecommendationCallToAction, decorator: Google::Apis::ContentV2_1::RecommendationCallToAction::Representation
      
          property :default_description, as: 'defaultDescription'
          property :numerical_impact, as: 'numericalImpact'
          property :paid, as: 'paid'
          property :recommendation_name, as: 'recommendationName'
          property :sub_type, as: 'subType'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class RecommendationCallToAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent, as: 'intent'
          property :localized_text, as: 'localizedText'
          property :uri, as: 'uri'
        end
      end
      
      class RecommendationCreative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class RecommendationDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
          property :type, as: 'type'
        end
      end
      
      class Region
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :geotarget_area, as: 'geotargetArea', class: Google::Apis::ContentV2_1::RegionGeoTargetArea, decorator: Google::Apis::ContentV2_1::RegionGeoTargetArea::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :postal_code_area, as: 'postalCodeArea', class: Google::Apis::ContentV2_1::RegionPostalCodeArea, decorator: Google::Apis::ContentV2_1::RegionPostalCodeArea::Representation
      
          property :region_id, as: 'regionId'
          property :regional_inventory_eligible, as: 'regionalInventoryEligible'
          property :shipping_eligible, as: 'shippingEligible'
        end
      end
      
      class RegionGeoTargetArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :geotarget_criteria_ids, as: 'geotargetCriteriaIds'
        end
      end
      
      class RegionPostalCodeArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postal_codes, as: 'postalCodes', class: Google::Apis::ContentV2_1::RegionPostalCodeAreaPostalCodeRange, decorator: Google::Apis::ContentV2_1::RegionPostalCodeAreaPostalCodeRange::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class RegionPostalCodeAreaPostalCodeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin, as: 'begin'
          property :end, as: 'end'
        end
      end
      
      class RegionalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::ContentV2_1::CustomAttribute, decorator: Google::Apis::ContentV2_1::CustomAttribute::Representation
      
          property :kind, as: 'kind'
          property :price, as: 'price', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :region_id, as: 'regionId'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
        end
      end
      
      class RegionalinventoryCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequestEntry::Representation
      
        end
      end
      
      class RegionalinventoryCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :product_id, as: 'productId'
          property :regional_inventory, as: 'regionalInventory', class: Google::Apis::ContentV2_1::RegionalInventory, decorator: Google::Apis::ContentV2_1::RegionalInventory::Representation
      
        end
      end
      
      class RegionalinventoryCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class RegionalinventoryCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
          property :regional_inventory, as: 'regionalInventory', class: Google::Apis::ContentV2_1::RegionalInventory, decorator: Google::Apis::ContentV2_1::RegionalInventory::Representation
      
        end
      end
      
      class RenderAccountIssuesRequestPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_option, as: 'contentOption'
          property :user_input_action_option, as: 'userInputActionOption'
        end
      end
      
      class RenderAccountIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_dispute_resolution, as: 'alternateDisputeResolution', class: Google::Apis::ContentV2_1::AlternateDisputeResolution, decorator: Google::Apis::ContentV2_1::AlternateDisputeResolution::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::ContentV2_1::AccountIssue, decorator: Google::Apis::ContentV2_1::AccountIssue::Representation
      
        end
      end
      
      class RenderProductIssuesRequestPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_option, as: 'contentOption'
          property :user_input_action_option, as: 'userInputActionOption'
        end
      end
      
      class RenderProductIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_dispute_resolution, as: 'alternateDisputeResolution', class: Google::Apis::ContentV2_1::AlternateDisputeResolution, decorator: Google::Apis::ContentV2_1::AlternateDisputeResolution::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::ContentV2_1::ProductIssue, decorator: Google::Apis::ContentV2_1::ProductIssue::Representation
      
        end
      end
      
      class ReportInteractionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interaction_type, as: 'interactionType'
          property :response_token, as: 'responseToken'
          property :subtype, as: 'subtype'
          property :type, as: 'type'
        end
      end
      
      class ReportRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_sellers, as: 'bestSellers', class: Google::Apis::ContentV2_1::BestSellers, decorator: Google::Apis::ContentV2_1::BestSellers::Representation
      
          property :brand, as: 'brand', class: Google::Apis::ContentV2_1::Brand, decorator: Google::Apis::ContentV2_1::Brand::Representation
      
          property :competitive_visibility, as: 'competitiveVisibility', class: Google::Apis::ContentV2_1::CompetitiveVisibility, decorator: Google::Apis::ContentV2_1::CompetitiveVisibility::Representation
      
          property :metrics, as: 'metrics', class: Google::Apis::ContentV2_1::Metrics, decorator: Google::Apis::ContentV2_1::Metrics::Representation
      
          property :price_competitiveness, as: 'priceCompetitiveness', class: Google::Apis::ContentV2_1::PriceCompetitiveness, decorator: Google::Apis::ContentV2_1::PriceCompetitiveness::Representation
      
          property :price_insights, as: 'priceInsights', class: Google::Apis::ContentV2_1::PriceInsights, decorator: Google::Apis::ContentV2_1::PriceInsights::Representation
      
          property :product_cluster, as: 'productCluster', class: Google::Apis::ContentV2_1::ProductCluster, decorator: Google::Apis::ContentV2_1::ProductCluster::Representation
      
          property :product_view, as: 'productView', class: Google::Apis::ContentV2_1::ProductView, decorator: Google::Apis::ContentV2_1::ProductView::Representation
      
          property :segments, as: 'segments', class: Google::Apis::ContentV2_1::Segments, decorator: Google::Apis::ContentV2_1::Segments::Representation
      
          property :topic_trends, as: 'topicTrends', class: Google::Apis::ContentV2_1::TopicTrends, decorator: Google::Apis::ContentV2_1::TopicTrends::Representation
      
        end
      end
      
      class RequestPhoneVerificationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :phone_number, as: 'phoneNumber'
          property :phone_region_code, as: 'phoneRegionCode'
          property :phone_verification_method, as: 'phoneVerificationMethod'
        end
      end
      
      class RequestPhoneVerificationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification_id, as: 'verificationId'
        end
      end
      
      class RequestReviewFreeListingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
        end
      end
      
      class RequestReviewShoppingAdsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
        end
      end
      
      class ReturnPolicyOnline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :countries, as: 'countries'
          collection :item_conditions, as: 'itemConditions'
          property :label, as: 'label'
          property :name, as: 'name'
          property :policy, as: 'policy', class: Google::Apis::ContentV2_1::ReturnPolicyOnlinePolicy, decorator: Google::Apis::ContentV2_1::ReturnPolicyOnlinePolicy::Representation
      
          property :restocking_fee, as: 'restockingFee', class: Google::Apis::ContentV2_1::ReturnPolicyOnlineRestockingFee, decorator: Google::Apis::ContentV2_1::ReturnPolicyOnlineRestockingFee::Representation
      
          collection :return_methods, as: 'returnMethods'
          property :return_policy_id, as: 'returnPolicyId'
          property :return_policy_uri, as: 'returnPolicyUri'
          collection :return_reason_category_info, as: 'returnReasonCategoryInfo', class: Google::Apis::ContentV2_1::ReturnPolicyOnlineReturnReasonCategoryInfo, decorator: Google::Apis::ContentV2_1::ReturnPolicyOnlineReturnReasonCategoryInfo::Representation
      
        end
      end
      
      class ReturnPolicyOnlinePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :days, :numeric_string => true, as: 'days'
          property :type, as: 'type'
        end
      end
      
      class ReturnPolicyOnlineRestockingFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_fee, as: 'fixedFee', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :micro_percent, as: 'microPercent'
        end
      end
      
      class ReturnPolicyOnlineReturnReasonCategoryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_label_source, as: 'returnLabelSource'
          property :return_reason_category, as: 'returnReasonCategory'
          property :return_shipping_fee, as: 'returnShippingFee', class: Google::Apis::ContentV2_1::ReturnPolicyOnlineReturnShippingFee, decorator: Google::Apis::ContentV2_1::ReturnPolicyOnlineReturnShippingFee::Representation
      
        end
      end
      
      class ReturnPolicyOnlineReturnShippingFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_fee, as: 'fixedFee', class: Google::Apis::ContentV2_1::PriceAmount, decorator: Google::Apis::ContentV2_1::PriceAmount::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::ContentV2_1::Value, decorator: Google::Apis::ContentV2_1::Value::Representation
      
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
          collection :results, as: 'results', class: Google::Apis::ContentV2_1::ReportRow, decorator: Google::Apis::ContentV2_1::ReportRow::Representation
      
        end
      end
      
      class Segments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :category_l1, as: 'categoryL1'
          property :category_l2, as: 'categoryL2'
          property :category_l3, as: 'categoryL3'
          property :category_l4, as: 'categoryL4'
          property :category_l5, as: 'categoryL5'
          property :currency_code, as: 'currencyCode'
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          property :customer_country_code, as: 'customerCountryCode'
          property :date, as: 'date', class: Google::Apis::ContentV2_1::Date, decorator: Google::Apis::ContentV2_1::Date::Representation
      
          property :offer_id, as: 'offerId'
          property :product_type_l1, as: 'productTypeL1'
          property :product_type_l2, as: 'productTypeL2'
          property :product_type_l3, as: 'productTypeL3'
          property :product_type_l4, as: 'productTypeL4'
          property :product_type_l5, as: 'productTypeL5'
          property :program, as: 'program'
          property :title, as: 'title'
          property :week, as: 'week', class: Google::Apis::ContentV2_1::Date, decorator: Google::Apis::ContentV2_1::Date::Representation
      
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :currency, as: 'currency'
          property :delivery_country, as: 'deliveryCountry'
          property :delivery_time, as: 'deliveryTime', class: Google::Apis::ContentV2_1::DeliveryTime, decorator: Google::Apis::ContentV2_1::DeliveryTime::Representation
      
          property :eligibility, as: 'eligibility'
          property :minimum_order_value, as: 'minimumOrderValue', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :minimum_order_value_table, as: 'minimumOrderValueTable', class: Google::Apis::ContentV2_1::MinimumOrderValueTable, decorator: Google::Apis::ContentV2_1::MinimumOrderValueTable::Representation
      
          property :name, as: 'name'
          property :pickup_service, as: 'pickupService', class: Google::Apis::ContentV2_1::PickupCarrierService, decorator: Google::Apis::ContentV2_1::PickupCarrierService::Representation
      
          collection :rate_groups, as: 'rateGroups', class: Google::Apis::ContentV2_1::RateGroup, decorator: Google::Apis::ContentV2_1::RateGroup::Representation
      
          property :shipment_type, as: 'shipmentType'
          property :store_config, as: 'storeConfig', class: Google::Apis::ContentV2_1::ServiceStoreConfig, decorator: Google::Apis::ContentV2_1::ServiceStoreConfig::Representation
      
        end
      end
      
      class ServiceStoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cutoff_config, as: 'cutoffConfig', class: Google::Apis::ContentV2_1::ServiceStoreConfigCutoffConfig, decorator: Google::Apis::ContentV2_1::ServiceStoreConfigCutoffConfig::Representation
      
          property :service_radius, as: 'serviceRadius', class: Google::Apis::ContentV2_1::Distance, decorator: Google::Apis::ContentV2_1::Distance::Representation
      
          collection :store_codes, as: 'storeCodes'
          property :store_service_type, as: 'storeServiceType'
        end
      end
      
      class ServiceStoreConfigCutoffConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_cutoff_time, as: 'localCutoffTime', class: Google::Apis::ContentV2_1::ServiceStoreConfigCutoffConfigLocalCutoffTime, decorator: Google::Apis::ContentV2_1::ServiceStoreConfigCutoffConfigLocalCutoffTime::Representation
      
          property :no_delivery_post_cutoff, as: 'noDeliveryPostCutoff'
          property :store_close_offset_hours, :numeric_string => true, as: 'storeCloseOffsetHours'
        end
      end
      
      class ServiceStoreConfigCutoffConfigLocalCutoffTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, :numeric_string => true, as: 'hour'
          property :minute, :numeric_string => true, as: 'minute'
        end
      end
      
      class ShippingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          collection :postal_code_groups, as: 'postalCodeGroups', class: Google::Apis::ContentV2_1::PostalCodeGroup, decorator: Google::Apis::ContentV2_1::PostalCodeGroup::Representation
      
          collection :services, as: 'services', class: Google::Apis::ContentV2_1::Service, decorator: Google::Apis::ContentV2_1::Service::Representation
      
          collection :warehouses, as: 'warehouses', class: Google::Apis::ContentV2_1::Warehouse, decorator: Google::Apis::ContentV2_1::Warehouse::Representation
      
        end
      end
      
      class ShippingsettingsCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequestEntry::Representation
      
        end
      end
      
      class ShippingsettingsCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :method_prop, as: 'method'
          property :shipping_settings, as: 'shippingSettings', class: Google::Apis::ContentV2_1::ShippingSettings, decorator: Google::Apis::ContentV2_1::ShippingSettings::Representation
      
        end
      end
      
      class ShippingsettingsCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ShippingsettingsCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2_1::Errors, decorator: Google::Apis::ContentV2_1::Errors::Representation
      
          property :kind, as: 'kind'
          property :shipping_settings, as: 'shippingSettings', class: Google::Apis::ContentV2_1::ShippingSettings, decorator: Google::Apis::ContentV2_1::ShippingSettings::Representation
      
        end
      end
      
      class ShippingsettingsGetSupportedCarriersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :carriers, as: 'carriers', class: Google::Apis::ContentV2_1::CarriersCarrier, decorator: Google::Apis::ContentV2_1::CarriersCarrier::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ShippingsettingsGetSupportedHolidaysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :holidays, as: 'holidays', class: Google::Apis::ContentV2_1::HolidaysHoliday, decorator: Google::Apis::ContentV2_1::HolidaysHoliday::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ShippingsettingsGetSupportedPickupServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :pickup_services, as: 'pickupServices', class: Google::Apis::ContentV2_1::PickupServicesPickupService, decorator: Google::Apis::ContentV2_1::PickupServicesPickupService::Representation
      
        end
      end
      
      class ShippingsettingsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2_1::ShippingSettings, decorator: Google::Apis::ContentV2_1::ShippingSettings::Representation
      
        end
      end
      
      class ShoppingAdsProgramStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_state, as: 'globalState'
          collection :region_statuses, as: 'regionStatuses', class: Google::Apis::ContentV2_1::ShoppingAdsProgramStatusRegionStatus, decorator: Google::Apis::ContentV2_1::ShoppingAdsProgramStatusRegionStatus::Representation
      
        end
      end
      
      class ShoppingAdsProgramStatusRegionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disapproval_date, as: 'disapprovalDate'
          property :eligibility_status, as: 'eligibilityStatus'
          collection :onboarding_issues, as: 'onboardingIssues'
          collection :region_codes, as: 'regionCodes'
          property :review_eligibility_status, as: 'reviewEligibilityStatus'
          property :review_ineligibility_reason, as: 'reviewIneligibilityReason'
          property :review_ineligibility_reason_description, as: 'reviewIneligibilityReasonDescription'
          property :review_ineligibility_reason_details, as: 'reviewIneligibilityReasonDetails', class: Google::Apis::ContentV2_1::ShoppingAdsProgramStatusReviewIneligibilityReasonDetails, decorator: Google::Apis::ContentV2_1::ShoppingAdsProgramStatusReviewIneligibilityReasonDetails::Representation
      
          collection :review_issues, as: 'reviewIssues'
        end
      end
      
      class ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cooldown_time, as: 'cooldownTime'
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_headers, as: 'columnHeaders', class: Google::Apis::ContentV2_1::Headers, decorator: Google::Apis::ContentV2_1::Headers::Representation
      
          property :name, as: 'name'
          property :row_headers, as: 'rowHeaders', class: Google::Apis::ContentV2_1::Headers, decorator: Google::Apis::ContentV2_1::Headers::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::ContentV2_1::Row, decorator: Google::Apis::ContentV2_1::Row::Representation
      
        end
      end
      
      class TextWithTooltip
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :simple_tooltip_value, as: 'simpleTooltipValue'
          property :simple_value, as: 'simpleValue'
          property :tooltip_icon_style, as: 'tooltipIconStyle'
        end
      end
      
      class TimePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class TopicTrends
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_country_code, as: 'customerCountryCode'
          property :date, as: 'date', class: Google::Apis::ContentV2_1::Date, decorator: Google::Apis::ContentV2_1::Date::Representation
      
          property :last120_days_search_interest, as: 'last120DaysSearchInterest'
          property :last30_days_search_interest, as: 'last30DaysSearchInterest'
          property :last7_days_search_interest, as: 'last7DaysSearchInterest'
          property :last90_days_search_interest, as: 'last90DaysSearchInterest'
          property :next7_days_search_interest, as: 'next7DaysSearchInterest'
          property :search_interest, as: 'searchInterest'
          property :topic, as: 'topic'
        end
      end
      
      class TransitTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postal_code_group_names, as: 'postalCodeGroupNames'
          collection :rows, as: 'rows', class: Google::Apis::ContentV2_1::TransitTableTransitTimeRow, decorator: Google::Apis::ContentV2_1::TransitTableTransitTimeRow::Representation
      
          collection :transit_time_labels, as: 'transitTimeLabels'
        end
      end
      
      class TransitTableTransitTimeRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::ContentV2_1::TransitTableTransitTimeRowTransitTimeValue, decorator: Google::Apis::ContentV2_1::TransitTableTransitTimeRowTransitTimeValue::Representation
      
        end
      end
      
      class TransitTableTransitTimeRowTransitTimeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_transit_time_in_days, as: 'maxTransitTimeInDays'
          property :min_transit_time_in_days, as: 'minTransitTimeInDays'
        end
      end
      
      class TriggerActionPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_context, as: 'actionContext'
          property :action_input, as: 'actionInput', class: Google::Apis::ContentV2_1::ActionInput, decorator: Google::Apis::ContentV2_1::ActionInput::Representation
      
        end
      end
      
      class TriggerActionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class UndeleteConversionSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UrlSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cart_uri_template, as: 'cartUriTemplate'
          property :checkout_uri_template, as: 'checkoutUriTemplate'
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_rate_name, as: 'carrierRateName'
          property :flat_rate, as: 'flatRate', class: Google::Apis::ContentV2_1::Price, decorator: Google::Apis::ContentV2_1::Price::Representation
      
          property :no_shipping, as: 'noShipping'
          property :price_percentage, as: 'pricePercentage'
          property :subtable_name, as: 'subtableName'
        end
      end
      
      class VerifyPhoneNumberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_verification_method, as: 'phoneVerificationMethod'
          property :verification_code, as: 'verificationCode'
          property :verification_id, as: 'verificationId'
        end
      end
      
      class VerifyPhoneNumberResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verified_phone_number, as: 'verifiedPhoneNumber'
        end
      end
      
      class Warehouse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_day_config, as: 'businessDayConfig', class: Google::Apis::ContentV2_1::BusinessDayConfig, decorator: Google::Apis::ContentV2_1::BusinessDayConfig::Representation
      
          property :cutoff_time, as: 'cutoffTime', class: Google::Apis::ContentV2_1::WarehouseCutoffTime, decorator: Google::Apis::ContentV2_1::WarehouseCutoffTime::Representation
      
          property :handling_days, :numeric_string => true, as: 'handlingDays'
          property :name, as: 'name'
          property :shipping_address, as: 'shippingAddress', class: Google::Apis::ContentV2_1::Address, decorator: Google::Apis::ContentV2_1::Address::Representation
      
        end
      end
      
      class WarehouseBasedDeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :carrier_service, as: 'carrierService'
          property :origin_administrative_area, as: 'originAdministrativeArea'
          property :origin_city, as: 'originCity'
          property :origin_country, as: 'originCountry'
          property :origin_postal_code, as: 'originPostalCode'
          property :origin_street_address, as: 'originStreetAddress'
          property :warehouse_name, as: 'warehouseName'
        end
      end
      
      class WarehouseCutoffTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, as: 'hour'
          property :minute, as: 'minute'
        end
      end
      
      class Weight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
    end
  end
end
