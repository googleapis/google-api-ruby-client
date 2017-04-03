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
      
      class VideoContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUserInvitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuctionContext
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
      
      class LocationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformContext
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
      
      class FilteringStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDealAssociationRequest
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
      
      class ListDealAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddDealAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disapproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopWatchingCreativeRequest
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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WatchCreativeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientsResponse
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
      
      class ServingContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_url, as: 'videoUrl'
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
      
      class AuctionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auction_types, as: 'auctionTypes'
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
      
      class FilteringStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reasons, as: 'reasons', class: Google::Apis::Adexchangebuyer2V2beta1::Reason, decorator: Google::Apis::Adexchangebuyer2V2beta1::Reason::Representation
      
          property :date, as: 'date', class: Google::Apis::Adexchangebuyer2V2beta1::Date, decorator: Google::Apis::Adexchangebuyer2V2beta1::Date::Representation
      
        end
      end
      
      class Creative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :click_through_urls, as: 'clickThroughUrls'
          collection :detected_sensitive_categories, as: 'detectedSensitiveCategories'
          property :ad_choices_destination_url, as: 'adChoicesDestinationUrl'
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
          property :filtering_stats, as: 'filteringStats', class: Google::Apis::Adexchangebuyer2V2beta1::FilteringStats, decorator: Google::Apis::Adexchangebuyer2V2beta1::FilteringStats::Representation
      
          collection :attributes, as: 'attributes'
          property :api_update_time, as: 'apiUpdateTime'
          collection :detected_languages, as: 'detectedLanguages'
          property :creative_id, as: 'creativeId'
          property :account_id, as: 'accountId'
          property :native, as: 'native', class: Google::Apis::Adexchangebuyer2V2beta1::NativeContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::NativeContent::Representation
      
          collection :serving_restrictions, as: 'servingRestrictions', class: Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction::Representation
      
          property :video, as: 'video', class: Google::Apis::Adexchangebuyer2V2beta1::VideoContent, decorator: Google::Apis::Adexchangebuyer2V2beta1::VideoContent::Representation
      
          property :agency_id, :numeric_string => true, as: 'agencyId'
        end
      end
      
      class RemoveDealAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :association, as: 'association', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
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
          property :type, as: 'type'
          collection :contexts, as: 'contexts', class: Google::Apis::Adexchangebuyer2V2beta1::ServingContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingContext::Representation
      
          collection :details, as: 'details'
        end
      end
      
      class ListDealAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class AddDealAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :association, as: 'association', class: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation, decorator: Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation::Representation
      
        end
      end
      
      class Disapproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :reason, as: 'reason'
        end
      end
      
      class StopWatchingCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ServingRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          collection :disapproval_reasons, as: 'disapprovalReasons', class: Google::Apis::Adexchangebuyer2V2beta1::Disapproval, decorator: Google::Apis::Adexchangebuyer2V2beta1::Disapproval::Representation
      
          collection :contexts, as: 'contexts', class: Google::Apis::Adexchangebuyer2V2beta1::ServingContext, decorator: Google::Apis::Adexchangebuyer2V2beta1::ServingContext::Representation
      
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class WatchCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class AppContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_types, as: 'appTypes'
        end
      end
      
      class NativeContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :advertiser_name, as: 'advertiserName'
          property :store_url, as: 'storeUrl'
          property :headline, as: 'headline'
          property :app_icon, as: 'appIcon', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :call_to_action, as: 'callToAction'
          property :body, as: 'body'
          property :star_rating, as: 'starRating'
          property :video_url, as: 'videoUrl'
          property :click_link_url, as: 'clickLinkUrl'
          property :logo, as: 'logo', class: Google::Apis::Adexchangebuyer2V2beta1::Image, decorator: Google::Apis::Adexchangebuyer2V2beta1::Image::Representation
      
          property :price_display_text, as: 'priceDisplayText'
        end
      end
      
      class ListClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :clients, as: 'clients', class: Google::Apis::Adexchangebuyer2V2beta1::Client, decorator: Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
      
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
          collection :creatives, as: 'creatives', class: Google::Apis::Adexchangebuyer2V2beta1::Creative, decorator: Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
      
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
          property :width, as: 'width'
          property :url, as: 'url'
          property :height, as: 'height'
        end
      end
      
      class Reason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          property :count, :numeric_string => true, as: 'count'
        end
      end
    end
  end
end
