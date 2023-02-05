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
      
      class GoogleAnalyticsAdminV1alphaAccessBetweenFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDimensionHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessFilterExpressionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessInListFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessMetricHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessNumericFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessQuotaStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessStringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccountSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveAudienceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAttributionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceEventFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceEventTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceFilterClause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceSequenceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceSimpleFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBigQueryLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaConversionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCustomDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCustomMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataSharingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataStreamWebStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaFetchAutomatedGa4ConfigurationOptOutRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaFetchAutomatedGa4ConfigurationOptOutResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListAudiencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListConversionEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListDataStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListPropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaNumericValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaPropertySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaRunAccessReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaRunAccessReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSearchAds360Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaUserLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccessBetweenFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_value, as: 'fromValue', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue::Representation
      
          property :to_value, as: 'toValue', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate'
          property :start_date, as: 'startDate'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDimensionHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessDimensionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :between_filter, as: 'betweenFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBetweenFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBetweenFilter::Representation
      
          property :field_name, as: 'fieldName'
          property :in_list_filter, as: 'inListFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessInListFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessInListFilter::Representation
      
          property :numeric_filter, as: 'numericFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessNumericFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessNumericFilter::Representation
      
          property :string_filter, as: 'stringFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessStringFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessStringFilter::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_filter, as: 'accessFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilter::Representation
      
          property :and_group, as: 'andGroup', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpressionList::Representation
      
          property :not_expression, as: 'notExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression::Representation
      
          property :or_group, as: 'orGroup', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpressionList::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessFilterExpressionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessInListFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          collection :values, as: 'values'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessMetricHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessNumericFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          property :value, as: 'value', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaNumericValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desc, as: 'desc'
          property :dimension, as: 'dimension', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy::Representation
      
          property :metric, as: 'metric', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :order_type, as: 'orderType'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrent_requests, as: 'concurrentRequests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus::Representation
      
          property :server_errors_per_project_per_hour, as: 'serverErrorsPerProjectPerHour', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus::Representation
      
          property :tokens_per_day, as: 'tokensPerDay', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus::Representation
      
          property :tokens_per_hour, as: 'tokensPerHour', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus::Representation
      
          property :tokens_per_project_per_hour, as: 'tokensPerProjectPerHour', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuotaStatus::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessQuotaStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumed, as: 'consumed'
          property :remaining, as: 'remaining'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_values, as: 'dimensionValues', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimensionValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimensionValue::Representation
      
          collection :metric_values, as: 'metricValues', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetricValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetricValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccessStringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :match_type, as: 'matchType'
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deleted, as: 'deleted'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAccountSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :property_summaries, as: 'propertySummaries', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPropertySummary, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPropertySummary::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledgement, as: 'acknowledgement'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_video360_advertiser_link, as: 'displayVideo360AdvertiserLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveAudienceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAttributionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acquisition_conversion_event_lookback_window, as: 'acquisitionConversionEventLookbackWindow'
          property :name, as: 'name'
          property :other_conversion_event_lookback_window, as: 'otherConversionEventLookbackWindow'
          property :reporting_attribution_model, as: 'reportingAttributionModel'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :event_trigger, as: 'eventTrigger', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceEventTrigger, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceEventTrigger::Representation
      
          property :exclusion_duration_mode, as: 'exclusionDurationMode'
          collection :filter_clauses, as: 'filterClauses', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterClause, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterClause::Representation
      
          property :membership_duration_days, as: 'membershipDurationDays'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :at_any_point_in_time, as: 'atAnyPointInTime'
          property :between_filter, as: 'betweenFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter::Representation
      
          property :field_name, as: 'fieldName'
          property :in_any_n_day_period, as: 'inAnyNDayPeriod'
          property :in_list_filter, as: 'inListFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter::Representation
      
          property :numeric_filter, as: 'numericFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter::Representation
      
          property :string_filter, as: 'stringFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_value, as: 'fromValue', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue::Representation
      
          property :to_value, as: 'toValue', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          collection :values, as: 'values'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          property :value, as: 'value', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :match_type, as: 'matchType'
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceEventFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_name, as: 'eventName'
          property :event_parameter_filter_expression, as: 'eventParameterFilterExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceEventTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_name, as: 'eventName'
          property :log_condition, as: 'logCondition'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceFilterClause
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clause_type, as: 'clauseType'
          property :sequence_filter, as: 'sequenceFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSequenceFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSequenceFilter::Representation
      
          property :simple_filter, as: 'simpleFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSimpleFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSimpleFilter::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_group, as: 'andGroup', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList::Representation
      
          property :dimension_or_metric_filter, as: 'dimensionOrMetricFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter::Representation
      
          property :event_filter, as: 'eventFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceEventFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceEventFilter::Representation
      
          property :not_expression, as: 'notExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression::Representation
      
          property :or_group, as: 'orGroup', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filter_expressions, as: 'filterExpressions', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceSequenceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
          property :sequence_maximum_duration, as: 'sequenceMaximumDuration'
          collection :sequence_steps, as: 'sequenceSteps', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraint_duration, as: 'constraintDuration'
          property :filter_expression, as: 'filterExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression::Representation
      
          property :immediately_follows, as: 'immediatelyFollows'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAudienceSimpleFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_expression, as: 'filterExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudienceFilterExpression::Representation
      
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :direct_roles, as: 'directRoles'
          collection :effective_roles, as: 'effectiveRoles'
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notify_new_users, as: 'notifyNewUsers'
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateUserLinkRequest, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateUserLinkRequest::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBigQueryLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :daily_export_enabled, as: 'dailyExportEnabled'
          collection :excluded_events, as: 'excludedEvents'
          collection :export_streams, as: 'exportStreams'
          property :include_advertising_id, as: 'includeAdvertisingId'
          property :name, as: 'name'
          property :project, as: 'project'
          property :streaming_export_enabled, as: 'streamingExportEnabled'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :resource, as: 'resource'
          property :resource_after_change, as: 'resourceAfterChange', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource::Representation
      
          property :resource_before_change, as: 'resourceBeforeChange', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
      
          property :attribution_settings, as: 'attributionSettings', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings::Representation
      
          property :bigquery_link, as: 'bigqueryLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
      
          property :conversion_event, as: 'conversionEvent', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
      
          property :custom_dimension, as: 'customDimension', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
      
          property :custom_metric, as: 'customMetric', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
      
          property :data_retention_settings, as: 'dataRetentionSettings', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
      
          property :data_stream, as: 'dataStream', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
      
          property :display_video360_advertiser_link, as: 'displayVideo360AdvertiserLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
      
          property :display_video360_advertiser_link_proposal, as: 'displayVideo360AdvertiserLinkProposal', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
      
          property :expanded_data_set, as: 'expandedDataSet', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet::Representation
      
          property :firebase_link, as: 'firebaseLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
      
          property :google_ads_link, as: 'googleAdsLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
      
          property :google_signals_settings, as: 'googleSignalsSettings', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
      
          property :measurement_protocol_secret, as: 'measurementProtocolSecret', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
      
          property :property, as: 'property', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
      
          property :search_ads360_link, as: 'searchAds360Link', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_type, as: 'actorType'
          property :change_time, as: 'changeTime'
          collection :changes, as: 'changes', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChange, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChange::Representation
      
          property :changes_filtered, as: 'changesFiltered'
          property :id, as: 'id'
          property :user_actor_email, as: 'userActorEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaConversionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom, as: 'custom'
          property :deletable, as: 'deletable'
          property :event_name, as: 'eventName'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notify_new_user, as: 'notifyNewUser'
          property :parent, as: 'parent'
          property :user_link, as: 'userLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCustomDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disallow_ads_personalization, as: 'disallowAdsPersonalization'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCustomMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :measurement_unit, as: 'measurementUnit'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          collection :restricted_metric_type, as: 'restrictedMetricType'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_data_retention, as: 'eventDataRetention'
          property :name, as: 'name'
          property :reset_user_data_on_new_activity, as: 'resetUserDataOnNewActivity'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataSharingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sharing_with_google_any_sales_enabled, as: 'sharingWithGoogleAnySalesEnabled'
          property :sharing_with_google_assigned_sales_enabled, as: 'sharingWithGoogleAssignedSalesEnabled'
          property :sharing_with_google_products_enabled, as: 'sharingWithGoogleProductsEnabled'
          property :sharing_with_google_support_enabled, as: 'sharingWithGoogleSupportEnabled'
          property :sharing_with_others_enabled, as: 'sharingWithOthersEnabled'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_app_stream_data, as: 'androidAppStreamData', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :ios_app_stream_data, as: 'iosAppStreamData', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :web_stream_data, as: 'webStreamData', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamWebStreamData, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStreamWebStreamData::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firebase_app_id, as: 'firebaseAppId'
          property :package_name, as: 'packageName'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :firebase_app_id, as: 'firebaseAppId'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataStreamWebStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_uri, as: 'defaultUri'
          property :firebase_app_id, as: 'firebaseAppId'
          property :measurement_id, as: 'measurementId'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :advertiser_display_name, as: 'advertiserDisplayName'
          property :advertiser_id, as: 'advertiserId'
          property :campaign_data_sharing_enabled, as: 'campaignDataSharingEnabled'
          property :cost_data_sharing_enabled, as: 'costDataSharingEnabled'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :advertiser_display_name, as: 'advertiserDisplayName'
          property :advertiser_id, as: 'advertiserId'
          property :campaign_data_sharing_enabled, as: 'campaignDataSharingEnabled'
          property :cost_data_sharing_enabled, as: 'costDataSharingEnabled'
          property :link_proposal_status_details, as: 'linkProposalStatusDetails', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails::Representation
      
          property :name, as: 'name'
          property :validation_email, as: 'validationEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_collection_start_time, as: 'dataCollectionStartTime'
          property :description, as: 'description'
          property :dimension_filter_expression, as: 'dimensionFilterExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression::Representation
      
          collection :dimension_names, as: 'dimensionNames'
          property :display_name, as: 'displayName'
          collection :metric_names, as: 'metricNames'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :in_list_filter, as: 'inListFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter::Representation
      
          property :string_filter, as: 'stringFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_group, as: 'andGroup', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList::Representation
      
          property :filter, as: 'filter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilter, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilter::Representation
      
          property :not_expression, as: 'notExpression', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filter_expressions, as: 'filterExpressions', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          collection :values, as: 'values'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :match_type, as: 'matchType'
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaFetchAutomatedGa4ConfigurationOptOutRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaFetchAutomatedGa4ConfigurationOptOutResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :opt_out, as: 'optOut'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :project, as: 'project'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :snippet, as: 'snippet'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :can_manage_clients, as: 'canManageClients'
          property :create_time, as: 'createTime'
          property :creator_email_address, as: 'creatorEmailAddress'
          property :customer_id, as: 'customerId'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent, as: 'consent'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link_proposal_initiating_product, as: 'linkProposalInitiatingProduct'
          property :link_proposal_state, as: 'linkProposalState'
          property :requestor_email, as: 'requestorEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_summaries, as: 'accountSummaries', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccountSummary, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccountSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListAudiencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audiences, as: 'audiences', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_links, as: 'bigqueryLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListConversionEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_events, as: 'conversionEvents', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_dimensions, as: 'customDimensions', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_metrics, as: 'customMetrics', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListDataStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_streams, as: 'dataStreams', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_video360_advertiser_link_proposals, as: 'displayVideo360AdvertiserLinkProposals', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_video360_advertiser_links, as: 'displayVideo360AdvertiserLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firebase_links, as: 'firebaseLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_ads_links, as: 'googleAdsLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :measurement_protocol_secrets, as: 'measurementProtocolSecrets', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListPropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :properties, as: 'properties', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :search_ads360_links, as: 'searchAds360Links', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :secret_value, as: 'secretValue'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaNumericValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :create_time, as: 'createTime'
          property :currency_code, as: 'currencyCode'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :expire_time, as: 'expireTime'
          property :industry_category, as: 'industryCategory'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :property_type, as: 'propertyType'
          property :service_level, as: 'serviceLevel'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaPropertySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
          property :property, as: 'property'
          property :property_type, as: 'propertyType'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
      
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_ticket_id, as: 'accountTicketId'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaRunAccessReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDateRange, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDateRange::Representation
      
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimension, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimension::Representation
      
          property :limit, :numeric_string => true, as: 'limit'
          property :metric_filter, as: 'metricFilter', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessFilterExpression::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetric, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetric::Representation
      
          property :offset, :numeric_string => true, as: 'offset'
          collection :order_bys, as: 'orderBys', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderBy, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessOrderBy::Representation
      
          property :return_entity_quota, as: 'returnEntityQuota'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaRunAccessReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_headers, as: 'dimensionHeaders', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimensionHeader, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessDimensionHeader::Representation
      
          collection :metric_headers, as: 'metricHeaders', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetricHeader, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessMetricHeader::Representation
      
          property :quota, as: 'quota', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuota, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessQuota::Representation
      
          property :row_count, as: 'rowCount'
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessRow, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessRow::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaSearchAds360Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :advertiser_display_name, as: 'advertiserDisplayName'
          property :advertiser_id, as: 'advertiserId'
          property :campaign_data_sharing_enabled, as: 'campaignDataSharingEnabled'
          property :cost_data_sharing_enabled, as: 'costDataSharingEnabled'
          property :name, as: 'name'
          property :site_stats_sharing_enabled, as: 'siteStatsSharingEnabled'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action, as: 'action'
          collection :actor_email, as: 'actorEmail'
          property :earliest_change_time, as: 'earliestChangeTime'
          property :latest_change_time, as: 'latestChangeTime'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :property, as: 'property'
          collection :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :change_history_events, as: 'changeHistoryEvents', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryEvent, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :opt_out, as: 'optOut'
          property :property, as: 'property'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_link, as: 'userLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaUserLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :direct_roles, as: 'directRoles'
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
