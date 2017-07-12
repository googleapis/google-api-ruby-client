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
      
      class AuctionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImpressionMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImpressionStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BidMetricsRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBidResponseErrorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RealtimeTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteredBidDetailRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbsoluteDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddDealAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WatchCreativeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteredBidCreativeRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelativeDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBidResponsesWithoutBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServingContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilterSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BidResponseWithoutBidsStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUserInvitation
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
      
      class ListCreativeStatusBreakdownByDetailResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeDealAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteringStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDealAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilteredImpressionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativeStatusBreakdownByCreativeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Client
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Correction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CalloutStatusRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDealAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopWatchingCreativeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disapproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServingRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowDimensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativeStatusAndCreativeBreakdownByDetailResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilteredBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HtmlContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFilteredBidRequestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBidMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLosingBidsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImpressionMetricsRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuctionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auction_types, as: 'auctionTypes'
        end
      end
      
      class ListImpressionMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :impression_metrics_rows, as: 'impressionMetricsRows', class: Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetricsRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetricsRow::Representation
      
        end
      end
      
      class ImpressionStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impression_count, as: 'impressionCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :status, as: 'status'
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
        end
      end
      
      class BidMetricsRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billed_impressions, as: 'billedImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :bids_in_auction, as: 'bidsInAuction', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :impressions_won, as: 'impressionsWon', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :viewable_impressions, as: 'viewableImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :bids, as: 'bids', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
        end
      end
      
      class ListBidResponseErrorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :callout_status_rows, as: 'calloutStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CreativeStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bid_count, as: 'bidCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :creative_status_id, as: 'creativeStatusId'
        end
      end
      
      class RealtimeTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_timestamp, as: 'startTimestamp'
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
      
      class WatchCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class FilteredBidCreativeRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_id, as: 'creativeId'
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :bid_count, as: 'bidCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
        end
      end
      
      class RelativeDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset_days, as: 'offsetDays'
          property :duration_days, as: 'durationDays'
        end
      end
      
      class ListClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :clients, as: 'clients', class: Google::Apis::Adexchangebuyer2V2beta1::Client, decorator: Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
      
        end
      end
      
      class NativeContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :star_rating, as: 'starRating'
          property :video_url, as: 'videoUrl'
          property :click_link_url, as: 'clickLinkUrl'
          property :logo, as: 'logo', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :price_display_text, as: 'priceDisplayText'
          property :image, as: 'image', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :advertiser_name, as: 'advertiserName'
          property :store_url, as: 'storeUrl'
          property :headline, as: 'headline'
          property :app_icon, as: 'appIcon', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :call_to_action, as: 'callToAction'
        end
      end
      
      class ListBidResponsesWithoutBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bid_response_without_bids_status_rows, as: 'bidResponseWithoutBidsStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::BidResponseWithoutBidsStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::BidResponseWithoutBidsStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ServingContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::Adexchangebuyer2V2beta1::LocationContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::LocationContext::Representation
      
          property :auction_type, as: 'auctionType', class: Google::Apis::Adexchangebuyer2V2beta1::AuctionContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::AuctionContext::Representation
      
          property :all, as: 'all'
          property :app_type, as: 'appType', class: Google::Apis::Adexchangebuyer2V2beta1::AppContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::AppContext::Representation
      
          property :security_type, as: 'securityType', class: Google::Apis::Adexchangebuyer2V2beta1::SecurityContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::SecurityContext::Representation
      
          property :platform, as: 'platform', class: Google::Apis::Adexchangebuyer2V2beta1::PlatformContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::PlatformContext::Representation
      
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :height, as: 'height'
          property :width, as: 'width'
        end
      end
      
      class ListFilterSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filter_sets, as: 'filterSets', class: Google::Apis::Adexchangebuyer2V2beta1::FilterSet, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilterSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BidResponseWithoutBidsStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impression_count, as: 'impressionCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :status, as: 'status'
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
        end
      end
      
      class ClientUserInvitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :client_account_id, :numeric_string => true, as: 'clientAccountId'
          property :invitation_id, :numeric_string => true, as: 'invitationId'
        end
      end
      
      class ListClientUserInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :invitations, as: 'invitations', class: Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation, decorator: Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
      
        end
      end
      
      class ListClientUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :users, as: 'users', class: Google::Apis::Adexchangebuyer2V2beta1::ClientUser, decorator: Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
      
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
      
      class LocationContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :geo_criteria_ids, as: 'geoCriteriaIds'
        end
      end
      
      class PlatformContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :platforms, as: 'platforms'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variance, :numeric_string => true, as: 'variance'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class ClientUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          property :user_id, :numeric_string => true, as: 'userId'
          property :email, as: 'email'
          property :client_account_id, :numeric_string => true, as: 'clientAccountId'
        end
      end
      
      class CreativeDealAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_id, as: 'creativeId'
          property :deals_id, as: 'dealsId'
          property :account_id, as: 'accountId'
        end
      end
      
      class Creative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filtering_stats, as: 'filteringStats', class: Google::Apis::Adexchangebuyer2V2beta1::FilteringStats, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteringStats::Representation
      
          collection :attributes, as: 'attributes'
          property :api_update_time, as: 'apiUpdateTime'
          collection :detected_languages, as: 'detectedLanguages'
          property :creative_id, as: 'creativeId'
          property :account_id, as: 'accountId'
          property :native, as: 'native', class: Google::Apis::Adexchangebuyer2V2beta1::NativeContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::NativeContent::Representation
      
          property :video, as: 'video', class: Google::Apis::Adexchangebuyer2V2beta1::VideoContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::VideoContent::Representation
      
          collection :serving_restrictions, as: 'servingRestrictions', class: Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction::Representation
      
          property :agency_id, :numeric_string => true, as: 'agencyId'
          collection :click_through_urls, as: 'clickThroughUrls'
          property :ad_choices_destination_url, as: 'adChoicesDestinationUrl'
          collection :detected_sensitive_categories, as: 'detectedSensitiveCategories'
          collection :restricted_categories, as: 'restrictedCategories'
          collection :corrections, as: 'corrections', class: Google::Apis::Adexchangebuyer2V2beta1::Correction, decorator: Google::Apis::Adexchangebuyer2V2beta1::Correction::Representation
      
          property :version, as: 'version'
          collection :vendor_ids, as: 'vendorIds'
          collection :impression_tracking_urls, as: 'impressionTrackingUrls'
          property :html, as: 'html', class: Google::Apis::Adexchangebuyer2V2beta1::HtmlContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::HtmlContent::Representation
      
          property :deals_status, as: 'dealsStatus'
          collection :detected_product_categories, as: 'detectedProductCategories'
          property :open_auction_status, as: 'openAuctionStatus'
          property :advertiser_name, as: 'advertiserName'
          collection :detected_advertiser_ids, as: 'detectedAdvertiserIds'
          collection :detected_domains, as: 'detectedDomains'
        end
      end
      
      class FilteringStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reasons, as: 'reasons', class: Google::Apis::Adexchangebuyer2V2beta1::Reason, decorator: Google::Apis::Adexchangebuyer2V2beta1::Reason::Representation
      
          property :date, as: 'date', class: Google::Apis::Adexchangebuyer2V2beta1::Date, decorator: Google::Apis::Adexchangebuyer2V2beta1::Date::Representation
      
        end
      end
      
      class RemoveDealAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :association, as: 'association', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
        end
      end
      
      class ListFilteredImpressionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :impressions_status_rows, as: 'impressionsStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::ImpressionStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::ImpressionStatusRow::Representation
      
        end
      end
      
      class ListCreativeStatusBreakdownByCreativeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :filtered_bid_creative_rows, as: 'filteredBidCreativeRows', class: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidCreativeRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidCreativeRow::Representation
      
        end
      end
      
      class Client
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type, as: 'entityType'
          property :client_name, as: 'clientName'
          property :role, as: 'role'
          property :visible_to_seller, as: 'visibleToSeller'
          property :entity_id, :numeric_string => true, as: 'entityId'
          property :client_account_id, :numeric_string => true, as: 'clientAccountId'
          property :entity_name, as: 'entityName'
          property :status, as: 'status'
        end
      end
      
      class Correction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :type, as: 'type'
          collection :contexts, as: 'contexts', class: Google::Apis::Adexchangebuyer2V2beta1::ServingContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingContext::Representation
      
        end
      end
      
      class FilterSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :seller_network_ids, as: 'sellerNetworkIds'
          property :owner_account_id, :numeric_string => true, as: 'ownerAccountId'
          property :absolute_date_range, as: 'absoluteDateRange', class: Google::Apis::Adexchangebuyer2V2beta1::AbsoluteDateRange, decorator: Google::Apis::Adexchangebuyer2V2beta1::AbsoluteDateRange::Representation
      
          property :buyer_account_id, :numeric_string => true, as: 'buyerAccountId'
          property :environment, as: 'environment'
          property :format, as: 'format'
          property :deal_id, :numeric_string => true, as: 'dealId'
          property :time_series_granularity, as: 'timeSeriesGranularity'
          property :filter_set_id, :numeric_string => true, as: 'filterSetId'
          property :realtime_time_range, as: 'realtimeTimeRange', class: Google::Apis::Adexchangebuyer2V2beta1::RealtimeTimeRange, decorator: Google::Apis::Adexchangebuyer2V2beta1::RealtimeTimeRange::Representation
      
          property :creative_id, as: 'creativeId'
          collection :platforms, as: 'platforms'
          property :relative_date_range, as: 'relativeDateRange', class: Google::Apis::Adexchangebuyer2V2beta1::RelativeDateRange, decorator: Google::Apis::Adexchangebuyer2V2beta1::RelativeDateRange::Representation
      
        end
      end
      
      class CalloutStatusRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :callout_status_id, as: 'calloutStatusId'
          property :impression_count, as: 'impressionCount', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
        end
      end
      
      class ListDealAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :associations, as: 'associations', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
        end
      end
      
      class StopWatchingCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Disapproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :reason, as: 'reason'
        end
      end
      
      class ServingRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::Adexchangebuyer2V2beta1::ServingContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingContext::Representation
      
          property :status, as: 'status'
          collection :disapproval_reasons, as: 'disapprovalReasons', class: Google::Apis::Adexchangebuyer2V2beta1::Disapproval, decorator: Google::Apis::Adexchangebuyer2V2beta1::Disapproval::Representation
      
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :year, as: 'year'
          property :day, as: 'day'
          property :month, as: 'month'
        end
      end
      
      class RowDimensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_interval, as: 'timeInterval', class: Google::Apis::Adexchangebuyer2V2beta1::TimeInterval, decorator: Google::Apis::Adexchangebuyer2V2beta1::TimeInterval::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListCreativeStatusAndCreativeBreakdownByDetailResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filtered_bid_detail_rows, as: 'filteredBidDetailRows', class: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidDetailRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteredBidDetailRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :detail_type, as: 'detailType'
        end
      end
      
      class AppContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_types, as: 'appTypes'
        end
      end
      
      class ListFilteredBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_status_rows, as: 'creativeStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SecurityContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :securities, as: 'securities'
        end
      end
      
      class HtmlContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :width, as: 'width'
          property :snippet, as: 'snippet'
        end
      end
      
      class ListCreativesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :creatives, as: 'creatives', class: Google::Apis::Adexchangebuyer2V2beta1::Creative, decorator: Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
      
        end
      end
      
      class ListFilteredBidRequestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :callout_status_rows, as: 'calloutStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBidMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bid_metrics_rows, as: 'bidMetricsRows', class: Google::Apis::Adexchangebuyer2V2beta1::BidMetricsRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::BidMetricsRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Reason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          property :count, :numeric_string => true, as: 'count'
        end
      end
      
      class ListLosingBidsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_status_rows, as: 'creativeStatusRows', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class VideoContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_url, as: 'videoUrl'
        end
      end
      
      class ImpressionMetricsRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_impressions, as: 'availableImpressions', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :row_dimensions, as: 'rowDimensions', class: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions, decorator: Google::Apis::Adexchangebuyer2V2beta1::RowDimensions::Representation
      
          property :inventory_matches, as: 'inventoryMatches', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :bid_requests, as: 'bidRequests', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :responses_with_bids, as: 'responsesWithBids', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
          property :successful_responses, as: 'successfulResponses', class: Google::Apis::Adexchangebuyer2V2beta1::MetricValue, decorator: Google::Apis::Adexchangebuyer2V2beta1::MetricValue::Representation
      
        end
      end
    end
  end
end
