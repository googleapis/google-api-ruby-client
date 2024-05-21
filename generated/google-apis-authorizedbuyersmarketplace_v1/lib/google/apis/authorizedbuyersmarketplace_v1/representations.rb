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
    module AuthorizedbuyersmarketplaceV1
      
      class AcceptProposalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateClientRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateClientUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddCreativeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddNoteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuctionPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateDealsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateDealsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelNegotiationRequest
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
      
      class Contact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CriteriaTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DayPart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DayPartTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeactivateClientRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeactivateClientUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DealPausingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinalizedDeal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstPartyMobileApplicationTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FrequencyCap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySizeTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventoryTypeTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuctionPackagesResponse
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
      
      class ListDealsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFinalizedDealsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProposalsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPublisherProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarketplaceTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaPlanner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileApplicationTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Note
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperatingSystemTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseFinalizedDealRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlacementTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreferredDealTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateAuctionTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProgrammaticGuaranteedTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proposal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublisherProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublisherProfileMobileApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeFinalizedDealRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RtbMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendRfpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetReadyToServeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeAuctionPackageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeClientsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TechnologyTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnsubscribeAuctionPackageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnsubscribeClientsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDealRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UriTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptProposalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proposal_revision, :numeric_string => true, as: 'proposalRevision'
        end
      end
      
      class ActivateClientRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ActivateClientUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AdSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, :numeric_string => true, as: 'height'
          property :type, as: 'type'
          property :width, :numeric_string => true, as: 'width'
        end
      end
      
      class AddCreativeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative, as: 'creative'
        end
      end
      
      class AddNoteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :note, as: 'note', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Note, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Note::Representation
      
        end
      end
      
      class AuctionPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :eligible_seat_ids, as: 'eligibleSeatIds'
          property :name, as: 'name'
          collection :subscribed_buyers, as: 'subscribedBuyers'
          collection :subscribed_clients, as: 'subscribedClients'
          collection :subscribed_media_planners, as: 'subscribedMediaPlanners', class: Google::Apis::AuthorizedbuyersmarketplaceV1::MediaPlanner, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::MediaPlanner::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class BatchUpdateDealsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AuthorizedbuyersmarketplaceV1::UpdateDealRequest, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::UpdateDealRequest::Representation
      
        end
      end
      
      class BatchUpdateDealsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deals, as: 'deals', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
      
        end
      end
      
      class CancelNegotiationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Client
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :partner_client_id, as: 'partnerClientId'
          property :role, as: 'role'
          property :seller_visible, as: 'sellerVisible'
          property :state, as: 'state'
        end
      end
      
      class ClientUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class Contact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
        end
      end
      
      class CreativeRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_format, as: 'creativeFormat'
          property :creative_pre_approval_policy, as: 'creativePreApprovalPolicy'
          property :creative_safe_frame_compatibility, as: 'creativeSafeFrameCompatibility'
          property :max_ad_duration_ms, :numeric_string => true, as: 'maxAdDurationMs'
          property :programmatic_creative_source, as: 'programmaticCreativeSource'
          property :skippable_ad_type, as: 'skippableAdType'
        end
      end
      
      class CriteriaTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_criteria_ids, as: 'excludedCriteriaIds'
          collection :targeted_criteria_ids, as: 'targetedCriteriaIds'
        end
      end
      
      class DayPart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :end_time, as: 'endTime', class: Google::Apis::AuthorizedbuyersmarketplaceV1::TimeOfDay, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::TimeOfDay::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::AuthorizedbuyersmarketplaceV1::TimeOfDay, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::TimeOfDay::Representation
      
        end
      end
      
      class DayPartTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :day_parts, as: 'dayParts', class: Google::Apis::AuthorizedbuyersmarketplaceV1::DayPart, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::DayPart::Representation
      
          property :time_zone_type, as: 'timeZoneType'
        end
      end
      
      class DeactivateClientRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeactivateClientUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Deal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billed_buyer, as: 'billedBuyer'
          property :buyer, as: 'buyer'
          property :client, as: 'client'
          property :create_time, as: 'createTime'
          property :creative_requirements, as: 'creativeRequirements', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CreativeRequirements, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CreativeRequirements::Representation
      
          property :deal_type, as: 'dealType'
          property :delivery_control, as: 'deliveryControl', class: Google::Apis::AuthorizedbuyersmarketplaceV1::DeliveryControl, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::DeliveryControl::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :eligible_seat_ids, as: 'eligibleSeatIds'
          property :estimated_gross_spend, as: 'estimatedGrossSpend', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Money, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Money::Representation
      
          property :flight_end_time, as: 'flightEndTime'
          property :flight_start_time, as: 'flightStartTime'
          property :media_planner, as: 'mediaPlanner', class: Google::Apis::AuthorizedbuyersmarketplaceV1::MediaPlanner, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::MediaPlanner::Representation
      
          property :name, as: 'name'
          property :preferred_deal_terms, as: 'preferredDealTerms', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PreferredDealTerms, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PreferredDealTerms::Representation
      
          property :private_auction_terms, as: 'privateAuctionTerms', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PrivateAuctionTerms, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PrivateAuctionTerms::Representation
      
          property :programmatic_guaranteed_terms, as: 'programmaticGuaranteedTerms', class: Google::Apis::AuthorizedbuyersmarketplaceV1::ProgrammaticGuaranteedTerms, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::ProgrammaticGuaranteedTerms::Representation
      
          property :proposal_revision, :numeric_string => true, as: 'proposalRevision'
          property :publisher_profile, as: 'publisherProfile'
          property :seller_time_zone, as: 'sellerTimeZone', class: Google::Apis::AuthorizedbuyersmarketplaceV1::TimeZone, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::TimeZone::Representation
      
          property :targeting, as: 'targeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::MarketplaceTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::MarketplaceTargeting::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DealPausingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pause_reason, as: 'pauseReason'
          property :pause_role, as: 'pauseRole'
          property :pausing_consented, as: 'pausingConsented'
        end
      end
      
      class DeliveryControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :companion_delivery_type, as: 'companionDeliveryType'
          property :creative_rotation_type, as: 'creativeRotationType'
          property :delivery_rate_type, as: 'deliveryRateType'
          collection :frequency_cap, as: 'frequencyCap', class: Google::Apis::AuthorizedbuyersmarketplaceV1::FrequencyCap, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::FrequencyCap::Representation
      
          property :roadblocking_type, as: 'roadblockingType'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FinalizedDeal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deal, as: 'deal', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
      
          property :deal_pausing_info, as: 'dealPausingInfo', class: Google::Apis::AuthorizedbuyersmarketplaceV1::DealPausingInfo, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::DealPausingInfo::Representation
      
          property :deal_serving_status, as: 'dealServingStatus'
          property :name, as: 'name'
          property :ready_to_serve, as: 'readyToServe'
          property :rtb_metrics, as: 'rtbMetrics', class: Google::Apis::AuthorizedbuyersmarketplaceV1::RtbMetrics, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::RtbMetrics::Representation
      
        end
      end
      
      class FirstPartyMobileApplicationTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_app_ids, as: 'excludedAppIds'
          collection :targeted_app_ids, as: 'targetedAppIds'
        end
      end
      
      class FrequencyCap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_impressions, as: 'maxImpressions'
          property :time_unit_type, as: 'timeUnitType'
          property :time_units_count, as: 'timeUnitsCount'
        end
      end
      
      class InventorySizeTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_inventory_sizes, as: 'excludedInventorySizes', class: Google::Apis::AuthorizedbuyersmarketplaceV1::AdSize, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::AdSize::Representation
      
          collection :targeted_inventory_sizes, as: 'targetedInventorySizes', class: Google::Apis::AuthorizedbuyersmarketplaceV1::AdSize, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::AdSize::Representation
      
        end
      end
      
      class InventoryTypeTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_types, as: 'inventoryTypes'
        end
      end
      
      class ListAuctionPackagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auction_packages, as: 'auctionPackages', class: Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClientUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_users, as: 'clientUsers', class: Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clients, as: 'clients', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Client, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDealsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deals, as: 'deals', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFinalizedDealsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :finalized_deals, as: 'finalizedDeals', class: Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProposalsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :proposals, as: 'proposals', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
      
        end
      end
      
      class ListPublisherProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :publisher_profiles, as: 'publisherProfiles', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile::Representation
      
        end
      end
      
      class MarketplaceTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daypart_targeting, as: 'daypartTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::DayPartTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::DayPartTargeting::Representation
      
          collection :excluded_sensitive_category_ids, as: 'excludedSensitiveCategoryIds'
          property :geo_targeting, as: 'geoTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :inventory_size_targeting, as: 'inventorySizeTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::InventorySizeTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::InventorySizeTargeting::Representation
      
          property :inventory_type_targeting, as: 'inventoryTypeTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::InventoryTypeTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::InventoryTypeTargeting::Representation
      
          property :placement_targeting, as: 'placementTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PlacementTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PlacementTargeting::Representation
      
          property :technology_targeting, as: 'technologyTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::TechnologyTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::TechnologyTargeting::Representation
      
          property :user_list_targeting, as: 'userListTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :vertical_targeting, as: 'verticalTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :video_targeting, as: 'videoTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::VideoTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::VideoTargeting::Representation
      
        end
      end
      
      class MediaPlanner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
        end
      end
      
      class MobileApplicationTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_party_targeting, as: 'firstPartyTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::FirstPartyMobileApplicationTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::FirstPartyMobileApplicationTargeting::Representation
      
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
      
      class Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator_role, as: 'creatorRole'
          property :note, as: 'note'
        end
      end
      
      class OperatingSystemTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operating_system_criteria, as: 'operatingSystemCriteria', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :operating_system_version_criteria, as: 'operatingSystemVersionCriteria', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
        end
      end
      
      class PauseFinalizedDealRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
        end
      end
      
      class PlacementTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_application_targeting, as: 'mobileApplicationTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::MobileApplicationTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::MobileApplicationTargeting::Representation
      
          property :uri_targeting, as: 'uriTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::UriTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::UriTargeting::Representation
      
        end
      end
      
      class PreferredDealTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_price, as: 'fixedPrice', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Price, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Price::Representation
      
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Money, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Money::Representation
      
          property :type, as: 'type'
        end
      end
      
      class PrivateAuctionTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :floor_price, as: 'floorPrice', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Price, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Price::Representation
      
          property :open_auction_allowed, as: 'openAuctionAllowed'
        end
      end
      
      class PrivateData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
        end
      end
      
      class ProgrammaticGuaranteedTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_price, as: 'fixedPrice', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Price, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Price::Representation
      
          property :guaranteed_looks, :numeric_string => true, as: 'guaranteedLooks'
          property :impression_cap, :numeric_string => true, as: 'impressionCap'
          property :minimum_daily_looks, :numeric_string => true, as: 'minimumDailyLooks'
          property :percent_share_of_voice, :numeric_string => true, as: 'percentShareOfVoice'
          property :reservation_type, as: 'reservationType'
        end
      end
      
      class Proposal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billed_buyer, as: 'billedBuyer'
          property :buyer, as: 'buyer'
          collection :buyer_contacts, as: 'buyerContacts', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Contact, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Contact::Representation
      
          property :buyer_private_data, as: 'buyerPrivateData', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PrivateData, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PrivateData::Representation
      
          property :client, as: 'client'
          property :deal_type, as: 'dealType'
          property :display_name, as: 'displayName'
          property :is_renegotiating, as: 'isRenegotiating'
          property :last_updater_or_commentor_role, as: 'lastUpdaterOrCommentorRole'
          property :name, as: 'name'
          collection :notes, as: 'notes', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Note, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Note::Representation
      
          property :originator_role, as: 'originatorRole'
          property :pausing_consented, as: 'pausingConsented'
          property :proposal_revision, :numeric_string => true, as: 'proposalRevision'
          property :publisher_profile, as: 'publisherProfile'
          collection :seller_contacts, as: 'sellerContacts', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Contact, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Contact::Representation
      
          property :state, as: 'state'
          property :terms_and_conditions, as: 'termsAndConditions'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PublisherProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience_description, as: 'audienceDescription'
          property :direct_deals_contact, as: 'directDealsContact'
          property :display_name, as: 'displayName'
          collection :domains, as: 'domains'
          property :is_parent, as: 'isParent'
          property :logo_url, as: 'logoUrl'
          property :media_kit_url, as: 'mediaKitUrl'
          collection :mobile_apps, as: 'mobileApps', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfileMobileApplication, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfileMobileApplication::Representation
      
          property :name, as: 'name'
          property :overview, as: 'overview'
          property :pitch_statement, as: 'pitchStatement'
          property :programmatic_deals_contact, as: 'programmaticDealsContact'
          property :publisher_code, as: 'publisherCode'
          property :sample_page_url, as: 'samplePageUrl'
          collection :top_headlines, as: 'topHeadlines'
        end
      end
      
      class PublisherProfileMobileApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_store, as: 'appStore'
          property :external_app_id, as: 'externalAppId'
          property :name, as: 'name'
        end
      end
      
      class ResumeFinalizedDealRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RtbMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_impressions7_days, :numeric_string => true, as: 'adImpressions7Days'
          property :bid_rate7_days, as: 'bidRate7Days'
          property :bid_requests7_days, :numeric_string => true, as: 'bidRequests7Days'
          property :bids7_days, :numeric_string => true, as: 'bids7Days'
          property :filtered_bid_rate7_days, as: 'filteredBidRate7Days'
          property :must_bid_rate_current_month, as: 'mustBidRateCurrentMonth'
        end
      end
      
      class SendRfpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buyer_contacts, as: 'buyerContacts', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Contact, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Contact::Representation
      
          property :client, as: 'client'
          property :display_name, as: 'displayName'
          property :estimated_gross_spend, as: 'estimatedGrossSpend', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Money, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Money::Representation
      
          property :flight_end_time, as: 'flightEndTime'
          property :flight_start_time, as: 'flightStartTime'
          property :geo_targeting, as: 'geoTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :inventory_size_targeting, as: 'inventorySizeTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::InventorySizeTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::InventorySizeTargeting::Representation
      
          property :note, as: 'note'
          property :preferred_deal_terms, as: 'preferredDealTerms', class: Google::Apis::AuthorizedbuyersmarketplaceV1::PreferredDealTerms, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::PreferredDealTerms::Representation
      
          property :programmatic_guaranteed_terms, as: 'programmaticGuaranteedTerms', class: Google::Apis::AuthorizedbuyersmarketplaceV1::ProgrammaticGuaranteedTerms, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::ProgrammaticGuaranteedTerms::Representation
      
          property :publisher_profile, as: 'publisherProfile'
        end
      end
      
      class SetReadyToServeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SubscribeAuctionPackageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SubscribeClientsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clients, as: 'clients'
        end
      end
      
      class TechnologyTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_capability_targeting, as: 'deviceCapabilityTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :device_category_targeting, as: 'deviceCategoryTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting::Representation
      
          property :operating_system_targeting, as: 'operatingSystemTargeting', class: Google::Apis::AuthorizedbuyersmarketplaceV1::OperatingSystemTargeting, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::OperatingSystemTargeting::Representation
      
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class UnsubscribeAuctionPackageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UnsubscribeClientsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clients, as: 'clients'
        end
      end
      
      class UpdateDealRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deal, as: 'deal', class: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal, decorator: Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UriTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_uris, as: 'excludedUris'
          collection :targeted_uris, as: 'targetedUris'
        end
      end
      
      class VideoTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_position_types, as: 'excludedPositionTypes'
          collection :targeted_position_types, as: 'targetedPositionTypes'
        end
      end
    end
  end
end
