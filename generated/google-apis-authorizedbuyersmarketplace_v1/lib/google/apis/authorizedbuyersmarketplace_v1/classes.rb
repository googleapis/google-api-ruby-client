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
      
      # Request to accept a proposal. Accepting a proposal implies acceptance of the
      # publisher terms_and_conditions, if any.
      class AcceptProposalRequest
        include Google::Apis::Core::Hashable
      
        # The last known client revision number of the proposal.
        # Corresponds to the JSON property `proposalRevision`
        # @return [Fixnum]
        attr_accessor :proposal_revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proposal_revision = args[:proposal_revision] if args.key?(:proposal_revision)
        end
      end
      
      # Request message for activating a client.
      class ActivateClientRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for activating a client user.
      class ActivateClientUserRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents size of a single ad slot, or a creative.
      class AdSize
        include Google::Apis::Core::Hashable
      
        # The height of the ad slot in pixels. This field will be present only when size
        # type is `PIXEL`.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The type of the ad slot size.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The width of the ad slot in pixels. This field will be present only when size
        # type is `PIXEL`.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @type = args[:type] if args.key?(:type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Request message for adding creative to be used in the bidding process for the
      # finalized deal.
      class AddCreativeRequest
        include Google::Apis::Core::Hashable
      
        # Name of the creative to add to the finalized deal, in the format `buyers/`
        # buyerAccountId`/creatives/`creativeId``. See creative.name.
        # Corresponds to the JSON property `creative`
        # @return [String]
        attr_accessor :creative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative = args[:creative] if args.key?(:creative)
        end
      end
      
      # Request to add a note.
      class AddNoteRequest
        include Google::Apis::Core::Hashable
      
        # A text note attached to the proposal to facilitate the communication between
        # buyers and sellers.
        # Corresponds to the JSON property `note`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Note]
        attr_accessor :note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @note = args[:note] if args.key?(:note)
        end
      end
      
      # Defines a segment of inventory that buyer wants to buy. It's created by buyer
      # and could be shared with multiple buyers.
      class AuctionPackage
        include Google::Apis::Core::Hashable
      
        # Output only. Time the auction package was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The buyer that created this auction package. Format: `buyers/`
        # buyerAccountId``
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Output only. A description of the auction package.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display_name assigned to the auction package.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The unique identifier for the auction package. Format: `buyers/`
        # accountId`/auctionPackages/`auctionPackageId`` The auction_package_id part of
        # name is sent in the BidRequest to all RTB bidders and is returned as deal_id
        # by the bidder in the BidResponse.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of clients of the current buyer that are subscribed to
        # the AuctionPackage. Format: `buyers/`buyerAccountId`/clients/`clientAccountId``
        # Corresponds to the JSON property `subscribedClients`
        # @return [Array<String>]
        attr_accessor :subscribed_clients
      
        # Output only. Time the auction package was last updated. This value is only
        # increased when this auction package is updated but never when a buyer
        # subscribed.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @subscribed_clients = args[:subscribed_clients] if args.key?(:subscribed_clients)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for batch updating deals.
      class BatchUpdateDealsRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of request messages to update deals.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::UpdateDealRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for batch updating deals.
      class BatchUpdateDealsResponse
        include Google::Apis::Core::Hashable
      
        # Deals updated.
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Deal>]
        attr_accessor :deals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
        end
      end
      
      # Request to cancel an ongoing negotiation.
      class CancelNegotiationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A client represents an agency, a brand, or an advertiser customer of the buyer.
      # Based on the client's role, its client users will have varying levels of
      # restricted access to the Marketplace and certain other sections of the
      # Authorized Buyers UI.
      class Client
        include Google::Apis::Core::Hashable
      
        # Required. Display name shown to publishers. Must be unique for clients without
        # partnerClientId specified. Maximum length of 255 characters is allowed.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the client. Format: `buyers/`accountId`/
        # clients/`clientAccountId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Arbitrary unique identifier provided by the buyer. This field can be used to
        # associate a client with an identifier in the namespace of the buyer, lookup
        # clients by that identifier and verify whether an Authorized Buyers account of
        # the client already exists. If present, must be unique across all the clients.
        # Corresponds to the JSON property `partnerClientId`
        # @return [String]
        attr_accessor :partner_client_id
      
        # Required. The role assigned to the client. Each role implies a set of
        # permissions granted to the client.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Whether the client will be visible to sellers.
        # Corresponds to the JSON property `sellerVisible`
        # @return [Boolean]
        attr_accessor :seller_visible
        alias_method :seller_visible?, :seller_visible
      
        # Output only. The state of the client.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @partner_client_id = args[:partner_client_id] if args.key?(:partner_client_id)
          @role = args[:role] if args.key?(:role)
          @seller_visible = args[:seller_visible] if args.key?(:seller_visible)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A user of a client who has restricted access to the Marketplace and certain
      # other sections of the Authorized Buyers UI based on the role granted to the
      # associated client.
      class ClientUser
        include Google::Apis::Core::Hashable
      
        # Required. The client user's email address that has to be unique across all
        # users for the same client.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The resource name of the client user. Format: `buyers/`accountId`/
        # clients/`clientAccountId`/users/`userId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the client user.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains information on how a buyer or seller can be reached.
      class Contact
        include Google::Apis::Core::Hashable
      
        # The display_name of the contact.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Email address for the contact.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Message captures data about the creatives in the deal.
      class CreativeRequirements
        include Google::Apis::Core::Hashable
      
        # Output only. The format of the creative, only applicable for programmatic
        # guaranteed and preferred deals.
        # Corresponds to the JSON property `creativeFormat`
        # @return [String]
        attr_accessor :creative_format
      
        # Output only. Specifies the creative pre-approval policy.
        # Corresponds to the JSON property `creativePreApprovalPolicy`
        # @return [String]
        attr_accessor :creative_pre_approval_policy
      
        # Output only. Specifies whether the creative is safeFrame compatible.
        # Corresponds to the JSON property `creativeSafeFrameCompatibility`
        # @return [String]
        attr_accessor :creative_safe_frame_compatibility
      
        # Output only. The max duration of the video creative in milliseconds. only
        # applicable for deals with video creatives.
        # Corresponds to the JSON property `maxAdDurationMs`
        # @return [Fixnum]
        attr_accessor :max_ad_duration_ms
      
        # Output only. Specifies the creative source for programmatic deals. PUBLISHER
        # means creative is provided by seller and ADVERTISER means creative is provided
        # by the buyer.
        # Corresponds to the JSON property `programmaticCreativeSource`
        # @return [String]
        attr_accessor :programmatic_creative_source
      
        # Output only. Skippable video ads allow viewers to skip ads after 5 seconds.
        # Only applicable for deals with video creatives.
        # Corresponds to the JSON property `skippableAdType`
        # @return [String]
        attr_accessor :skippable_ad_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_format = args[:creative_format] if args.key?(:creative_format)
          @creative_pre_approval_policy = args[:creative_pre_approval_policy] if args.key?(:creative_pre_approval_policy)
          @creative_safe_frame_compatibility = args[:creative_safe_frame_compatibility] if args.key?(:creative_safe_frame_compatibility)
          @max_ad_duration_ms = args[:max_ad_duration_ms] if args.key?(:max_ad_duration_ms)
          @programmatic_creative_source = args[:programmatic_creative_source] if args.key?(:programmatic_creative_source)
          @skippable_ad_type = args[:skippable_ad_type] if args.key?(:skippable_ad_type)
        end
      end
      
      # Generic targeting used for targeting dimensions that contains a list of
      # included and excluded numeric IDs. This cannot be filtered using list filter
      # syntax.
      class CriteriaTargeting
        include Google::Apis::Core::Hashable
      
        # A list of numeric IDs to be excluded.
        # Corresponds to the JSON property `excludedCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :excluded_criteria_ids
      
        # A list of numeric IDs to be included.
        # Corresponds to the JSON property `targetedCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :targeted_criteria_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_criteria_ids = args[:excluded_criteria_ids] if args.key?(:excluded_criteria_ids)
          @targeted_criteria_ids = args[:targeted_criteria_ids] if args.key?(:targeted_criteria_ids)
        end
      end
      
      # Defines targeting for a period of time on a specific week day.
      class DayPart
        include Google::Apis::Core::Hashable
      
        # Day of week for the period.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::TimeOfDay]
        attr_accessor :end_time
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents Daypart targeting.
      class DayPartTargeting
        include Google::Apis::Core::Hashable
      
        # The targeted weekdays and times
        # Corresponds to the JSON property `dayParts`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::DayPart>]
        attr_accessor :day_parts
      
        # The time zone type of the day parts
        # Corresponds to the JSON property `timeZoneType`
        # @return [String]
        attr_accessor :time_zone_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_parts = args[:day_parts] if args.key?(:day_parts)
          @time_zone_type = args[:time_zone_type] if args.key?(:time_zone_type)
        end
      end
      
      # Request message for disabling a client.
      class DeactivateClientRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for deactivating a client user.
      class DeactivateClientUserRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A deal represents a segment of inventory for displaying ads that contains the
      # terms and targeting information that is used for serving as well as the deal
      # stats and status. Note: A proposal may contain multiple deals.
      class Deal
        include Google::Apis::Core::Hashable
      
        # Output only. When the client field is populated, this field refers to the
        # buyer who creates and manages the client buyer and gets billed on behalf of
        # the client buyer; when the buyer field is populated, this field is the same
        # value as buyer. Format : `buyers/`buyerAccountId``
        # Corresponds to the JSON property `billedBuyer`
        # @return [String]
        attr_accessor :billed_buyer
      
        # Output only. Refers to a buyer in The Realtime-bidding API. Format: `buyers/`
        # buyerAccountId``
        # Corresponds to the JSON property `buyer`
        # @return [String]
        attr_accessor :buyer
      
        # Output only. Refers to a Client. Format: `buyers/`buyerAccountId`/clients/`
        # clientAccountid``
        # Corresponds to the JSON property `client`
        # @return [String]
        attr_accessor :client
      
        # Output only. The time of the deal creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Message captures data about the creatives in the deal.
        # Corresponds to the JSON property `creativeRequirements`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CreativeRequirements]
        attr_accessor :creative_requirements
      
        # Output only. Type of deal.
        # Corresponds to the JSON property `dealType`
        # @return [String]
        attr_accessor :deal_type
      
        # Message contains details about how the deal will be paced.
        # Corresponds to the JSON property `deliveryControl`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::DeliveryControl]
        attr_accessor :delivery_control
      
        # Output only. Free text description for the deal terms.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of the deal. Maximum length of 255 unicode characters is
        # allowed. Control characters are not allowed. Buyers cannot update this field.
        # Note: Not to be confused with name, which is a unique identifier of the deal.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `estimatedGrossSpend`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Money]
        attr_accessor :estimated_gross_spend
      
        # Proposed flight end time of the deal. This will generally be stored in a
        # granularity of a second. A value is not necessary for Private Auction deals.
        # Corresponds to the JSON property `flightEndTime`
        # @return [String]
        attr_accessor :flight_end_time
      
        # Proposed flight start time of the deal. This will generally be stored in the
        # granularity of one second since deal serving starts at seconds boundary. Any
        # time specified with more granularity (for example, in milliseconds) will be
        # truncated towards the start of time in seconds.
        # Corresponds to the JSON property `flightStartTime`
        # @return [String]
        attr_accessor :flight_start_time
      
        # Immutable. The unique identifier of the deal. Auto-generated by the server
        # when a deal is created. Format: buyers/`accountId`/proposals/`proposalId`/
        # deals/`dealId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Pricing terms for Preferred Deals.
        # Corresponds to the JSON property `preferredDealTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::PreferredDealTerms]
        attr_accessor :preferred_deal_terms
      
        # Pricing terms for Private Auctions.
        # Corresponds to the JSON property `privateAuctionTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::PrivateAuctionTerms]
        attr_accessor :private_auction_terms
      
        # Pricing terms for Programmatic Guaranteed Deals.
        # Corresponds to the JSON property `programmaticGuaranteedTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ProgrammaticGuaranteedTerms]
        attr_accessor :programmatic_guaranteed_terms
      
        # Output only. The revision number for the proposal and is the same value as
        # proposal.proposal_revision. Each update to deal causes the proposal revision
        # number to auto-increment. The buyer keeps track of the last revision number
        # they know of and pass it in when making an update. If the head revision number
        # on the server has since incremented, then an ABORTED error is returned during
        # the update operation to let the buyer know that a subsequent update was made.
        # Corresponds to the JSON property `proposalRevision`
        # @return [Fixnum]
        attr_accessor :proposal_revision
      
        # Immutable. Reference to the seller on the deal. Format: `buyers/`
        # buyerAccountId`/publisherProfiles/`publisherProfileId``
        # Corresponds to the JSON property `publisherProfile`
        # @return [String]
        attr_accessor :publisher_profile
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `sellerTimeZone`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::TimeZone]
        attr_accessor :seller_time_zone
      
        # Targeting represents different criteria that can be used to target inventory.
        # For example, they can choose to target inventory only if the user is in the US.
        # Multiple types of targeting are always applied as a logical AND, unless noted
        # otherwise.
        # Corresponds to the JSON property `targeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::MarketplaceTargeting]
        attr_accessor :targeting
      
        # Output only. The time when the deal was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billed_buyer = args[:billed_buyer] if args.key?(:billed_buyer)
          @buyer = args[:buyer] if args.key?(:buyer)
          @client = args[:client] if args.key?(:client)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creative_requirements = args[:creative_requirements] if args.key?(:creative_requirements)
          @deal_type = args[:deal_type] if args.key?(:deal_type)
          @delivery_control = args[:delivery_control] if args.key?(:delivery_control)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @estimated_gross_spend = args[:estimated_gross_spend] if args.key?(:estimated_gross_spend)
          @flight_end_time = args[:flight_end_time] if args.key?(:flight_end_time)
          @flight_start_time = args[:flight_start_time] if args.key?(:flight_start_time)
          @name = args[:name] if args.key?(:name)
          @preferred_deal_terms = args[:preferred_deal_terms] if args.key?(:preferred_deal_terms)
          @private_auction_terms = args[:private_auction_terms] if args.key?(:private_auction_terms)
          @programmatic_guaranteed_terms = args[:programmatic_guaranteed_terms] if args.key?(:programmatic_guaranteed_terms)
          @proposal_revision = args[:proposal_revision] if args.key?(:proposal_revision)
          @publisher_profile = args[:publisher_profile] if args.key?(:publisher_profile)
          @seller_time_zone = args[:seller_time_zone] if args.key?(:seller_time_zone)
          @targeting = args[:targeting] if args.key?(:targeting)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information related to deal pausing.
      class DealPausingInfo
        include Google::Apis::Core::Hashable
      
        # The reason for the pausing of the deal; empty for active deals.
        # Corresponds to the JSON property `pauseReason`
        # @return [String]
        attr_accessor :pause_reason
      
        # The party that first paused the deal; unspecified for active deals.
        # Corresponds to the JSON property `pauseRole`
        # @return [String]
        attr_accessor :pause_role
      
        # Whether pausing is consented between buyer and seller for the deal.
        # Corresponds to the JSON property `pausingConsented`
        # @return [Boolean]
        attr_accessor :pausing_consented
        alias_method :pausing_consented?, :pausing_consented
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pause_reason = args[:pause_reason] if args.key?(:pause_reason)
          @pause_role = args[:pause_role] if args.key?(:pause_role)
          @pausing_consented = args[:pausing_consented] if args.key?(:pausing_consented)
        end
      end
      
      # Message contains details about how the deal will be paced.
      class DeliveryControl
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies roadblocking in a main companion lineitem.
        # Corresponds to the JSON property `companionDeliveryType`
        # @return [String]
        attr_accessor :companion_delivery_type
      
        # Output only. Specifies strategy to use for selecting a creative when multiple
        # creatives of the same size are available.
        # Corresponds to the JSON property `creativeRotationType`
        # @return [String]
        attr_accessor :creative_rotation_type
      
        # Output only. Specifies how the impression delivery will be paced.
        # Corresponds to the JSON property `deliveryRateType`
        # @return [String]
        attr_accessor :delivery_rate_type
      
        # Output only. Specifies any frequency caps. Cannot be filtered within
        # ListDealsRequest.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::FrequencyCap>]
        attr_accessor :frequency_cap
      
        # Output only. Specifies the roadblocking type in display creatives.
        # Corresponds to the JSON property `roadblockingType`
        # @return [String]
        attr_accessor :roadblocking_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @companion_delivery_type = args[:companion_delivery_type] if args.key?(:companion_delivery_type)
          @creative_rotation_type = args[:creative_rotation_type] if args.key?(:creative_rotation_type)
          @delivery_rate_type = args[:delivery_rate_type] if args.key?(:delivery_rate_type)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @roadblocking_type = args[:roadblocking_type] if args.key?(:roadblocking_type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A finalized deal is a snapshot of the deal when both buyer and seller accept
      # the deal. The buyer or seller can update the deal after it's been finalized
      # and renegotiate on the deal targeting, terms and other fields, while at the
      # same time the finalized snapshot of the deal can still be retrieved using this
      # API. The finalized deal contains a copy of the deal as it existed when most
      # recently finalized, as well as fields related to deal serving such as pause/
      # resume status, RTB metrics, and more.
      class FinalizedDeal
        include Google::Apis::Core::Hashable
      
        # A deal represents a segment of inventory for displaying ads that contains the
        # terms and targeting information that is used for serving as well as the deal
        # stats and status. Note: A proposal may contain multiple deals.
        # Corresponds to the JSON property `deal`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal]
        attr_accessor :deal
      
        # Information related to deal pausing.
        # Corresponds to the JSON property `dealPausingInfo`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::DealPausingInfo]
        attr_accessor :deal_pausing_info
      
        # Serving status of the deal.
        # Corresponds to the JSON property `dealServingStatus`
        # @return [String]
        attr_accessor :deal_serving_status
      
        # The resource name of the finalized deal. Format: `buyers/`accountId`/
        # finalizeddeals/`finalizedDealId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the Programmatic Guaranteed deal is ready for serving.
        # Corresponds to the JSON property `readyToServe`
        # @return [Boolean]
        attr_accessor :ready_to_serve
        alias_method :ready_to_serve?, :ready_to_serve
      
        # Real-time bidding metrics. For what each metric means refer to [Report metrics]
        # (https://support.google.com/adxbuyer/answer/6115195#report-metrics)
        # Corresponds to the JSON property `rtbMetrics`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::RtbMetrics]
        attr_accessor :rtb_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deal = args[:deal] if args.key?(:deal)
          @deal_pausing_info = args[:deal_pausing_info] if args.key?(:deal_pausing_info)
          @deal_serving_status = args[:deal_serving_status] if args.key?(:deal_serving_status)
          @name = args[:name] if args.key?(:name)
          @ready_to_serve = args[:ready_to_serve] if args.key?(:ready_to_serve)
          @rtb_metrics = args[:rtb_metrics] if args.key?(:rtb_metrics)
        end
      end
      
      # Represents a list of targeted and excluded mobile application IDs that
      # publishers own. Android App ID, for example, com.google.android.apps.maps, can
      # be found in Google Play Store URL. iOS App ID (which is a number) can be found
      # at the end of iTunes store URL. First party mobile applications is either
      # included or excluded.
      class FirstPartyMobileApplicationTargeting
        include Google::Apis::Core::Hashable
      
        # A list of application IDs to be excluded.
        # Corresponds to the JSON property `excludedAppIds`
        # @return [Array<String>]
        attr_accessor :excluded_app_ids
      
        # A list of application IDs to be included.
        # Corresponds to the JSON property `targetedAppIds`
        # @return [Array<String>]
        attr_accessor :targeted_app_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_app_ids = args[:excluded_app_ids] if args.key?(:excluded_app_ids)
          @targeted_app_ids = args[:targeted_app_ids] if args.key?(:targeted_app_ids)
        end
      end
      
      # Message contains details about publisher-set frequency caps of the delivery.
      class FrequencyCap
        include Google::Apis::Core::Hashable
      
        # The maximum number of impressions that can be served to a user within the
        # specified time period.
        # Corresponds to the JSON property `maxImpressions`
        # @return [Fixnum]
        attr_accessor :max_impressions
      
        # The time unit. Along with num_time_units defines the amount of time over which
        # impressions per user are counted and capped.
        # Corresponds to the JSON property `timeUnitType`
        # @return [String]
        attr_accessor :time_unit_type
      
        # The amount of time, in the units specified by time_unit_type. Defines the
        # amount of time over which impressions per user are counted and capped.
        # Corresponds to the JSON property `timeUnitsCount`
        # @return [Fixnum]
        attr_accessor :time_units_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_impressions = args[:max_impressions] if args.key?(:max_impressions)
          @time_unit_type = args[:time_unit_type] if args.key?(:time_unit_type)
          @time_units_count = args[:time_units_count] if args.key?(:time_units_count)
        end
      end
      
      # Represents the size of an ad unit that can be targeted on a bid request.
      class InventorySizeTargeting
        include Google::Apis::Core::Hashable
      
        # A list of inventory sizes to be excluded.
        # Corresponds to the JSON property `excludedInventorySizes`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::AdSize>]
        attr_accessor :excluded_inventory_sizes
      
        # A list of inventory sizes to be included.
        # Corresponds to the JSON property `targetedInventorySizes`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::AdSize>]
        attr_accessor :targeted_inventory_sizes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_inventory_sizes = args[:excluded_inventory_sizes] if args.key?(:excluded_inventory_sizes)
          @targeted_inventory_sizes = args[:targeted_inventory_sizes] if args.key?(:targeted_inventory_sizes)
        end
      end
      
      # Targeting of the inventory types a bid request can originate from.
      class InventoryTypeTargeting
        include Google::Apis::Core::Hashable
      
        # The list of targeted inventory types for the bid request.
        # Corresponds to the JSON property `inventoryTypes`
        # @return [Array<String>]
        attr_accessor :inventory_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_types = args[:inventory_types] if args.key?(:inventory_types)
        end
      end
      
      # Response message for listing auction packages.
      class ListAuctionPackagesResponse
        include Google::Apis::Core::Hashable
      
        # The list of auction packages.
        # Corresponds to the JSON property `auctionPackages`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage>]
        attr_accessor :auction_packages
      
        # Continuation token for fetching the next page of results. Pass this value in
        # the ListAuctionPackagesRequest.pageToken field in the subsequent call to the `
        # ListAuctionPackages` method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auction_packages = args[:auction_packages] if args.key?(:auction_packages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the list method.
      class ListClientUsersResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of client users.
        # Corresponds to the JSON property `clientUsers`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser>]
        attr_accessor :client_users
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListClientUsersRequest.pageToken field in the subsequent call to the list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_users = args[:client_users] if args.key?(:client_users)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the list method.
      class ListClientsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of clients.
        # Corresponds to the JSON property `clients`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Client>]
        attr_accessor :clients
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListClientsRequest.pageToken field in the subsequent call to the list method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clients = args[:clients] if args.key?(:clients)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing deals in a proposal.
      class ListDealsResponse
        include Google::Apis::Core::Hashable
      
        # The list of deals.
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Deal>]
        attr_accessor :deals
      
        # Token to fetch the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing finalized deals.
      class ListFinalizedDealsResponse
        include Google::Apis::Core::Hashable
      
        # The list of finalized deals.
        # Corresponds to the JSON property `finalizedDeals`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal>]
        attr_accessor :finalized_deals
      
        # Token to fetch the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finalized_deals = args[:finalized_deals] if args.key?(:finalized_deals)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing proposals.
      class ListProposalsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of proposals.
        # Corresponds to the JSON property `proposals`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal>]
        attr_accessor :proposals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @proposals = args[:proposals] if args.key?(:proposals)
        end
      end
      
      # Response message for profiles visible to the buyer.
      class ListPublisherProfilesResponse
        include Google::Apis::Core::Hashable
      
        # Token to fetch the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching publisher profiles.
        # Corresponds to the JSON property `publisherProfiles`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile>]
        attr_accessor :publisher_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @publisher_profiles = args[:publisher_profiles] if args.key?(:publisher_profiles)
        end
      end
      
      # Targeting represents different criteria that can be used to target inventory.
      # For example, they can choose to target inventory only if the user is in the US.
      # Multiple types of targeting are always applied as a logical AND, unless noted
      # otherwise.
      class MarketplaceTargeting
        include Google::Apis::Core::Hashable
      
        # Represents Daypart targeting.
        # Corresponds to the JSON property `daypartTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::DayPartTargeting]
        attr_accessor :daypart_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :geo_targeting
      
        # Represents the size of an ad unit that can be targeted on a bid request.
        # Corresponds to the JSON property `inventorySizeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::InventorySizeTargeting]
        attr_accessor :inventory_size_targeting
      
        # Targeting of the inventory types a bid request can originate from.
        # Corresponds to the JSON property `inventoryTypeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::InventoryTypeTargeting]
        attr_accessor :inventory_type_targeting
      
        # Represents targeting about where the ads can appear, for example, certain
        # sites or mobile applications. Different placement targeting types will be
        # logically OR'ed.
        # Corresponds to the JSON property `placementTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::PlacementTargeting]
        attr_accessor :placement_targeting
      
        # Represents targeting about various types of technology.
        # Corresponds to the JSON property `technologyTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::TechnologyTargeting]
        attr_accessor :technology_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `userListTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :user_list_targeting
      
        # Represents targeting information about video.
        # Corresponds to the JSON property `videoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::VideoTargeting]
        attr_accessor :video_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daypart_targeting = args[:daypart_targeting] if args.key?(:daypart_targeting)
          @geo_targeting = args[:geo_targeting] if args.key?(:geo_targeting)
          @inventory_size_targeting = args[:inventory_size_targeting] if args.key?(:inventory_size_targeting)
          @inventory_type_targeting = args[:inventory_type_targeting] if args.key?(:inventory_type_targeting)
          @placement_targeting = args[:placement_targeting] if args.key?(:placement_targeting)
          @technology_targeting = args[:technology_targeting] if args.key?(:technology_targeting)
          @user_list_targeting = args[:user_list_targeting] if args.key?(:user_list_targeting)
          @video_targeting = args[:video_targeting] if args.key?(:video_targeting)
        end
      end
      
      # Mobile application targeting settings.
      class MobileApplicationTargeting
        include Google::Apis::Core::Hashable
      
        # Represents a list of targeted and excluded mobile application IDs that
        # publishers own. Android App ID, for example, com.google.android.apps.maps, can
        # be found in Google Play Store URL. iOS App ID (which is a number) can be found
        # at the end of iTunes store URL. First party mobile applications is either
        # included or excluded.
        # Corresponds to the JSON property `firstPartyTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::FirstPartyMobileApplicationTargeting]
        attr_accessor :first_party_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_party_targeting = args[:first_party_targeting] if args.key?(:first_party_targeting)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # A text note attached to the proposal to facilitate the communication between
      # buyers and sellers.
      class Note
        include Google::Apis::Core::Hashable
      
        # Output only. When this note was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The role who created the note.
        # Corresponds to the JSON property `creatorRole`
        # @return [String]
        attr_accessor :creator_role
      
        # The text of the note. Maximum length is 1024 characters.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_role = args[:creator_role] if args.key?(:creator_role)
          @note = args[:note] if args.key?(:note)
        end
      end
      
      # Represents targeting information for operating systems.
      class OperatingSystemTargeting
        include Google::Apis::Core::Hashable
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `operatingSystemCriteria`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :operating_system_criteria
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `operatingSystemVersionCriteria`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :operating_system_version_criteria
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operating_system_criteria = args[:operating_system_criteria] if args.key?(:operating_system_criteria)
          @operating_system_version_criteria = args[:operating_system_version_criteria] if args.key?(:operating_system_version_criteria)
        end
      end
      
      # Request message for pausing a finalized deal.
      class PauseFinalizedDealRequest
        include Google::Apis::Core::Hashable
      
        # The reason to pause the finalized deal, will be displayed to the seller.
        # Maximum length is 1000 characters.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Represents targeting about where the ads can appear, for example, certain
      # sites or mobile applications. Different placement targeting types will be
      # logically OR'ed.
      class PlacementTargeting
        include Google::Apis::Core::Hashable
      
        # Mobile application targeting settings.
        # Corresponds to the JSON property `mobileApplicationTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::MobileApplicationTargeting]
        attr_accessor :mobile_application_targeting
      
        # Represents a list of targeted and excluded URLs (for example, google.com). For
        # Private Auction Deals, URLs are either included or excluded. For Programmatic
        # Guaranteed and Preferred Deals, this doesn't apply.
        # Corresponds to the JSON property `uriTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::UriTargeting]
        attr_accessor :uri_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_application_targeting = args[:mobile_application_targeting] if args.key?(:mobile_application_targeting)
          @uri_targeting = args[:uri_targeting] if args.key?(:uri_targeting)
        end
      end
      
      # Pricing terms for Preferred Deals.
      class PreferredDealTerms
        include Google::Apis::Core::Hashable
      
        # Represents a price and a pricing type for a deal.
        # Corresponds to the JSON property `fixedPrice`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Price]
        attr_accessor :fixed_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_price = args[:fixed_price] if args.key?(:fixed_price)
        end
      end
      
      # Represents a price and a pricing type for a deal.
      class Price
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Money]
        attr_accessor :amount
      
        # The pricing type for the deal.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Pricing terms for Private Auctions.
      class PrivateAuctionTerms
        include Google::Apis::Core::Hashable
      
        # Represents a price and a pricing type for a deal.
        # Corresponds to the JSON property `floorPrice`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Price]
        attr_accessor :floor_price
      
        # Output only. True if open auction buyers are allowed to compete with invited
        # buyers in this private auction.
        # Corresponds to the JSON property `openAuctionAllowed`
        # @return [Boolean]
        attr_accessor :open_auction_allowed
        alias_method :open_auction_allowed?, :open_auction_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floor_price = args[:floor_price] if args.key?(:floor_price)
          @open_auction_allowed = args[:open_auction_allowed] if args.key?(:open_auction_allowed)
        end
      end
      
      # Buyers are allowed to store certain types of private data in a proposal or
      # deal.
      class PrivateData
        include Google::Apis::Core::Hashable
      
        # A buyer specified reference ID. This can be queried in the list operations (
        # max-length: 1024 unicode code units).
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
        end
      end
      
      # Pricing terms for Programmatic Guaranteed Deals.
      class ProgrammaticGuaranteedTerms
        include Google::Apis::Core::Hashable
      
        # Represents a price and a pricing type for a deal.
        # Corresponds to the JSON property `fixedPrice`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Price]
        attr_accessor :fixed_price
      
        # Count of guaranteed looks. For CPD deals, buyer changes to guaranteed_looks
        # will be ignored.
        # Corresponds to the JSON property `guaranteedLooks`
        # @return [Fixnum]
        attr_accessor :guaranteed_looks
      
        # The lifetime impression cap for CPM Sponsorship deals. Deal will stop serving
        # when cap is reached.
        # Corresponds to the JSON property `impressionCap`
        # @return [Fixnum]
        attr_accessor :impression_cap
      
        # Daily minimum looks for CPD deal types. For CPD deals, buyer should negotiate
        # on this field instead of guaranteed_looks.
        # Corresponds to the JSON property `minimumDailyLooks`
        # @return [Fixnum]
        attr_accessor :minimum_daily_looks
      
        # For sponsorship deals, this is the percentage of the seller's eligible
        # impressions that the deal will serve until the cap is reached. Valid value is
        # within range 0~100.
        # Corresponds to the JSON property `percentShareOfVoice`
        # @return [Fixnum]
        attr_accessor :percent_share_of_voice
      
        # The reservation type for a Programmatic Guaranteed deal. This indicates
        # whether the number of impressions is fixed, or a percent of available
        # impressions. If not specified, the default reservation type is STANDARD.
        # Corresponds to the JSON property `reservationType`
        # @return [String]
        attr_accessor :reservation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_price = args[:fixed_price] if args.key?(:fixed_price)
          @guaranteed_looks = args[:guaranteed_looks] if args.key?(:guaranteed_looks)
          @impression_cap = args[:impression_cap] if args.key?(:impression_cap)
          @minimum_daily_looks = args[:minimum_daily_looks] if args.key?(:minimum_daily_looks)
          @percent_share_of_voice = args[:percent_share_of_voice] if args.key?(:percent_share_of_voice)
          @reservation_type = args[:reservation_type] if args.key?(:reservation_type)
        end
      end
      
      # Represents a proposal in the Marketplace. A proposal is the unit of
      # negotiation between a seller and a buyer.
      class Proposal
        include Google::Apis::Core::Hashable
      
        # Output only. When the client field is populated, this field refers to the
        # buyer who creates and manages the client buyer and gets billed on behalf of
        # the client buyer; when the buyer field is populated, this field is the same
        # value as buyer. Format : `buyers/`buyerAccountId``
        # Corresponds to the JSON property `billedBuyer`
        # @return [String]
        attr_accessor :billed_buyer
      
        # Output only. Refers to a buyer in The Realtime-bidding API. Format: `buyers/`
        # buyerAccountId``
        # Corresponds to the JSON property `buyer`
        # @return [String]
        attr_accessor :buyer
      
        # Contact information for the buyer.
        # Corresponds to the JSON property `buyerContacts`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Contact>]
        attr_accessor :buyer_contacts
      
        # Buyers are allowed to store certain types of private data in a proposal or
        # deal.
        # Corresponds to the JSON property `buyerPrivateData`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::PrivateData]
        attr_accessor :buyer_private_data
      
        # Output only. Refers to a Client. Format: `buyers/`buyerAccountId`/clients/`
        # clientAccountid``
        # Corresponds to the JSON property `client`
        # @return [String]
        attr_accessor :client
      
        # Output only. Type of deal the proposal contains.
        # Corresponds to the JSON property `dealType`
        # @return [String]
        attr_accessor :deal_type
      
        # Output only. The descriptive name for the proposal. Maximum length of 255
        # unicode characters is allowed. Control characters are not allowed. Buyers
        # cannot update this field. Note: Not to be confused with name, which is a
        # unique identifier of the proposal.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. True if the proposal was previously finalized and is now being
        # renegotiated.
        # Corresponds to the JSON property `isRenegotiating`
        # @return [Boolean]
        attr_accessor :is_renegotiating
        alias_method :is_renegotiating?, :is_renegotiating
      
        # Output only. The role of the last user that either updated the proposal or
        # left a comment.
        # Corresponds to the JSON property `lastUpdaterOrCommentorRole`
        # @return [String]
        attr_accessor :last_updater_or_commentor_role
      
        # Immutable. The name of the proposal serving as a unique identifier. Format:
        # buyers/`accountId`/proposals/`proposalId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of notes from the buyer and the seller attached to this proposal.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Note>]
        attr_accessor :notes
      
        # Output only. Indicates whether the buyer/seller created the proposal.
        # Corresponds to the JSON property `originatorRole`
        # @return [String]
        attr_accessor :originator_role
      
        # Whether pausing is allowed for the proposal. This is a negotiable term between
        # buyers and publishers.
        # Corresponds to the JSON property `pausingConsented`
        # @return [Boolean]
        attr_accessor :pausing_consented
        alias_method :pausing_consented?, :pausing_consented
      
        # Output only. The revision number for the proposal. Each update to the proposal
        # or deal causes the proposal revision number to auto-increment. The buyer keeps
        # track of the last revision number they know of and pass it in when making an
        # update. If the head revision number on the server has since incremented, then
        # an ABORTED error is returned during the update operation to let the buyer know
        # that a subsequent update was made.
        # Corresponds to the JSON property `proposalRevision`
        # @return [Fixnum]
        attr_accessor :proposal_revision
      
        # Immutable. Reference to the seller on the proposal. Format: `buyers/`
        # buyerAccountId`/publisherProfiles/`publisherProfileId`` Note: This field may
        # be set only when creating the resource. Modifying this field while updating
        # the resource will result in an error.
        # Corresponds to the JSON property `publisherProfile`
        # @return [String]
        attr_accessor :publisher_profile
      
        # Output only. Contact information for the seller.
        # Corresponds to the JSON property `sellerContacts`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Contact>]
        attr_accessor :seller_contacts
      
        # Output only. Indicates the state of the proposal.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The terms and conditions associated with this proposal. Accepting
        # a proposal implies acceptance of this field. This is created by the seller,
        # the buyer can only view it.
        # Corresponds to the JSON property `termsAndConditions`
        # @return [String]
        attr_accessor :terms_and_conditions
      
        # Output only. The time when the proposal was last revised.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billed_buyer = args[:billed_buyer] if args.key?(:billed_buyer)
          @buyer = args[:buyer] if args.key?(:buyer)
          @buyer_contacts = args[:buyer_contacts] if args.key?(:buyer_contacts)
          @buyer_private_data = args[:buyer_private_data] if args.key?(:buyer_private_data)
          @client = args[:client] if args.key?(:client)
          @deal_type = args[:deal_type] if args.key?(:deal_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_renegotiating = args[:is_renegotiating] if args.key?(:is_renegotiating)
          @last_updater_or_commentor_role = args[:last_updater_or_commentor_role] if args.key?(:last_updater_or_commentor_role)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @originator_role = args[:originator_role] if args.key?(:originator_role)
          @pausing_consented = args[:pausing_consented] if args.key?(:pausing_consented)
          @proposal_revision = args[:proposal_revision] if args.key?(:proposal_revision)
          @publisher_profile = args[:publisher_profile] if args.key?(:publisher_profile)
          @seller_contacts = args[:seller_contacts] if args.key?(:seller_contacts)
          @state = args[:state] if args.key?(:state)
          @terms_and_conditions = args[:terms_and_conditions] if args.key?(:terms_and_conditions)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The values in the publisher profile are supplied by the publisher. All fields
      # are not filterable unless stated otherwise.
      class PublisherProfile
        include Google::Apis::Core::Hashable
      
        # Description on the publisher's audience.
        # Corresponds to the JSON property `audienceDescription`
        # @return [String]
        attr_accessor :audience_description
      
        # Contact information for direct reservation deals. This is free text entered by
        # the publisher and may include information like names, phone numbers and email
        # addresses.
        # Corresponds to the JSON property `directDealsContact`
        # @return [String]
        attr_accessor :direct_deals_contact
      
        # Display name of the publisher profile. Can be used to filter the response of
        # the publisherProfiles.list method.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The list of domains represented in this publisher profile. Empty if this is a
        # parent profile. These are top private domains, meaning that these will not
        # contain a string like "photos.google.co.uk/123", but will instead contain "
        # google.co.uk". Can be used to filter the response of the publisherProfiles.
        # list method.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # Indicates if this profile is the parent profile of the seller. A parent
        # profile represents all the inventory from the seller, as opposed to child
        # profile that is created to brand a portion of inventory. One seller has only
        # one parent publisher profile, and can have multiple child profiles. See https:/
        # /support.google.com/admanager/answer/6035806 for details. Can be used to
        # filter the response of the publisherProfiles.list method by setting the filter
        # to "is_parent: true".
        # Corresponds to the JSON property `isParent`
        # @return [Boolean]
        attr_accessor :is_parent
        alias_method :is_parent?, :is_parent
      
        # A Google public URL to the logo for this publisher profile. The logo is stored
        # as a PNG, JPG, or GIF image.
        # Corresponds to the JSON property `logoUrl`
        # @return [String]
        attr_accessor :logo_url
      
        # URL to additional marketing and sales materials.
        # Corresponds to the JSON property `mediaKitUrl`
        # @return [String]
        attr_accessor :media_kit_url
      
        # The list of apps represented in this publisher profile. Empty if this is a
        # parent profile.
        # Corresponds to the JSON property `mobileApps`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfileMobileApplication>]
        attr_accessor :mobile_apps
      
        # Name of the publisher profile. Format: `buyers/`buyer`/publisherProfiles/`
        # publisher_profile``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Overview of the publisher.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        # Statement explaining what's unique about publisher's business, and why buyers
        # should partner with the publisher.
        # Corresponds to the JSON property `pitchStatement`
        # @return [String]
        attr_accessor :pitch_statement
      
        # Contact information for programmatic deals. This is free text entered by the
        # publisher and may include information like names, phone numbers and email
        # addresses.
        # Corresponds to the JSON property `programmaticDealsContact`
        # @return [String]
        attr_accessor :programmatic_deals_contact
      
        # A unique identifying code for the seller. This value is the same for all of
        # the seller's parent and child publisher profiles. Can be used to filter the
        # response of the publisherProfiles.list method.
        # Corresponds to the JSON property `publisherCode`
        # @return [String]
        attr_accessor :publisher_code
      
        # URL to a sample content page.
        # Corresponds to the JSON property `samplePageUrl`
        # @return [String]
        attr_accessor :sample_page_url
      
        # Up to three key metrics and rankings. For example, "#1 Mobile News Site for 20
        # Straight Months".
        # Corresponds to the JSON property `topHeadlines`
        # @return [Array<String>]
        attr_accessor :top_headlines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_description = args[:audience_description] if args.key?(:audience_description)
          @direct_deals_contact = args[:direct_deals_contact] if args.key?(:direct_deals_contact)
          @display_name = args[:display_name] if args.key?(:display_name)
          @domains = args[:domains] if args.key?(:domains)
          @is_parent = args[:is_parent] if args.key?(:is_parent)
          @logo_url = args[:logo_url] if args.key?(:logo_url)
          @media_kit_url = args[:media_kit_url] if args.key?(:media_kit_url)
          @mobile_apps = args[:mobile_apps] if args.key?(:mobile_apps)
          @name = args[:name] if args.key?(:name)
          @overview = args[:overview] if args.key?(:overview)
          @pitch_statement = args[:pitch_statement] if args.key?(:pitch_statement)
          @programmatic_deals_contact = args[:programmatic_deals_contact] if args.key?(:programmatic_deals_contact)
          @publisher_code = args[:publisher_code] if args.key?(:publisher_code)
          @sample_page_url = args[:sample_page_url] if args.key?(:sample_page_url)
          @top_headlines = args[:top_headlines] if args.key?(:top_headlines)
        end
      end
      
      # A mobile application that contains a external app ID, name, and app store.
      class PublisherProfileMobileApplication
        include Google::Apis::Core::Hashable
      
        # The app store the app belongs to. Can be used to filter the response of the
        # publisherProfiles.list method.
        # Corresponds to the JSON property `appStore`
        # @return [String]
        attr_accessor :app_store
      
        # The external ID for the app from its app store. Can be used to filter the
        # response of the publisherProfiles.list method.
        # Corresponds to the JSON property `externalAppId`
        # @return [String]
        attr_accessor :external_app_id
      
        # The name of the app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_store = args[:app_store] if args.key?(:app_store)
          @external_app_id = args[:external_app_id] if args.key?(:external_app_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for resuming a finalized deal.
      class ResumeFinalizedDealRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Real-time bidding metrics. For what each metric means refer to [Report metrics]
      # (https://support.google.com/adxbuyer/answer/6115195#report-metrics)
      class RtbMetrics
        include Google::Apis::Core::Hashable
      
        # Ad impressions in last 7 days.
        # Corresponds to the JSON property `adImpressions7Days`
        # @return [Fixnum]
        attr_accessor :ad_impressions7_days
      
        # Bid rate in last 7 days, calculated by (bids / bid requests).
        # Corresponds to the JSON property `bidRate7Days`
        # @return [Float]
        attr_accessor :bid_rate7_days
      
        # Bid requests in last 7 days.
        # Corresponds to the JSON property `bidRequests7Days`
        # @return [Fixnum]
        attr_accessor :bid_requests7_days
      
        # Bids in last 7 days.
        # Corresponds to the JSON property `bids7Days`
        # @return [Fixnum]
        attr_accessor :bids7_days
      
        # Filtered bid rate in last 7 days, calculated by (filtered bids / bids).
        # Corresponds to the JSON property `filteredBidRate7Days`
        # @return [Float]
        attr_accessor :filtered_bid_rate7_days
      
        # Must bid rate for current month.
        # Corresponds to the JSON property `mustBidRateCurrentMonth`
        # @return [Float]
        attr_accessor :must_bid_rate_current_month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_impressions7_days = args[:ad_impressions7_days] if args.key?(:ad_impressions7_days)
          @bid_rate7_days = args[:bid_rate7_days] if args.key?(:bid_rate7_days)
          @bid_requests7_days = args[:bid_requests7_days] if args.key?(:bid_requests7_days)
          @bids7_days = args[:bids7_days] if args.key?(:bids7_days)
          @filtered_bid_rate7_days = args[:filtered_bid_rate7_days] if args.key?(:filtered_bid_rate7_days)
          @must_bid_rate_current_month = args[:must_bid_rate_current_month] if args.key?(:must_bid_rate_current_month)
        end
      end
      
      # Request to send an RFP. All fields in this request are proposed to publisher
      # and subject to changes by publisher during later negotiation.
      class SendRfpRequest
        include Google::Apis::Core::Hashable
      
        # Contact information for the buyer.
        # Corresponds to the JSON property `buyerContacts`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1::Contact>]
        attr_accessor :buyer_contacts
      
        # If the current buyer is sending the RFP on behalf of its client, use this
        # field to specify the name of the client in the format: `buyers/`accountId`/
        # clients/`clientAccountid``.
        # Corresponds to the JSON property `client`
        # @return [String]
        attr_accessor :client
      
        # Required. The display name of the proposal being created by this RFP.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `estimatedGrossSpend`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Money]
        attr_accessor :estimated_gross_spend
      
        # Required. Proposed flight end time of the RFP. A timestamp in RFC3339 UTC "
        # Zulu" format. Note that the specified value will be truncated to a granularity
        # of one second.
        # Corresponds to the JSON property `flightEndTime`
        # @return [String]
        attr_accessor :flight_end_time
      
        # Required. Proposed flight start time of the RFP. A timestamp in RFC3339 UTC "
        # Zulu" format. Note that the specified value will be truncated to a granularity
        # of one second.
        # Corresponds to the JSON property `flightStartTime`
        # @return [String]
        attr_accessor :flight_start_time
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :geo_targeting
      
        # Represents the size of an ad unit that can be targeted on a bid request.
        # Corresponds to the JSON property `inventorySizeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::InventorySizeTargeting]
        attr_accessor :inventory_size_targeting
      
        # A message that is sent to the publisher. Maximum length is 1024 characters.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # Pricing terms for Preferred Deals.
        # Corresponds to the JSON property `preferredDealTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::PreferredDealTerms]
        attr_accessor :preferred_deal_terms
      
        # Pricing terms for Programmatic Guaranteed Deals.
        # Corresponds to the JSON property `programmaticGuaranteedTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ProgrammaticGuaranteedTerms]
        attr_accessor :programmatic_guaranteed_terms
      
        # Required. The profile of the publisher who will receive this RFP in the format:
        # `buyers/`accountId`/publisherProfiles/`publisherProfileId``.
        # Corresponds to the JSON property `publisherProfile`
        # @return [String]
        attr_accessor :publisher_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buyer_contacts = args[:buyer_contacts] if args.key?(:buyer_contacts)
          @client = args[:client] if args.key?(:client)
          @display_name = args[:display_name] if args.key?(:display_name)
          @estimated_gross_spend = args[:estimated_gross_spend] if args.key?(:estimated_gross_spend)
          @flight_end_time = args[:flight_end_time] if args.key?(:flight_end_time)
          @flight_start_time = args[:flight_start_time] if args.key?(:flight_start_time)
          @geo_targeting = args[:geo_targeting] if args.key?(:geo_targeting)
          @inventory_size_targeting = args[:inventory_size_targeting] if args.key?(:inventory_size_targeting)
          @note = args[:note] if args.key?(:note)
          @preferred_deal_terms = args[:preferred_deal_terms] if args.key?(:preferred_deal_terms)
          @programmatic_guaranteed_terms = args[:programmatic_guaranteed_terms] if args.key?(:programmatic_guaranteed_terms)
          @publisher_profile = args[:publisher_profile] if args.key?(:publisher_profile)
        end
      end
      
      # Request message for setting ready to serve for a finalized deal.
      class SetReadyToServeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for SubscribeAuctionPackage.
      class SubscribeAuctionPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for SubscribeAuctionPackageClients.
      class SubscribeClientsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A list of client buyers to subscribe to the auction package, with
        # client buyer in the format `buyers/`accountId`/clients/`clientAccountId``. The
        # current buyer will be subscribed to the auction package regardless of the list
        # contents if not already.
        # Corresponds to the JSON property `clients`
        # @return [Array<String>]
        attr_accessor :clients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clients = args[:clients] if args.key?(:clients)
        end
      end
      
      # Represents targeting about various types of technology.
      class TechnologyTargeting
        include Google::Apis::Core::Hashable
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `deviceCapabilityTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :device_capability_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `deviceCategoryTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::CriteriaTargeting]
        attr_accessor :device_category_targeting
      
        # Represents targeting information for operating systems.
        # Corresponds to the JSON property `operatingSystemTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::OperatingSystemTargeting]
        attr_accessor :operating_system_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_capability_targeting = args[:device_capability_targeting] if args.key?(:device_capability_targeting)
          @device_category_targeting = args[:device_category_targeting] if args.key?(:device_category_targeting)
          @operating_system_targeting = args[:operating_system_targeting] if args.key?(:operating_system_targeting)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for UnsubscribeAuctionPackage.
      class UnsubscribeAuctionPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UnsubscribeAuctionPackage.
      class UnsubscribeClientsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A list of client buyers to unsubscribe from the auction package,
        # with client buyer in the format `buyers/`accountId`/clients/`clientAccountId``.
        # Corresponds to the JSON property `clients`
        # @return [Array<String>]
        attr_accessor :clients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clients = args[:clients] if args.key?(:clients)
        end
      end
      
      # Request message for updating the deal at the given revision number.
      class UpdateDealRequest
        include Google::Apis::Core::Hashable
      
        # A deal represents a segment of inventory for displaying ads that contains the
        # terms and targeting information that is used for serving as well as the deal
        # stats and status. Note: A proposal may contain multiple deals.
        # Corresponds to the JSON property `deal`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal]
        attr_accessor :deal
      
        # List of fields to be updated. If empty or unspecified, the service will update
        # all fields populated in the update request excluding the output only fields
        # and primitive fields with default value. Note that explicit field mask is
        # required in order to reset a primitive field back to its default value, for
        # example, false for boolean fields, 0 for integer fields. A special field mask
        # consisting of a single path "*" can be used to indicate full replacement(the
        # equivalent of PUT method), updatable fields unset or unspecified in the input
        # will be cleared or set to default value. Output only fields will be ignored
        # regardless of the value of updateMask.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deal = args[:deal] if args.key?(:deal)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Represents a list of targeted and excluded URLs (for example, google.com). For
      # Private Auction Deals, URLs are either included or excluded. For Programmatic
      # Guaranteed and Preferred Deals, this doesn't apply.
      class UriTargeting
        include Google::Apis::Core::Hashable
      
        # A list of URLs to be excluded.
        # Corresponds to the JSON property `excludedUris`
        # @return [Array<String>]
        attr_accessor :excluded_uris
      
        # A list of URLs to be included.
        # Corresponds to the JSON property `targetedUris`
        # @return [Array<String>]
        attr_accessor :targeted_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_uris = args[:excluded_uris] if args.key?(:excluded_uris)
          @targeted_uris = args[:targeted_uris] if args.key?(:targeted_uris)
        end
      end
      
      # Represents targeting information about video.
      class VideoTargeting
        include Google::Apis::Core::Hashable
      
        # A list of video positions to be excluded. When this field is populated, the
        # targeted_position_types field must be empty.
        # Corresponds to the JSON property `excludedPositionTypes`
        # @return [Array<String>]
        attr_accessor :excluded_position_types
      
        # A list of video positions to be included. When this field is populated, the
        # excluded_position_types field must be empty.
        # Corresponds to the JSON property `targetedPositionTypes`
        # @return [Array<String>]
        attr_accessor :targeted_position_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_position_types = args[:excluded_position_types] if args.key?(:excluded_position_types)
          @targeted_position_types = args[:targeted_position_types] if args.key?(:targeted_position_types)
        end
      end
    end
  end
end
