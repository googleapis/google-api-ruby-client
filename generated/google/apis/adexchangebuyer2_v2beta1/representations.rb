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
    module Adexchangebuyer2V2beta1
      
      class AbsoluteDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddDealAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuctionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BidMetricsRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BidResponseWithoutBidsStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CalloutStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Client
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUserInvitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Correction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeDealAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disapproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteredBidCreativeRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteredBidDetailRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteringStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HtmlContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImpressionMetricsRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBidMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBidResponseErrorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBidResponsesWithoutBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientUserInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativeStatusBreakdownByCreativeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativeStatusBreakdownByDetailResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDealAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilterSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilteredBidRequestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilteredBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImpressionMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLosingBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNonBillableWinningBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonBillableWinningBidStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RealtimeTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelativeDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDealAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowDimensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServingContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServingRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopWatchingCreativeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WatchCreativeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbsoluteDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::Adexchangebuyer2V2beta1::Date, decorator: Google::Apis::Adexchangebuyer2V2beta1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::Adexchangebuyer2V2beta1::Date, decorator: Google::Apis::Adexchangebuyer2V2beta1::Date::Representation
      
        end
      end
      
      class AddDealAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :association, as: 'association', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
        end
      end
      
      class AppContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_types, as: 'appTypes'
        end
      end
      
      class AuctionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auction_types, as: 'auctionTypes'
        end
      end
      
      class BidMetricsRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bids, as: 'bids', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :bids_in_auction, as: 'bidsInAuction', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :billed_impressions, as: 'billedImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :impressions_won, as: 'impressionsWon', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :measurable_impressions, as: 'measurableImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :viewable_impressions, as: 'viewableImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
        end
      end
      
      class BidResponseWithoutBidsStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impression_count, as: 'impressionCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :status, as: 'status'
        end
      end
      
      class CalloutStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :callout_status_id, as: 'calloutStatusId'
          property :impression_count, as: 'impressionCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
        end
      end
      
      class Client
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_account_id, :numeric_string => true, as: 'clientAccountId'
          property :client_name, as: 'clientName'
          property :entity_id, :numeric_string => true, as: 'entityId'
          property :entity_name, as: 'entityName'
          property :entity_type, as: 'entityType'
          property :partner_client_id, as: 'partnerClientId'
          property :role, as: 'role'
          property :status, as: 'status'
          property :visible_to_seller, as: 'visibleToSeller'
        end
      end
      
      class ClientUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_account_id, :numeric_string => true, as: 'clientAccountId'
          property :email, as: 'email'
          property :status, as: 'status'
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class ClientUserInvitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_account_id, :numeric_string => true, as: 'clientAccountId'
          property :email, as: 'email'
          property :invitation_id, :numeric_string => true, as: 'invitationId'
        end
      end
      
      class Correction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::Adexchangebuyer2V2beta1::ServingContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingContext::Representation
      
          collection :details, as: 'details'
          property :type, as: 'type'
        end
      end
      
      class Creative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :ad_choices_destination_url, as: 'adChoicesDestinationUrl'
          property :advertiser_name, as: 'advertiserName'
          property :agency_id, :numeric_string => true, as: 'agencyId'
          property :api_update_time, as: 'apiUpdateTime'
          collection :attributes, as: 'attributes'
          collection :click_through_urls, as: 'clickThroughUrls'
          collection :corrections, as: 'corrections', class: Google::Apis::Adexchangebuyer2V2beta1::Correction, decorator: Google::Apis::Adexchangebuyer2V2beta1::Correction::Representation
      
          property :creative_id, as: 'creativeId'
          property :deals_status, as: 'dealsStatus'
          collection :declared_click_through_urls, as: 'declaredClickThroughUrls'
          collection :detected_advertiser_ids, as: 'detectedAdvertiserIds'
          collection :detected_domains, as: 'detectedDomains'
          collection :detected_languages, as: 'detectedLanguages'
          collection :detected_product_categories, as: 'detectedProductCategories'
          collection :detected_sensitive_categories, as: 'detectedSensitiveCategories'
          property :filtering_stats, as: 'filteringStats', class: Google::Apis::Adexchangebuyer2V2beta1::FilteringStats, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteringStats::Representation
      
          property :html, as: 'html', class: Google::Apis::Adexchangebuyer2V2beta1::HtmlContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::HtmlContent::Representation
      
          collection :impression_tracking_urls, as: 'impressionTrackingUrls'
          property :native, as: 'native', class: Google::Apis::Adexchangebuyer2V2beta1::NativeContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::NativeContent::Representation
      
          property :open_auction_status, as: 'openAuctionStatus'
          collection :restricted_categories, as: 'restrictedCategories'
          collection :serving_restrictions, as: 'servingRestrictions', class: Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction::Representation
      
          collection :vendor_ids, as: 'vendorIds'
          property :version, as: 'version'
          property :video, as: 'video', class: Google::Apis::Adexchangebuyer2V2beta1::VideoContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::VideoContent::Representation
      
        end
      end
      
      class CreativeDealAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :creative_id, as: 'creativeId'
          property :deals_id, as: 'dealsId'
        end
      end
      
      class CreativeStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_count, as: 'bidCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :creative_status_id, as: 'creativeStatusId'
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
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
      
      class Disapproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :reason, as: 'reason'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FilterSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :absolute_date_range, as: 'absoluteDateRange', class: Google::Apis::Adexchangebuyer2V2beta1::AbsoluteDateRange, decorator: Google::Apis::Adexchangebuyer2V2beta1::AbsoluteDateRange::Representation
      
          property :creative_id, as: 'creativeId'
          property :deal_id, :numeric_string => true, as: 'dealId'
          property :environment, as: 'environment'
          collection :formats, as: 'formats'
          property :name, as: 'name'
          collection :platforms, as: 'platforms'
          collection :publisher_identifiers, as: 'publisherIdentifiers'
          property :realtime_time_range, as: 'realtimeTimeRange', class: Google::Apis::Adexchangebuyer2V2beta1::RealtimeTimeRange, decorator: Google::Apis::Adexchangebuyer2V2beta1::RealtimeTimeRange::Representation
      
          property :relative_date_range, as: 'relativeDateRange', class: Google::Apis::Adexchangebuyer2V2beta1::RelativeDateRange, decorator: Google::Apis::Adexchangebuyer2V2beta1::RelativeDateRange::Representation
      
          collection :seller_network_ids, as: 'sellerNetworkIds'
          property :time_series_granularity, as: 'timeSeriesGranularity'
        end
      end
      
      class FilteredBidCreativeRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_count, as: 'bidCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :creative_id, as: 'creativeId'
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
        end
      end
      
      class FilteredBidDetailRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_count, as: 'bidCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :detail_id, as: 'detailId'
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
        end
      end
      
      class FilteringStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::Adexchangebuyer2V2beta1::Date, decorator: Google::Apis::Adexchangebuyer2V2beta1::Date::Representation
      
          collection :reasons, as: 'reasons', class: Google::Apis::Adexchangebuyer2V2beta1::Reason, decorator: Google::Apis::Adexchangebuyer2V2beta1::Reason::Representation
      
        end
      end
      
      class HtmlContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :snippet, as: 'snippet'
          property :width, as: 'width'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :url, as: 'url'
          property :width, as: 'width'
        end
      end
      
      class ImpressionMetricsRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_impressions, as: 'availableImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :bid_requests, as: 'bidRequests', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :inventory_matches, as: 'inventoryMatches', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :responses_with_bids, as: 'responsesWithBids', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :successful_responses, as: 'successfulResponses', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
        end
      end
      
      class ListBidMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bid_metrics_rows, as: 'bidMetricsRows', class: Google::Apis::Adexchangebuyer2V2beta1::BidMetricsRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::BidMetricsRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBidResponseErrorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :callout_status_rows, as: 'calloutStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBidResponsesWithoutBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bid_response_without_bids_status_rows, as: 'bidResponseWithoutBidsStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::BidResponseWithoutBidsStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::BidResponseWithoutBidsStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClientUserInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invitations, as: 'invitations', class: Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation, decorator: Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClientUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :users, as: 'users', class: Google::Apis::Adexchangebuyer2V2beta1::ClientUser, decorator: Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
      
        end
      end
      
      class ListClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clients, as: 'clients', class: Google::Apis::Adexchangebuyer2V2beta1::Client, decorator: Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCreativeStatusBreakdownByCreativeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filtered_bid_creative_rows, as: 'filteredBidCreativeRows', class: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidCreativeRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidCreativeRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCreativeStatusBreakdownByDetailResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail_type, as: 'detailType'
          collection :filtered_bid_detail_rows, as: 'filteredBidDetailRows', class: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidDetailRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidDetailRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCreativesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creatives, as: 'creatives', class: Google::Apis::Adexchangebuyer2V2beta1::Creative, decorator: Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDealAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFilterSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filter_sets, as: 'filterSets', class: Google::Apis::Adexchangebuyer2V2beta1::FilterSet, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilterSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFilteredBidRequestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :callout_status_rows, as: 'calloutStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFilteredBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_status_rows, as: 'creativeStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListImpressionMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :impression_metrics_rows, as: 'impressionMetricsRows', class: Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetricsRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetricsRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLosingBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_status_rows, as: 'creativeStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNonBillableWinningBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :non_billable_winning_bid_status_rows, as: 'nonBillableWinningBidStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::NonBillableWinningBidStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::NonBillableWinningBidStatusRow::Representation
      
        end
      end
      
      class LocationContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :geo_criteria_ids, as: 'geoCriteriaIds'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :numeric_string => true, as: 'value'
          property :variance, :numeric_string => true, as: 'variance'
        end
      end
      
      class NativeContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_name, as: 'advertiserName'
          property :app_icon, as: 'appIcon', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :body, as: 'body'
          property :call_to_action, as: 'callToAction'
          property :click_link_url, as: 'clickLinkUrl'
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :headline, as: 'headline'
          property :image, as: 'image', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :logo, as: 'logo', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :price_display_text, as: 'priceDisplayText'
          property :star_rating, as: 'starRating'
          property :store_url, as: 'storeUrl'
          property :video_url, as: 'videoUrl'
        end
      end
      
      class NonBillableWinningBidStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_count, as: 'bidCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :status, as: 'status'
        end
      end
      
      class PlatformContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :platforms, as: 'platforms'
        end
      end
      
      class RealtimeTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_timestamp, as: 'startTimestamp'
        end
      end
      
      class Reason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :status, as: 'status'
        end
      end
      
      class RelativeDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_days, as: 'durationDays'
          property :offset_days, as: 'offsetDays'
        end
      end
      
      class RemoveDealAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :association, as: 'association', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
        end
      end
      
      class RowDimensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_interval, as: 'timeInterval', class: Google::Apis::Adexchangebuyer2V2beta1::TimeInterval, decorator: Google::Apis::Adexchangebuyer2V2beta1::TimeInterval::Representation
      
        end
      end
      
      class SecurityContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :securities, as: 'securities'
        end
      end
      
      class ServingContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          property :app_type, as: 'appType', class: Google::Apis::Adexchangebuyer2V2beta1::AppContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::AppContext::Representation
      
          property :auction_type, as: 'auctionType', class: Google::Apis::Adexchangebuyer2V2beta1::AuctionContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::AuctionContext::Representation
      
          property :location, as: 'location', class: Google::Apis::Adexchangebuyer2V2beta1::LocationContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::LocationContext::Representation
      
          property :platform, as: 'platform', class: Google::Apis::Adexchangebuyer2V2beta1::PlatformContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::PlatformContext::Representation
      
          property :security_type, as: 'securityType', class: Google::Apis::Adexchangebuyer2V2beta1::SecurityContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::SecurityContext::Representation
      
        end
      end
      
      class ServingRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::Adexchangebuyer2V2beta1::ServingContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingContext::Representation
      
          property :disapproval, as: 'disapproval', class: Google::Apis::Adexchangebuyer2V2beta1::Disapproval, decorator: Google::Apis::Adexchangebuyer2V2beta1::Disapproval::Representation
      
          collection :disapproval_reasons, as: 'disapprovalReasons', class: Google::Apis::Adexchangebuyer2V2beta1::Disapproval, decorator: Google::Apis::Adexchangebuyer2V2beta1::Disapproval::Representation
      
          property :status, as: 'status'
        end
      end
      
      class StopWatchingCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class VideoContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_url, as: 'videoUrl'
          property :video_vast_xml, as: 'videoVastXml'
        end
      end
      
      class WatchCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
    end
  end
end
